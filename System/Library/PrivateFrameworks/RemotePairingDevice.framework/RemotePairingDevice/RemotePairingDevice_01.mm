uint64_t sub_261F78910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_261FA3868(a1, a2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_261F7894C()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F78998()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F789D0()
{
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_261F78A04()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_261F78A38()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  OUTLINED_FUNCTION_269();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_261F78A78()
{
  v1 = sub_26203965C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_261F78DD0(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for TunnelEndpoint.Event();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  a3(v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      sub_261F79740(a6, v14);
      *(v14 + 5) = a1;
      swift_storeEnumTagMultiPayload();
      v16 = a1;
      sub_261F6D760(v14);
      (*(v10 + 8))(v14, v9);
    }

    swift_storeEnumTagMultiPayload();
    sub_261F6D760(v14);

    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

uint64_t sub_261F78F50(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_261F78DD0(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + 64);
}

uint64_t sub_261F78F64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_261F78FA8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_40(v3);
  v5 = v0[4];
  v6 = (v0 + ((*(v4 + 80) + 40) & ~*(v4 + 80)));

  return sub_261F7902C(v5, v6);
}

uint64_t sub_261F7902C(uint64_t a1, NSObject *a2)
{
  v3 = type metadata accessor for TunnelEndpoint.Event();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_261F6E52C(a2);
  }

  else
  {
    (*(v4 + 16))(v7, a2, v3);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v8 = *v7;
      v9 = *(v7 + 2);
      (*(v7 + 1))();
    }

    else
    {
      return (*(v4 + 8))(v7, v3);
    }
  }
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

uint64_t OUTLINED_FUNCTION_88_0()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_88_2()
{

  return memcpy((v1 - 224), (v0 + 112), 0x82uLL);
}

uint64_t OUTLINED_FUNCTION_15()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
}

void OUTLINED_FUNCTION_15_2()
{

  sub_261F67ABC();
}

void OUTLINED_FUNCTION_15_7(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  v3[8] = v2;
  v4 = *v1;
}

uint64_t OUTLINED_FUNCTION_146()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_10()
{

  return sub_26203AA9C();
}

uint64_t type metadata accessor for TunnelInterfaceParameters()
{
  result = qword_28108B900;
  if (!qword_28108B900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TunnelMessage()
{
  result = qword_28108CA08;
  if (!qword_28108CA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL OUTLINED_FUNCTION_149()
{

  return os_log_type_enabled(v1, v0);
}

void sub_261F794F0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TunnelEndpoint.Event();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (v17 - v13);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_261F79740(a4, v14);
    if (a2)
    {

      v17[0] = a1;
      v15 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      swift_willThrowTypedImpl();
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_261F79740(a4, v12);
        *(v12 + 5) = a1;
        swift_storeEnumTagMultiPayload();
        v16 = a1;
        sub_261F6D760(v12);

        sub_261F79EA0(a1, 1);
        (*(v8 + 8))(v12, v7);
      }

      else
      {
        sub_261F79EA0(a1, 1);
      }
    }

    else
    {
      v14[5] = a1;
      swift_storeEnumTagMultiPayload();

      sub_261F6D760(v14);

      (*(v8 + 8))(v14, v7);
    }
  }
}

void sub_261F7972C(void *a1, char a2)
{
  v3 = v2[2];
  v4 = v2[3];
  sub_261F794F0(a1, a2 & 1, v2[4], (v2 + 5));
}

uint64_t sub_261F79740(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_223()
{
  v2 = *(v0 + 928);
}

uint64_t sub_261F797BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_201()
{
}

__n128 OUTLINED_FUNCTION_91()
{
  *(v1 + 32) = *(v2 + 48);
  *(v0 + 176) = v4;
  *(v0 + 184) = v3;
  result = *(v2 + 80);
  v6 = *(v2 + 96);
  *(v1 + 64) = result;
  *(v1 + 80) = v6;
  *(v0 + 224) = *(v2 + 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_91_0()
{
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1208);

  return sub_261F79864();
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return swift_allocError();
}

uint64_t sub_261F79864()
{
  OUTLINED_FUNCTION_2_23();
  v2 = v0;
  MEMORY[0x266722710]();
  return v2;
}

uint64_t OUTLINED_FUNCTION_230()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_302()
{

  JUMPOUT(0x266722710);
}

uint64_t sub_261F798CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_96_0();
  v5 = *(v4 + 208);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_96_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_96_0();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for TunnelEndpoint.State();
  OUTLINED_FUNCTION_6_1(v10);
  return (*(v11 + 16))(a1, &v1[v5]);
}

uint64_t OUTLINED_FUNCTION_205()
{
  *(v0 - 160) = 0;
  v1 = v0 - 240;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  return v0 - 192;
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return sub_26203A7CC();
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, char a19)
{
  v21 = v19[1];
  a17 = *v19;
  a18 = v21;
  a19 = *(v19 + 32);

  return sub_261FC095C(&a17, &a9);
}

uint64_t OUTLINED_FUNCTION_21_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_261F67914(va);
}

void OUTLINED_FUNCTION_21_6()
{
  v1 = v0[108];
  v2 = v0[111];
  v3 = v0[113];
  v4 = v0[112];
}

uint64_t OUTLINED_FUNCTION_21_7()
{
}

void sub_261F79AD8()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_261FFBD38(v1);
    *v0 = v3;
  }
}

unint64_t sub_261F79B18(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_64()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_64_0()
{

  return sub_26203AE5C();
}

uint64_t OUTLINED_FUNCTION_286(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_181()
{

  return sub_26203A20C();
}

uint64_t sub_261F79C04(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_26203A7CC();
  return 0;
}

void sub_261F79C64()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_23_4();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_60_2();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_155_0();
  v10 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  OUTLINED_FUNCTION_157();
  v18 = sub_26203A6DC();
  OUTLINED_FUNCTION_40(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_195();
  if (!*(v5 + 16))
  {
    sub_261F79740(v3, v17);
    OUTLINED_FUNCTION_177_0();
    swift_storeEnumTagMultiPayload();
    sub_261F6D760(v17);
    v29 = *(v12 + 8);
    v30 = OUTLINED_FUNCTION_177_0();
    v31(v30);
    goto LABEL_5;
  }

  sub_261F7A074(v1);
  OUTLINED_FUNCTION_150_0(v1, 1, v7);
  if (!v22)
  {
    sub_261F79740(v3, v33);
    OUTLINED_FUNCTION_269();
    v23 = swift_allocObject();
    *(v23 + 16) = v0;
    sub_261F797BC(v33, v23 + 24);
    v24 = *(v9 + 64);

    v24(v5, sub_261F7AD20, v23, v7, v9);

    OUTLINED_FUNCTION_71(v7);
    v26 = *(v25 + 8);
    v27 = OUTLINED_FUNCTION_275();
    v28(v27);
LABEL_5:
    OUTLINED_FUNCTION_38_0();
    return;
  }

  __break(1u);
}

uint64_t sub_261F79E64()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  OUTLINED_FUNCTION_269();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_261F79EA0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

__n128 OUTLINED_FUNCTION_23()
{
  result = *v1;
  v3 = *(v1 + 16);
  *(v0 + 32) = *(v1 + 32);
  *v0 = result;
  *(v0 + 16) = v3;
  return result;
}

void OUTLINED_FUNCTION_23_2()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_23_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_34_7(uint64_t a1)
{

  return sub_261F66E60(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_142()
{

  return swift_weakInit();
}

uint64_t sub_261F7A074@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_96_0();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_96_0();
  v7 = *(v6 + 80);
  v8 = sub_26203A6DC();
  OUTLINED_FUNCTION_6_1(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

void *OUTLINED_FUNCTION_144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t __dst, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0x92uLL);
}

void OUTLINED_FUNCTION_28_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_28_6(uint64_t result)
{
  v2 = *(v1 + 824);
  *(result + 16) = *(v1 + 840);
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_7()
{

  return sub_261F6BFFC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_28_8()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

void VirtualInterface.writePackets(_:completion:)(uint64_t a1, void (*a2)(void *))
{
  v3 = v2;
  v38[12] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  if (v3[14] < v6)
  {
    if (v3[13])
    {
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    if (v3[15])
    {
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    if (v3[17])
    {
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    if (v6 >> 61)
    {
      goto LABEL_49;
    }

    v3[13] = swift_slowAlloc();
    v3[14] = v6;
    if (v6 >> 60)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    v3[15] = swift_slowAlloc();
    v3[16] = v6;
    v3[17] = swift_slowAlloc();
    v3[18] = v6;
  }

  v34 = a2;
  v7 = 0;
  v8 = (a1 + 32);
  v9 = (a1 + 32);
  while (v6 != v7)
  {
    memcpy(__dst, v9, sizeof(__dst));
    memcpy(v38, v9, 0x60uLL);
    if ((v38[0] & 0x80000000) != 0)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    *(v3[13] + 4 * v7) = v38[0];
    v10 = BYTE6(v38[11]);
    switch(v38[11] >> 62)
    {
      case 1:
        v20 = v38[10] >> 32;
        if (v38[10] >> 32 < SLODWORD(v38[10]))
        {
          goto LABEL_44;
        }

        v21 = SLODWORD(v38[10]);
        swift_retain_n();
        sub_261F6D6B0(__dst, v36);
        v13 = sub_26203937C();
        if (!v13)
        {
          goto LABEL_30;
        }

        v22 = sub_2620393AC();
        if (__OFSUB__(v21, v22))
        {
          goto LABEL_47;
        }

        v13 += v21 - v22;
LABEL_30:
        v23 = sub_26203939C();
        if (!v13)
        {
          goto LABEL_51;
        }

        v18 = v3[15];
        v19 = v20 - v21;
        if (v23 < v20 - v21)
        {
          v19 = v23;
        }

        break;
      case 2:
        v11 = *(v38[10] + 16);
        v12 = *(v38[10] + 24);
        swift_retain_n();
        sub_261F6D6B0(__dst, v36);
        v13 = sub_26203937C();
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = sub_2620393AC();
        if (__OFSUB__(v11, v14))
        {
          goto LABEL_46;
        }

        v13 += v11 - v14;
LABEL_19:
        v15 = __OFSUB__(v12, v11);
        v16 = v12 - v11;
        if (v15)
        {
          goto LABEL_45;
        }

        v17 = sub_26203939C();
        if (!v13)
        {
          goto LABEL_52;
        }

        v18 = v3[15];
        if (v17 >= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v17;
        }

        break;
      case 3:
        memset(v35, 0, 14);
        *(v3[15] + 8 * v7) = v35;
        *(v3[17] + 8 * v7) = 0;
        goto LABEL_25;
      default:
        v35[0] = v38[10];
        LOWORD(v35[1]) = v38[11];
        *(&v35[1] + 2) = *(&v38[11] + 2);
        *(v3[15] + 8 * v7) = v35;
        *(v3[17] + 8 * v7) = v10;
LABEL_25:
        sub_261F6D6B0(__dst, v36);
        sub_261F6D70C(v38);
        goto LABEL_34;
    }

    *(v18 + 8 * v7) = v13;
    *(v3[17] + 8 * v7) = v19;
    sub_261F6D70C(v38);

LABEL_34:
    v9 += 96;
    ++v7;
  }

  if (v6)
  {
    v24 = v6;
    do
    {
      memcpy(v38, v8, 0x60uLL);
      memcpy(__dst, v8, sizeof(__dst));
      sub_261F6D6B0(v38, v36);
      sub_261F6CDE4();
      sub_261F6D70C(v38);
      v8 += 96;
      --v24;
    }

    while (v24);
    if (HIDWORD(v6))
    {
      goto LABEL_48;
    }
  }

  v25 = v3[17];
  v26 = v3[15];
  v27 = v3[13];
  v28 = *(v3[9] + 16);
  if (NEVirtualInterfaceWriteMultipleIPPackets())
  {
    v29 = 0;
  }

  else
  {
    sub_261F9BCE0();
    sub_26203AD3C();
    v36[0] = __dst[0];
    v36[1] = __dst[1];
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    sub_26203A7CC();
    MEMORY[0x266722710](0xD00000000000002CLL, 0x800000026204F910);
    MEMORY[0x266722710](v3[2], v3[3]);
    MEMORY[0x266722710](0xD00000000000001DLL, 0x800000026204F940);
    sub_26203AD4C();
    v30 = v38[0];
    v31 = v38[1];
    sub_261F9D610();
    OUTLINED_FUNCTION_20_3();
    v29 = swift_allocError();
    *v32 = v30;
    v32[1] = v31;
  }

  v34(v29);

  v33 = *MEMORY[0x277D85DE8];
}

void VirtualInterface.readPackets(completion:)()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_262039FAC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v27 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v13 = v12 - v11;
  v26 = sub_262039FEC();
  v14 = OUTLINED_FUNCTION_0(v26);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v21 = v20 - v19;
  v22 = *(v1 + 80);
  v23 = swift_allocObject();
  v23[2] = v1;
  v23[3] = v5;
  v23[4] = v3;
  v28[4] = sub_261F7AE48;
  v28[5] = v23;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 1107296256;
  v28[2] = sub_261F78F64;
  v28[3] = &block_descriptor_3;
  v24 = _Block_copy(v28);
  v25 = v22;

  sub_262039FCC();
  sub_261F7AA38(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  sub_26203A75C();
  MEMORY[0x266722A20](0, v21, v13, v24);
  _Block_release(v24);

  (*(v27 + 8))(v13, v6);
  (*(v16 + 8))(v21, v26);

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261F7A9D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261F7AA38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261F7AA80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_167()
{

  return swift_allocObject();
}

uint64_t sub_261F7AAEC(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(*a2 + 80);
  v7 = *(v5 + 88);
  v8 = type metadata accessor for TunnelEndpoint.Event();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v15 - v11);
  if (a1)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v13 = a1;
  }

  else
  {
    sub_261F79740(a3, &v15 - v11);
    swift_storeEnumTagMultiPayload();
  }

  sub_261F6D760(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return sub_26203A8CC();
}

uint64_t OUTLINED_FUNCTION_19_2()
{
  v2 = *(v0 - 312);

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_19_3()
{

  return sub_26203A23C();
}

uint64_t OUTLINED_FUNCTION_19_11()
{

  return type metadata accessor for DiscoveredBonjourAdvert();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_14_7(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  sub_261FA0588(v2);
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_26203A90C();
}

uint64_t OUTLINED_FUNCTION_14_13()
{

  return sub_26203A8EC();
}

uint64_t sub_261F7AE54(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[11])
  {
    __break(1u);
  }

  else
  {
    a1[11] = a2;
    a1[12] = a3;
    v3 = *(a1[9] + 16);

    a1 = v3;
    a2 = 0xFFFFFFFFLL;
  }

  return MEMORY[0x2821274B8](a1, a2);
}

uint64_t OUTLINED_FUNCTION_124()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return swift_once();
}

void sub_261F7AF14()
{
  OUTLINED_FUNCTION_96();
  v2 = v0;
  v4 = v3;
  v41 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  OUTLINED_FUNCTION_56_2();
  v6 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_56_2();
  v12 = type metadata accessor for TunnelEndpoint.State();
  v40 = OUTLINED_FUNCTION_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_37();
  v16 = sub_26203A07C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_74();
  v24 = (v23 - v22);
  v42 = *v4;
  v25 = *(v4 + 16);
  *v24 = sub_261F6E294();
  (*(v19 + 104))(v24, *MEMORY[0x277D85200], v16);
  LOBYTE(v4) = sub_26203A0AC();
  v26 = *(v19 + 8);
  v27 = OUTLINED_FUNCTION_123();
  v29 = v28(v27);
  if (v4)
  {
    if (!*(v42 + 16))
    {
      (*(&v42 + 1))(v29);
      OUTLINED_FUNCTION_100();
      swift_storeEnumTagMultiPayload();
      sub_261F6D760(v1);
      v35 = *(v8 + 8);
      v36 = OUTLINED_FUNCTION_100();
      v37(v36);
      goto LABEL_6;
    }

    sub_261F7B38C();
    if (v44)
    {
      sub_261F797BC(&v43, v45);
      v30 = v46;
      v31 = v47;
      __swift_project_boxed_opaque_existential_0Tm(v45, v46);
      OUTLINED_FUNCTION_63();
      v32 = swift_allocObject();
      OUTLINED_FUNCTION_270(v32);
      swift_weakInit();
      sub_261F79740(v45, &v43);
      v33 = swift_allocObject();
      *(v33 + 16) = v41;
      *(v33 + 32) = v42;
      *(v33 + 48) = v25;
      *(v33 + 56) = v6;
      sub_261F797BC(&v43, v33 + 64);
      v34 = *(v31 + 16);

      v34(v42, sub_261F78F50, v33, v30, v31);

      __swift_destroy_boxed_opaque_existential_0Tm(v45);
LABEL_6:
      OUTLINED_FUNCTION_31_0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  sub_261F66E60(&v43, &qword_27FEFA288, &qword_262044098);
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_26203A7CC();
  MEMORY[0x266722710](0xD000000000000033, 0x8000000262051530);
  sub_261F798CC(v5);
  sub_26203ABDC();
  v38 = OUTLINED_FUNCTION_99();
  v39(v38, v40);
  MEMORY[0x266722710](0xD000000000000024, 0x8000000262051570);
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_252();
  sub_26203A91C();
  __break(1u);
}

uint64_t sub_261F7B324()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t OUTLINED_FUNCTION_299()
{

  return swift_retain_n();
}

uint64_t sub_261F7B38C()
{
  OUTLINED_FUNCTION_83_1();
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_79();
  v2 = OUTLINED_FUNCTION_115_0();
  return sub_261F674BC(v2, v3, v4, v5);
}

uint64_t sub_261F7B428(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_47();
  v9(v8);
  return a2;
}

void OUTLINED_FUNCTION_183(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_125(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_261F67FE4(a1, a2, va);
}

uint64_t StreamBasedTunnelConnection.send(packets:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 120);
    do
    {
      v9 = *(v8 - 7);
      v10 = *(v8 - 6);
      v11 = *(v8 - 5);
      v12 = *(v8 - 4);
      v13 = *(v8 - 3);
      v14 = *(v8 - 2);
      v15 = *(v8 - 1);
      v16 = *v8;
      v17 = OUTLINED_FUNCTION_126();
      sub_261F6B73C(v17, v18);
      sub_261F6B73C(v11, v12);
      sub_261F7B690(v13, v14);
      v19 = OUTLINED_FUNCTION_108();
      sub_261F6B73C(v19, v20);
      OUTLINED_FUNCTION_108();
      sub_26203958C();
      v21 = OUTLINED_FUNCTION_126();
      sub_261F6BFFC(v21, v22);
      sub_261F6BFFC(v11, v12);
      sub_261F7B6A4(v13, v14);
      v23 = OUTLINED_FUNCTION_108();
      sub_261F6BFFC(v23, v24);
      v8 += 12;
      --v7;
    }

    while (v7);
    v5 = a5;
    v6 = a2;
  }

  v25 = OUTLINED_FUNCTION_126();
  if (sub_261F7B7E8(v25, v26))
  {
    v6(0);
  }

  else
  {
    v27 = *(v5 + 88);
    v28 = OUTLINED_FUNCTION_126();
    v29(v28);
  }

  v30 = OUTLINED_FUNCTION_126();

  return sub_261F6BFFC(v30, v31);
}

uint64_t sub_261F7B690(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_261FC2E24(a1, a2);
  }

  return a1;
}

void sub_261F7B6A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_261FC2E3C(a1, a2);
  }
}

uint64_t StreamBasedTunnelConnection.receivePackets(completion:)()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_7_11();
  v5 = v4;
  v8 = (*(v6 + 40))(v7, v6);
  v9 = (*(v0 + 64))(v2, v0);
  OUTLINED_FUNCTION_14_1();
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v0;
  v10[4] = v1;
  v10[5] = v5;
  v10[6] = v3;
  v11 = *(v0 + 96);
  swift_unknownObjectRetain();

  v11(v8, v9, sub_261F6C130, v10, v2, v0);
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261F7B7AC()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

BOOL sub_261F7B7E8(uint64_t a1, unint64_t a2)
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

uint64_t OUTLINED_FUNCTION_6_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return sub_26203AAFC();
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return swift_once();
}

uint64_t sub_261F7B99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26203A6DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v51[-v9];
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v51[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v51[-v19];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v69 = v15;
    v22 = result;
    sub_261F7A074(v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, a2) == 1)
    {

      return (*(v6 + 8))(v10, v5);
    }

    else
    {
      v68 = v22;
      v23 = v11;
      (*(v11 + 32))(v20, v10, a2);
      v24 = a3;
      (*(a3 + 80))(&v71, a2, a3);
      v66 = v71;
      v62 = v72;
      v56 = v73;
      v65 = v74;
      v59 = v75;
      v55 = v76;
      v60 = v77;
      v58 = v78;
      v64 = v79;
      v61 = v80;
      v67 = v81;
      v63 = v82;
      v25 = sub_26203A4AC();
      if (qword_28108B618 != -1)
      {
        swift_once();
      }

      v26 = qword_28108B620;
      v27 = *(v23 + 16);
      v27(v18, v20, a2);
      v28 = v69;
      v27(v69, v20, a2);
      v57 = v26;
      if (os_log_type_enabled(v26, v25))
      {
        v29 = v23;
        v30 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v70[0] = v54;
        *v30 = 136448258;
        v52 = v25;
        v31 = sub_261F7C884();
        v33 = sub_261F67FE4(v31, v32, v70);

        *(v30 + 4) = v33;
        v53 = v20;
        *(v30 + 12) = 2080;
        v34 = (*(v24 + 40))(a2, v24);
        v36 = v35;
        v37 = *(v29 + 8);
        v37(v18, a2);
        v38 = sub_261F67FE4(v34, v36, v70);

        *(v30 + 14) = v38;
        *(v30 + 22) = 2080;
        (*(v24 + 48))(&v71, a2, v24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B40, &qword_262040458);
        v39 = sub_26203A20C();
        v41 = v40;
        v37(v28, a2);
        v42 = sub_261F67FE4(v39, v41, v70);

        *(v30 + 24) = v42;
        *(v30 + 32) = 2048;
        v43 = v59;
        if (v55)
        {
          v43 = -1;
        }

        *(v30 + 34) = v43;
        *(v30 + 42) = 2048;
        v44 = v60;
        if (v58)
        {
          v44 = -1;
        }

        *(v30 + 44) = v44;
        *(v30 + 52) = 2048;
        v45 = v66;
        if (v62)
        {
          v45 = -1;
        }

        *(v30 + 54) = v45;
        *(v30 + 62) = 2048;
        v46 = v56;
        if (v65)
        {
          v46 = -1;
        }

        *(v30 + 64) = v46;
        *(v30 + 72) = 2048;
        v47 = v64;
        if (v61)
        {
          v47 = -1;
        }

        *(v30 + 74) = v47;
        *(v30 + 82) = 2048;
        v48 = v67;
        if (v63)
        {
          v48 = -1;
        }

        *(v30 + 84) = v48;
        _os_log_impl(&dword_261F5B000, v57, v52, "%{public}s: Stats for %s/%s: packets in/out=%lld/%lld, bytes in/out=%lld/%lld, errors in/out=%lld/%lld, ", v30, 0x5Cu);
        v49 = v54;
        swift_arrayDestroy();
        MEMORY[0x266724180](v49, -1, -1);
        MEMORY[0x266724180](v30, -1, -1);

        return (v37)(v53, a2);
      }

      else
      {

        v50 = *(v23 + 8);
        v50(v28, a2);
        v50(v18, a2);
        return (v50)(v20, a2);
      }
    }
  }

  return result;
}

void VirtualInterface.getInterfaceStatistics()()
{
  v1 = *(v0[9] + 16);
  v2 = NEVirtualInterfaceCopyStatistics();
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = v3;
      sub_26203A0CC();
    }

    sub_261F9BCE0();
    OUTLINED_FUNCTION_31_3();
    sub_26203AD3C();
    sub_26203A7CC();
    MEMORY[0x266722710](0xD00000000000003BLL, 0x800000026204F960);
    type metadata accessor for CFDictionary(0);
    v5 = v3;
    v6 = sub_26203A20C();
    MEMORY[0x266722710](v6);

    v7 = OUTLINED_FUNCTION_22(0x726F6620u);
    MEMORY[0x266722710](v7, v8 & 0xFFFFFFFFFFFFLL | 0xEF20000000000000);
    MEMORY[0x266722710](v0[2], v0[3]);
    sub_261F9D610();
    OUTLINED_FUNCTION_20_3();
    swift_allocError();
    sub_26203AD4C();
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

double sub_261F7C39C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_25_1();
  }

  OUTLINED_FUNCTION_0_10();
  v7 = sub_261F7C720(v4, v5, v6);
  if ((v8 & 1) == 0)
  {
    return OUTLINED_FUNCTION_25_1();
  }

  v9 = *(a1 + 56) + 32 * v7;

  sub_261F681A8(v9, a2);
  return result;
}

void sub_261F7C400(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_261F7C39C(a1, v33);
  if (v34)
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_13_11();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    v8 = v4 ^ 1;
  }

  else
  {
    sub_261F66E60(v33, &qword_27FEF9870, &qword_26203C960);
    v7 = 0;
    v8 = 1;
  }

  v39 = v8;
  sub_261F7C39C(a1, v33);
  if (v34)
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_13_11();
    if (v6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v12 = v9 ^ 1;
  }

  else
  {
    sub_261F66E60(v33, &qword_27FEF9870, &qword_26203C960);
    v11 = 0;
    v12 = 1;
  }

  v38 = v12;
  sub_261F7C39C(a1, v33);
  if (v34)
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_13_11();
    if (v6)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    v16 = v13 ^ 1;
  }

  else
  {
    sub_261F66E60(v33, &qword_27FEF9870, &qword_26203C960);
    v15 = 0;
    v16 = 1;
  }

  v37 = v16;
  sub_261F7C39C(a1, v33);
  if (v34)
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_13_11();
    if (v6)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    v20 = v17 ^ 1;
  }

  else
  {
    sub_261F66E60(v33, &qword_27FEF9870, &qword_26203C960);
    v19 = 0;
    v20 = 1;
  }

  v36 = v20;
  sub_261F7C39C(a1, v33);
  if (v34)
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_13_11();
    if (v6)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    v24 = v21 ^ 1;
  }

  else
  {
    sub_261F66E60(v33, &qword_27FEF9870, &qword_26203C960);
    v23 = 0;
    v24 = 1;
  }

  v35 = v24;
  sub_261F7C39C(a1, v33);

  if (v34)
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_13_11();
    if (v6)
    {
      v26 = 0;
    }

    v27 = v25 ^ 1;
  }

  else
  {
    sub_261F66E60(v33, &qword_27FEF9870, &qword_26203C960);
    v26 = 0;
    v27 = 1;
  }

  v28 = v39;
  v29 = v38;
  v30 = v37;
  v31 = v36;
  v32 = v35;
  *a2 = v7;
  *(a2 + 8) = v28;
  *(a2 + 16) = v11;
  *(a2 + 24) = v29;
  *(a2 + 32) = v15;
  *(a2 + 40) = v30;
  *(a2 + 48) = v19;
  *(a2 + 56) = v31;
  *(a2 + 64) = v23;
  *(a2 + 72) = v32;
  *(a2 + 80) = v26;
  *(a2 + 88) = v27;
}

uint64_t sub_261F7C720(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(v3 + 40);
  sub_26203ADDC();
  sub_26203A23C();
  sub_26203AE0C();
  v5 = OUTLINED_FUNCTION_75();

  return a3(v5);
}

uint64_t OUTLINED_FUNCTION_70_0()
{
}

unint64_t sub_261F7C7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26203AC0C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_261F7C884()
{
  OUTLINED_FUNCTION_2_8();
  v2 = (v0 + *(v1 + 136));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    *v2 = v5;
    v2[1] = v6;
    OUTLINED_FUNCTION_272();
    swift_bridgeObjectRetain_n();
  }

  return OUTLINED_FUNCTION_47();
}

uint64_t VirtualInterface.interfaceName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_261F7C968@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = MEMORY[0x277D83B88];
  *a2 = result;
  return result;
}

uint64_t sub_261F7C97C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261F7C9BC@<X0>(_BYTE *a1@<X8>)
{
  result = static Defaults.hasBeenPaired.getter();
  *a1 = result;
  return result;
}

uint64_t sub_261F7CA44(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return static Defaults.tunnelMaxPendingPackets.setter();
}

uint64_t sub_261F7CA7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return static Defaults.tunnelMTU.setter();
}

uint64_t sub_261F7CAEC@<X0>(uint64_t *a1@<X8>)
{
  result = static Defaults.deviceFixedNetworkPairingPin.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261F7CB68(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return static Defaults.pairingRecordExpiryInterval.setter();
}

uint64_t sub_261F7CBA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return static Defaults.pairingRecordLastUsedUpdateInterval.setter();
}

uint64_t sub_261F7CC70@<X0>(uint64_t *a1@<X8>)
{
  result = static Defaults.hostAllowBluetoothDeviceDiscoveryForTypes.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t *sub_261F7CCC4@<X0>(uint64_t **a1@<X8>)
{
  result = static Defaults.hostDeviceDiscoveryPrewarmingDelay.getter();
  *a1 = result;
  return result;
}

uint64_t sub_261F7CDE4@<X0>(uint64_t *a1@<X8>)
{
  result = static Defaults.hostAdditionalControlChannelSupportedRSDDeviceTypes.getter();
  *a1 = result;
  return result;
}

uint64_t sub_261F7CE10@<X0>(uint64_t *a1@<X8>)
{
  result = static Defaults.hostTunnelConnectionProtocol.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t *sub_261F7CE3C@<X0>(uint64_t **a1@<X8>)
{
  result = static Defaults.hostControlChannelConnectionLifetimeReconnectionThreshold.getter();
  *a1 = result;
  return result;
}

uint64_t *sub_261F7CE6C@<X0>(uint64_t **a1@<X8>)
{
  result = static Defaults.hostTunnelHeartbeatInterval.getter();
  *a1 = result;
  return result;
}

uint64_t *sub_261F7CE9C@<X0>(uint64_t **a1@<X8>)
{
  result = static Defaults.tunnelPacketFlowStatsInterval.getter();
  *a1 = result;
  return result;
}

id sub_261F7CECC@<X0>(void *a1@<X8>)
{
  result = static Defaults.hostMinumumSupportedWatchWireProtocolVersion.getter();
  *a1 = result;
  return result;
}

id sub_261F7CEF8@<X0>(void *a1@<X8>)
{
  result = static Defaults.hostMinumumSupportedDeviceWireProtocolVersion.getter();
  *a1 = result;
  return result;
}

uint64_t sub_261F7CF54@<X0>(_BYTE *a1@<X8>)
{
  result = static Defaults.hostPairingViaLockdownPreference.getter();
  *a1 = v3;
  return result;
}

uint64_t *sub_261F7CFE8@<X0>(uint64_t **a1@<X8>)
{
  result = static Defaults.tunnelEndpointNumberOfBufferedEvents.getter();
  *a1 = result;
  return result;
}

uint64_t *sub_261F7D078@<X0>(uint64_t **a1@<X8>)
{
  result = static Defaults.hostDeviceConnectionBackoffBaseDelay.getter();
  *a1 = result;
  return result;
}

uint64_t *sub_261F7D0A8@<X0>(uint64_t **a1@<X8>)
{
  result = static Defaults.hostDeviceConnectionBackoffMaxDelay.getter();
  *a1 = result;
  return result;
}

__n128 sub_261F7D11C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_261F7D1D8()
{
  OUTLINED_FUNCTION_71(*(v0 + 16));
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_261F7D334@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261F7D2F0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_261F7D3E8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7D41C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261F7D45C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_261F7D46C@<X0>(uint64_t *a1@<X8>)
{
  result = CreateWirelessPairingSessionRequest.endpoint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_261F7D49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26203965C();
    v9 = OUTLINED_FUNCTION_60_0(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91C0, &qword_26203CD50);
      v12 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_261F7D570(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26203965C();
    v9 = OUTLINED_FUNCTION_60_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91C0, &qword_26203CD50);
      v12 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_261F7D640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9228, &qword_26203CD88);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261F7D694(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9228, &qword_26203CD88);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_261F7D700(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_43_1();
  v5 = type metadata accessor for HostDeletionTarget(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_261F7D744()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for HostDeletionTarget(v0);
  v1 = OUTLINED_FUNCTION_69_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_261F7D788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26203989C();
  v7 = OUTLINED_FUNCTION_60_0(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_261F7D840(uint64_t a1, char a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_43_1();
  v8 = sub_26203989C();
  result = OUTLINED_FUNCTION_60_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_69_0();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_261F7D98C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261F7D9C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  sub_261F6AE18(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_261F7DA9C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261F7DADC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261F7DB14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261F7DB4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261F7DB84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_261F7DC00@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_261F7DE8C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_106();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

char *sub_261F7DED0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_3(a3, result);
  }

  return result;
}

uint64_t sub_261F7DEF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_106();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

void *sub_261F7DF50(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_261FA801C();
  *v1 = result;
  return result;
}

uint64_t sub_261F7DFAC(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_261FA8B70();
  *v1 = result & 1;
  return result;
}

uint64_t sub_261F7E1A8(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_261FA9318();
  *v1 = result & 1;
  return result;
}

void *sub_261F7E1FC(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_261FA93F0();
  *v1 = result;
  return result;
}

void *sub_261F7E228(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_261FA94DC();
  *v1 = result;
  return result;
}

void *sub_261F7E264(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_261F7E284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9940, &qword_26203F790);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_261F7E324(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9940, &qword_26203F790);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261F7E454()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_261F7E4E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F7E524()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7E55C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_106();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F7E5A0()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_261F7E5E8()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261F7E694()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261F7E724()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261F7E77C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_261F7E7DC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_261F7E83C()
{
  v1 = *(v0 + 24);

  sub_261FC07A8(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_261F7E880()
{
  v1 = sub_26203942C();
  OUTLINED_FUNCTION_28_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261F7E8FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261F7E93C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261F7E978()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261F7E9B0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261F7E9F0()
{
  v1 = *(v0 + 24);
  sub_261F6AE18(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_261F7EA2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261F7EAD8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7EB0C()
{
  sub_261F6BFFC(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_261F7EB40()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7EB8C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261F7EC5C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_261F7EE5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261F7EE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PairableHostInfo(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_261F7EF44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PairableHostInfo(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_261F7EFF0()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_0_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_261F7F020()
{
  MEMORY[0x266724220](v0 + 16);
  v1 = OUTLINED_FUNCTION_0_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_261F7F050()
{
  v1 = OUTLINED_FUNCTION_0_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_261F7F080()
{
  v1 = sub_26203965C();
  OUTLINED_FUNCTION_6_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_261F7F268@<X0>(uint64_t *a1@<X8>)
{
  result = PairableHostInfo.endpoint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_261F7F298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_43_1();
  v6 = sub_26203965C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_26203989C();
    v8 = v3 + *(a3 + 40);
    goto LABEL_8;
  }

  v9 = *(v3 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_261F7F368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_43_1();
  result = sub_26203965C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_26203989C();
    v10 = v4 + *(a4 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_261F7F4B0()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7F4EC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7F528()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261F7F568()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261F7F5B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261FD9B70();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_261F7F6BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F7F6FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F7F734()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_261F6BFFC(v0[5], v0[6]);
  v3 = OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F7F790@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261F65204();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_261F7F7C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_261FE1530();
  *a2 = result & 1;
  return result;
}

uint64_t sub_261F7F844()
{
  sub_261F6BFFC(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7F884()
{
  sub_261F6BFFC(v0[2], v0[3]);
  v1 = v0[5];

  v2 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7F8EC()
{
  v1 = *(v0 + 40);

  v2 = OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7F924()
{
  v1 = v0[5];

  sub_261F6BFFC(v0[6], v0[7]);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261F7F964()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7F998()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_261F7F9D8()
{
  v1 = v0[3];

  sub_261F6BFFC(v0[4], v0[5]);
  v2 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7FB98(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = CUPairedPeer.udid.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

id sub_261F7FBEC(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = CUPairedPeer.ecid.getter();
  *v1 = result;
  *(v1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_261F7FC20(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = CUPairedPeer.remoteUnlockKey.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_261F7FC4C(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = CUPairedPeer.serialNumber.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

id sub_261F7FCC8(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = CUPairedPeer.lastSeenWireProtocolVersion.getter();
  *v1 = result;
  return result;
}

uint64_t sub_261F7FD3C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7FD88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_261F7FDD4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_261F7FE18()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F7FE4C(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_130(a1);
  result = sub_261F65200(v2);
  *v1 = result;
  v1[1] = v4;
  return result;
}

uint64_t sub_261F7FEA0(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_261FE7174();
  *v1 = result & 1;
  return result;
}

uint64_t sub_261F7FF20(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_261FE8254();
  *v1 = result;
  return result;
}

uint64_t sub_261F7FF4C(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_261FE830C();
  *v1 = result & 1;
  return result;
}

uint64_t sub_261F7FFD0()
{
  MEMORY[0x266724220](v0 + 16);
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_261F80004()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261F8004C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_261F800E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = OS_dispatch_queue.parentQueue.getter();
  *a2 = result;
  return result;
}

uint64_t sub_261F80110()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261F80148()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

__n128 sub_261F8026C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_261F8030C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261F7C884();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t _s19RemotePairingDevice20TunnelConnectionTypeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_232(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s19RemotePairingDevice20TunnelConnectionTypeOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_261F803E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_232(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261F803F8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_261F80500()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261F80538()
{
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_261F8056C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_261F805A0()
{
  MEMORY[0x266724220](v0 + 16);
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_261F805D4()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_2_20();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F8060C()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_2_20();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

BOOL sub_261F80680(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_261F806AC(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_22_7(a1);
}

uint64_t sub_261F80818(uint64_t a1, uint64_t a2)
{
  v4 = sub_262039ACC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_261F80860(uint64_t a1, uint64_t a2)
{
  v4 = sub_262039ACC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_261F808E8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261F80930()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261F80978()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261F809C8()
{
  v1 = sub_26203942C();
  OUTLINED_FUNCTION_28_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261F80A7C()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F80AB0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F80AEC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_261F80B24()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F80B58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26200C74C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_261F80B88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26200C81C();
  *a2 = result;
  return result;
}

uint64_t sub_261F80BDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26200C8BC();
  *a2 = result;
  return result;
}

uint64_t sub_261F80CAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261F80D24()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F80D58()
{
  v1 = *(v0 + 32);

  v2 = OUTLINED_FUNCTION_2_20();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F80D88()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_261F80DBC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  OUTLINED_FUNCTION_106();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_261F80E04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_106();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F80E40()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_63();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F80E74()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  OUTLINED_FUNCTION_106();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_261F80EB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_2_20();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F80EF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_2_20();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F80F34(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_262010380();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_261F80F60(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_262010448();
  *v1 = result;
  return result;
}

uint64_t sub_261F80FB0(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_26200C81C();
  *v1 = result;
  return result;
}

uint64_t sub_261F81000(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_262012B7C();
  *v1 = result;
  return result;
}

uint64_t sub_261F8102C(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_262012C28();
  *v1 = result;
  return result;
}

uint64_t sub_261F81058(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_262012C80();
  *v1 = result;
  return result;
}

uint64_t sub_261F81084(uint64_t *a1)
{
  OUTLINED_FUNCTION_130(a1);
  result = sub_262012D58();
  *v1 = result;
  return result;
}

uint64_t sub_261F810EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_2_20();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F81124()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_261F8147C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_262029284();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_261F814D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_262029360();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_261F81574()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261F815E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DiscoveredBonjourAdvert();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_261F8169C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DiscoveredBonjourAdvert();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_261F81770()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261F8185C()
{
  MEMORY[0x266724220](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261F818C4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F81900()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261F81940()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261F81980()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261F819BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261F81A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262039A7C();
  v7 = OUTLINED_FUNCTION_60_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_26203965C();
  v12 = OUTLINED_FUNCTION_60_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 52));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_261F81B24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_262039A7C();
  v9 = OUTLINED_FUNCTION_60_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_26203965C();
    result = OUTLINED_FUNCTION_60_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 52)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_261F81C1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261F81C78()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_261F81CF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261F81D30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261F81D84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_261F6B73C(a1, a2);
  }

  return a1;
}

id RemotePairingCopyRemoteUnlockDeviceKeyForTunnel(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_alloc_init(_TtC19RemotePairingDevice42RemotePairingDeviceTunnelServiceConnection);
  v5 = [(RemotePairingDeviceTunnelServiceConnection *)v4 copyRemoteUnlockDeviceKeyForTunnelWithTunnelName:v3 error:a2];

  return v5;
}

uint64_t RemotePairingGetCurrentWireProtocolVersion()
{
  v0 = +[_TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion current];
  v1 = [v0 rawValue];

  return v1;
}

id _RPTextToMACAddress(void *a1)
{
  v4 = 0;
  v3 = 0;
  [a1 UTF8String];
  if (TextToHardwareAddress())
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x277CBEA90] dataWithBytes:&v3 length:6];
  }

  return v1;
}

BOOL InterfaceIndexCorrespondsToAppleNCMInterface(uint64_t a1)
{
  *(&v40[1] + 4) = *MEMORY[0x277D85DE8];
  v2 = get_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    InterfaceIndexCorrespondsToAppleNCMInterface_cold_1();
  }

  if (a1 < 0)
  {
    v6 = get_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      InterfaceIndexCorrespondsToAppleNCMInterface_cold_8();
    }

    goto LABEL_19;
  }

  *bsdName = 0;
  v33 = 0;
  v34 = 0;
  if (!if_indextoname(a1, bsdName))
  {
    v6 = get_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      InterfaceIndexCorrespondsToAppleNCMInterface_cold_7();
    }

    goto LABEL_19;
  }

  v3 = *MEMORY[0x277CD28A0];
  v4 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, bsdName);
  if (!v4)
  {
    v6 = get_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      InterfaceIndexCorrespondsToAppleNCMInterface_cold_6();
    }

    goto LABEL_19;
  }

  existing = 0;
  if (IOServiceGetMatchingServices(v3, v4, &existing))
  {
    v5 = 1;
  }

  else
  {
    v5 = existing == 0;
  }

  if (v5)
  {
    v6 = get_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      InterfaceIndexCorrespondsToAppleNCMInterface_cold_2();
    }

LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  v10 = IOIteratorNext(existing);
  if (v10)
  {
    v11 = v10;
    v12 = *MEMORY[0x277CBECE8];
    while (1)
    {
      parent = 0;
      v13 = get_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        InterfaceIndexCorrespondsToAppleNCMInterface_cold_3(v39, v40, v13);
      }

      ParentEntry = IORegistryEntryGetParentEntry(v11, "IOService", &parent);
      if (ParentEntry || !parent)
      {
        break;
      }

      if (!IOObjectConformsTo(parent, "AppleUSBNCMData"))
      {
        v18 = get_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          InterfaceIndexCorrespondsToAppleNCMInterface_cold_5(v37, &v38, v18);
        }

LABEL_39:

        v7 = 0;
        goto LABEL_40;
      }

      CFProperty = IORegistryEntryCreateCFProperty(parent, @"idVendor", v12, 0);
      if (CFProperty && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(CFProperty)))
      {
        valuePtr = 0;
        CFNumberGetValue(CFProperty, kCFNumberSInt16Type, &valuePtr);
        v17 = valuePtr == 1452;
      }

      else
      {
        v19 = get_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          InterfaceIndexCorrespondsToAppleNCMInterface_cold_4(v35, &v36, v19);
        }

        v17 = 0;
        v7 = 0;
        if (!CFProperty)
        {
          goto LABEL_40;
        }
      }

      CFRelease(CFProperty);
      v7 = v17;
LABEL_40:
      if (parent)
      {
        IOObjectRelease(parent);
      }

      v20 = get_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v25 = "ServiceHasAppleNCMParent";
        v26 = 1024;
        LODWORD(v27) = v7;
        _os_log_debug_impl(&dword_261F5B000, v20, OS_LOG_TYPE_DEBUG, "%s The end result of checking the parent was: %d", buf, 0x12u);
      }

      IOObjectRelease(v11);
      if (!v7)
      {
        v11 = IOIteratorNext(existing);
        if (v11)
        {
          continue;
        }
      }

      goto LABEL_48;
    }

    v18 = get_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "ServiceHasAppleNCMParent";
      v26 = 1024;
      LODWORD(v27) = ParentEntry;
      _os_log_error_impl(&dword_261F5B000, v18, OS_LOG_TYPE_ERROR, "%s IORegistryEntryGetParentEntry failed. Result: %d", buf, 0x12u);
    }

    goto LABEL_39;
  }

  v7 = 0;
LABEL_48:
  IOObjectRelease(existing);
  v6 = get_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v25 = "InterfaceIndexCorrespondsToAppleNCMInterface";
    v26 = 2048;
    v27 = a1;
    v28 = 2080;
    v29 = bsdName;
    v30 = 1024;
    v31 = v7;
    _os_log_debug_impl(&dword_261F5B000, v6, OS_LOG_TYPE_DEBUG, "%s The end result for interface index %ld/name %s was: %d", buf, 0x26u);
  }

LABEL_20:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

id get_log()
{
  if (get_log_onceToken[0] != -1)
  {
    get_log_cold_1();
  }

  v1 = get_log_log;

  return v1;
}

uint64_t __get_log_block_invoke()
{
  get_log_log = os_log_create("com.apple.dt.remotepairing", "networkinterfaceutils");

  return MEMORY[0x2821F96F8]();
}

BOOL remotepairing_delete_pair_records_with_options(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_alloc_init(_TtC19RemotePairingDevice43RemotePairingDevicePairingServiceConnection);
  v5 = [v3 objectForKeyedSubscript:@"preserveAutomationPairRecords"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([v3 objectForKeyedSubscript:@"preserveAutomationPairRecords"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, !v8))
  {
    v14 = 0;
    v9 = &v14;
    [(RemotePairingDevicePairingServiceConnection *)v4 deleteAllPairingRecordsAndReturnError:&v14];
  }

  else
  {
    v15 = 0;
    v9 = &v15;
    [(RemotePairingDevicePairingServiceConnection *)v4 deleteNonAutomationPairingRecordsAndReturnError:&v15];
  }

  v10 = *v9;
  v11 = v10;
  if (a2 && v10)
  {
    v12 = v10;
    *a2 = v11;
  }

  return v11 == 0;
}

BOOL remotepairing_delete_pair_record(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_alloc_init(_TtC19RemotePairingDevice43RemotePairingDevicePairingServiceConnection);
  v9 = 0;
  [(RemotePairingDevicePairingServiceConnection *)v4 deletePairingRecordForHostWithIdentifier:v3 error:&v9];

  v5 = v9;
  v6 = v5;
  if (a2 && v5)
  {
    v7 = v5;
    *a2 = v6;
  }

  return v6 == 0;
}

id RemotePairingGetTrustedHostInfoAndReturnError(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC19RemotePairingDevice43RemotePairingDevicePairingServiceConnection);
  v3 = [(RemotePairingDevicePairingServiceConnection *)v2 trustedHostInfoAndReturnError:a1];

  return v3;
}

BOOL remotepairingAllowPromptlessPairing(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v6 = objc_alloc_init(_TtC19RemotePairingDevice43RemotePairingDevicePairingServiceConnection);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __remotepairingAllowPromptlessPairing_block_invoke;
  v12[3] = &unk_279B0BEA8;
  v14 = &v15;
  v8 = v7;
  v13 = v8;
  [(RemotePairingDevicePairingServiceConnection *)v6 allowPromptlessPairingForAutomation:a1 forBUID:v5 withQueue:0 completion:v12];
  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v16[5];
  if (a3 && v9)
  {
    v9 = v9;
    *a3 = v9;
  }

  v10 = v9 == 0;

  _Block_object_dispose(&v15, 8);
  return v10;
}

void sub_261F827AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __remotepairingAllowPromptlessPairing_block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t RemotePairingGetUSBConnectedHostTrustState(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC19RemotePairingDevice43RemotePairingDevicePairingServiceConnection);
  v3 = [(RemotePairingDevicePairingServiceConnection *)v2 getUSBConectedHostTrustStateWithError:a1];

  return v3;
}

void createWirelessPairingSessionWithPinHandler(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v8 = objc_alloc_init(_TtC19RemotePairingDevice43RemotePairingDevicePairingServiceConnection);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __createWirelessPairingSessionWithPinHandler_block_invoke;
  aBlock[3] = &unk_279B0BED0;
  v12 = v5;
  v9 = v5;
  v10 = _Block_copy(aBlock);
  [(RemotePairingDevicePairingServiceConnection *)v8 initiateWirelessPairingSessionWithQueue:v7 completionHandler:v10 customPinHandler:v6];
}

void __createWirelessPairingSessionWithPinHandler_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = *(a1 + 32);
    v7 = [[RPWirelessPairingSession alloc] initWithUnderlyingObject:v10];
    (*(v6 + 16))(v6, v7, 0);
  }

  else if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void createWirelessPairingSessionWithPinHandler(__strong dispatch_queue_t _Nonnull, void (^__strong _Nonnull)(RPWirelessPairingSession * _Nullable __strong, NSError * _Nullable __strong), void (^ _Nullable __strong)(NSString * _Nullable __strong, NSString * _Nullable __strong))_block_invoke"}];
    [v8 handleFailureInFunction:v9 file:@"PairingManagement.m" lineNumber:129 description:@"Bug in remotepairing: Neither error nor session was returned"];
  }
}

uint64_t remotePairingIsEnabled()
{
  if (os_variant_has_internal_content())
  {
    os_variant_allows_internal_security_policies();
  }

  return 1;
}

uint64_t _ManagedOpaqueCFTypeWrapper.__allocating_init(retainedValue:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t _ManagedOpaqueCFTypeWrapper.__allocating_init(unretainedValue:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  swift_unknownObjectRetain();
  return v2;
}

uint64_t _ManagedOpaqueCFTypeWrapper.init(unretainedValue:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_unknownObjectRetain();
  return v1;
}

uint64_t _ManagedOpaqueCFTypeWrapper.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t _ManagedOpaqueCFTypeWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_0_2();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261F82DCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261F82DEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_261F82E48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261F82E68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_261F82F10(uint64_t a1, id *a2)
{
  result = sub_26203A19C();
  *a2 = 0;
  return result;
}

uint64_t sub_261F82F8C(uint64_t a1, id *a2)
{
  v3 = sub_26203A1AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_261F8300C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261F83034();
  *a1 = result;
  return result;
}

uint64_t sub_261F83034()
{
  sub_26203A1BC();
  v0 = sub_26203A18C();

  return v0;
}

uint64_t sub_261F83074()
{
  v0 = sub_26203A1BC();
  v1 = MEMORY[0x266722770](v0);

  return v1;
}

uint64_t sub_261F830B4()
{
  sub_26203A1BC();
  sub_26203A23C();
}

void sub_261F83110(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_261F83144();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_261F8314C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_261F83184@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_261F831B0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_26203968C();
}

uint64_t sub_261F831FC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_26203967C();
}

uint64_t sub_261F83254()
{
  sub_26203ADDC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_26203967C();
  return sub_26203AE0C();
}

uint64_t sub_261F832BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261FC5BC8();
  *a1 = result;
  return result;
}

uint64_t sub_261F832E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_261FA5E94();
}

uint64_t sub_261F832F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_261F833EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261F83440@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26203A18C();

  *a2 = v5;
  return result;
}

uint64_t sub_261F83488@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261FA3690(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_261F834FC(uint64_t a1, int a2)
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

uint64_t sub_261F8351C(uint64_t result, int a2, int a3)
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

uint64_t sub_261F83560(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 272))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_261F835B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261F83674(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261F83694(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_261F836DC(uint64_t a1)
{
  v2 = sub_261F833EC(&unk_27FEF96A0, type metadata accessor for RPTrustedHostInfoKey);
  v3 = sub_261F833EC(&qword_27FEF8D10, type metadata accessor for RPTrustedHostInfoKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t getEnumTagSinglePayload for TunnelFlags(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TunnelFlags(uint64_t result, int a2, int a3)
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

void sub_261F83928(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t static Defaults.hasBeenPaired.getter()
{
  if (qword_27FEF84E0 != -1)
  {
    OUTLINED_FUNCTION_14_2();
  }

  OUTLINED_FUNCTION_10();
  v0 = word_27FEF8E70 | (HIBYTE(word_27FEF8E70) << 8);

  v1 = OUTLINED_FUNCTION_22_1();
  sub_261F83A5C(v1, v2, v0);
  OUTLINED_FUNCTION_70_0();
  return v0;
}

uint64_t static Defaults.hasBeenPaired.setter(char a1)
{
  if (qword_27FEF84E0 != -1)
  {
    OUTLINED_FUNCTION_14_2();
  }

  OUTLINED_FUNCTION_21();
  sub_261F849C0(a1);
  return swift_endAccess();
}

uint64_t sub_261F83A5C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  if (a3)
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v4 = &qword_28108CE70;
  }

  v5 = *v4;
  v6 = sub_26203A18C();
  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v8 = v3;
  v9 = sub_261F8B504(v11);
  sub_261F8C2C8(v11, &qword_27FEF9870, &qword_26203C960);
  if (v9 == 3)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_261F83BA8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    if (qword_27FEF85D0 != -1)
    {
      OUTLINED_FUNCTION_6_3();
    }

    v4 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v4 = &qword_28108CE70;
  }

  v5 = *v4;
  v6 = sub_26203A18C();
  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
  }

  v8 = (a3 >> 8) & 1;
  v9 = sub_262031B08(v12);
  sub_261F8C2C8(v12, &qword_27FEF9870, &qword_26203C960);
  if (v9 == 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return v10 & 1;
}

uint64_t sub_261F83CEC()
{
  if (v0[2])
  {
    if (qword_27FEF85D0 != -1)
    {
      OUTLINED_FUNCTION_6_3();
    }

    v1 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v1 = &qword_28108CE70;
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = *v1;
  v5 = sub_26203A18C();
  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
  }

  v7 = sub_261F8B684(v12);
  v9 = v8;
  sub_261F8C2C8(v12, &qword_27FEF9870, &qword_26203C960);
  if (v9 == 1)
  {
    v7 = v0[3];
    v10 = v0[4];
  }

  return v7;
}

uint64_t sub_261F83E20(uint64_t (*a1)(_BYTE *, __n128))
{
  if (v1[2])
  {
    if (qword_27FEF85D0 != -1)
    {
      OUTLINED_FUNCTION_6_3();
    }

    v3 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v3 = &qword_28108CE70;
  }

  v4 = *v1;
  v5 = v1[1];
  v6 = *v3;
  OUTLINED_FUNCTION_72();
  v7 = sub_26203A18C();
  v8 = [v6 valueForKey_];

  if (v8)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9.n128_f64[0] = OUTLINED_FUNCTION_86_0();
  }

  v10 = a1(v15, v9);
  v12 = v11;
  sub_261F8C2C8(v15, &qword_27FEF9870, &qword_26203C960);
  if ((v12 & 0x100) != 0)
  {
    v10 = v1[3];
    v13 = *(v1 + 32);
  }

  return v10;
}

uint64_t sub_261F83F58(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (qword_27FEF85D0 != -1)
    {
      OUTLINED_FUNCTION_6_3();
    }

    v5 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v5 = &qword_28108CE70;
  }

  v6 = *v5;
  v7 = sub_26203A18C();
  v8 = [v6 valueForKey_];

  if (v8)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
  }

  v9 = sub_262031B6C(v13);
  v11 = v10;
  sub_261F8C2C8(v13, &qword_27FEF9870, &qword_26203C960);
  if (v11)
  {
    return a4;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_261F8407C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v5 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v5 = &qword_28108CE70;
  }

  v6 = *v5;
  v7 = sub_26203A18C();
  v8 = [v6 valueForKey_];

  if (v8)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v9 = sub_261F8AA18(v11);
  sub_261F8C2C8(v11, &qword_27FEF9870, &qword_26203C960);
  if (v9)
  {
    return v9;
  }

  return a4;
}

uint64_t sub_261F841D0()
{
  if (v0[2])
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v1 = &qword_28108CE70;
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = *v1;
  v5 = sub_26203A18C();
  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  v7 = sub_262031AA4(v12);
  v9 = v8;
  sub_261F8C2C8(v12, &qword_27FEF9870, &qword_26203C960);
  if (!v9)
  {
    v7 = v0[3];
    v10 = v0[4];
  }

  return v7;
}

id sub_261F84324(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v4 = &qword_28108CE70;
  }

  v5 = *v4;
  v6 = sub_26203A18C();
  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v8 = sub_261F89820(v11);
  sub_261F8C2C8(v11, &qword_27FEF9870, &qword_26203C960);
  if (v8)
  {
    return v8;
  }

  return a4;
}

uint64_t sub_261F84490@<X0>(__int16 a1@<W2>, _BYTE *a2@<X8>)
{
  v2 = HIBYTE(a1);
  if (a1)
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v4 = &qword_28108CE70;
  }

  v5 = *v4;
  v6 = sub_26203A18C();
  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_261F8C34C(v11, v10, &qword_27FEF9870, &qword_26203C960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  if ((swift_dynamicCast() & 1) == 0 || !v10[5] || (v8 = sub_26203A96C(), , v8 > 2))
  {
    LOBYTE(v8) = v2;
  }

  result = sub_261F8C2C8(v11, &qword_27FEF9870, &qword_26203C960);
  *a2 = v8;
  return result;
}

uint64_t sub_261F84654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v3 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v3 = &qword_28108CE70;
  }

  v4 = *v3;
  v5 = sub_26203A18C();
  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  sub_262031B78(v8);
  return sub_261F8C2C8(v8, &qword_27FEF9870, &qword_26203C960);
}

uint64_t DefaultsBackedProperty.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_26203A6DC();
  OUTLINED_FUNCTION_16();
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v12);
  v14 = v22 - v13;
  v15 = sub_261F8C098();
  v16 = *v2;
  v17 = *(v2 + 1);
  v18 = sub_26203A18C();
  v19 = [v15 valueForKey_];

  if (v19)
  {
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  (*(*(a1 + 24) + 16))(v22, v6);
  sub_261F8C2C8(v22, &qword_27FEF9870, &qword_26203C960);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    (*(*(v6 - 8) + 16))(a2, &v3[*(a1 + 40)], v6);
    result = __swift_getEnumTagSinglePayload(v14, 1, v6);
    if (result != 1)
    {
      return (*(v9 + 8))(v14, v7);
    }
  }

  else
  {
    OUTLINED_FUNCTION_71(v6);
    return (*(v21 + 32))(a2, v14, v6);
  }

  return result;
}

void sub_261F849C0(char a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF91B0, &qword_26203CD18);
  v19 = &protocol witness table for A?;
  LOBYTE(v17[0]) = a1;
  if (*__swift_project_boxed_opaque_existential_0Tm(v17, v18) == 2)
  {
    if (v1[2])
    {
      if (qword_27FEF85D0 != -1)
      {
        swift_once();
      }

      v3 = &qword_27FEF9130;
    }

    else
    {
      if (qword_28108CE68 != -1)
      {
        swift_once();
      }

      v3 = &qword_28108CE70;
    }

    v5 = *v1;
    v6 = v1[1];
    v7 = *v3;
    v8 = sub_26203A18C();
    [v7 removeObjectForKey_];

    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    if (v1[2])
    {
      if (qword_27FEF85D0 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FEF9130;
    }

    else
    {
      if (qword_28108CE68 != -1)
      {
        swift_once();
      }

      v4 = &qword_28108CE70;
    }

    v9 = *v4;
    if (a1 == 2)
    {
      v10 = 0;
      memset(v17, 0, sizeof(v17));
    }

    else
    {
      LOBYTE(v17[0]) = a1 & 1;
      v10 = MEMORY[0x277D839B0];
    }

    v18 = v10;
    sub_261F8C34C(v17, v16, &qword_27FEF9870, &qword_26203C960);
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
    v12 = sub_26203AC8C();
    sub_261F8C2C8(v17, &qword_27FEF9870, &qword_26203C960);
    v13 = *v1;
    v14 = v1[1];
    v15 = sub_26203A18C();
    [v11 setValue:v12 forKey:v15];

    swift_unknownObjectRelease();
  }
}

void sub_261F84C3C(char a1)
{
  v2 = v1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9138, &qword_26203C968);
  if (swift_dynamicCast())
  {
    sub_261F797BC(v18, v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_0Tm(v21, v22);
    if ((*(v5 + 8))(v4, v5))
    {
      if (v1[2])
      {
        if (qword_27FEF85D0 != -1)
        {
          swift_once();
        }

        v6 = &qword_27FEF9130;
      }

      else
      {
        if (qword_28108CE68 != -1)
        {
          swift_once();
        }

        v6 = &qword_28108CE70;
      }

      v15 = *v1;
      v14 = v2[1];
      v16 = *v6;
      v17 = sub_26203A18C();
      [v16 removeObjectForKey_];

      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_261F8C2C8(v18, &qword_27FEF9140, &unk_26203C970);
  }

  if (v1[2])
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v7 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v7 = &qword_28108CE70;
  }

  v8 = *v7;
  LOBYTE(v21[0]) = a1 & 1;
  v9 = v8;
  v10 = sub_26203AC8C();
  v11 = *v2;
  v12 = v2[1];
  v13 = sub_26203A18C();
  [v9 setValue:v10 forKey:v13];

  swift_unknownObjectRelease();
}

void sub_261F84EBC(uint64_t a1, char a2)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91A8, &qword_26203CD10);
  v23 = &protocol witness table for A?;
  v19 = a1;
  LOBYTE(v20) = a2 & 1;
  if (*(__swift_project_boxed_opaque_existential_0Tm(&v19, v22) + 8) == 1)
  {
    if (v2[2])
    {
      if (qword_27FEF85D0 != -1)
      {
        swift_once();
      }

      v5 = &qword_27FEF9130;
    }

    else
    {
      if (qword_28108CE68 != -1)
      {
        swift_once();
      }

      v5 = &qword_28108CE70;
    }

    v7 = *v2;
    v8 = v2[1];
    v9 = *v5;
    v10 = sub_26203A18C();
    [v9 removeObjectForKey_];

    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
    if (v2[2])
    {
      if (qword_27FEF85D0 != -1)
      {
        swift_once();
      }

      v6 = &qword_27FEF9130;
    }

    else
    {
      if (qword_28108CE68 != -1)
      {
        swift_once();
      }

      v6 = &qword_28108CE70;
    }

    v11 = *v6;
    if (a2)
    {
      a1 = 0;
      v12 = 0;
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v12 = MEMORY[0x277D83B88];
    }

    v19 = a1;
    v22 = v12;
    sub_261F8C34C(&v19, v18, &qword_27FEF9870, &qword_26203C960);
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
    v14 = sub_26203AC8C();
    sub_261F8C2C8(&v19, &qword_27FEF9870, &qword_26203C960);
    v15 = *v2;
    v16 = v2[1];
    v17 = sub_26203A18C();
    [v13 setValue:v14 forKey:v17];

    swift_unknownObjectRelease();
  }
}

void sub_261F85138(uint64_t a1, uint64_t a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
  v19 = &protocol witness table for A?;
  v17[0] = a1;
  v17[1] = a2;
  if (__swift_project_boxed_opaque_existential_0Tm(v17, v18)[1])
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    if (v2[2])
    {
      if (qword_27FEF85D0 != -1)
      {
        swift_once();
      }

      v5 = &qword_27FEF9130;
    }

    else
    {
      if (qword_28108CE68 != -1)
      {
        swift_once();
      }

      v5 = &qword_28108CE70;
    }

    v7 = *v5;
    sub_261F8BA74(a1, a2, v17);
    v8 = v7;

    __swift_project_boxed_opaque_existential_0Tm(v17, v18);
    v9 = sub_26203ABFC();
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v10 = *v2;
    v11 = v2[1];
    v12 = sub_26203A18C();
    [v8 setValue:v9 forKey:v12];

    swift_unknownObjectRelease();
  }

  else
  {
    if (v2[2])
    {
      if (qword_27FEF85D0 != -1)
      {
        swift_once();
      }

      v6 = &qword_27FEF9130;
    }

    else
    {
      if (qword_28108CE68 != -1)
      {
        swift_once();
      }

      v6 = &qword_28108CE70;
    }

    v13 = *v2;
    v14 = v2[1];
    v15 = *v6;
    v16 = sub_26203A18C();
    [v15 removeObjectForKey_];

    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }
}

void sub_261F85370(uint64_t a1, char a2)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91A0, &unk_26203CD00);
  v23 = &protocol witness table for A?;
  v19 = a1;
  LOBYTE(v20) = a2 & 1;
  if (*(__swift_project_boxed_opaque_existential_0Tm(&v19, v22) + 8) == 1)
  {
    if (v2[2])
    {
      if (qword_27FEF85D0 != -1)
      {
        swift_once();
      }

      v5 = &qword_27FEF9130;
    }

    else
    {
      if (qword_28108CE68 != -1)
      {
        swift_once();
      }

      v5 = &qword_28108CE70;
    }

    v7 = *v2;
    v8 = v2[1];
    v9 = *v5;
    v10 = sub_26203A18C();
    [v9 removeObjectForKey_];

    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
    if (v2[2])
    {
      if (qword_27FEF85D0 != -1)
      {
        swift_once();
      }

      v6 = &qword_27FEF9130;
    }

    else
    {
      if (qword_28108CE68 != -1)
      {
        swift_once();
      }

      v6 = &qword_28108CE70;
    }

    v11 = *v6;
    if (a2)
    {
      a1 = 0;
      v12 = 0;
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v12 = MEMORY[0x277D839F8];
    }

    v19 = a1;
    v22 = v12;
    sub_261F8C34C(&v19, v18, &qword_27FEF9870, &qword_26203C960);
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
    v14 = sub_26203AC8C();
    sub_261F8C2C8(&v19, &qword_27FEF9870, &qword_26203C960);
    v15 = *v2;
    v16 = v2[1];
    v17 = sub_26203A18C();
    [v13 setValue:v14 forKey:v17];

    swift_unknownObjectRelease();
  }
}

void sub_261F855EC(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9138, &qword_26203C968);
  if (swift_dynamicCast())
  {
    sub_261F797BC(v18, v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_0Tm(v21, v22);
    if ((*(v5 + 8))(v4, v5))
    {
      if (v1[2])
      {
        if (qword_27FEF85D0 != -1)
        {
          swift_once();
        }

        v6 = &qword_27FEF9130;
      }

      else
      {
        if (qword_28108CE68 != -1)
        {
          swift_once();
        }

        v6 = &qword_28108CE70;
      }

      v15 = *v1;
      v14 = v2[1];
      v16 = *v6;
      v17 = sub_26203A18C();
      [v16 removeObjectForKey_];

      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_261F8C2C8(v18, &qword_27FEF9140, &unk_26203C970);
  }

  if (v1[2])
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v7 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v7 = &qword_28108CE70;
  }

  v8 = *v7;
  v21[0] = a1;
  v9 = v8;
  v10 = sub_26203AC8C();
  v11 = *v2;
  v12 = v2[1];
  v13 = sub_26203A18C();
  [v9 setValue:v10 forKey:v13];

  swift_unknownObjectRelease();
}

void sub_261F85868(uint64_t a1)
{
  v2 = v1;
  v19 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9198, &qword_26203CCF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9138, &qword_26203C968);
  if (swift_dynamicCast())
  {
    sub_261F797BC(v17, v20);
    v4 = v21;
    v5 = v22;
    __swift_project_boxed_opaque_existential_0Tm(v20, v21);
    if ((*(v5 + 8))(v4, v5))
    {

      if (v1[2])
      {
        if (qword_27FEF85D0 != -1)
        {
          swift_once();
        }

        v6 = &qword_27FEF9130;
      }

      else
      {
        if (qword_28108CE68 != -1)
        {
          swift_once();
        }

        v6 = &qword_28108CE70;
      }

      v14 = *v1;
      v13 = v2[1];
      v15 = *v6;
      v16 = sub_26203A18C();
      [v15 removeObjectForKey_];

      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_261F8C2C8(v17, &qword_27FEF9140, &unk_26203C970);
  }

  if (v1[2])
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v7 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v7 = &qword_28108CE70;
  }

  v8 = *v7;
  sub_261F8AD9C(a1, v20);

  __swift_project_boxed_opaque_existential_0Tm(v20, v21);
  v9 = sub_26203ABFC();
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  v10 = *v2;
  v11 = v2[1];
  v12 = sub_26203A18C();
  [v8 setValue:v9 forKey:v12];

  swift_unknownObjectRelease();
}

void sub_261F85B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9138, &qword_26203C968);
  if (swift_dynamicCast())
  {
    sub_261F797BC(v20, v24);
    v6 = v25;
    v7 = v26;
    __swift_project_boxed_opaque_existential_0Tm(v24, v25);
    if ((*(v7 + 8))(v6, v7))
    {

      if (v2[2])
      {
        if (qword_27FEF85D0 != -1)
        {
          swift_once();
        }

        v8 = &qword_27FEF9130;
      }

      else
      {
        if (qword_28108CE68 != -1)
        {
          swift_once();
        }

        v8 = &qword_28108CE70;
      }

      v17 = *v2;
      v16 = v3[1];
      v18 = *v8;
      v19 = sub_26203A18C();
      [v18 removeObjectForKey_];

      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_261F8C2C8(v20, &qword_27FEF9140, &unk_26203C970);
  }

  if (v2[2])
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v9 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v9 = &qword_28108CE70;
  }

  v10 = *v9;
  v24[0] = a1;
  v24[1] = a2;
  v11 = v10;
  v12 = sub_26203AC8C();
  v13 = *v3;
  v14 = v3[1];
  v15 = sub_26203A18C();
  [v11 setValue:v12 forKey:v15];

  swift_unknownObjectRelease();
}

void sub_261F85DB4(void *a1)
{
  v2 = v1;
  v21 = a1;
  type metadata accessor for ControlChannelConnectionWireProtocolVersion();
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9138, &qword_26203C968);
  if (swift_dynamicCast())
  {
    sub_261F797BC(v19, v22);
    v5 = v23;
    v6 = v24;
    __swift_project_boxed_opaque_existential_0Tm(v22, v23);
    if ((*(v6 + 8))(v5, v6))
    {

      if (v2[2])
      {
        if (qword_27FEF85D0 != -1)
        {
          swift_once();
        }

        v7 = &qword_27FEF9130;
      }

      else
      {
        if (qword_28108CE68 != -1)
        {
          swift_once();
        }

        v7 = &qword_28108CE70;
      }

      v16 = *v2;
      v15 = v2[1];
      v17 = *v7;
      v18 = sub_26203A18C();
      [v17 removeObjectForKey_];

      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_261F8C2C8(v19, &qword_27FEF9140, &unk_26203C970);
  }

  if (v2[2])
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v8 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v8 = &qword_28108CE70;
  }

  v9 = *&v4[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue];
  v10 = *v8;

  v22[0] = v9;
  v11 = sub_26203AC8C();
  v12 = *v2;
  v13 = v2[1];
  v14 = sub_26203A18C();
  [v10 setValue:v11 forKey:v14];

  swift_unknownObjectRelease();
}

void sub_261F86058(char a1)
{
  v2 = v1;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9138, &qword_26203C968);
  if (swift_dynamicCast())
  {
    sub_261F797BC(v20, v23);
    v4 = v24;
    v5 = v25;
    __swift_project_boxed_opaque_existential_0Tm(v23, v24);
    if ((*(v5 + 8))(v4, v5))
    {
      if (v1[2])
      {
        if (qword_27FEF85D0 != -1)
        {
          swift_once();
        }

        v6 = &qword_27FEF9130;
      }

      else
      {
        if (qword_28108CE68 != -1)
        {
          swift_once();
        }

        v6 = &qword_28108CE70;
      }

      v17 = *v1;
      v16 = v2[1];
      v18 = *v6;
      v19 = sub_26203A18C();
      [v18 removeObjectForKey_];

      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_261F8C2C8(v20, &qword_27FEF9140, &unk_26203C970);
  }

  if (v1[2])
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v7 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v7 = &qword_28108CE70;
  }

  v8 = *v7;
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = 0xD00000000000001BLL;
      v10 = 0x800000026204C500;
    }

    else
    {
      v10 = 0x800000026204C520;
      v9 = 0xD000000000000020;
    }
  }

  else
  {
    v10 = 0xE500000000000000;
    v9 = 0x726576656ELL;
  }

  v23[0] = v9;
  v23[1] = v10;
  v11 = v8;
  v12 = sub_26203AC8C();
  v13 = *v2;
  v14 = v2[1];
  v15 = sub_26203A18C();
  [v11 setValue:v12 forKey:v15];

  swift_unknownObjectRelease();
}

void sub_261F86330(double a1)
{
  v2 = v1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9138, &qword_26203C968);
  if (swift_dynamicCast())
  {
    sub_261F797BC(v18, v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_0Tm(v21, v22);
    if ((*(v5 + 8))(v4, v5))
    {
      if (v1[2])
      {
        if (qword_27FEF85D0 != -1)
        {
          swift_once();
        }

        v6 = &qword_27FEF9130;
      }

      else
      {
        if (qword_28108CE68 != -1)
        {
          swift_once();
        }

        v6 = &qword_28108CE70;
      }

      v15 = *v1;
      v14 = v2[1];
      v16 = *v6;
      v17 = sub_26203A18C();
      [v16 removeObjectForKey_];

      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_261F8C2C8(v18, &qword_27FEF9140, &unk_26203C970);
  }

  if (v1[2])
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v7 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v7 = &qword_28108CE70;
  }

  v8 = *v7;
  *v21 = a1;
  v9 = v8;
  v10 = sub_26203AC8C();
  v11 = *v2;
  v12 = v2[1];
  v13 = sub_26203A18C();
  [v9 setValue:v10 forKey:v13];

  swift_unknownObjectRelease();
}

uint64_t DefaultsBackedProperty.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  OUTLINED_FUNCTION_16();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74();
  v12 = *(v8 + 16);
  v13 = OUTLINED_FUNCTION_22_1();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9138, &qword_26203C968);
  if (swift_dynamicCast())
  {
    sub_261F797BC(v27, v29);
    v15 = v30;
    v16 = v31;
    __swift_project_boxed_opaque_existential_0Tm(v29, v30);
    if ((*(v16 + 8))(v15, v16))
    {
      v17 = sub_261F8C098();
      v18 = *v3;
      v19 = v3[1];
      v20 = sub_26203A18C();
      [v17 removeObjectForKey_];

      (*(v8 + 8))(a1, v6);
      return __swift_destroy_boxed_opaque_existential_0Tm(v29);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_261F8C2C8(v27, &qword_27FEF9140, &unk_26203C970);
  }

  v22 = sub_261F8C098();
  (*(*(a2 + 24) + 8))(v29, v6);
  __swift_project_boxed_opaque_existential_0Tm(v29, v30);
  v23 = sub_26203ABFC();
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  v24 = *v3;
  v25 = v3[1];
  v26 = sub_26203A18C();
  [v22 setValue:v23 forKey:v26];

  swift_unknownObjectRelease();
  return (*(v8 + 8))(a1, v6);
}

uint64_t (*static Defaults.hasBeenPaired.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  if (qword_27FEF84E0 != -1)
  {
    OUTLINED_FUNCTION_14_2();
  }

  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87();
  *(a1 + 24) = sub_261F83A5C(v2, v3, v4);
  return sub_261F86884;
}

void sub_261F868A4()
{
  strcpy(&qword_27FEF8E60, "hasBeenPaired");
  *&algn_27FEF8E68[6] = -4864;
  word_27FEF8E70 = 513;
}

uint64_t DefaultsBackedProperty<>.init(key:domain:)()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_71(v0);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v6 = *v4;
  sub_26203ABBC();
  OUTLINED_FUNCTION_75();
  return sub_261F86AD8();
}

uint64_t static Defaults.networkPairingEnabled.getter()
{
  if (qword_28108B548 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.networkPairingEnabled.modify())(uint64_t a1)
{
  if (qword_28108B548 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F86AA0;
}

void sub_261F86AAC()
{
  qword_28108B550 = 0xD000000000000015;
  *algn_28108B558 = 0x800000026204CE10;
  word_28108B560 = 0;
}

uint64_t sub_261F86AD8()
{
  OUTLINED_FUNCTION_89();
  v3 = v2;
  LOBYTE(v2) = *v4;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v2;
  v7 = type metadata accessor for DefaultsBackedProperty();
  v8 = *(*(v0 - 8) + 32);
  v9 = v3 + *(v7 + 40);

  return v8(v9, v1, v0);
}

uint64_t static Defaults.tunnelMaxPendingPackets.getter()
{
  if (qword_28108B4C0 != -1)
  {
    OUTLINED_FUNCTION_50();
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4, v5, v6, v7, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  v8 = OUTLINED_FUNCTION_2_1();
  v9 = sub_261F83E20(v8);
  OUTLINED_FUNCTION_26_1(v9, v10, v11, v12, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_85();
}

uint64_t static Defaults.tunnelMaxPendingPackets.modify()
{
  v0 = OUTLINED_FUNCTION_84_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_69(v1);
  if (qword_28108B4C0 != -1)
  {
    OUTLINED_FUNCTION_50();
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_23();
  v2 = OUTLINED_FUNCTION_2_1();
  v3 = sub_261F83E20(v2);
  OUTLINED_FUNCTION_42(v3, v4);
  return OUTLINED_FUNCTION_68();
}

void sub_261F86CCC()
{
  qword_28108B4E0 = 0;
  byte_28108B4E8 = 1;
  OUTLINED_FUNCTION_12(0x800000026204CDF0);
}

uint64_t static Defaults.tunnelMTU.getter()
{
  if (qword_28108B518 != -1)
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4, v5, v6, v7, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  v8 = OUTLINED_FUNCTION_2_1();
  v9 = sub_261F83E20(v8);
  OUTLINED_FUNCTION_26_1(v9, v10, v11, v12, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_85();
}

uint64_t static Defaults.tunnelMTU.modify()
{
  v0 = OUTLINED_FUNCTION_84_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_69(v1);
  if (qword_28108B518 != -1)
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_23();
  v2 = OUTLINED_FUNCTION_2_1();
  v3 = sub_261F83E20(v2);
  OUTLINED_FUNCTION_42(v3, v4);
  return OUTLINED_FUNCTION_68();
}

void sub_261F86E60()
{
  qword_28108B538 = 0;
  byte_28108B540 = 1;
  qword_28108B520 = 0x544D6C656E6E7574;
  *algn_28108B528 = 0xE900000000000055;
  byte_28108B530 = 0;
}

uint64_t static Defaults.enableTunnelPacketTracing.getter()
{
  if (qword_28108B4A0 != -1)
  {
    OUTLINED_FUNCTION_66_0();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.enableTunnelPacketTracing.modify())(uint64_t a1)
{
  if (qword_28108B4A0 != -1)
  {
    OUTLINED_FUNCTION_66_0();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F86FB0;
}

uint64_t static Defaults.deviceAllowTCPControlChannels.getter()
{
  if (qword_28108B448 != -1)
  {
    OUTLINED_FUNCTION_64();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.deviceAllowTCPControlChannels.modify())(uint64_t a1)
{
  if (qword_28108B448 != -1)
  {
    OUTLINED_FUNCTION_64();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F870F4;
}

void sub_261F87100()
{
  qword_28108B450 = 0xD00000000000001DLL;
  *algn_28108B458 = 0x800000026204CDB0;
  word_28108B460 = 256;
}

uint64_t static Defaults.deviceFixedNetworkPairingPin.getter()
{
  if (qword_27FEF84F0 != -1)
  {
    OUTLINED_FUNCTION_62_0();
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = sub_261F83CEC();
  OUTLINED_FUNCTION_29_1(v8, v9, v10, v11, v12, v13, v14, v15);
  return v8;
}

uint64_t static Defaults.deviceFixedNetworkPairingPin.modify()
{
  v1 = __swift_coroFrameAllocStub(0x50uLL);
  OUTLINED_FUNCTION_69(v1);
  if (qword_27FEF84F0 != -1)
  {
    OUTLINED_FUNCTION_62_0();
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_44_0();
  *(v0 + 64) = sub_261F83CEC();
  *(v0 + 72) = v2;
  return OUTLINED_FUNCTION_68();
}

void sub_261F8728C()
{
  qword_27FEF8E90 = 0;
  qword_27FEF8E98 = 0;
  OUTLINED_FUNCTION_12(0x800000026204CD90);
}

uint64_t static Defaults.pairingRecordExpiryInterval.getter()
{
  if (qword_28108B468 != -1)
  {
    OUTLINED_FUNCTION_61();
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4, v5, v6, v7, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  v8 = OUTLINED_FUNCTION_3_0();
  v9 = sub_261F83E20(v8);
  OUTLINED_FUNCTION_26_1(v9, v10, v11, v12, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_85();
}

uint64_t static Defaults.pairingRecordExpiryInterval.modify()
{
  v0 = OUTLINED_FUNCTION_84_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_69(v1);
  if (qword_28108B468 != -1)
  {
    OUTLINED_FUNCTION_61();
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_23();
  v2 = OUTLINED_FUNCTION_3_0();
  v3 = sub_261F83E20(v2);
  OUTLINED_FUNCTION_42(v3, v4);
  return OUTLINED_FUNCTION_68();
}

void sub_261F87418()
{
  qword_28108B488 = 0;
  byte_28108B490 = 1;
  qword_28108B470 = 0xD00000000000001BLL;
  *algn_28108B478 = 0x800000026204CD70;
  byte_28108B480 = 0;
}

uint64_t static Defaults.pairingRecordLastUsedUpdateInterval.getter()
{
  if (qword_28108B3F0 != -1)
  {
    OUTLINED_FUNCTION_60();
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4, v5, v6, v7, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  v8 = OUTLINED_FUNCTION_3_0();
  v9 = sub_261F83E20(v8);
  OUTLINED_FUNCTION_26_1(v9, v10, v11, v12, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_85();
}

uint64_t sub_261F87510()
{
  OUTLINED_FUNCTION_89();
  v2 = v1;
  v4 = v3;
  if (*v5 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21();
  v0(v4, v2 & 1);
  return swift_endAccess();
}

uint64_t static Defaults.pairingRecordLastUsedUpdateInterval.modify()
{
  v0 = OUTLINED_FUNCTION_84_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_69(v1);
  if (qword_28108B3F0 != -1)
  {
    OUTLINED_FUNCTION_60();
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_23();
  v2 = OUTLINED_FUNCTION_3_0();
  v3 = sub_261F83E20(v2);
  OUTLINED_FUNCTION_42(v3, v4);
  return OUTLINED_FUNCTION_68();
}

void sub_261F87628(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  v4 = *a1;
  a4(*(*a1 + 64), *(*a1 + 72));
  swift_endAccess();

  free(v4);
}

void sub_261F87684()
{
  qword_28108B410 = 0;
  byte_28108B418 = 1;
  qword_28108B3F8 = 0xD000000000000023;
  unk_28108B400 = 0x800000026204CD40;
  byte_28108B408 = 0;
}

uint64_t static Defaults.hostAllowBonjourDeviceDiscovery.getter()
{
  if (qword_27FEF84F8 != -1)
  {
    OUTLINED_FUNCTION_58();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.hostAllowBonjourDeviceDiscovery.modify())(uint64_t a1)
{
  if (qword_27FEF84F8 != -1)
  {
    OUTLINED_FUNCTION_58();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F877D4;
}

void sub_261F877E0()
{
  qword_27FEF8EA0 = 0xD00000000000001FLL;
  *algn_27FEF8EA8 = 0x800000026204CD20;
  word_27FEF8EB0 = 256;
}

uint64_t static Defaults.hostAllowRSDDeviceDiscovery.getter()
{
  if (qword_27FEF8500 != -1)
  {
    OUTLINED_FUNCTION_57();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.hostAllowRSDDeviceDiscovery.modify())(uint64_t a1)
{
  if (qword_27FEF8500 != -1)
  {
    OUTLINED_FUNCTION_57();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F87928;
}

void sub_261F87934()
{
  qword_27FEF8EB8 = 0xD00000000000001BLL;
  unk_27FEF8EC0 = 0x800000026204CD00;
  word_27FEF8EC8 = 256;
}

uint64_t static Defaults.deviceTunnelKeepWiFiAlive.getter()
{
  if (qword_27FEF8508 != -1)
  {
    OUTLINED_FUNCTION_56_0();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.deviceTunnelKeepWiFiAlive.modify())(uint64_t a1)
{
  if (qword_27FEF8508 != -1)
  {
    OUTLINED_FUNCTION_56_0();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F87A7C;
}

void sub_261F87A88()
{
  qword_27FEF8ED0 = 0xD000000000000019;
  *algn_27FEF8ED8 = 0x800000026204CCE0;
  word_27FEF8EE0 = 0;
}

uint64_t static Defaults.deviceAllowBluetoothDeviceDiscovery.getter()
{
  if (qword_28108B570 != -1)
  {
    OUTLINED_FUNCTION_55();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.deviceAllowBluetoothDeviceDiscovery.modify())(uint64_t a1)
{
  if (qword_28108B570 != -1)
  {
    OUTLINED_FUNCTION_55();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F87BCC;
}

void sub_261F87BD8()
{
  qword_28108B578 = 0xD000000000000023;
  unk_28108B580 = 0x800000026204CCB0;
  word_28108B588 = 0;
}

uint64_t static Defaults.hostAllowBluetoothDeviceDiscoveryForTypes.getter()
{
  if (qword_27FEF8518 != -1)
  {
    OUTLINED_FUNCTION_54_0();
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = sub_261F83CEC();
  OUTLINED_FUNCTION_29_1(v8, v9, v10, v11, v12, v13, v14, v15);
  return v8;
}

uint64_t sub_261F87C94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];

  return a5(v5, v6);
}

uint64_t static Defaults.hostAllowBluetoothDeviceDiscoveryForTypes.modify()
{
  v1 = __swift_coroFrameAllocStub(0x50uLL);
  OUTLINED_FUNCTION_69(v1);
  if (qword_27FEF8518 != -1)
  {
    OUTLINED_FUNCTION_54_0();
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_44_0();
  *(v0 + 64) = sub_261F83CEC();
  *(v0 + 72) = v2;
  return OUTLINED_FUNCTION_68();
}

void sub_261F87DB4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    v4 = *(*a1 + 72);

    v5 = OUTLINED_FUNCTION_72();
    sub_261F85138(v5, v6);
    v7 = v2[9];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_72();
    sub_261F85138(v8, v9);
  }

  swift_endAccess();

  free(v2);
}

double sub_261F87E30()
{
  result = 3.97310753e252;
  unk_27FEF8F00 = xmmword_26203C950;
  qword_27FEF8EE8 = 0xD000000000000029;
  unk_27FEF8EF0 = 0x800000026204CC80;
  byte_27FEF8EF8 = 0;
  return result;
}

uint64_t *static Defaults.hostDeviceDiscoveryPrewarmingDelay.getter()
{
  if (qword_27FEF8520 != -1)
  {
    OUTLINED_FUNCTION_52();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v0 = OUTLINED_FUNCTION_4();
  sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_70_0();
  return &qword_27FEF8F10;
}

uint64_t (*static Defaults.hostDeviceDiscoveryPrewarmingDelay.modify())(uint64_t a1)
{
  if (qword_27FEF8520 != -1)
  {
    OUTLINED_FUNCTION_52();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_11_1();
  v4 = sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30_0(v4);
  return sub_261F87F7C;
}

void sub_261F87F88()
{
  qword_27FEF8F28 = 5;
  qword_27FEF8F10 = 0xD000000000000022;
  *algn_27FEF8F18 = 0x800000026204CC50;
  byte_27FEF8F20 = 0;
}

uint64_t static Defaults.hostAllowNCMInterfaceForNetworkControlChannels.getter()
{
  if (qword_27FEF8528 != -1)
  {
    OUTLINED_FUNCTION_51();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.hostAllowNCMInterfaceForNetworkControlChannels.modify())(uint64_t a1)
{
  if (qword_27FEF8528 != -1)
  {
    OUTLINED_FUNCTION_51();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F880D4;
}

uint64_t static Defaults.hostUseLockdownForPairSetup.getter()
{
  if (qword_27FEF8530 != -1)
  {
    OUTLINED_FUNCTION_49();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.hostUseLockdownForPairSetup.modify())(uint64_t a1)
{
  if (qword_27FEF8530 != -1)
  {
    OUTLINED_FUNCTION_49();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F88218;
}

void sub_261F88224()
{
  qword_27FEF8F48 = 0xD00000000000001BLL;
  unk_27FEF8F50 = 0x800000026204CC00;
  word_27FEF8F58 = 256;
}

uint64_t static Defaults.hostUseIndirectLockdownConnections.getter()
{
  if (qword_27FEF8538 != -1)
  {
    OUTLINED_FUNCTION_48();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.hostUseIndirectLockdownConnections.modify())(uint64_t a1)
{
  if (qword_27FEF8538 != -1)
  {
    OUTLINED_FUNCTION_48();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F8836C;
}

void sub_261F88378()
{
  qword_27FEF8F60 = 0xD000000000000022;
  *algn_27FEF8F68 = 0x800000026204CBD0;
  word_27FEF8F70 = 0;
}

uint64_t static Defaults.hostProactivelyUpgradeLockdownPairingRecords.getter()
{
  if (qword_27FEF8540 != -1)
  {
    OUTLINED_FUNCTION_47_0();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.hostProactivelyUpgradeLockdownPairingRecords.modify())(uint64_t a1)
{
  if (qword_27FEF8540 != -1)
  {
    OUTLINED_FUNCTION_47_0();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F884BC;
}

void sub_261F884C8()
{
  qword_27FEF8F78 = 0xD00000000000002CLL;
  unk_27FEF8F80 = 0x800000026204CBA0;
  word_27FEF8F88 = 256;
}

uint64_t static Defaults.hostCreateWritableDataVaultedLocationOnStartup.getter()
{
  if (qword_27FEF8548 != -1)
  {
    OUTLINED_FUNCTION_45();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.hostCreateWritableDataVaultedLocationOnStartup.modify())(uint64_t a1)
{
  if (qword_27FEF8548 != -1)
  {
    OUTLINED_FUNCTION_45();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F88610;
}

void sub_261F8861C()
{
  qword_27FEF8F90 = 0xD00000000000002ELL;
  *algn_27FEF8F98 = 0x800000026204CB70;
  word_27FEF8FA0 = 0;
}

uint64_t static Defaults.hostAdditionalControlChannelSupportedRSDDeviceTypes.getter()
{
  if (qword_27FEF8550 != -1)
  {
    OUTLINED_FUNCTION_43_2();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();

  v0 = OUTLINED_FUNCTION_4();
  v4 = sub_261F8407C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_261F886CC(uint64_t *a1)
{
  v1 = *a1;

  return static Defaults.hostAdditionalControlChannelSupportedRSDDeviceTypes.setter(v2);
}

uint64_t (*static Defaults.hostAdditionalControlChannelSupportedRSDDeviceTypes.modify())(uint64_t a1)
{
  if (qword_27FEF8550 != -1)
  {
    OUTLINED_FUNCTION_43_2();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_11_1();
  v4 = sub_261F8407C(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30_0(v4);
  return sub_261F887A0;
}

uint64_t sub_261F887A0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_73(a1);
  if (v3)
  {

    sub_261F85868(v4);
    v5 = *(v1 + 24);
  }

  else
  {
    sub_261F85868(v2);
  }

  return swift_endAccess();
}

void sub_261F88800()
{
  qword_27FEF8FC0 = MEMORY[0x277D84F90];
  qword_27FEF8FA8 = 0xD000000000000033;
  unk_27FEF8FB0 = 0x800000026204CB30;
  byte_27FEF8FB8 = 0;
}

uint64_t static Defaults.hostTunnelConnectionProtocol.getter()
{
  if (qword_27FEF8558 != -1)
  {
    OUTLINED_FUNCTION_39_2();
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v8 = sub_261F841D0();
  OUTLINED_FUNCTION_29_1(v8, v9, v10, v11, v12, v13, v14, v15);
  return v8;
}

uint64_t sub_261F888C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static Defaults.hostTunnelConnectionProtocol.setter();
}

uint64_t sub_261F88940()
{
  OUTLINED_FUNCTION_89();
  if (*v1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_75();
  v0(v2);
  return swift_endAccess();
}

uint64_t static Defaults.hostTunnelConnectionProtocol.modify()
{
  v1 = __swift_coroFrameAllocStub(0x50uLL);
  OUTLINED_FUNCTION_69(v1);
  if (qword_27FEF8558 != -1)
  {
    OUTLINED_FUNCTION_39_2();
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_44_0();
  *(v0 + 64) = sub_261F841D0();
  *(v0 + 72) = v2;
  return OUTLINED_FUNCTION_68();
}

void sub_261F88A34(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    v4 = *(*a1 + 72);

    v5 = OUTLINED_FUNCTION_75();
    sub_261F85B24(v5, v6);
    v7 = v2[9];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_75();
    sub_261F85B24(v8, v9);
  }

  swift_endAccess();

  free(v2);
}

void sub_261F88ABC()
{
  qword_27FEF8FE0 = 7365492;
  unk_27FEF8FE8 = 0xE300000000000000;
  qword_27FEF8FC8 = 0xD00000000000001CLL;
  unk_27FEF8FD0 = 0x800000026204CB10;
  byte_27FEF8FD8 = 0;
}

uint64_t *static Defaults.hostControlChannelConnectionLifetimeReconnectionThreshold.getter()
{
  if (qword_27FEF8560 != -1)
  {
    OUTLINED_FUNCTION_35();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v0 = OUTLINED_FUNCTION_4();
  sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_70_0();
  return &qword_27FEF8FF0;
}

uint64_t (*static Defaults.hostControlChannelConnectionLifetimeReconnectionThreshold.modify())(uint64_t a1)
{
  if (qword_27FEF8560 != -1)
  {
    OUTLINED_FUNCTION_35();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_11_1();
  v4 = sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30_0(v4);
  return sub_261F88C0C;
}

void sub_261F88C18()
{
  qword_27FEF9008 = 5;
  qword_27FEF8FF0 = 0xD000000000000039;
  *algn_27FEF8FF8 = 0x800000026204CAD0;
  byte_27FEF9000 = 0;
}

uint64_t *static Defaults.hostTunnelHeartbeatInterval.getter()
{
  if (qword_27FEF8568 != -1)
  {
    OUTLINED_FUNCTION_34();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v0 = OUTLINED_FUNCTION_4();
  sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_70_0();
  return &qword_27FEF9010;
}

uint64_t (*static Defaults.hostTunnelHeartbeatInterval.modify())(uint64_t a1)
{
  if (qword_27FEF8568 != -1)
  {
    OUTLINED_FUNCTION_34();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_11_1();
  v4 = sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30_0(v4);
  return sub_261F88D60;
}

void sub_261F88D6C()
{
  qword_27FEF9028 = 30;
  qword_27FEF9010 = 0xD00000000000001BLL;
  *algn_27FEF9018 = 0x800000026204CAB0;
  byte_27FEF9020 = 0;
}

uint64_t *static Defaults.tunnelPacketFlowStatsInterval.getter()
{
  if (qword_28108B420 != -1)
  {
    OUTLINED_FUNCTION_33_0();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v0 = OUTLINED_FUNCTION_4();
  sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_70_0();
  return &qword_28108B428;
}

uint64_t (*static Defaults.tunnelPacketFlowStatsInterval.modify())(uint64_t a1)
{
  if (qword_28108B420 != -1)
  {
    OUTLINED_FUNCTION_33_0();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_11_1();
  v4 = sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30_0(v4);
  return sub_261F88EB4;
}

id static Defaults.hostMinumumSupportedWatchWireProtocolVersion.getter()
{
  if (qword_27FEF8578 != -1)
  {
    OUTLINED_FUNCTION_67();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v0 = &qword_27FEF9030;
  v1 = OUTLINED_FUNCTION_4();
  v5 = sub_261F84324(v1, v2, v3, v4);

  return v5;
}

uint64_t sub_261F88F68(id *a1)
{
  v1 = *a1;

  return static Defaults.hostMinumumSupportedWatchWireProtocolVersion.setter();
}

uint64_t (*static Defaults.hostMinumumSupportedWatchWireProtocolVersion.modify())(uint64_t a1)
{
  if (qword_27FEF8578 != -1)
  {
    OUTLINED_FUNCTION_67();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_11_1();
  v4 = sub_261F84324(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30_0(v4);
  return sub_261F8903C;
}

id sub_261F89048()
{
  if (qword_28108B5C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28108B5D0;
  qword_27FEF9048 = qword_28108B5D0;
  qword_27FEF9030 = 0xD00000000000002CLL;
  *algn_27FEF9038 = 0x800000026204CA60;
  byte_27FEF9040 = 0;

  return v0;
}

id static Defaults.hostMinumumSupportedDeviceWireProtocolVersion.getter()
{
  if (qword_27FEF8580 != -1)
  {
    OUTLINED_FUNCTION_65_0();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v0 = &qword_27FEF9050;
  v1 = OUTLINED_FUNCTION_4();
  v5 = sub_261F84324(v1, v2, v3, v4);

  return v5;
}

uint64_t sub_261F89178(id *a1)
{
  v1 = *a1;

  return static Defaults.hostMinumumSupportedDeviceWireProtocolVersion.setter();
}

uint64_t (*static Defaults.hostMinumumSupportedDeviceWireProtocolVersion.modify())(uint64_t a1)
{
  if (qword_27FEF8580 != -1)
  {
    OUTLINED_FUNCTION_65_0();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_11_1();
  v4 = sub_261F84324(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30_0(v4);
  return sub_261F8924C;
}

uint64_t sub_261F89258(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_73(a1);
  if (v3)
  {
    sub_261F85DB4(v2);
  }

  else
  {
    sub_261F85DB4(v2);
  }

  return swift_endAccess();
}

id sub_261F892AC()
{
  if (_RPIsAppleInternal())
  {
    if (qword_28108B5C8 != -1)
    {
      swift_once();
    }

    v0 = &qword_28108B5D0;
    swift_beginAccess();
  }

  else
  {
    if (qword_27FEF8678 != -1)
    {
      swift_once();
    }

    v0 = &qword_27FF07DD8;
  }

  v1 = *v0;
  qword_27FEF9068 = *v0;
  qword_27FEF9050 = 0xD00000000000002DLL;
  *algn_27FEF9058 = 0x800000026204CA30;
  byte_27FEF9060 = 0;

  return v1;
}

uint64_t static Defaults.tunnelUseSkywalk.getter()
{
  if (qword_28108B4F8 != -1)
  {
    OUTLINED_FUNCTION_63_0();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.tunnelUseSkywalk.modify())(uint64_t a1)
{
  if (qword_28108B4F8 != -1)
  {
    OUTLINED_FUNCTION_63_0();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F894B8;
}

void sub_261F894C4()
{
  qword_28108B500 = 0xD000000000000010;
  *algn_28108B508 = 0x800000026204CA10;
  word_28108B510 = 0;
}

RemotePairingDevice::Defaults::PairingViaLockdownPreference_optional __swiftcall Defaults.PairingViaLockdownPreference.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26203A96C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Defaults.PairingViaLockdownPreference.rawValue.getter()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726576656ELL;
  }
}

uint64_t sub_261F895D8@<X0>(uint64_t *a1@<X8>)
{
  result = Defaults.PairingViaLockdownPreference.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261F89608@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = 0xD00000000000001BLL;
    if (result == 1)
    {
      v3 = 0x800000026204C500;
    }

    else
    {
      v2 = 0xD000000000000020;
      v3 = 0x800000026204C520;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v2 = 0x726576656ELL;
  }

  a2[3] = MEMORY[0x277D837D0];
  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t DefaultsValueTransformable<>.transformForDefaultsWrite()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  OUTLINED_FUNCTION_75();
  sub_26203A32C();
  (*(a4 + 8))(AssociatedTypeWitness, a4);
  return (*(v7 + 8))(v12, AssociatedTypeWitness);
}

id sub_261F89820(uint64_t a1)
{
  sub_261F8C34C(a1, v6, &qword_27FEF9870, &qword_26203C960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = v7;
  v2 = type metadata accessor for ControlChannelConnectionWireProtocolVersion();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t static DefaultsValueTransformable<>.transformForDefaultsRead(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a5;
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_26203A6DC();
  OUTLINED_FUNCTION_16();
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  OUTLINED_FUNCTION_16();
  v18 = v17;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v28 - v25;
  (*(a4 + 16))(a1, AssociatedTypeWitness, a4);
  if (__swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v16, v9);
    return __swift_storeEnumTagSinglePayload(v29, 1, 1, a2);
  }

  else
  {
    (*(v18 + 32))(v26, v16, AssociatedTypeWitness);
    (*(v18 + 16))(v24, v26, AssociatedTypeWitness);
    sub_26203A33C();
    return (*(v18 + 8))(v26, AssociatedTypeWitness);
  }
}

uint64_t static Defaults.hostPairingViaLockdownPreference.getter()
{
  if (qword_27FEF8590 != -1)
  {
    OUTLINED_FUNCTION_13();
  }

  swift_beginAccess();
  v0 = word_27FEF9080 | (HIBYTE(word_27FEF9080) << 8);

  OUTLINED_FUNCTION_72();
  sub_261F84490(v0, v1);
}

uint64_t static Defaults.hostPairingViaLockdownPreference.setter(char *a1)
{
  v1 = *a1;
  if (qword_27FEF8590 != -1)
  {
    OUTLINED_FUNCTION_13();
  }

  OUTLINED_FUNCTION_21();
  sub_261F86058(v1);
  return swift_endAccess();
}

uint64_t (*static Defaults.hostPairingViaLockdownPreference.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  if (qword_27FEF8590 != -1)
  {
    OUTLINED_FUNCTION_13();
  }

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_87();
  sub_261F84490(v2, (a1 + 24));
  return sub_261F89C90;
}

uint64_t sub_261F89CB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*(a1 + 24));

  return swift_endAccess();
}

void sub_261F89D00()
{
  qword_27FEF9070 = 0xD000000000000020;
  *algn_27FEF9078 = 0x800000026204C9E0;
  word_27FEF9080 = 256;
}

uint64_t static Defaults.hostPreferMigratableTunnels.getter()
{
  if (qword_27FEF8598 != -1)
  {
    OUTLINED_FUNCTION_41();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.hostPreferMigratableTunnels.modify())(uint64_t a1)
{
  if (qword_27FEF8598 != -1)
  {
    OUTLINED_FUNCTION_41();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F89E48;
}

void sub_261F89E54()
{
  qword_27FEF9088 = 0xD00000000000001BLL;
  unk_27FEF9090 = 0x800000026204C9C0;
  word_27FEF9098 = 256;
}

uint64_t *static Defaults.tunnelEndpointNumberOfBufferedEvents.getter()
{
  if (qword_28108B3C0 != -1)
  {
    OUTLINED_FUNCTION_40_0();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v0 = OUTLINED_FUNCTION_4();
  sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_70_0();
  return &qword_28108B3C8;
}

uint64_t (*static Defaults.tunnelEndpointNumberOfBufferedEvents.modify())(uint64_t a1)
{
  if (qword_28108B3C0 != -1)
  {
    OUTLINED_FUNCTION_40_0();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_11_1();
  v4 = sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30_0(v4);
  return sub_261F89F98;
}

uint64_t static Defaults.hostPreferBTLEConnectionBasedControlChannels.getter()
{
  if (qword_27FEF85A8 != -1)
  {
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t (*static Defaults.hostPreferBTLEConnectionBasedControlChannels.modify())(uint64_t a1)
{
  if (qword_27FEF85A8 != -1)
  {
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F8A0E4;
}

void sub_261F8A0F0()
{
  qword_27FEF90A0 = 0xD00000000000002CLL;
  *algn_27FEF90A8 = 0x800000026204C970;
  word_27FEF90B0 = 256;
}

uint64_t static Defaults.hostSendTCPFrameOnDeviceUnreachableNotification.getter()
{
  if (qword_27FEF85B0 != -1)
  {
    OUTLINED_FUNCTION_37_0();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_4();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = OUTLINED_FUNCTION_22_1();
  sub_261F83BA8(v3, v4, v5);
  OUTLINED_FUNCTION_70_0();
  return v2 & 1;
}

uint64_t sub_261F8A1C0(char a1, void *a2)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21();
  sub_261F84C3C(a1 & 1);
  return swift_endAccess();
}

uint64_t (*static Defaults.hostSendTCPFrameOnDeviceUnreachableNotification.modify())(uint64_t a1)
{
  if (qword_27FEF85B0 != -1)
  {
    OUTLINED_FUNCTION_37_0();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_0_4();
  if (v4)
  {
    v3 = 0;
  }

  v5 = sub_261F83BA8(v0, v1, v3 | v2);
  OUTLINED_FUNCTION_7(v5);
  return sub_261F8A294;
}

uint64_t sub_261F8A2A0(uint64_t a1)
{
  sub_261F84C3C(*(a1 + 24));

  return swift_endAccess();
}

uint64_t *static Defaults.hostDeviceConnectionBackoffBaseDelay.getter()
{
  if (qword_27FEF85B8 != -1)
  {
    OUTLINED_FUNCTION_32();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v0 = OUTLINED_FUNCTION_4();
  sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_70_0();
  return &qword_27FEF90D0;
}

uint64_t (*static Defaults.hostDeviceConnectionBackoffBaseDelay.modify())(uint64_t a1)
{
  if (qword_27FEF85B8 != -1)
  {
    OUTLINED_FUNCTION_32();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_11_1();
  v4 = sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30_0(v4);
  return sub_261F8A41C;
}

void sub_261F8A428()
{
  qword_27FEF90E8 = 5;
  qword_27FEF90D0 = 0xD000000000000024;
  *algn_27FEF90D8 = 0x800000026204C910;
  byte_27FEF90E0 = 0;
}

uint64_t *static Defaults.hostDeviceConnectionBackoffMaxDelay.getter()
{
  if (qword_27FEF85C0 != -1)
  {
    OUTLINED_FUNCTION_31_1();
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v0 = OUTLINED_FUNCTION_4();
  sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_70_0();
  return &qword_27FEF90F0;
}

uint64_t sub_261F8A500(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21();
  a4(a1);
  return swift_endAccess();
}

uint64_t (*static Defaults.hostDeviceConnectionBackoffMaxDelay.modify())(uint64_t a1)
{
  if (qword_27FEF85C0 != -1)
  {
    OUTLINED_FUNCTION_31_1();
  }

  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_11_1();
  v4 = sub_261F83F58(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30_0(v4);
  return sub_261F8A5DC;
}

uint64_t sub_261F8A5E8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_73(a1);
  sub_261F855EC(v1);

  return swift_endAccess();
}

void sub_261F8A62C()
{
  qword_27FEF9108 = 300;
  qword_27FEF90F0 = 0xD000000000000023;
  *algn_27FEF90F8 = 0x800000026204C8E0;
  byte_27FEF9100 = 0;
}

double static Defaults.hostDeviceConnectionBackoffMultiplier.getter()
{
  if (qword_27FEF85C8 != -1)
  {
    OUTLINED_FUNCTION_17();
  }

  OUTLINED_FUNCTION_10();
  v0 = byte_27FEF9120;

  v1 = OUTLINED_FUNCTION_22_1();
  sub_261F84654(v1, v2, v0);
  v4 = v3;

  return v4;
}

uint64_t static Defaults.hostDeviceConnectionBackoffMultiplier.setter(double a1)
{
  if (qword_27FEF85C8 != -1)
  {
    OUTLINED_FUNCTION_17();
  }

  OUTLINED_FUNCTION_21();
  sub_261F86330(a1);
  return swift_endAccess();
}

uint64_t (*static Defaults.hostDeviceConnectionBackoffMultiplier.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FEF85C8 != -1)
  {
    OUTLINED_FUNCTION_17();
  }

  OUTLINED_FUNCTION_9();
  sub_261F84654(qword_27FEF9110, *algn_27FEF9118, byte_27FEF9120);
  *(a1 + 24) = v2;
  return sub_261F8A7DC;
}

uint64_t sub_261F8A7DC(uint64_t a1)
{
  sub_261F86330(*(a1 + 24));

  return swift_endAccess();
}

void sub_261F8A82C()
{
  qword_27FEF9128 = 0x4000000000000000;
  qword_27FEF9110 = 0xD000000000000025;
  *algn_27FEF9118 = 0x800000026204C8B0;
  byte_27FEF9120 = 0;
}

id sub_261F8A860()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_261F8D0A8(0xD000000000000014, 0x800000026204C890);
  if (result)
  {
    qword_27FEF9130 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_261F8A8B8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_261F8D0A8(0xD000000000000017, 0x800000026204C870);
  if (result)
  {
    qword_28108CE70 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

RemotePairingDevice::DefaultsDomain_optional __swiftcall DefaultsDomain.init(rawValue:)(Swift::String rawValue)
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

uint64_t DefaultsDomain.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6976654465726F63;
  }

  else
  {
    result = 0x615065746F6D6572;
  }

  *v0;
  return result;
}

uint64_t sub_261F8A9F0@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultsDomain.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261F8AA18(uint64_t a1)
{
  sub_261F8C34C(a1, &v11, &qword_27FEF9870, &qword_26203C960);
  if (!v12)
  {
    sub_261F8C2C8(&v11, &qword_27FEF9870, &qword_26203C960);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9168, &qword_26203C998);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v10 + 16);
  if (v1)
  {
    v2 = v10 + 32;
    v3 = MEMORY[0x277D84F90];
    do
    {
      sub_261F681A8(v2, &v11);
      sub_261F8D184(&v11, &v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
      if (swift_dynamicCast())
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = *(v3 + 16);
          sub_261FB9828();
          v3 = v6;
        }

        v4 = *(v3 + 16);
        if (v4 >= *(v3 + 24) >> 1)
        {
          sub_261FB9828();
          v3 = v7;
        }

        *(v3 + 16) = v4 + 1;
        *(v3 + 8 * v4 + 32) = v9;
      }

      v2 += 32;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t static Array<A>.transformForDefaultsRead(_:)(uint64_t a1)
{
  sub_261F8C34C(a1, v5, &qword_27FEF9870, &qword_26203C960);
  if (!v5[3])
  {
    sub_261F8C2C8(v5, &qword_27FEF9870, &qword_26203C960);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9168, &qword_26203C998);
  v1 = swift_dynamicCast();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v5[0] = v4;
  MEMORY[0x28223BE20](v1);
  sub_261F8C3CC();
  v2 = sub_26203A31C();

  return v2;
}

uint64_t sub_261F8AD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_261F681A8(a1, v6);
  (*(a3 + 16))(v6, a2, a3);
  return sub_261F8C2C8(v6, &qword_27FEF9870, &qword_26203C960);
}

uint64_t sub_261F8AD9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_261F95968(0, v3, 0);
    v4 = v13;
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_261F95968(v9 > 1, v10 + 1, 1);
      }

      *(v13 + 16) = v10 + 1;
      v11 = v13 + 16 * v10;
      *(v11 + 32) = sub_261F8D17C;
      *(v11 + 40) = v8;
      --v3;
    }

    while (v3);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9180, &qword_26203C9A8);
  a2[3] = result;
  *a2 = v4;
  return result;
}

uint64_t Array<A>.transformForDefaultsWrite()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11[5] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v5 = sub_26203A40C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9178, &qword_26203C9A0);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_261F8B0A4(sub_261F8C478, v11, v5, v6, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9180, &qword_26203C9A8);
  a4[3] = result;
  *a4 = v9;
  return result;
}

uint64_t (*sub_261F8AF84(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_261F8D10C;
}

uint64_t sub_261F8B0A4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_26203A43C();
  if (!v26)
  {
    return sub_26203A3EC();
  }

  v48 = v26;
  v52 = sub_26203A8AC();
  v39 = sub_26203A8BC();
  sub_26203A85C();
  result = sub_26203A42C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_26203A45C();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_26203A89C();
      result = sub_26203A44C();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261F8B4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a3 - 8);
  v6 = *(a2 + 16);
  result = static Array<A>.transformForDefaultsRead(_:)(a1);
  *a4 = result;
  return result;
}

uint64_t sub_261F8B504(uint64_t a1)
{
  sub_261F8C34C(a1, v5, &qword_27FEF9870, &qword_26203C960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  v1 = MEMORY[0x277D839B0];
  if (!swift_dynamicCast())
  {
    return 3;
  }

  v6 = v1;
  v5[0] = v4 & 1;
  v2 = sub_262031B08(v5);
  sub_261F8C2C8(v5, &qword_27FEF9870, &qword_26203C960);
  return v2;
}

uint64_t sub_261F8B5B8(uint64_t a1)
{
  sub_261F8C34C(a1, v5, &qword_27FEF9870, &qword_26203C960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  v1 = MEMORY[0x277D83B88];
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v5[3] = v1;
  v5[0] = v4;
  v2 = sub_262031B6C(v5);
  sub_261F8C2C8(v5, &qword_27FEF9870, &qword_26203C960);
  return v2;
}

uint64_t sub_261F8B684(uint64_t a1)
{
  sub_261F8C34C(a1, v6, &qword_27FEF9870, &qword_26203C960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  v1 = MEMORY[0x277D837D0];
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v6[3] = v1;
  v6[0] = v4;
  v6[1] = v5;
  v2 = sub_262031AA4(v6);
  sub_261F8C2C8(v6, &qword_27FEF9870, &qword_26203C960);
  return v2;
}

uint64_t sub_261F8B740(uint64_t a1)
{
  sub_261F8C34C(a1, v5, &qword_27FEF9870, &qword_26203C960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  v1 = MEMORY[0x277D839F8];
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v5[3] = v1;
  v5[0] = v4;
  v2 = sub_262031B78(v5);
  sub_261F8C2C8(v5, &qword_27FEF9870, &qword_26203C960);
  return v2;
}

uint64_t static Optional<A>.transformForDefaultsRead(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = sub_26203A6DC();
  OUTLINED_FUNCTION_16();
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  OUTLINED_FUNCTION_16();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_74();
  v22 = v21 - v20;
  sub_261F8C34C(a1, v30, &qword_27FEF9870, &qword_26203C960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, a2);
    (*(v16 + 32))(v22, v14, a2);
    v30[3] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
    (*(v16 + 16))(boxed_opaque_existential_0, v22, a2);
    v24 = v29;
    (*(a3 + 16))(v30, a2, a3);
    (*(v16 + 8))(v22, a2);
    sub_261F8C2C8(v30, &qword_27FEF9870, &qword_26203C960);
    v25 = 0;
    v26 = v24;
  }

  else
  {
    v25 = 1;
    __swift_storeEnumTagSinglePayload(v14, 1, 1, a2);
    (*(v9 + 8))(v14, v7);
    v26 = v29;
  }

  return __swift_storeEnumTagSinglePayload(v26, v25, 1, v7);
}

uint64_t sub_261F8BA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  v6 = swift_allocObject();
  *a3 = v6;
  if (a2)
  {
    v7 = MEMORY[0x277D837D0];
    v8 = a2;
  }

  else
  {
    a1 = 0;
    v8 = 0;
    v7 = 0;
    v6[4] = 0;
  }

  v6[2] = a1;
  v6[3] = v8;
  v6[5] = v7;
}

uint64_t Optional<A>.transformForDefaultsWrite()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7[2] = *(a1 + 16);
  v7[3] = a2;
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  v4 = swift_allocObject();
  *a3 = v4;
  return sub_261F8BBC4(sub_261F8C50C, v7, MEMORY[0x277D84A98], MEMORY[0x277D84F70] + 8, v5, v4 + 16);
}

uint64_t sub_261F8BBC4@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if (__swift_getEnumTagSinglePayload(v24, 1, v15) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t static PrimitiveDefaultsValueTransformable.transformForDefaultsRead(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_261F8C34C(a1, &v9, &qword_27FEF9870, &qword_26203C960);
  v5 = OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v7 ^ 1u, 1, a2);
}

uint64_t sub_261F8BED4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = MEMORY[0x277CC9318];
  *a3 = a1;
  a3[1] = a2;
  return sub_261F6B73C(a1, a2);
}

uint64_t sub_261F8BEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x277D837D0];
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_261F8BF00@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = MEMORY[0x277D839B0];
  *a2 = result;
  return result;
}

uint64_t PrimitiveDefaultsValueTransformable.transformForDefaultsWrite()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  __swift_allocate_boxed_opaque_existential_0(a2);
  OUTLINED_FUNCTION_71(a1);
  v4 = *(v3 + 16);

  return v4();
}

uint64_t sub_261F8BF94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_262031AA4(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_261F8BFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_262031B6C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_261F8BFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_262031B78(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_261F8C034@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262031B08(a1);
  *a2 = result;
  return result;
}

id sub_261F8C098()
{
  if (*(v0 + 16))
  {
    if (qword_27FEF85D0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FEF9130;
  }

  else
  {
    if (qword_28108CE68 != -1)
    {
      swift_once();
    }

    v1 = &qword_28108CE70;
  }

  v2 = *v1;

  return v2;
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

uint64_t sub_261F8C184@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for DefaultsBackedProperty();
  return DefaultsBackedProperty.wrappedValue.getter(v7, a3);
}

uint64_t sub_261F8C1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = type metadata accessor for DefaultsBackedProperty();
  return DefaultsBackedProperty.wrappedValue.setter(v7, v9);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_261F8C2C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_71(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_261F8C34C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_71(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_261F8C3CC()
{
  result = qword_27FEF9170;
  if (!qword_27FEF9170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF9168, &qword_26203C998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9170);
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

uint64_t (*sub_261F8C478@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = sub_261F8AF84(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void (*DefaultsBackedProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v5[2] = *(a2 + 16);
  OUTLINED_FUNCTION_16();
  *(v6 + 24) = v7;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v5[5] = v10;
  DefaultsBackedProperty.wrappedValue.getter(a2, v10);
  return sub_261F8C628;
}

void sub_261F8C628(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    v9 = *(v6 + 16);
    v10 = OUTLINED_FUNCTION_72();
    v11(v10);
    DefaultsBackedProperty.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v12 = v2[1];
    DefaultsBackedProperty.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t sub_261F8C6E8()
{
  result = qword_27FEF9188;
  if (!qword_27FEF9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9188);
  }

  return result;
}

unint64_t sub_261F8C740()
{
  result = qword_27FEF9190;
  if (!qword_27FEF9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9190);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Defaults(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Defaults(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Defaults.PairingViaLockdownPreference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Defaults.PairingViaLockdownPreference(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DefaultsDomain(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DefaultsDomain(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_261F8CB94(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_261F8CC1C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 17) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 17) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_261F8CD9C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((v10 + 17) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 17] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
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