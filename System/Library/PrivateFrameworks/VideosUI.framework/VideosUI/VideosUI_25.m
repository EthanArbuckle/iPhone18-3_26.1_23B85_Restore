void sub_1E380CEF8()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v40 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B348);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B350);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  if ((TVAppFeature.isEnabled.getter(20) & 1) == 0)
  {
    memset(v49, 0, sizeof(v49));
    v50 = 2;
    v51 = 0;
    *&v41[0] = 1;
    memset(v41 + 8, 0, 40);
    v53 = 0;
    memset(v52, 0, sizeof(v52));

    sub_1E383C8A8();
    sub_1E383C8B0();

    OUTLINED_FUNCTION_54_3(v49, v41, v52, &v42);
    v28 = sub_1E37ADF68();
    sub_1E38838AC(v8, 2u, 2, v28, v0);
    sub_1E37ADFBC(&v42);
    (*(v13 + 16))(v1, v0, v11);
    OUTLINED_FUNCTION_39_3();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B358);
    OUTLINED_FUNCTION_6_1();
    sub_1E3743478(v29);
    *&v42 = &type metadata for ButtonRepresentable;
    *(&v42 + 1) = v28;
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v13 + 8))(v0, v11);
LABEL_16:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v16 = v3;
  *&v17 = OUTLINED_FUNCTION_34_17();
  v54 = 2;
  v55 = 0;
  *(v18 + 8) = v17;
  *(v18 + 24) = v17;
  *&v56 = 1;
  v57 = 0;
  v44 = 0;
  v42 = v17;
  v43 = v17;

  sub_1E383C8A8();
  sub_1E383C8B0();

  v19.n128_f64[0] = OUTLINED_FUNCTION_54_3(v52, &v56, &v42, v49);
  (*(*v8 + 304))(v19);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  if ((v6 & 1) == 0)
  {
    v20 = 0;
    v21 = 0;
    v23 = 16711680;
LABEL_15:
    sub_1E3743538(v49, v41, &qword_1ECF2B238);
    sub_1E3743538(v41, &v42, &qword_1ECF2B238);
    v45 = v20;
    v46 = v21;
    v48 = BYTE2(v23);
    v47 = v23;
    v30 = OUTLINED_FUNCTION_63_0();
    sub_1E380EF64(v30, v31, v23);
    v32 = OUTLINED_FUNCTION_63_0();
    sub_1E380EF8C(v32, v33, v23);
    sub_1E325F69C(v41, &qword_1ECF2B238);
    sub_1E3743538(&v42, v1, &qword_1ECF2B358);
    OUTLINED_FUNCTION_39_3();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B358);
    OUTLINED_FUNCTION_6_1();
    sub_1E3743478(v34);
    sub_1E37ADF68();
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_39_3();
    sub_1E4201F44();
    v35 = OUTLINED_FUNCTION_63_0();
    sub_1E380EF8C(v35, v36, v23);
    sub_1E325F69C(&v42, &qword_1ECF2B358);
    sub_1E325F69C(v49, &qword_1ECF2B238);
    goto LABEL_16;
  }

  if (!v40 || !sub_1E32AE9B0(v40))
  {
    goto LABEL_8;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1E6911E60](0, v40);
    swift_unknownObjectRelease();
    if (v37 != v10)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(v40 + 32) != v10)
    {
LABEL_8:
      v41[0] = xmmword_1E4297170;
      LOWORD(v41[1]) = 0;
      BYTE2(v41[1]) = 1;
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B368);
      sub_1E380EFB4();
      sub_1E4201F44();
      v21 = *(&v42 + 1);
      v20 = v42;
      if (BYTE2(v43))
      {
        v22 = 0x10000;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22 | v43;
      v24 = OUTLINED_FUNCTION_63_0();
      sub_1E380EF7C(v24, v25, v26, v27);
      goto LABEL_15;
    }

LABEL_18:
    v38 = (*(*v8 + 248))();
    *&v41[0] = sub_1E395FA08(v38, v39 & 1);
    *(&v41[0] + 1) = v16;
    LOWORD(v41[1]) = 257;
    BYTE2(v41[1]) = 0;

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1E380D498()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31_2();
  if (v2)
  {
    v40 = v16;

    *v0 = sub_1E4201D44();
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    v17 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2B0) + 44);
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_36_0();
    sub_1E4200D94();
    v36 = v46;
    v37 = v44;
    v34 = v49;
    v35 = v48;
    v43 = 1;
    v42 = v45;
    v41 = v47;
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v38 = v2;
    v39 = v4;
    v18 = v43;
    v19 = v42;
    v20 = v14;
    v33 = v14;
    v21 = v41;
    v22 = *(v7 + 16);
    (v22)(v11, v20, v5);
    *v17 = 0;
    *(v17 + 8) = v18;
    v23 = v36;
    *(v17 + 16) = v37;
    *(v17 + 24) = v19;
    *(v17 + 32) = v23;
    *(v17 + 40) = v21;
    v24 = v34;
    *(v17 + 48) = v35;
    *(v17 + 56) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2B8);
    OUTLINED_FUNCTION_55_0();
    v22();
    v25 = *(v7 + 8);
    v25(v33, v5);
    v25(v11, v5);

    v26 = v39;
    sub_1E3741EA0(v0, v39, &qword_1ECF2B2A8);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v40);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }
}

unint64_t sub_1E380D764()
{
  result = qword_1ECF2B0F0;
  if (!qword_1ECF2B0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8);
    sub_1E380D924(&unk_1ECF2B100);
    sub_1E3743478(&qword_1EE23ACD8);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B150);
    sub_1E380D924(&unk_1ECF2B158);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B0F0);
  }

  return result;
}

unint64_t sub_1E380D924(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    sub_1E3743478(&unk_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E380D9CC()
{
  result = qword_1ECF2B108;
  if (!qword_1ECF2B108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B118);
    sub_1E380DA8C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B108);
  }

  return result;
}

unint64_t sub_1E380DA8C()
{
  result = qword_1ECF2B120;
  if (!qword_1ECF2B120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B118);
    sub_1E3743478(&unk_1EE289DD8);
    sub_1E380DB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B120);
  }

  return result;
}

unint64_t sub_1E380DB44()
{
  result = qword_1ECF2B128;
  if (!qword_1ECF2B128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B140);
    sub_1E380ED80(&unk_1ECF2B148);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B128);
  }

  return result;
}

unint64_t sub_1E380DC84()
{
  result = qword_1EE25CAC8[0];
  if (!qword_1EE25CAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE25CAC8);
  }

  return result;
}

unint64_t sub_1E380DCD8()
{
  result = qword_1ECF2B160;
  if (!qword_1ECF2B160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B170);
    sub_1E380DD98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B160);
  }

  return result;
}

unint64_t sub_1E380DD98()
{
  result = qword_1ECF2B178;
  if (!qword_1ECF2B178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B170);
    sub_1E3743478(&unk_1EE289DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B140);
    sub_1E380ED80(&unk_1ECF2B148);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B178);
  }

  return result;
}

uint64_t sub_1E380DF04()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_countdownButtonShown;
  result = swift_beginAccess();
  *(v1 + v2) = 1;
  return result;
}

uint64_t sub_1E380DF6C(char a1)
{
  v2 = sub_1E3B21080();
  result = sub_1E374E8E4(v2, a1);
  if (result)
  {
    return sub_1E3B21268();
  }

  return result;
}

void sub_1E380DFBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = a4 >> 1;
  v8 = a2 + 8 * a3;
  v9 = a3 - (a4 >> 1);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = (MEMORY[0x1E69E7CC0] + 32);
  while (v9 + v5)
  {
    if (a3 + v5 >= v7)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_28;
    }

    v12 = *(v8 + 8 * v5);
    if (v6)
    {

      v13 = v10;
    }

    else
    {
      v14 = v10[3];
      if (((v14 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_30;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B10);
      v13 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v13) - 32) / 16;
      v13[2] = v16;
      v13[3] = 2 * v17;
      v18 = v13 + 4;
      v19 = v10[3] >> 1;
      v11 = &v13[2 * v19 + 4];
      v6 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
      if (v10[2])
      {
        if (v13 != v10 || v18 >= &v10[2 * v19 + 4])
        {
          memmove(v18, v10 + 4, 16 * v19);
        }

        v10[2] = 0;
      }

      else
      {
      }
    }

    v21 = __OFSUB__(v6--, 1);
    if (v21)
    {
      goto LABEL_29;
    }

    *v11 = v5;
    v11[1] = v12;
    v11 += 2;
    ++v5;
    v10 = v13;
  }

  v22 = v10[3];
  if (v22 < 2)
  {
    return;
  }

  v23 = v22 >> 1;
  v21 = __OFSUB__(v23, v6);
  v24 = v23 - v6;
  if (!v21)
  {
    v10[2] = v24;
    return;
  }

LABEL_31:
  __break(1u);
}

unint64_t sub_1E380E194()
{
  result = qword_1ECF2B1A8;
  if (!qword_1ECF2B1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B198);
    sub_1E380E220();
    sub_1E380E534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B1A8);
  }

  return result;
}

unint64_t sub_1E380E220()
{
  result = qword_1ECF2B1B0;
  if (!qword_1ECF2B1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B1B8);
    sub_1E380E2AC();
    sub_1E380E47C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B1B0);
  }

  return result;
}

unint64_t sub_1E380E2AC()
{
  result = qword_1ECF2B1C0;
  if (!qword_1ECF2B1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B1C8);
    sub_1E380E338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B1C0);
  }

  return result;
}

unint64_t sub_1E380E338()
{
  result = qword_1ECF2B1D0;
  if (!qword_1ECF2B1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B1D8);
    sub_1E380E3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B1D0);
  }

  return result;
}

unint64_t sub_1E380E3C4()
{
  result = qword_1ECF2B1E0;
  if (!qword_1ECF2B1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B1E8);
    sub_1E3743478(&unk_1ECF2B1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B1E0);
  }

  return result;
}

unint64_t sub_1E380E47C()
{
  result = qword_1ECF2B200;
  if (!qword_1ECF2B200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B208);
    sub_1E3743478(&unk_1ECF2B210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B200);
  }

  return result;
}

unint64_t sub_1E380E534()
{
  result = qword_1ECF2B220;
  if (!qword_1ECF2B220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B228);
    sub_1E380E5C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B220);
  }

  return result;
}

unint64_t sub_1E380E5C0()
{
  result = qword_1ECF2B230;
  if (!qword_1ECF2B230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B238);
    sub_1E37ADF68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B230);
  }

  return result;
}

uint64_t sub_1E380E64C()
{
  v1 = *(v0 + 64);
  v2 = sub_1E3B21080();
  if (sub_1E374E8E4(v2, 2))
  {
    return sub_1E3B21268();
  }

  result = sub_1E3CCE274(*(v1 + 120), 7u);
  if (result)
  {
    return sub_1E3B21268();
  }

  return result;
}

unint64_t sub_1E380E6AC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E380E6F0()
{
  type metadata accessor for CountDownProgressPresenter();
  OUTLINED_FUNCTION_4_39();
  sub_1E380E6AC(v0);
  OUTLINED_FUNCTION_27_0();
  sub_1E4200BC4();
  sub_1E3C13B5C();

  OUTLINED_FUNCTION_27_0();
  v1 = sub_1E4200BC4();
  v2 = OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_hasStartedCountDown;
  swift_beginAccess();
  *(v1 + v2) = 1;
}

uint64_t objectdestroyTm_4()
{

  sub_1E3264CE0();
  OUTLINED_FUNCTION_44_8();

  return swift_deallocObject();
}

uint64_t sub_1E380E818()
{
  type metadata accessor for CountDownProgressPresenter();
  OUTLINED_FUNCTION_4_39();
  sub_1E380E6AC(v0);
  OUTLINED_FUNCTION_27_0();
  sub_1E4200BC4();
  sub_1E3C13B5C();
}

uint64_t objectdestroy_19Tm_0()
{

  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E380E900()
{
  v1 = *(v0 + 64);
  type metadata accessor for CountDownProgressPresenter();
  OUTLINED_FUNCTION_4_39();
  sub_1E380E6AC(v2);
  OUTLINED_FUNCTION_27_0();
  sub_1E4200BC4();
  sub_1E3C13D20(*(v1 + 16), *(v1 + 24));
}

uint64_t sub_1E380E9A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1E380E9E4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1E380EA48(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  bzero((a1 + 72), 0x99uLL);
}

uint64_t sub_1E380EA74(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

void *sub_1E380EAC8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_65(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E380EB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1E380EB70();
  }

  return result;
}

uint64_t sub_1E380EB70()
{
}

uint64_t sub_1E380EBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1E380EBC4();
  }

  return result;
}

uint64_t sub_1E380EBC4()
{
}

uint64_t sub_1E380EC04(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

void *sub_1E380EC5C(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_65(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E380ECB0()
{
  result = qword_1EE288498;
  if (!qword_1EE288498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B2E0);
    sub_1E3743478(&unk_1EE2884A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288498);
  }

  return result;
}

unint64_t sub_1E380ED80(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E380EDF4()
{
  result = qword_1ECF2B308;
  if (!qword_1ECF2B308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B310);
    sub_1E380EEAC();
    sub_1E3743478(&unk_1ECF2B328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B308);
  }

  return result;
}

unint64_t sub_1E380EEAC()
{
  result = qword_1ECF2B318;
  if (!qword_1ECF2B318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B320);
    sub_1E3743478(&unk_1ECF2B328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B318);
  }

  return result;
}

uint64_t sub_1E380EF64(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE2(a3) != 255)
  {
    return sub_1E380EF7C(result, a2, a3, BYTE2(a3) & 1);
  }

  return result;
}

uint64_t sub_1E380EF7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E380EF8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE2(a3) != 255)
  {
    return sub_1E380EFA4(result, a2, a3, BYTE2(a3) & 1);
  }

  return result;
}

uint64_t sub_1E380EFA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1E380EFB4()
{
  result = qword_1ECF2B370;
  if (!qword_1ECF2B370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B368);
    sub_1E380F040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B370);
  }

  return result;
}

unint64_t sub_1E380F040()
{
  result = qword_1ECF2B378;
  if (!qword_1ECF2B378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B380);
    sub_1E3743478(&unk_1EE289DE0);
    sub_1E380F0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B378);
  }

  return result;
}

unint64_t sub_1E380F0F8()
{
  result = qword_1ECF47248[0];
  if (!qword_1ECF47248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF47248);
  }

  return result;
}

unint64_t sub_1E380F14C()
{
  result = qword_1ECF2B390;
  if (!qword_1ECF2B390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B398);
    sub_1E380ED80(&unk_1ECF2B300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B390);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return sub_1E4202FA4();
}

uint64_t OUTLINED_FUNCTION_88_6()
{

  return sub_1E3743538(v0 + 96, v0 + 72, v1);
}

uint64_t OUTLINED_FUNCTION_89_3()
{
}

void sub_1E380F2B0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView;
  OUTLINED_FUNCTION_3_0();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = a1;
  v7 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView;
  OUTLINED_FUNCTION_5_0();
  v8 = *&v2[v7];
  if (!v8)
  {
    if (!v5)
    {
      goto LABEL_21;
    }

LABEL_6:
    [v5 removeFromSuperview];
    v8 = *&v2[v7];
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (v8 == v5)
  {
    goto LABEL_21;
  }

  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = v8;
  [v9 setContentMode_];
  v10 = *sub_1E3E932E0();
  v11 = *sub_1E3E932EC();
  if (!v10)
  {
    if (!v11)
    {
      v10 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v10 |= v11;
    goto LABEL_13;
  }

  if ((v11 & ~v10) != 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  [v9 setVuiAutoresizingMask_];
  v12 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout;
  OUTLINED_FUNCTION_5_0();
  v13 = *&v2[v12];
  v14 = 0.0;
  if (v13)
  {
    v15 = *(*v13 + 552);

    v15(v28, v16);
    v17 = *v28;
    v18 = *&v28[1];
    v19 = *&v28[2];
    v20 = *&v28[3];

    if ((v29 & 1) == 0)
    {
      v14 = sub_1E3952BE8(v17, v18, v19, v20);
    }
  }

  v21 = [v9 vuiLayer];
  [v21 setCornerRadius_];

  v22 = [v9 vuiLayer];
  if (v22)
  {
    [v22 setMasksToBounds_];
  }

  v23 = [v2 vuiContentView];
  [v23 addSubview_];

  v24 = [v2 vuiContentView];
  v25 = [v24 vuiLayer];

  [v25 setCornerRadius_];
  v26 = [v2 vuiContentView];
  v27 = [v26 vuiLayer];

  if (v27)
  {
    [v27 setMasksToBounds_];
  }

LABEL_21:
  [v2 vui_setNeedsLayout];
}

id sub_1E380F5A4()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

uint64_t sub_1E380F630(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_72;
  }

  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    goto LABEL_72;
  }

  v9 = v8;
  OUTLINED_FUNCTION_30_1();
  v11 = *(v10 + 392);
  v134 = a2;
  v12 = v11();
  if (!v12)
  {
    goto LABEL_71;
  }

  v13 = v12;
  v14 = *v12;
  if (*v12 == _TtC8VideosUI23CanonicalInfoCardLayout)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v137 = v15;
  if (v14 != _TtC8VideosUI23CanonicalInfoCardLayout)
  {

    goto LABEL_72;
  }

  v16 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout;
  OUTLINED_FUNCTION_3_0();
  *&v9[v16] = v13;
  swift_retain_n();

  v18 = (*(*a1 + 488))(v17);
  if (!v18)
  {
    goto LABEL_67;
  }

  v19 = v18;
  if (!*(v18 + 16))
  {

    goto LABEL_67;
  }

  v20 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView;
  OUTLINED_FUNCTION_5_0();
  v141 = *&v9[v20];
  v21 = v141;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3B0);
  sub_1E4148C68(sub_1E3810624, v22, &v139);

  v23 = v139;
  v24 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_layout;
  OUTLINED_FUNCTION_3_0();
  *&v23[v24] = v13;
  v130 = v13;

  v25 = type metadata accessor for UIFactory();
  v26 = sub_1E373E010(39, v19);
  v27 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView;
  OUTLINED_FUNCTION_5_0();
  v133 = v23;
  OUTLINED_FUNCTION_0_43();
  sub_1E3280A90(0, &qword_1EE23B360);
  v28 = v27;
  v138 = v25;
  v29 = sub_1E393D92C(v26, v27, &v139, 0);

  sub_1E325F748(&v139, &qword_1ECF296C0);
  if (v29)
  {
    [v29 setAdjustsLocalImageForContentSizeCategory_];
  }

  v129 = v29;
  v30 = v133;
  sub_1E3B1C464(v29);
  sub_1E373E010(23, v19);
  v31 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_43();
  v32 = sub_1E3280A90(0, &qword_1EE23AD40);
  v33 = v31;
  v34 = OUTLINED_FUNCTION_1_68();
  v38 = sub_1E393D92C(v34, v35, v36, v37);

  sub_1E325F748(&v139, &qword_1ECF296C0);
  sub_1E3B1C3C8(v38);
  sub_1E373E010(15, v19);
  v39 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_subtitleLabel;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_43();
  v40 = v39;
  v41 = OUTLINED_FUNCTION_1_68();
  v132 = v32;
  v45 = sub_1E393D92C(v41, v42, v43, v44);

  sub_1E325F748(&v139, &qword_1ECF296C0);
  sub_1E3B1C410(v45);
  sub_1E373E010(9, v19);

  v46 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_descriptionLabel;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_43();
  sub_1E3280A90(0, &qword_1EE23B1F8);
  v47 = v46;
  v48 = OUTLINED_FUNCTION_1_68();
  v52 = sub_1E393D92C(v48, v49, v50, v51);

  sub_1E325F748(&v139, &qword_1ECF296C0);
  sub_1E3B1C458(v52);
  v53 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_tableView;
  OUTLINED_FUNCTION_5_0();
  v54 = *&v30[v53];
  v55 = a1;
  v56 = *(*a1 + 552);

  v131 = v54;
  v57 = v56();
  if (!v57)
  {

    v63 = 0;
    v59 = v131;
    goto LABEL_63;
  }

  v127 = v55;
  sub_1E3277E60(0x656D6F74616D6F74, 0xEB00000000726574, v57, &v139);

  if (!v140)
  {

    sub_1E325F748(&v139, &unk_1ECF296E0);
    v59 = v131;
LABEL_25:
    v63 = 0;
LABEL_63:

    v103 = v133;
    sub_1E3B1C470(v63);
    v104 = v103;
    sub_1E380F2B0(v103);
    v105 = v137;
    vtable = (*v137)[18].vtable;
    v107 = v134;
    v108 = vtable();
    [v9 setBackgroundColor_];

    v109 = ((*v105)[21].vtable)();
    [v9 setHighlightedBackgroundColor_];

    if ((TVAppFeature.isEnabled.getter(10) & 1) == 0 || [objc_opt_self() isMac])
    {
      v110 = v104;
      v111 = vtable();

      [v110 setVuiBackgroundColor_];

LABEL_68:

      return v9;
    }

LABEL_67:

    goto LABEL_68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  OUTLINED_FUNCTION_3_36();
  v58 = swift_dynamicCast();
  v59 = v131;
  if ((v58 & 1) == 0)
  {

    goto LABEL_25;
  }

  v138 = v142;
  v60 = v131;
  if (!v54)
  {
    type metadata accessor for TomatometerTableView();
    v60 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v144 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CanonicalInfoCardLayout.RowLayout();
  v61 = v59;
  v62 = sub_1E41845C0();
  v63 = v60;
  v64 = [v63 vuiTraitCollection];
  v65 = [v64 isAXEnabled];

  v66 = [v63 vuiIsRTL];
  if (v65)
  {
    OUTLINED_FUNCTION_30_1();
    if (v66)
    {
      (*(v67 + 96))();
      OUTLINED_FUNCTION_30();
      (*(v68 + 1984))(2);
    }

    else
    {
      (*(v67 + 120))();
      OUTLINED_FUNCTION_30();
      (*(v73 + 1984))(0);
    }
  }

  else
  {
    if (!v66)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_30_1();
    (*(v69 + 120))();
    OUTLINED_FUNCTION_30();
    (*(v70 + 1984))(0);

    OUTLINED_FUNCTION_30_1();
    (*(v71 + 96))();
    OUTLINED_FUNCTION_2_1();
    (*(v72 + 1984))(2);
  }

LABEL_30:
  v128 = v62;
  a1 = *(v138 + 16);
  v123 = v63 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  if (!a1)
  {

    v75 = MEMORY[0x1E69E7CC0];
LABEL_62:
    (*((*MEMORY[0x1E69E7D40] & *v63) + 0x60))(v75);

    goto LABEL_63;
  }

  v122 = v9;
  v74 = *MEMORY[0x1E69E7D40] & *v63;
  v136 = v63;
  v5 = *(v74 + 88);
  v135 = v74 + 88;
  v75 = MEMORY[0x1E69E7CC0];
  v76 = 32;
  v126 = v5;
  while (1)
  {
    v4 = *(v138 + v76);
    if (v75 >> 62)
    {
      v7 = sub_1E4207384();
    }

    else
    {
      v7 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v78 = (v5)(v77);
    if (!v78)
    {
      goto LABEL_44;
    }

    v79 = v78;
    v80 = v78 & 0xFFFFFFFFFFFFFF8;
    v81 = v78 >> 62 ? sub_1E4207384() : *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 < v81)
    {
      break;
    }

LABEL_44:
    type metadata accessor for TomatometerTableView.ItemViewModel();
    v84 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v85 = 0;
LABEL_45:
    if (*(v4 + 16))
    {
      v86 = sub_1E327D33C(0x656C746974, 0xE500000000000000);
      if (v87)
      {
        sub_1E328438C(*(v4 + 56) + 32 * v86, &v139);
        OUTLINED_FUNCTION_3_36();
        if (swift_dynamicCast())
        {
          v124 = v143;
          v125 = v142;
          (*(*v128 + 96))();
          OUTLINED_FUNCTION_2_1();
          v89 = (*(v88 + 2408))();

          OUTLINED_FUNCTION_7_20();
          v91 = (*(v90 + 96))();
          sub_1E3810954(v125, v124, v89, v91);
          v5 = v126;
          OUTLINED_FUNCTION_7_20();
          (*(v92 + 104))();
        }
      }
    }

    if (*(v4 + 16) && (v93 = sub_1E327D33C(0x65756C6176, 0xE500000000000000), (v94 & 1) != 0))
    {
      sub_1E328438C(*(v4 + 56) + 32 * v93, &v139);

      OUTLINED_FUNCTION_3_36();
      if (swift_dynamicCast())
      {
        v95 = v142;
        v125 = v143;
        (*(*v128 + 120))();
        OUTLINED_FUNCTION_2_1();
        v97 = (*(v96 + 2408))();

        OUTLINED_FUNCTION_7_20();
        v99 = (*(v98 + 120))();
        v100 = v95;
        v5 = v126;
        sub_1E3810954(v100, v125, v97, v99);
        OUTLINED_FUNCTION_7_20();
        (*(v101 + 128))();
      }
    }

    else
    {
    }

    v102 = v84;
    MEMORY[0x1E6910BF0]();
    if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();

    v75 = v144;
    v76 += 8;
    a1 = (a1 - 1);
    if (!a1)
    {

      v9 = v122;
      v59 = v131;
      v63 = v136;
      goto LABEL_62;
    }
  }

  if ((v79 & 0xC000000000000001) != 0)
  {
    v82 = MEMORY[0x1E6911E60](v7, v79);
LABEL_42:
    v83 = v82;

    v84 = v83;
    v85 = v84;
    goto LABEL_45;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7 >= *(v80 + 16))
    {
      goto LABEL_70;
    }

    v82 = *(v79 + 8 * v7 + 32);
    goto LABEL_42;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:

LABEL_72:
  v113 = sub_1E324FBDC();
  (*(v5 + 16))(v7, v113, v4);

  v114 = sub_1E41FFC94();
  v115 = sub_1E4206814();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *&v139 = v117;
    *v116 = 136315138;
    sub_1E384EE08(a1[49]);
    v120 = sub_1E3270FC8(v118, v119, &v139);

    *(v116 + 4) = v120;
    _os_log_impl(&dword_1E323F000, v114, v115, "CanonicalInfoCardCell: Failed to get correct cell for [%s]", v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v117);
    MEMORY[0x1E69143B0](v117, -1, -1);
    MEMORY[0x1E69143B0](v116, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E3810624@<X0>(void *a1@<X8>)
{
  type metadata accessor for CanonicalInfoCardView();
  result = sub_1E3890DAC();
  *a1 = result;
  return result;
}

void sub_1E3810668()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E38106F4(char a1, double a2, double a3)
{
  v4 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView;
  if (a1)
  {
    OUTLINED_FUNCTION_5_0();
    v7 = *&v3[v4];
    if (v7)
    {
      v8 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout;
      OUTLINED_FUNCTION_5_0();
      v9 = *&v3[v8];

      v10 = v7;
      v11 = sub_1E3C8B764(v9, a2, a3);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v12 = *&v3[v4];
    v11 = 0.0;
    if (v12)
    {
      v13 = v12;
      [v3 vuiBounds];
      [v13 setFrame_];
    }
  }

  return v11;
}

void sub_1E3810854()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_vui_prepareForReuse);
  v1 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView;
  OUTLINED_FUNCTION_5_0();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    sub_1E3B1D73C();
  }
}

id sub_1E3810954(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() labelWithString:v6 textLayout:a3 existingLabel:a4];

  return v7;
}

void *sub_1E3810A18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TextBadge();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v78[-v12];
  *(&v80 + 1) = &unk_1F5D5D918;
  v81 = &off_1F5D5C938;
  LOBYTE(v79) = 2;
  v14 = j__OUTLINED_FUNCTION_18();
  v15 = sub_1E39C29F0(&v79, v14 & 1);
  __swift_destroy_boxed_opaque_existential_1(&v79);
  if (TVAppFeature.isEnabled.getter(10) & 1) == 0 || (v15)
  {
    v22 = (*(*a1 + 488))();
    if (v22)
    {
      v23 = v22;
      if (!a4)
      {
        if (!(*(*a1 + 392))())
        {

          return 0;
        }
      }

      type metadata accessor for TextBadgeLayout();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        if (a2)
        {
          objc_opt_self();
          v30 = swift_dynamicCastObjCClass();
          if (v30)
          {
            v31 = a2;
          }
        }

        else
        {
          v30 = 0;
        }

        v82[0] = v30;
        swift_retain_n();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3B8);
        sub_1E4148C68(sub_1E3811578, v32, &v79);

        v19 = v79;
        [v79 reset];
        OUTLINED_FUNCTION_0_44();
        v34 = (*(v33 + 1824))();
        [v19 setBadgeKind_];
        v35 = *(*v29 + 176);

        v37 = v82;
        v35(v82, v36);
        if (v83)
        {
          v37 = MEMORY[0x1E69DDCE0];
          v38 = *(MEMORY[0x1E69DDCE0] + 8);
          v39 = *(MEMORY[0x1E69DDCE0] + 16);
          v40 = *(MEMORY[0x1E69DDCE0] + 24);
        }

        else
        {
          v38 = *&v82[1];
          v39 = *&v82[2];
          v40 = *&v82[3];
        }

        [v19 setPadding_];
        OUTLINED_FUNCTION_0_44();
        v42 = (*(v41 + 1872))();
        if (v42)
        {
          v43 = (*(*v42 + 672))();
        }

        else
        {
          v43 = 0;
        }

        OUTLINED_FUNCTION_2_34(v42, sel_setTintColor_);

        OUTLINED_FUNCTION_0_44();
        v45 = *(v44 + 1848);
        v46 = v45();
        if (v46)
        {
          OUTLINED_FUNCTION_30();
          v48 = (*(v47 + 1928))();

          if (v48 == 4)
          {
            LOBYTE(v46) = 0;
          }

          else
          {
            LOBYTE(v79) = v48;
            v78[15] = 2;
            sub_1E376C360();
            LOBYTE(v46) = sub_1E4205E84();
          }
        }

        if ((v45)([v19 setIsUppercased_]) && (OUTLINED_FUNCTION_30(), v52 = (*(v51 + 1904))(), , v52 != 28))
        {
          v53 = sub_1E376BD24(v52);
        }

        else
        {
          v53 = 0;
        }

        [v19 setBlendMode_];
        OUTLINED_FUNCTION_0_44();
        v55 = COERCE_DOUBLE((*(v54 + 328))());
        if (v56)
        {
          v55 = 0.0;
        }

        [v19 setMinHeight_];
        OUTLINED_FUNCTION_0_44();
        v58 = (*(v57 + 552))(&v79);
        MEMORY[0x1EEE9AC00](v58);
        *&v78[-16] = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0);
        sub_1E4148DE0(sub_1E38115B4);
        OUTLINED_FUNCTION_0_44();
        v60 = (*(v59 + 744))();
        OUTLINED_FUNCTION_2_34(v60, sel_setBackgroundColor_);

        OUTLINED_FUNCTION_0_44();
        v62 = (*(v61 + 840))();

        if (v62)
        {
          v64 = (*(*v62 + 1792))(v63);

          if (v64)
          {
            sub_1E3755B54();
            v62 = sub_1E42062A4();
          }

          else
          {
            v62 = 0;
          }
        }

        OUTLINED_FUNCTION_2_34(v63, sel_setGradientBgColors_);

        if (sub_1E373E010(39, v23))
        {
          type metadata accessor for ImageViewModel();
          v65 = swift_dynamicCastClass();
          if (v65)
          {
            v66 = v65;
            v67 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
            v68 = [v19 imageView];
            v81 = 0;
            v79 = 0u;
            v80 = 0u;
            v69 = sub_1E393D9C4(v66, v68, &v79, 0);

            sub_1E373C624(&v79);
            goto LABEL_56;
          }
        }

        v69 = 0;
LABEL_56:
        [v19 setImageView_];
        v70 = sub_1E373E010(17, v23);
        if (v70)
        {
          if (*v70 == _TtC8VideosUI13TextViewModel)
          {
            OUTLINED_FUNCTION_18();
            v71 = sub_1E3C287F4(0);

            goto LABEL_61;
          }
        }

        v71 = 0;
LABEL_61:
        [v19 setAttributedTitle_];
        if (sub_1E373F6E0())
        {
          v72 = sub_1E373E010(17, v23);

          if (!v72)
          {

LABEL_73:
            goto LABEL_74;
          }

          if (*v72 != _TtC8VideosUI13TextViewModel)
          {

            goto LABEL_74;
          }

          v73 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v81 = 0;
          v79 = 0u;
          v80 = 0u;
          v74 = v73;
          v75 = sub_1E393D9C4(v72, 0, &v79, 0);

          sub_1E373C624(&v79);
          if (v75)
          {
            objc_opt_self();
            v76 = swift_dynamicCastObjCClass();
            if (!v76)
            {
            }
          }

          else
          {
            v76 = 0;
          }

          [v19 setRentalExpirationLabel_];
        }

        else
        {
        }

        goto LABEL_73;
      }

      swift_retain_n();
    }

    return 0;
  }

  if (a3 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  sub_1E37C5408(a3);
  OUTLINED_FUNCTION_18();

  sub_1E3FC96D0(v17, v16, v13);
  if (a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AC0), (v18 = swift_dynamicCastClass()) != 0))
  {
    v19 = v18;
    sub_1E38115FC(v13, v11);
    v20 = a2;
    v21 = sub_1E4201234();
  }

  else
  {
    sub_1E38115FC(v13, v11);
    v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AC0));
    v21 = sub_1E4201214();
    v19 = v21;
  }

  if ((*(*a1 + 392))(v21))
  {
    type metadata accessor for TextBadgeLayout();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      if (!(*(*v25 + 1848))() || (OUTLINED_FUNCTION_30(), v27 = (*(v26 + 1712))(), , v27 == 13))
      {
        sub_1E3811660(v13);
LABEL_74:

        return v19;
      }

      v49 = j__OUTLINED_FUNCTION_13_30(v27);
      v50 = [objc_opt_self() uiContentSizeCategoryFor_];
      OUTLINED_FUNCTION_2_34(v50, sel_setMaximumContentSizeCategory_);
    }
  }

  sub_1E3811660(v13);
  return v19;
}

id sub_1E3811578@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUITextBadgeView) init];
  *a1 = result;
  return result;
}

id sub_1E38115B4(double *a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1E3952BE8(*a1, a1[1], a1[2], a1[3]);

  return [v2 setLayerCornerRadius_];
}

uint64_t sub_1E38115FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextBadge();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3811660(uint64_t a1)
{
  v2 = type metadata accessor for TextBadge();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E38116BC()
{
  if (sub_1E385050C())
  {
    return 1;
  }

  return sub_1E373F6E0();
}

uint64_t sub_1E381170C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E381179C()
{
  v1 = OBJC_IVAR____TtC8VideosUI31CollectionRichHeaderFocusUpdate___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E381182C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  sub_1E41FE924();
  return v0;
}

id sub_1E3811884(uint64_t a1, void *a2)
{
  v22 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v10 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E4297BE0;
  sub_1E384EE08(*(a1 + 98));
  v13 = v12;
  v15 = v14;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1E3283528();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  sub_1E41FFB94();

  if (a2 && (v16 = swift_dynamicCastClass()) != 0)
  {
    v17 = v16;
    v18 = a2;
  }

  else
  {
    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  sub_1E3811AC0(a1);
  sub_1E4206B94();
  v19 = VUISignpostLogObject();
  sub_1E41FFBA4();

  (*(v5 + 8))(v8, v22);
  return v17;
}

uint64_t sub_1E3811AC0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3D0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v14 = a1;
  v15 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3D8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2B3E0);
  v11 = sub_1E3812658();
  v16[0] = v10;
  v16[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_1E42021C4();
  sub_1E4202734();
  v16[3] = v4;
  v16[4] = sub_1E32752B0(&qword_1EE2888C0, &qword_1ECF2B3D0);
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_1E42021B4();
  (*(v6 + 8))(v9, v4);
  return MEMORY[0x1E6911580](v16);
}

double sub_1E3811C7C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v13 = VUISignpostLogObject();
  OUTLINED_FUNCTION_6_36();

  v14 = [v3 contentView];
  [v14 sizeThatFits_];
  v16 = v15;

  sub_1E4206B94();
  v17 = VUISignpostLogObject();
  OUTLINED_FUNCTION_6_36();

  (*(v8 + 8))(v11, v6);
  return v16;
}

id sub_1E3811E60()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI24CollectionRichHeaderView_viewModel) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3811EE0(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI24CollectionRichHeaderView_viewModel] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

__objc2_class **sub_1E3811F90(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*a1 + 488))(a1);
  if (v4 && (v5 = *(v4 + 16), v6 = , v5))
  {
    result = (*(*a1 + 392))(v6);
    if (result)
    {
      v8 = *result;

      if (v8 == _TtC8VideosUI20RichHeaderViewLayout)
      {

        return sub_1E3811AC0(a1);
      }
    }
  }

  else
  {

    return [v2 vui_setNeedsLayout];
  }

  return result;
}

uint64_t sub_1E38120F0()
{
  swift_getKeyPath();
  sub_1E38124A4();
  OUTLINED_FUNCTION_43();
}

uint64_t sub_1E3812154@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E38120F0();
  *a1 = result;
  return result;
}

uint64_t sub_1E38121AC(uint64_t a1)
{
  v2 = v1;

  type metadata accessor for ViewModel();
  sub_1E38124FC(&qword_1EE23BA60, type metadata accessor for ViewModel);
  v4 = sub_1E4205E84();

  if (v4)
  {
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E38124A4();
    sub_1E41FE8E4();
  }
}

uint64_t sub_1E3812304()
{

  v1 = OBJC_IVAR____TtC8VideosUIP33_28E0DD4EE154B4517DA468362DA184A725HeaderViewModelObservable___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E38123D4()
{
  result = sub_1E41FE934();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3812468()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_1E38124A4()
{
  result = qword_1EE2964D8;
  if (!qword_1EE2964D8)
  {
    type metadata accessor for HeaderViewModelObservable(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2964D8);
  }

  return result;
}

uint64_t sub_1E38124FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3812544()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = v1;
  sub_1E3EE4C70(v2, 0, 0, v1, v7);
  type metadata accessor for Router();
  sub_1E40C4334();

  sub_1E40C49A8();
  v5 = v4;

  sub_1E38124FC(&qword_1EE23C228, type metadata accessor for Router);
  v8 = sub_1E4200504();
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B3E0);
  sub_1E3812658();
  sub_1E3D79BC0(v1);
  return sub_1E3812764(v7);
}

unint64_t sub_1E3812658()
{
  result = qword_1EE289CB0;
  if (!qword_1EE289CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2B3E0);
    sub_1E3812710();
    sub_1E32752B0(&qword_1EE2887F0, &unk_1ECF2A7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CB0);
  }

  return result;
}

unint64_t sub_1E3812710()
{
  result = qword_1EE287D70;
  if (!qword_1EE287D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287D70);
  }

  return result;
}

uint64_t sub_1E3812764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E38127CC()
{
  v1 = OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    if ([objc_opt_self() isTV])
    {
      sub_1E38132CC();
    }

    else
    {
      sub_1E381320C();
    }

    v7 = v5;
    v8 = v6;
    sub_1E3280A90(0, &qword_1EE23AD40);
    sub_1E38128E8();
    OUTLINED_FUNCTION_2_1();
    v10 = (*(v9 + 2408))();

    v11 = sub_1E3810954(v7, v8, v10, 0);
    v12 = *(v0 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

uint64_t sub_1E38128E8()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabelLayout))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabelLayout);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    sub_1E39DFFC8();
    OUTLINED_FUNCTION_36();
    if (v3)
    {
      v4 = 17;
    }

    else
    {
      v4 = 19;
    }

    (*(v2 + 1696))(v4);
    sub_1E39DFFC8();
    OUTLINED_FUNCTION_36();
    if (v6)
    {
      v7 = 6;
    }

    else
    {
      v7 = 10;
    }

    (*(v5 + 1792))(v7);

    v8 = *sub_1E3E5FD88();
    v9 = *(*v1 + 680);
    v10 = v8;
    v9(v8);
    LOBYTE(v109) = 0;
    v136 = 1;
    v137 = 0;
    v11 = MEMORY[0x1E69E6810];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_5_46();
    OUTLINED_FUNCTION_4_40();
    v12 = OUTLINED_FUNCTION_3_37();
    OUTLINED_FUNCTION_0_45(v12, v13, v14, v15, v16, v17, v18, v19, 2, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
    OUTLINED_FUNCTION_14_32(v20, v21, v22, v23, v24, v25, v26, v27, v108);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v29 = *(v28 + 1600);
    (v29)(&v108, 62, v30 & 1, v11);
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_5_46();
    OUTLINED_FUNCTION_4_40();
    v31 = OUTLINED_FUNCTION_3_37();
    OUTLINED_FUNCTION_0_45(v31, v32, v33, v34, v35, v36, v37, v38, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
    OUTLINED_FUNCTION_14_32(v39, v40, v41, v42, v43, v44, v45, v46, v108);
    v47 = OUTLINED_FUNCTION_18();
    v55 = OUTLINED_FUNCTION_17_8(v47, v48, v49, v50, v51, v52, v53, v54, v108);
    v29(v55, 64);
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_5_46();
    OUTLINED_FUNCTION_4_40();
    v56 = OUTLINED_FUNCTION_3_37();
    OUTLINED_FUNCTION_0_45(v56, v57, v58, v59, v60, v61, v62, v63, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
    OUTLINED_FUNCTION_14_32(v64, v65, v66, v67, v68, v69, v70, v71, v108);
    v72 = OUTLINED_FUNCTION_18();
    v80 = OUTLINED_FUNCTION_17_8(v72, v73, v74, v75, v76, v77, v78, v79, v108);
    v29(v80, 63);
    v108 = 5;
    LOBYTE(v109) = 0;
    v136 = 2;
    v137 = 0;
    v134 = 4;
    v135 = 0;
    type metadata accessor for NSLineBreakMode();
    v82 = v81;
    sub_1E3C2FC98();
    v130 = v132;
    v131 = v133;
    sub_1E3C3DE00(v82);
    v126 = v128;
    v127 = v129;
    sub_1E3C3DE00(v82);
    v122 = v124;
    v123 = v125;
    sub_1E3C2FCB8(&v108, v138);
    OUTLINED_FUNCTION_14_32(v83, v84, v85, v86, v87, v88, v89, v90, v108);
    v91 = OUTLINED_FUNCTION_18();
    v99 = OUTLINED_FUNCTION_17_8(v91, v92, v93, v94, v95, v96, v97, v98, v108);
    v29(v99, 67);
    __asm { FMOV            V1.2D, #16.0 }

    v138[0] = xmmword_1E42A0440;
    v138[1] = _Q1;
    v139 = 0;
    OUTLINED_FUNCTION_8();
    (*(v105 + 184))(v138);

    OUTLINED_FUNCTION_36();
    (*(v106 + 2008))(1);
    OUTLINED_FUNCTION_19_18();
  }

  return v1;
}

id sub_1E3812C8C()
{
  v1 = OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = v0;
    sub_1E3280A90(0, &qword_1EE23AD40);
    sub_1E38132CC();
    v6 = v5;
    v8 = v7;
    sub_1E3812D80();
    OUTLINED_FUNCTION_2_1();
    v10 = (*(v9 + 2408))();

    v11 = sub_1E3810954(v6, v8, v10, 0);
    v12 = *(v0 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

uint64_t sub_1E3812D80()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabelLayout))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabelLayout);
  }

  else
  {
    v1 = type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_2_1();
    (*(v2 + 1696))(21);
    OUTLINED_FUNCTION_36();
    v3 = OUTLINED_FUNCTION_15_8();
    v4(v3);
    OUTLINED_FUNCTION_36();
    v5 = OUTLINED_FUNCTION_15_8();
    v6(v5);
    OUTLINED_FUNCTION_36();
    v7 = OUTLINED_FUNCTION_15_8();
    v8(v7);

    v9 = *sub_1E3E5FDEC();
    v10 = *(*v1 + 680);
    v11 = v9;
    v10(v9);
    OUTLINED_FUNCTION_36();
    (*(v12 + 2176))(4, 0);
    __asm { FMOV            V0.2D, #8.0 }

    v20[0] = _Q0;
    v20[1] = xmmword_1E42A0450;
    v21 = 0;
    OUTLINED_FUNCTION_8();
    (*(v18 + 184))(v20);

    OUTLINED_FUNCTION_19_18();
  }

  return v1;
}

uint64_t sub_1E3812FA0()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___imageLayout))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___imageLayout);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();

    if (sub_1E39DFFC8())
    {
      v2 = 0x4040000000000000;
    }

    else
    {
      v2 = 0x4041000000000000;
    }

    (*(*v1 + 208))(v2, 0);
    if (sub_1E39DFFC8())
    {
      v3 = 0x4040000000000000;
    }

    else
    {
      v3 = 0x4041000000000000;
    }

    (*(*v1 + 312))(v3, 0);
    sub_1E39DFFC8();
    sub_1E3952C78();
    v10[0] = v4;
    v10[1] = v5;
    v10[2] = v6;
    v10[3] = v7;
    v11 = 0;
    OUTLINED_FUNCTION_8();
    (*(v8 + 184))(v10);

    OUTLINED_FUNCTION_19_18();
  }

  return v1;
}

uint64_t sub_1E38130F0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_contentChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1E37FAED4(*v1, v1[1]);
  return v2;
}

uint64_t sub_1E381314C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_contentChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1E37FAED8(v6, v7);
}

void sub_1E381320C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___appleAccountString + 8))
  {
    goto LABEL_5;
  }

  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    sub_1E3741090(0xD000000000000026, 0x80000001E425ECA0, v1);
    v4 = v3;

    if (v4)
    {
      OUTLINED_FUNCTION_21_26();

LABEL_5:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E38132CC()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___signInString + 8))
  {
    goto LABEL_11;
  }

  v1 = sub_1E39DFFC8();
  if (v1)
  {
    v2 = "SETTINGS_SIDEBAR_PROFILE_SIGN_IN_V2";
  }

  else
  {
    v2 = "SETTINGS_SIDEBAR_PROFILE_SIGN_IN";
  }

  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    if (v1)
    {
      v5 = 0xD000000000000023;
    }

    else
    {
      v5 = 0xD000000000000020;
    }

    sub_1E3797E30(v5, (v2 - 32) | 0x8000000000000000, v4);
    v7 = v6;

    if (v7)
    {

      OUTLINED_FUNCTION_21_26();

LABEL_11:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E38133C0()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___accountSettingsVoiceOverString + 8))
  {
    goto LABEL_5;
  }

  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    sub_1E3741090(0xD000000000000019, 0x80000001E425ECD0, v1);
    v4 = v3;

    if (v4)
    {
      OUTLINED_FUNCTION_21_26();

LABEL_5:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3813480()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_13_42(&OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel);
  OUTLINED_FUNCTION_12_33(v1);
  v3 = (v0 + v2);
  v4 = type metadata accessor for RootSideBarProfileView();
  *v3 = 0;
  v3[1] = 0;
  v44 = v0;
  v45 = v4;
  v5 = OUTLINED_FUNCTION_2_15();
  v8 = objc_msgSendSuper2(v6, v7, v5);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  [v11 addObserver:v10 selector:sel_accountStoreDidChange_ name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

  v12 = [v9 defaultCenter];
  [v12 addObserver:v10 selector:sel_profileImageDidChange_ name:@"VUIAuthenticationManagerProfileImageDidChangeNotification" object:0];

  v43[3] = v4;
  v43[0] = v10;
  v13 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v14 = v10;
  v15 = sub_1E3814AF0(v43, sel_handleTap_);
  v16 = v14;
  [v16 addGestureRecognizer_];
  sub_1E3812FA0();
  OUTLINED_FUNCTION_2_1();
  v18 = COERCE_DOUBLE((*(v17 + 1696))());
  v20 = v19;
  v22 = v21;

  if (v22)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v18;
  }

  if (v22)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v20;
  }

  v25 = objc_allocWithZone(MEMORY[0x1E69DF778]);
  v26 = sub_1E3814C34(v23, v24, 0xD000000000000012, 0x80000001E425ED30, 0);
  if (v26)
  {
    v27 = v26;
    [v26 setRenderAsTemplate_];
    v28 = [objc_opt_self() makeImageViewWithResourceDescriptor:v27 existingView:0];
    if (v28)
    {
      v29 = v28;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v27;
        v27 = v29;
        v32 = [v30 image];
        [v30 setPlaceholderImage_];

        v29 = v31;
      }
    }

    else
    {
      v30 = 0;
      v29 = v27;
    }

    v33 = OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_imageView;
    v34 = *&v16[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_imageView];
    *&v16[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_imageView] = v30;

    if (*&v16[v33])
    {
      v35 = sub_1E38127CC();
      OUTLINED_FUNCTION_25_22();

      v36 = sub_1E3812C8C();
      OUTLINED_FUNCTION_25_22();

      [v16 vui:*&v16[v33] addSubview:0 oldView:?];
      sub_1E3813918();
      [v16 vui:1 isAccessibilityElement:?];
      sub_1E38133C0();
      sub_1E37FB7F0(v37, v38, v16, &selRef_vui_setAccessibilityText_);
      [v16 setAccessibilityTraits_];

      type metadata accessor for Accessibility();
      sub_1E40A7DC8();
      sub_1E37FB7F0(v39, v40, v16, &selRef_setVuiAccessibilityIdentifier_);

      v41 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
      [v16 addInteraction_];

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void sub_1E3813918()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E324FBDC();
  (*(v4 + 16))(v7, v8, v2);
  v9 = sub_1E41FFC94();
  v10 = sub_1E42067E4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1E323F000, v9, v10, "RootSideBarProfileView:: updateInfo", v11, 2u);
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v2);
  v12 = objc_opt_self();
  v13 = [v12 userHasActiveAccount];
  if (v13)
  {
    v14 = sub_1E3814CB0(v12);
    v16 = v15;
    v17 = [v12 userProfileImage];
    if (!v17)
    {
      sub_1E3812FA0();
      OUTLINED_FUNCTION_30();
      v19 = COERCE_DOUBLE((*(v18 + 200))());
      v21 = v20;

      if (v21)
      {
        v22 = 34.0;
      }

      else
      {
        v22 = v19;
      }

      v23 = [objc_opt_self() mainScreen];
      [v23 scale];
      v25 = v24;

      v17 = [v12 monogramAvatarForSize:objc_msgSend(v1 scale:sel_vuiIsRTL) isRTL:{v22, v22, v25}];
    }

    sub_1E38128E8();
    OUTLINED_FUNCTION_30();
    (*(v26 + 2056))(2, 0);

    OUTLINED_FUNCTION_36();
    v28 = *(v27 + 2080);

    v28(2, 0);

    OUTLINED_FUNCTION_36();
    v30 = *(v29 + 2104);

    v30(2, 0);

    sub_1E3280A90(0, &qword_1EE23AD40);
    if (v16)
    {

      v31 = v16;
      goto LABEL_13;
    }
  }

  else
  {
    sub_1E38128E8();
    OUTLINED_FUNCTION_30();
    v32 = OUTLINED_FUNCTION_15_8();
    v33(v32);

    OUTLINED_FUNCTION_36();
    v35 = *(v34 + 2080);

    v36 = OUTLINED_FUNCTION_15_8();
    v35(v36);

    OUTLINED_FUNCTION_36();
    v38 = *(v37 + 2104);

    v39 = OUTLINED_FUNCTION_15_8();
    v38(v39);

    sub_1E3280A90(0, &qword_1EE23AD40);
    v17 = 0;
  }

  sub_1E381320C();
  v14 = v40;
  v16 = v41;

  v31 = 0;
LABEL_13:
  sub_1E38128E8();
  OUTLINED_FUNCTION_30();
  v43 = (*(v42 + 2408))();

  v44 = sub_1E38127CC();

  v45 = *(v1 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel);
  v46 = v45;
  if (v31)
  {

    v47 = 0;
  }

  else
  {
    v47 = v13;
  }

  [v45 setHidden_];

  v48 = sub_1E3812C8C();
  [v48 setHidden_];

  v49 = [*(v1 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_imageView) setImage_];
  v50 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x138))(v49);
  if (v50)
  {
    v52 = v50;
    v53 = v51;
    v50();
    sub_1E37FAED8(v52, v53);
  }

  [v1 vui_setNeedsLayout];
}

void sub_1E3813F38()
{
  OUTLINED_FUNCTION_13_42(&OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel);
  OUTLINED_FUNCTION_12_33(v1);
  v3 = (v0 + v2);
  *v3 = 0;
  v3[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3813FDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootSideBarProfileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E38140D0(char a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_imageView];
  if (v5)
  {
    v6 = v2;
    v9 = v5;
    v10 = sub_1E3812C8C();
    v11 = [v10 isHidden];

    sub_1E3812FA0();
    OUTLINED_FUNCTION_30();
    (*(v12 + 200))();
    OUTLINED_FUNCTION_20_24();
    v13 = 0.0;
    if (v4)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v3;
    }

    OUTLINED_FUNCTION_10_30();
    v16 = *(v15 + 176);

    v16(v48, v17);

    if (v49)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = *&v48[1];
    }

    sub_1E38128E8();
    OUTLINED_FUNCTION_30();
    (*(v19 + 176))(v50);
    v20 = *v50;
    v21 = *&v50[1];
    v22 = *&v50[2];
    v23 = *&v50[3];

    if ((v51 & 1) == 0)
    {
      v13 = sub_1E3952BE0(v20, v21, v22, v23);
    }

    v24 = sub_1E38127CC();
    v47 = a2 - v14 - v18 - v13;
    [v24 vui:v47 sizeThatFits:0.0];

    if ((v11 & 1) == 0)
    {
      [*&v6[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabel] vui:v47 sizeThatFits:0.0];
    }

    OUTLINED_FUNCTION_10_30();
    v26 = *(v25 + 200);

    v26(v27);
    OUTLINED_FUNCTION_20_24();
    OUTLINED_FUNCTION_10_30();
    v29 = *(v28 + 304);

    v29(v30);
    OUTLINED_FUNCTION_20_24();
    if (v11)
    {
      OUTLINED_FUNCTION_8();
      v32 = *(v31 + 176);

      v32(v52, v33);
    }

    else
    {
      sub_1E3812D80();
      OUTLINED_FUNCTION_30();
      (*(v34 + 176))(v52);
    }

    v35 = *v52;
    v36 = *&v52[1];
    v37 = *&v52[2];

    if ((v53 & 1) == 0)
    {
      sub_1E3952BD8(v35, v36, v37);
    }

    OUTLINED_FUNCTION_10_30();
    v39 = *(v38 + 176);

    v39(&v54, v40);

    OUTLINED_FUNCTION_8();
    v42 = *(v41 + 176);

    v42(&v55, v43);

    if ((a1 & 1) == 0)
    {
      [v6 vuiIsRTL];
      v44 = *&v6[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel];
      [v6 bounds];
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v44 setFrame_];

      v45 = v9;
      [v6 bounds];
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_2_15();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v45 setFrame_];

      if ((v11 & 1) == 0)
      {
        v46 = *&v6[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabel];
        [v6 bounds];
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v46 setFrame_];
      }
    }
  }
}

id sub_1E3814600()
{
  v0 = [objc_opt_self() userHasActiveAccount];
  if (v0)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 sidebarPageMetrics];

  v4 = sub_1E4205C64();
  v5 = sub_1E374BD08(v4);

  if (v5)
  {
    if (v0)
    {
      v6 = 0x746E756F636341;
    }

    else
    {
      v6 = 0x6E496E676953;
    }

    sub_1E3BA71B8(v6, v1, 0, 1, 0, 0, 0, 0, v8, v5, 0);
    sub_1E3BA6C54();
    sub_1E3814D14(v8);
  }

  else
  {
  }

  return [objc_opt_self() handleAccountSettingButtonSelected];
}

uint64_t sub_1E3814870(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1E41FFDC4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = (&v20 - v13);
  v15 = [a1 view];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  *v14 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  (*(v7 + 104))(v14, *MEMORY[0x1E69DBF98], v5);
  sub_1E3280A90(0, &unk_1ECF2B400);
  (*(v7 + 16))(v10, v14, v5);
  v17 = sub_1E41FFD34();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
  v18 = sub_1E4206844();

  (*(v7 + 8))(v14, v5);
  return v18;
}

id sub_1E3814AF0(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1E4207994();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

id sub_1E3814C34(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1E4205ED4();

  v10 = [v5 initWithSymbol:v9 size:a5 symbolConfiguration:{a1, a2}];

  return v10;
}

uint64_t sub_1E3814CB0(void *a1)
{
  v1 = [a1 userFullName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

void type metadata accessor for NSLineBreakMode()
{
  if (!qword_1EE23B2F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B2F8);
    }
  }
}

int64x2_t sub_1E3814DBC@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>, uint64_t a12)
{
  v22 = sub_1E4205CB4();
  v23 = OUTLINED_FUNCTION_2_37();
  v36 = a4 - sub_1E3952BD8(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_2_37();
  v30 = sub_1E39535B4(v26, v27, v28, v29, a9);
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a7;
  *(a3 + 40) = a8;
  *(a3 + 48) = a9;
  *(a3 + 56) = a10;
  *(a3 + 64) = a11;
  *(a3 + 72) = a12;
  *(a3 + 80) = a2 & 1;
  *(a3 + 88) = v36;
  *(a3 + 96) = v30;
  *(a3 + 104) = v31;
  *(a3 + 112) = v32;
  *(a3 + 120) = v33;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = v22;
  result = vdupq_n_s64(1uLL);
  *(a3 + 152) = result;
  *(a3 + 168) = 0;
  return result;
}

uint64_t sub_1E3814EDC()
{
  v0 = sub_1E4207784();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3814F28(char a1)
{
  result = 0x6C616D726F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6F62416465786966;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x64657265746E6563;
      break;
    case 4:
      result = 0x6C65426465786966;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3814FEC(unsigned __int8 a1, char a2)
{
  v2 = 0x6C616D726F6ELL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6C616D726F6ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x6F62416465786966;
      v6 = 25974;
      goto LABEL_4;
    case 2:
      v5 = 0xD000000000000010;
      v7 = "normal";
      goto LABEL_8;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x64657265746E6563;
      break;
    case 4:
      v5 = 0x6C65426465786966;
      v6 = 30575;
LABEL_4:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 5:
      v5 = 0xD000000000000010;
      v7 = "";
LABEL_8:
      v3 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6F62416465786966;
      v9 = 25974;
      goto LABEL_12;
    case 2:
      v2 = 0xD000000000000010;
      v10 = "normal";
      goto LABEL_16;
    case 3:
      v8 = 0xE800000000000000;
      v2 = 0x64657265746E6563;
      break;
    case 4:
      v2 = 0x6C65426465786966;
      v9 = 30575;
LABEL_12:
      v8 = v9 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 5:
      v2 = 0xD000000000000010;
      v10 = "";
LABEL_16:
      v8 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1E42079A4();
  }

  return v12 & 1;
}

uint64_t sub_1E381519C(char a1)
{
  sub_1E4207B44();
  sub_1E3814F28(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3815208()
{
  sub_1E4206014();
}

uint64_t sub_1E38152FC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3814F28(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E381535C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3814EDC();
  *a1 = result;
  return result;
}

unint64_t sub_1E381538C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3814F28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E38153BC()
{
  result = qword_1ECF2B478;
  if (!qword_1ECF2B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B478);
  }

  return result;
}

unint64_t sub_1E3815414()
{
  result = qword_1ECF2B480;
  if (!qword_1ECF2B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B480);
  }

  return result;
}

uint64_t sub_1E3815470(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 144);
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

uint64_t sub_1E38154B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1E3815528(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E38155FC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E38156DC()
{
  result = MEMORY[0x1E69109E0](0x6D6574695FLL, 0xE500000000000000);
  qword_1ECF71260 = 0xD000000000000022;
  *algn_1ECF71268 = 0x80000001E425EDE0;
  return result;
}

uint64_t sub_1E3815744()
{
  if (!sub_1E39BE70C())
  {
    v2 = 0u;
    v3 = 0u;
    goto LABEL_8;
  }

  v1[3] = &type metadata for ViewModelKeys.Sports;
  v1[4] = &off_1F5D7BC68;
  LOBYTE(v1[0]) = 12;
  sub_1E3F9F164(v1);

  __swift_destroy_boxed_opaque_existential_1(v1);
  if (!*(&v3 + 1))
  {
LABEL_8:
    sub_1E325F7A8(&v2, &unk_1ECF296E0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v1[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3815834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 408) = 0;
  type metadata accessor for SportsPlayByPlayQueue();
  *(v3 + 416) = sub_1E37FE378();
  v8 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport;
  v9 = *MEMORY[0x1E69D3D80];
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2();
  (*(v10 + 104))(v4 + v8, v9);
  *(v4 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_cancellables) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_returningFromBackground) = 0;
  *(v4 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sportsSpoilersEnabled) = 1;

  v11 = sub_1E40B19D4(a1, a2, a3);
  if (v11)
  {

    sub_1E3815744();
    if (v12)
    {
      sub_1E38159B4();
    }

    v13 = [objc_opt_self() defaultCenter];
    [v13 addObserver:v11 selector:sel_willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
  }

  else
  {
  }

  return v11;
}

void sub_1E38159B4()
{
  OUTLINED_FUNCTION_31_1();
  v111 = v0;
  v113 = v1;
  v119 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA90);
  OUTLINED_FUNCTION_0_10();
  v108 = v3;
  v109 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v107 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B508);
  OUTLINED_FUNCTION_0_10();
  v105 = v7;
  v106 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v104 = v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA80);
  OUTLINED_FUNCTION_0_10();
  v120 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v98 = v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B510);
  OUTLINED_FUNCTION_0_10();
  v101 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v99 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v116 = v19;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B518);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B520);
  OUTLINED_FUNCTION_0_10();
  v112 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v86 - v25;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B528);
  OUTLINED_FUNCTION_0_10();
  v96 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;

  sub_1E37FC234();

  v121 = sub_1E4205004();
  v31 = sub_1E4204FF4();
  v32 = sub_1E4204FB4();

  v123 = v32;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C08);
  v115 = MEMORY[0x1E695BED8];
  v103 = sub_1E32752B0(&qword_1EE28A210, &qword_1ECF28C08);
  sub_1E42007A4();

  sub_1E32752B0(&qword_1ECF2B530, &qword_1ECF2AE28);
  v97 = MEMORY[0x1E695BDB8];
  sub_1E32752B0(&qword_1ECF2B538, &qword_1ECF2B518);
  sub_1E4200414();
  v33 = sub_1E32ADE38();
  v34 = sub_1E4206A04();
  v123 = v34;
  v118 = sub_1E42069A4();
  v35 = v116;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  sub_1E32752B0(&qword_1ECF2B540, &qword_1ECF2B520);
  v117 = sub_1E381A884(&qword_1EE23B1E0, sub_1E32ADE38);
  sub_1E42007D4();
  sub_1E325F7A8(v35, &unk_1ECF2D2B0);

  (*(v112 + 8))(v26, v22);
  OUTLINED_FUNCTION_4_0();
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1E381A8CC;
  *(v41 + 24) = v40;
  v112 = MEMORY[0x1E695BE98];
  sub_1E32752B0(&qword_1ECF2B548, &qword_1ECF2B528);
  v42 = v95;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  (*(v96 + 8))(v30, v42);
  v43 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_cancellables;
  OUTLINED_FUNCTION_27_11();
  sub_1E42004C4();
  swift_endAccess();

  v44 = sub_1E4204FF4();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B550);
  v45 = sub_1E4205484();
  v93 = v45;
  v46 = *(v45 - 8);
  v95 = *(v46 + 72);
  v47 = *(v46 + 80);
  v91 = (v47 + 32) & ~v47;
  v48 = swift_allocObject();
  v94 = xmmword_1E4297BE0;
  *(v48 + 16) = xmmword_1E4297BE0;
  v49 = *MEMORY[0x1E69D3B20];
  v92 = *(v46 + 104);
  v92(v48 + ((v47 + 32) & ~v47), v49, v45);
  v50 = sub_1E4204FE4();

  v123 = v50;
  v110 = v33;
  v51 = sub_1E4206A04();
  v122 = v51;
  v52 = v116;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v118);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAA0);
  v89 = sub_1E32752B0(&qword_1EE28A1E0, &qword_1ECF3DAA0);
  v56 = v98;
  sub_1E42007D4();
  sub_1E325F7A8(v52, &unk_1ECF2D2B0);

  v88 = sub_1E32752B0(&qword_1EE28A290, &unk_1ECF3DA80);
  v57 = v99;
  v58 = v114;
  sub_1E42007A4();
  v59 = *(v120 + 8);
  v120 += 8;
  v87 = v59;
  v59(v56, v58);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E32752B0(&qword_1ECF2B558, &qword_1ECF2B510);
  v60 = v100;
  sub_1E4200844();

  (*(v101 + 8))(v57, v60);
  v86 = v43;
  OUTLINED_FUNCTION_27_11();
  sub_1E42004C4();
  swift_endAccess();

  v61 = sub_1E4204FF4();
  v62 = v91;
  v63 = swift_allocObject();
  *(v63 + 16) = v94;
  v92(v63 + v62, *MEMORY[0x1E69D3B18], v93);
  v64 = v113;
  v65 = sub_1E4204FE4();

  v123 = v65;
  v66 = sub_1E4206A04();
  v122 = v66;
  v67 = v116;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v118);
  sub_1E42007D4();
  sub_1E325F7A8(v67, &unk_1ECF2D2B0);

  v71 = v104;
  v72 = v114;
  sub_1E4200814();
  v87(v56, v72);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_47_8();
  sub_1E32752B0(&qword_1ECF2B560, &qword_1ECF2B508);
  v73 = v105;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  (*(v106 + 8))(v71, v73);
  OUTLINED_FUNCTION_27_11();
  sub_1E42004C4();
  swift_endAccess();

  v74 = sub_1E4204FF4();
  v75 = sub_1E4204FB4();

  v123 = v75;
  v76 = sub_1E4206A04();
  v122 = v76;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v118);
  v80 = v107;
  sub_1E42007D4();
  sub_1E325F7A8(v67, &unk_1ECF2D2B0);

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_47_8();
  sub_1E32752B0(&qword_1EE28A2A0, &unk_1ECF3DA90);
  v81 = v108;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  (*(v109 + 8))(v80, v81);
  OUTLINED_FUNCTION_27_11();
  sub_1E42004C4();
  swift_endAccess();

  v82 = sub_1E4204FF4();
  v83 = sub_1E4204F84();

  v123 = v83;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_47_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B568);
  sub_1E32752B0(&qword_1EE28A1D8, &qword_1ECF2B568);
  OUTLINED_FUNCTION_45_10();
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_27_11();
  sub_1E42004C4();
  swift_endAccess();

  v84 = *(**sub_1E3847108() + 104);

  v85 = v84(v119, v64);

  v123 = v85;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_47_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B570);
  sub_1E32752B0(&qword_1EE28A208, &qword_1ECF2B570);
  OUTLINED_FUNCTION_45_10();
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_27_11();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38168F8()
{

  sub_1E37FE1D0(1);

  *(v0 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_returningFromBackground) = 1;

  return sub_1E3816960(0);
}

uint64_t sub_1E3816960(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_4_0();
  v8 = swift_allocObject();
  swift_weakInit();
  sub_1E4206434();

  v9 = sub_1E4206424();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v8;
  *(v10 + 40) = a1;

  OUTLINED_FUNCTION_29_10();
}

uint64_t sub_1E3816AB4()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 56) = v1;
  *(v0 + 40) = v2;
  sub_1E4206434();
  OUTLINED_FUNCTION_42_2();
  *(v0 + 48) = sub_1E4206424();
  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3816B48, v4, v3);
}

uint64_t sub_1E3816B48()
{

  OUTLINED_FUNCTION_5_0();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_42_2();
    v2 = sub_1E3815744();
    if (v3)
    {
      v4 = v3;
      if (*(v1 + 56) == 1)
      {

        v5 = 1;
      }

      else
      {
        v6 = v2;
        v7 = *(**sub_1E3FF7F7C() + 176);

        LOBYTE(v6) = v7(v6, v4);

        v5 = v6 & 1;
      }

      *(v0 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sportsSpoilersEnabled) = v5;
      if ((*(v0 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sportsSpoilersEnabled) & 1) == 0)
      {
        sub_1E40B4174(MEMORY[0x1E69E7CC0]);
        *(v0 + 408) = 0;
        if (sub_1E3CC87E4())
        {
          swift_getObjectType();
          OUTLINED_FUNCTION_25_23();
          v8(v0, 0);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  OUTLINED_FUNCTION_54();

  return v9();
}

uint64_t sub_1E3816CF0()
{

  v1 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
}

uint64_t sub_1E3816D6C()
{
  v0 = CollectionViewModel.deinit();

  v1 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1E3816E00(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (sub_1E4205694())
    {
      sub_1E4206474();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v7;
      v12[5] = a1;
      v12[6] = a2;

      v13 = a2;
      OUTLINED_FUNCTION_29_10();
    }
  }

  return result;
}

uint64_t sub_1E3816F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E3816F34, 0, 0);
}

uint64_t sub_1E3816F34()
{
  OUTLINED_FUNCTION_27_2();
  v0[5] = sub_1E39BE7C0();
  v1 = sub_1E42056A4();
  v0[6] = sub_1E4205054();

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1E3817004;

  return sub_1E3817118();
}

uint64_t sub_1E3817004()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_54();

  return v5();
}

uint64_t sub_1E3817118()
{
  OUTLINED_FUNCTION_24();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1E41FFCB4();
  v1[9] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[10] = v6;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = sub_1E4205BF4();
  v1[13] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[14] = v8;
  v1[15] = swift_task_alloc();
  sub_1E4206434();
  OUTLINED_FUNCTION_42_2();
  v1[16] = sub_1E4206424();
  v10 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3817260, v10, v9);
}

void sub_1E3817260()
{
  v1 = v0[8];

  if (*(v1 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sportsSpoilersEnabled) == 1 && sub_1E32AE9B0(v0[5]))
  {
    v2 = sub_1E38180E0();
    v3 = sub_1E3CC8638();
    if (!v3)
    {
      goto LABEL_18;
    }

    v4 = v3;
    if (sub_1E32AE9B0(v3))
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_41_1();
        v6 = v44;
      }

      else
      {
        OUTLINED_FUNCTION_34_0();
        if (!v5)
        {
          __break(1u);
          goto LABEL_33;
        }

        v6 = *(v4 + 32);
      }

      v8 = (*(*v6 + 872))(v7);

      if (!v8)
      {
        goto LABEL_18;
      }

      if (sub_1E32AE9B0(v8))
      {
        if ((v8 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_34_0();
          if (!v9)
          {
            __break(1u);
            return;
          }

          v10 = *(v8 + 32);

          goto LABEL_13;
        }

LABEL_33:
        OUTLINED_FUNCTION_41_1();
        v10 = v45;
LABEL_13:

        if (*v10 == _TtC8VideosUI25SportsPlayByPlayViewModel)
        {
          v12 = v0[14];
          v11 = v0[15];
          v13 = v0[13];
          v14 = v0[8];
          v15 = v0[6];
          v16 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport;
          OUTLINED_FUNCTION_5_0();
          (*(v12 + 16))(v11, v14 + v16, v13);
          sub_1E3818470();
          (*(v12 + 8))(v11, v13);

          sub_1E39BE7EC(v15);

          v17 = *(sub_1E3818BB0() + 16);

          if (v17)
          {
            v18 = v0[8];
            if (v2)
            {
              *(v18 + 408) = v17;
            }

            else
            {
              v31 = *(v18 + 408);
              *(v18 + 408) = v17;
              if (v31 == v17)
              {
                goto LABEL_30;
              }
            }

            v32 = v0[12];
            v33 = v0[9];
            v34 = v0[10];
            v35 = sub_1E3E37F30();
            (*(v34 + 16))(v32, v35, v33);
            v36 = sub_1E41FFC94();
            v37 = sub_1E42067E4();
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              *v38 = 0;
              _os_log_impl(&dword_1E323F000, v36, v37, "SportsPlayByPlayCollectionViewModel: reloading pbp section", v38, 2u);
              OUTLINED_FUNCTION_6_0();
            }

            v39 = v0[12];
            v40 = v0[9];
            v41 = v0[10];

            (*(v41 + 8))(v39, v40);
            if (sub_1E3CC87E4())
            {
              v42 = v0[8];
              swift_getObjectType();
              OUTLINED_FUNCTION_25_23();
              v43(v42, 1);

              swift_unknownObjectRelease();
              goto LABEL_21;
            }
          }

LABEL_30:

          goto LABEL_21;
        }

LABEL_18:
        v20 = v0[10];
        v19 = v0[11];
        v21 = v0[9];
        v22 = sub_1E3E37F30();
        (*(v20 + 16))(v19, v22, v21);
        v23 = sub_1E41FFC94();
        v24 = sub_1E42067E4();
        v25 = os_log_type_enabled(v23, v24);
        v27 = v0[10];
        v26 = v0[11];
        v28 = v0[9];
        if (v25)
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1E323F000, v23, v24, "SportsPlayByPlayCollectionViewModel: pbpViewModel nil", v29, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        (*(v27 + 8))(v26, v28);
        goto LABEL_21;
      }
    }

    goto LABEL_18;
  }

LABEL_21:

  OUTLINED_FUNCTION_54();

  v30();
}

uint64_t sub_1E38176AC()
{
  v1 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (sub_1E4205694())
    {
      v7 = sub_1E42056D4();
      sub_1E3817A34(v7);

      sub_1E3817D80();
    }

    sub_1E4205704();
    sub_1E4205BD4();
    v8 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport;
    OUTLINED_FUNCTION_27_11();
    (*(v3 + 40))(v6 + v8, v0, v1);
    swift_endAccess();
  }

  return result;
}

void sub_1E38177FC(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = type metadata accessor for SportsPlayByPlayItemViewData();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4207384())
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1E381A508(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v24;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x1E6911E60](v10, a3);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      i = v13;
      v23 = v13;
      v21(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1E381A508(v14 > 1, v15 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v15 + 1;
      sub_1E381A794(v8, v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15, type metadata accessor for SportsPlayByPlayItemViewData);
      ++v10;
      if (v12 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

unint64_t sub_1E3817A34(uint64_t a1)
{
  v45 = sub_1E4204DD4();
  v3 = *(v45 - 8);
  v4 = MEMORY[0x1EEE9AC00](v45);
  v44 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = v35 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E3746CB0(0, v7, 0);
  v8 = v50;
  result = sub_1E3746DC4();
  v12 = 0;
  v13 = a1 + 56;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48);
      v17 = v8;
      v18 = v42;
      v19 = v43;
      v20 = *(v42 + 16);
      v21 = v45;
      v20(v43, v16 + *(v42 + 72) * result, v45);
      v22 = v44;
      v20(v44, v19, v21);
      v23 = sub_1E3D5C7A0(v22);
      v24 = *(v18 + 8);
      v8 = v17;
      result = v24(v19, v21);
      v50 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1E3746CB0((v25 > 1), v26 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v26 + 1;
      *(v8 + v26 + 32) = v23;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E3746E04(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1E3746E04(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v8;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1E3817D80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E38180E0();
  v9 = sub_1E3CC8638();
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  if (!sub_1E32AE9B0(v9))
  {
    goto LABEL_14;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
    v12 = v27;
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v11)
    {
      __break(1u);
      goto LABEL_23;
    }

    v12 = *(v10 + 32);
  }

  v14 = (*(*v12 + 872))(v13);

  if (!v14)
  {
    goto LABEL_15;
  }

  if (!sub_1E32AE9B0(v14))
  {
LABEL_14:

    goto LABEL_15;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_23:
    OUTLINED_FUNCTION_41_1();
    v16 = v28;
LABEL_11:

    if (*v16 == _TtC8VideosUI25SportsPlayByPlayViewModel)
    {

      v17 = sub_1E3818BC4();

      v18 = sub_1E381A380(v4, v17);

      sub_1E3818C44();
      OUTLINED_FUNCTION_4_0();
      v19 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v20 = *(v16 + 248);
      v21 = *(v16 + 256);
      *(v16 + 248) = sub_1E381A9F8;
      *(v16 + 256) = v19;

      sub_1E37FAED8(v20, v21);

      if (v18)
      {
LABEL_19:

        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    else
    {
    }

LABEL_15:
    v22 = sub_1E3E37F30();
    (*(v7 + 16))(v1, v22, v5);
    v23 = sub_1E41FFC94();
    v24 = sub_1E42067E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1E323F000, v23, v24, "SportsPlayByPlayCollectionViewModel: reloading pbp section for errors", v25, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v7 + 8))(v1, v5);
    if (sub_1E3CC87E4())
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_25_23();
      v26(v2, 1);
      swift_unknownObjectRelease();
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_34_0();
  if (v15)
  {
    v16 = *(v14 + 32);

    goto LABEL_11;
  }

  __break(1u);
}

BOOL sub_1E38180E0()
{
  v1 = v0;
  v32[0] = sub_1E3CC8638();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B580);
  sub_1E32752B0(&qword_1EE23B578, &unk_1ECF3F4C0);
  v3 = sub_1E4149048(v2);

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD000000000000022;
  *(inited + 56) = 0x80000001E425EDE0;
  ViewModelKeys.rawValue.getter(13);
  *(inited + 80) = v8;
  *(inited + 88) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B588);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E4297BE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1E4297BE0;
  sub_1E384EE08(191);
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  if (qword_1EE2A9E00 != -1)
  {
    OUTLINED_FUNCTION_4_41();
  }

  v18 = qword_1ECF71260;
  v17 = *algn_1ECF71268;
  *(v14 + 72) = v7;
  *(v14 + 48) = v18;
  *(v14 + 56) = v17;

  ViewModelKeys.rawValue.getter(20);
  *(v14 + 80) = v19;
  *(v14 + 88) = v20;
  v21 = sub_1E39BE70C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  *(v14 + 120) = v22;
  if (!v21)
  {
    v21 = sub_1E4205CB4();
  }

  *(v14 + 96) = v21;
  *(v11 + 48) = sub_1E4205CB4();
  *(v10 + 32) = sub_1E4205CB4();
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F750);
  *(inited + 96) = v10;
  v23 = sub_1E4205CB4();
  ViewModelKeys.rawValue.getter(28);
  v32[3] = v22;
  v32[0] = v23;
  v26 = sub_1E3A7CD30(v24, v25, v32, v1);

  __swift_destroy_boxed_opaque_existential_1(v32);
  if (!v26)
  {
    return 0;
  }

  type metadata accessor for CollectionGroupViewModel();
  v27 = swift_dynamicCastClass();
  v28 = v27 != 0;
  if (v27)
  {
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1E4298880;
    *(v30 + 32) = v29;

    sub_1E40B4174(v30);
  }

  return v28;
}

void sub_1E3818470()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v69 = v9;
  OUTLINED_FUNCTION_138();
  v68 = type metadata accessor for SportsPlayPeriod();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v67 = v12 - v11;
  OUTLINED_FUNCTION_138();
  v13 = sub_1E4205724();
  OUTLINED_FUNCTION_0_10();
  v73 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v64 - v20;
  OUTLINED_FUNCTION_138();
  v75 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  v29 = sub_1E39BE70C();
  v74 = v13;
  if (!v29)
  {
    v79 = 0u;
    v80 = 0u;
    goto LABEL_7;
  }

  v77 = &type metadata for ViewModelKeys.Sports;
  v78 = &off_1F5D7BC68;
  LOBYTE(v76[0]) = 6;
  sub_1E3F9F164(v76);

  __swift_destroy_boxed_opaque_existential_1(v76);
  if (!*(&v80 + 1))
  {
LABEL_7:
    v30 = sub_1E325F7A8(&v79, &unk_1ECF296E0);
    v31 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  v30 = swift_dynamicCast();
  if (v30)
  {
    v31 = v76[0];
  }

  else
  {
    v31 = 0;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v30);
  *(&v64 - 4) = v31;
  *(&v64 - 3) = v4;
  *(&v64 - 2) = v0;
  *(&v64 - 1) = v2;
  sub_1E38177FC(sub_1E3819AA4, (&v64 - 6), v6);
  sub_1E3819658();
  if (sub_1E4030E58())
  {
    sub_1E4030B98(v4, v6, v32, v33, v34, v35, v36, v37, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
    if (v38)
    {
      v76[0] = v31;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B490);
      sub_1E4148C68(sub_1E381AC40, v39, &v79);

      v66 = v79;
      v40 = *(v22 + 16);
      v65 = v22 + 16;
      v64 = v40;
      v40(v28, v4, v75);
      v41 = sub_1E3FDF644();
      if (v41)
      {
        v42 = v41;
        sub_1E4205224();
      }

      v43 = *(v0 + 272);
      if (v43)
      {
        v44 = &off_1F5D94380;
        v45 = &type metadata for SportsTeamColorVendor;
      }

      else
      {
        v45 = 0;
        v44 = 0;
        v76[1] = 0;
        v76[2] = 0;
      }

      v76[0] = v43;
      v77 = v45;
      v78 = v44;
      type metadata accessor for SportsPlayGroupItemViewData(0);

      v46 = v2;

      sub_1E3B0EFA4();
      sub_1E381977C();
      v47 = v75;
      (*(v22 + 104))(v25, *MEMORY[0x1E69D3D88], v75);
      v48 = sub_1E3819AE4(v4, v25, MEMORY[0x1E69D3D90], &qword_1ECF2B4F8, MEMORY[0x1E69D3D90]);
      (*(v22 + 8))(v25, v47);
      if (v48)
      {
        v49 = sub_1E3FDF644();
        if (v49)
        {
          v50 = v49;
          v51 = sub_1E4205214();

          if (v51)
          {
            v52 = sub_1E4205284();
            if (v52)
            {
              v53 = v52;
              v54 = v70;
              sub_1E4205954();

              v56 = v72;
              v55 = v73;
              v57 = v74;
              (*(v73 + 32))(v72, v54, v74);
              v58 = v71;
              (*(v55 + 104))(v71, *MEMORY[0x1E69D3B30], v57);
              LOBYTE(v53) = sub_1E3819AE4(v56, v58, MEMORY[0x1E69D3B38], &qword_1ECF2B4F0, MEMORY[0x1E69D3B38]);
              v59 = v58;
              v60 = *(v55 + 8);
              v60(v59, v57);
              if (v53)
              {
                sub_1E4205294();
                v64(v25, v4, v75);
                v61 = v69;
                sub_1E385BAA0();
                if (__swift_getEnumTagSinglePayload(v61, 1, v68) != 1)
                {
                  v62 = v61;
                  v63 = v67;
                  sub_1E381A794(v62, v67, type metadata accessor for SportsPlayPeriod);
                  sub_1E385C974();
                  sub_1E38198B0();

                  sub_1E381A740(v63, type metadata accessor for SportsPlayPeriod);
                  v60(v56, v57);
                  goto LABEL_26;
                }

                v60(v56, v57);

                sub_1E325F7A8(v61, &qword_1ECF2B488);
                goto LABEL_25;
              }

              v60(v56, v57);
            }
          }
        }
      }

LABEL_25:
      sub_1E38198B0();

      goto LABEL_26;
    }
  }

  sub_1E381977C();
LABEL_26:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3818BD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3818C44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  return OUTLINED_FUNCTION_19_19();
}

void sub_1E3818D14()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v2;
  v41 = v3;
  v40 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950);
  OUTLINED_FUNCTION_0_10();
  v38 = v6;
  v39 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v37 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498);
  OUTLINED_FUNCTION_0_10();
  v35 = v10;
  v36 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A0);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A8);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_41();
  *(v0 + 272) = 0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  v24 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__plays;
  v42[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4B0);
  OUTLINED_FUNCTION_36_14();
  sub_1E4200634();
  v25 = v1;
  v26 = v34;
  (*(v22 + 32))(v0 + v24, v25, v20);
  *(v0 + OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel_playsToIndicies) = MEMORY[0x1E69E7CC8];
  v27 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__playGroup;
  v42[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4B8);
  OUTLINED_FUNCTION_36_14();
  sub_1E4200634();
  (*(v16 + 32))(v0 + v27, v19, v14);
  v28 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__inningTransition;
  v42[0] = 0;
  v42[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  OUTLINED_FUNCTION_36_14();
  sub_1E4200634();
  (*(v35 + 32))(v0 + v28, v13, v36);
  v29 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__displayErrors;
  v42[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C0);
  OUTLINED_FUNCTION_36_14();
  v30 = v37;
  sub_1E4200634();
  (*(v38 + 32))(v0 + v29, v30, v39);

  v31 = sub_1E39BEDCC(v40, v41, v26);
  if (!v31)
  {
    goto LABEL_11;
  }

  if (!sub_1E39BE70C())
  {

    v43 = 0u;
    v44 = 0u;
LABEL_9:
    sub_1E325F7A8(&v43, &unk_1ECF296E0);
    goto LABEL_12;
  }

  v42[3] = &type metadata for ViewModelKeys.Sports;
  v42[4] = &off_1F5D7BC68;
  LOBYTE(v42[0]) = 6;
  sub_1E3F9F164(v42);

  __swift_destroy_boxed_opaque_existential_1(v42);
  if (!*(&v44 + 1))
  {

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_11:

    goto LABEL_12;
  }

  v32 = sub_1E407668C(v42[0]);

  *(v31 + 272) = v32;

LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38191A0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v36 = v2;
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v38 = v4 - v3;
  OUTLINED_FUNCTION_138();
  v5 = type metadata accessor for SportsPlayByPlayItemViewData();
  v6 = OUTLINED_FUNCTION_8_0(v5);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v40 = (v9 - v8);
  v10 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel_playsToIndicies;
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4E0);
  sub_1E4205D14();
  swift_endAccess();
  v11 = *(sub_1E3818BB0() + 16);

  v39 = v11;
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = sub_1E3818BB0();
      if (v12 >= *(v13 + 16))
      {
        break;
      }

      sub_1E381A6DC(v13 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v12, v40);

      v15 = *v40;
      v14 = v40[1];

      sub_1E381A740(v40, type metadata accessor for SportsPlayByPlayItemViewData);
      OUTLINED_FUNCTION_11_3();
      swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v0 + v10);
      *(v0 + v10) = 0x8000000000000000;
      v16 = sub_1E327D33C(v15, v14);
      if (__OFADD__(v42[2], (v17 & 1) == 0))
      {
        goto LABEL_18;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4E8);
      if (sub_1E4207644())
      {
        v20 = sub_1E327D33C(v15, v14);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_20;
        }

        v18 = v20;
      }

      if (v19)
      {

        v22 = v42;
        *(v42[7] + 8 * v18) = v12;
      }

      else
      {
        v22 = v42;
        v42[(v18 >> 6) + 8] |= 1 << v18;
        v23 = (v42[6] + 16 * v18);
        *v23 = v15;
        v23[1] = v14;
        *(v42[7] + 8 * v18) = v12;
        v24 = v42[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_19;
        }

        v42[2] = v26;
      }

      ++v12;
      *(v0 + v10) = v22;
      swift_endAccess();
      if (v39 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_1E4207A74();
    __break(1u);
  }

  else
  {
LABEL_13:
    v27 = sub_1E3E37F30();
    (*(v36 + 16))(v38, v27, v37);

    v28 = sub_1E41FFC94();
    v29 = sub_1E42067E4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315138;

      v32 = sub_1E4205CC4();
      v34 = v33;

      v35 = sub_1E3270FC8(v32, v34, &v43);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1E323F000, v28, v29, "SportsPlayByPlayViewModel: Plays updated: %s ", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v36 + 8))(v38, v37);
    }

    else
    {

      (*(v36 + 8))(v38, v37);
    }

    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3819600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3818BB0();
  *a1 = result;
  return result;
}

void sub_1E3819658()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_19_19();
  sub_1E38191A0();
}

uint64_t sub_1E38196B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3819724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E38196B0();
  *a1 = result;
  return result;
}

uint64_t sub_1E381977C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_20();
  return OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1E38197D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3819844@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E38197D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E38198B0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void sub_1E381992C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  *v6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B490);
  sub_1E4148C68(sub_1E3819AD4, v11, &v13);
  (*(v9 + 16))(v0, v4, v7);

  sub_1E3B050E8();
  v12 = v2;
  sub_1E40719DC();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3819AE4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1E381A884(a4, a5);
  sub_1E4206254();
  sub_1E4206254();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3819BBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3818BC4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3819C14()
{
  result = sub_1E3818BC4();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {

      v5 = sub_1E3818BC4();
      if (*(v5 + 16))
      {
        v4 = *(v5 + 32);
      }

      else
      {
        v4 = 3;
      }

LABEL_9:

      return v4;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v4 = *(v1 + v2++ + 32);
    result = static SportsDisplayError.__derived_enum_equals(_:_:)(v4, 1);
    if (result)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3819CE8()
{
  sub_1E37FAED8(*(v0 + 248), *(v0 + 256));

  v1 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__plays;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A8);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__playGroup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A0);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__inningTransition;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__displayErrors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950);
  OUTLINED_FUNCTION_10();
  v9 = *(v8 + 8);

  return v9(v0 + v7);
}

uint64_t sub_1E3819E30()
{
  v0 = ViewModel.deinit();
  sub_1E37FAED8(*(v0 + 248), *(v0 + 256));

  v1 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__plays;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A8);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__playGroup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A0);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__inningTransition;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__displayErrors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950);
  OUTLINED_FUNCTION_10();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_1E3819F94(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E3819FEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E381A074()
{
  result = sub_1E4205BF4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E381A160()
{
  sub_1E381A32C(319, &qword_1ECF2B4D0, &qword_1ECF2B4B0);
  if (v0 <= 0x3F)
  {
    sub_1E381A32C(319, &qword_1ECF2B4D8, &qword_1ECF2B4B8);
    if (v1 <= 0x3F)
    {
      sub_1E381A32C(319, &qword_1EE289FA8, &qword_1ECF3D960);
      if (v2 <= 0x3F)
      {
        sub_1E381A32C(319, &qword_1EE289F80, &qword_1ECF2B4C0);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E381A32C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1E4200694();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E381A380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      sub_1E381AB4C();
      do
      {
        ++v3;
        ++v4;
        v5 = sub_1E4205E84();
        --v2;
      }

      while ((v5 & 1) != 0 && v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1E381A434(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for SportsPlayByPlayItemViewData(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for SportsPlayByPlayItemViewData();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_1E381A508(size_t a1, int64_t a2, char a3)
{
  result = sub_1E381A528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E381A528(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B500);
  v10 = *(type metadata accessor for SportsPlayByPlayItemViewData() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SportsPlayByPlayItemViewData() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1E381A434(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1E381A6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsPlayByPlayItemViewData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E381A740(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E381A794(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E381A7F0()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;

  return sub_1E3816AB4();
}

uint64_t sub_1E381A884(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E381A908(unint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_15_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_returningFromBackground;
    v5 = *(result + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_returningFromBackground);

    sub_1E37FC2A0(v1, v5);

    *(v3 + v4) = 0;
  }

  return result;
}

uint64_t sub_1E381A9A8(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3816960(a2 & 1);
  }

  return result;
}

uint64_t sub_1E381A9F8()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_42_2();
    v1 = sub_1E40B4318();
    if (v1)
    {
      v2 = v1;
      v3 = sub_1E39BE4D0();
      if (v3)
      {
        sub_1E3744600(v3);

        sub_1E3744600(v2);
        OUTLINED_FUNCTION_38();

        v4 = objc_allocWithZone(VUIRouterDataSource);
        v5 = sub_1E37C07A4();
        ViewModelEvent.description.getter(2);
        v6 = sub_1E4205ED4();

        if (sub_1E39BEA8C())
        {
          OUTLINED_FUNCTION_5_0();
          Strong = swift_unknownObjectWeakLoadStrong();
        }

        else
        {
          Strong = 0;
        }

        [objc_opt_self() handleEvent:v6 targetResponder:0 appContext:Strong routerDataSource:v5 supplementaryData:0 extraInfo:0];
      }

      else
      {
      }
    }
  }

  return result;
}

unint64_t sub_1E381AB4C()
{
  result = qword_1ECF2B578;
  if (!qword_1ECF2B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B578);
  }

  return result;
}

uint64_t sub_1E381ABA0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30_0(v4);
  *v5 = v8;
  v5[1] = sub_1E327C238;

  return sub_1E3816F10(v5, v6, v7, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_32_20()
{
}

double sub_1E381AC68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 200);
  v9 = *(a2 + 208);
  v10 = *(a2 + 216);
  v11 = type metadata accessor for HorizontalCollectionViewWithHeader(0);
  v12 = v11[5];
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v13 = (a4 + v11[7]);
  *&v22 = 0;
  sub_1E42038E4();
  v14 = __dst[1];
  *v13 = __dst[0];
  v13[1] = v14;
  *a4 = sub_1E381AE50;
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  memcpy((a4 + v11[9]), a2, 0x150uLL);
  *(a4 + v11[12]) = a1;
  memcpy(__dst, a2, sizeof(__dst));
  if (sub_1E3748B78(__dst) == 1)
  {
    *(a4 + v11[11]) = 0;
    *(a4 + v11[10]) = a3;
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    *(a4 + v11[11]) = BYTE1(__dst[35]);
    *(a4 + v11[10]) = a3;
    if (v10)
    {
      v8 = 0.0;
      v9 = 0.0;
    }
  }

  type metadata accessor for LayoutGrid();

  sub_1E3A258E4(v8);
  j_nullsub_1(v15, v16, v17, v18);
  v19 = a4 + v11[6];
  sub_1E42038E4();
  result = 0.0;
  *v19 = v22;
  *(v19 + 16) = v23;
  *(v19 + 32) = v24;
  v21 = (a4 + v11[8]);
  *v21 = v8;
  v21[1] = v9;
  return result;
}

uint64_t sub_1E381AE50()
{
  type metadata accessor for CollectionInteractor();

  return sub_1E37CD020(v0, 0);
}

void sub_1E381AE8C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v0;
  v178 = v3;
  v4 = type metadata accessor for HorizontalCollectionViewWithHeader(0);
  OUTLINED_FUNCTION_0_10();
  v158 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v168 = v7;
  v162 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for HorizontalCollectionView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v153 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v151 = (&v141 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v166 = &v141 - v13;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v155 = v15;
  v156 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v154 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B590);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v170 = v19;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B598);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v157 = v21;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5A0);
  OUTLINED_FUNCTION_0_10();
  v159 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v167 = v24;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5A8);
  OUTLINED_FUNCTION_0_10();
  v161 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v160 = v27;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v173 = v29;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8_4();
  v33 = type metadata accessor for LayoutGrid();
  v171 = v4;
  v34 = (v2 + *(v4 + 32));
  v35 = *v34;
  v36 = *v34;
  v150 = v33;
  sub_1E3A2579C(v36);
  v38 = *v2;
  v37 = v2[1];
  v39 = type metadata accessor for CollectionInteractor();
  OUTLINED_FUNCTION_1_69();
  v41 = sub_1E3820244(v40);
  v163 = v37;
  v164 = v38;
  *&v169 = v39;
  *&v165 = v41;
  sub_1E4200BC4();
  OUTLINED_FUNCTION_5_0();

  OUTLINED_FUNCTION_36();
  v43 = (*(v42 + 392))();

  if (v43)
  {
    sub_1E3C2AE10();
    v48 = v47;
    (*(*v43 + 1640))();
  }

  v49 = v34[1];
  if (v35 == 0.0 && v49 == 0.0)
  {
    nullsub_1(v45, v46);
    v50 = v174;
    (*(v31 + 16))(v173, v1, v174);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_1();
    v51 = type metadata accessor for CollectionViewModel();
    v52 = sub_1E381C220();
    OUTLINED_FUNCTION_19_20();
    v54 = sub_1E3820244(v53);
    v189[0] = v177;
    v189[1] = v51;
    v189[2] = v52;
    v189[3] = v54;
    OUTLINED_FUNCTION_18_18();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v189[0] = v175;
    v189[1] = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_2_38();
    swift_getOpaqueTypeConformance2();
    v56 = v178;
    sub_1E4201F44();
    (*(v31 + 8))(v1, v50);
LABEL_6:
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5D8);
    v58 = v56;
    v59 = 0;
LABEL_18:
    __swift_storeEnumTagSinglePayload(v58, v59, 1, v57);
    OUTLINED_FUNCTION_42();
    return;
  }

  v60 = v171;
  v61 = v2;
  v62 = (*(**(v2 + v171[12]) + 1040))(v44);
  if (!v62)
  {
    goto LABEL_17;
  }

  v63 = v62;
  if (!sub_1E32AE9B0(v62))
  {

    goto LABEL_17;
  }

  if ((v63 & 0xC000000000000001) != 0)
  {
    v64 = MEMORY[0x1E6911E60](0, v63);
    goto LABEL_12;
  }

  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v64 = *(v63 + 32);

LABEL_12:

    v66 = (*(*v64 + 872))(v65);

    if (v66)
    {
      v67 = sub_1E32AE9B0(v66);

      if (v67)
      {
        sub_1E4200BC4();
        v68 = *(v2 + v60[12]);
        sub_1E37CDDA4();

        v69 = sub_1E4201D54();
        v70 = v170;
        *v170 = v69;
        *(v70 + 1) = 0;
        *(v70 + 16) = 0;
        v71 = (v2 + v60[6]);
        v72 = *v71;
        v73 = v71[1];
        v74 = v71[2];
        v75 = v71[3];
        v76 = v71[4];
        v189[0] = v72;
        v189[1] = v73;
        v146 = v75;
        v147 = v74;
        v189[2] = v74;
        v189[3] = v75;
        v145 = v76;
        v189[4] = v76;
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5B8);
        v77 = sub_1E42038F4();
        v78 = *v188;
        v79 = *&v188[1];
        v80 = *&v188[2];
        v81 = *&v188[3];
        v82 = *(*v68 + 968);
        v149 = v68;
        v83 = v82(v77);
        v148 = *(v2 + v60[11]);
        if (v148 == 1)
        {
          OUTLINED_FUNCTION_43_12();
          v84 = sub_1E3B0352C();
          (*(v155 + 8))(v68, v156);
          v85 = v60;
          v86 = v84 ^ 1;
          v87 = *(v2 + v85[10]);
        }

        else
        {
          v87 = 0;
          v85 = v60;
          v86 = 0;
        }

        v88 = (v2 + v85[7]);
        v89 = *v88;
        v90 = v88[1];
        v143 = v89;
        v188[0] = v89;
        v142 = v90;
        v188[1] = v90;
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
        sub_1E4203914();
        sub_1E3CEC988(v83, v86 & 1, v87, v189[0], v189[1], v190, v78, v79, v80, v81, *&v189[2]);
        v91 = sub_1E4200BC4();
        memcpy(v186, v61 + v85[9], sizeof(v186));
        v92 = v152;
        v93 = *(v152 + 20);
        KeyPath = swift_getKeyPath();
        v95 = v151;
        *(v151 + v93) = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
        swift_storeEnumTagMultiPayload();
        v96 = (v95 + v92[6]);
        type metadata accessor for AppEnvironment();
        OUTLINED_FUNCTION_15_35();
        sub_1E3820244(v97);
        v98 = v149;

        *v96 = sub_1E4201754();
        v96[1] = v99;
        v100 = v92[7];
        sub_1E381BEF8(v187);
        memcpy(v95 + v100, v187, 0x150uLL);
        v101 = (v95 + v92[8]);

        v164 = v91;
        *v95 = sub_1E42010C4();
        v95[1] = v102;
        *(v95 + v92[10]) = v98;
        memcpy(v188, v95 + v100, sizeof(v188));
        memcpy(v95 + v100, v186, 0x150uLL);
        sub_1E378249C();
        sub_1E325F6F0(v188, &qword_1ECF2B5C0);
        *v101 = 0;
        v101[1] = 0;
        v103 = (v95 + v92[9]);
        *v103 = v35;
        v103[1] = v49;
        memcpy(v189, v186, 0x150uLL);
        if (sub_1E3748B78(v189) == 1)
        {
          OUTLINED_FUNCTION_34_18();
          *v104 = 0;
          v104[1] = 0;
          OUTLINED_FUNCTION_5_8();
          OUTLINED_FUNCTION_3();
        }

        else
        {
          if ((v189[33] & 1) == 0)
          {

            v35 = *&v186[28];
            v78 = *&v186[29];
            v79 = *&v186[30];
            v80 = *&v186[31];
            if (v186[35])
            {
              OUTLINED_FUNCTION_34_18();
              *v139 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_34_18();
              *v139 = v140;
            }

            v139[1] = 0;
            goto LABEL_25;
          }

          sub_1E3A25950(v35);
          OUTLINED_FUNCTION_34_18();
          *v105 = v106;
          v105[1] = 0;
          sub_1E3A258E4(v35);
          j_nullsub_1(v107, v108, v109, v110);
          OUTLINED_FUNCTION_3();
        }

LABEL_25:
        v111 = (v95 + v92[12]);
        *v111 = v35;
        v111[1] = v78;
        v111[2] = v79;
        v111[3] = v80;
        v111[4] = 0.0;
        sub_1E381C0F0();
        OUTLINED_FUNCTION_36();
        v113 = (*(v112 + 992))();
        if (v113)
        {
          v185[0] = v72;
          v185[1] = v73;
          v185[2] = v147;
          v185[3] = v146;
          v185[4] = v145;
          sub_1E42038F4();
          v165 = v184[1];
          v169 = v184[0];
        }

        else
        {
          v169 = 0u;
          v165 = 0u;
        }

        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5C8);
        v115 = v170 + *(v114 + 44);
        v116 = v166;
        v117 = v153;
        sub_1E381C098();
        memcpy(v184, v190, sizeof(v184));
        memcpy(v115, v190, 0x50uLL);
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5D0);
        sub_1E381C098();
        v119 = &v115[*(v118 + 64)];
        v120 = v165;
        *v119 = v169;
        *(v119 + 1) = v120;
        *(v119 + 4) = v113;
        sub_1E381BF1C(v184, v185);

        sub_1E381BF78(v116);

        sub_1E381BF78(v117);
        memcpy(v185, v190, sizeof(v185));
        sub_1E381BFD4(v185);
        LOBYTE(v115) = sub_1E4202744();
        v121 = sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v115)
        {
          v121 = sub_1E4202774();
        }

        v122 = 0.0;
        if (v148)
        {
          OUTLINED_FUNCTION_43_12();
          v123 = sub_1E3B0352C();
          (*(v155 + 8))(type metadata accessor for HorizontalCollectionView, v156);
          if ((v123 & 1) == 0)
          {
            v180 = v143;
            v181 = v142;
            sub_1E42038F4();
            v122 = -v179;
          }
        }

        sub_1E4200A54();
        OUTLINED_FUNCTION_3();
        v124 = v157;
        sub_1E381C028(v170, v157);
        v125 = v124 + *(v177 + 36);
        *v125 = v121;
        *(v125 + 8) = v122;
        *(v125 + 16) = v78;
        *(v125 + 24) = v79;
        *(v125 + 32) = v80;
        *(v125 + 40) = 0;
        v180 = v149;
        v170 = type metadata accessor for HorizontalCollectionViewWithHeader;
        sub_1E381C098();
        v171 = v61;
        swift_allocObject();
        sub_1E381C0F0();
        v126 = type metadata accessor for CollectionViewModel();
        v127 = sub_1E381C220();
        OUTLINED_FUNCTION_19_20();
        v129 = sub_1E3820244(v128);

        v130 = v177;
        sub_1E4203524();

        sub_1E325F6F0(v124, &qword_1ECF2B598);

        sub_1E381C098();
        v131 = swift_allocObject();
        sub_1E381C0F0();
        v180 = v130;
        v181 = v126;
        v182 = v127;
        v183 = v129;
        OUTLINED_FUNCTION_18_18();
        v132 = swift_getOpaqueTypeConformance2();
        v133 = v175;
        v134 = OUTLINED_FUNCTION_51_1();
        v135 = v160;
        v136 = v167;
        sub_1E403796C(v134 & 1, sub_1E381C44C, v131, v133, v132);

        (*(v159 + 8))(v136, v133);
        v137 = v161;
        v138 = v176;
        (*(v161 + 16))(v173, v135, v176);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_5_1();
        v180 = v133;
        v181 = v132;
        OUTLINED_FUNCTION_2_38();
        swift_getOpaqueTypeConformance2();
        v56 = v178;
        sub_1E4201F44();
        (*(v137 + 8))(v135, v138);
        goto LABEL_6;
      }
    }

LABEL_17:
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5D8);
    v58 = v178;
    v59 = 1;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1E381BEF8(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1;
  bzero((a1 + 88), 0xF8uLL);
}

uint64_t sub_1E381BF78(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalCollectionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E381C028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E381C098()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E381C0F0()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E381C148(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for HorizontalCollectionViewWithHeader(0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_135_0();
  v4 = *a2;
  type metadata accessor for CollectionInteractor();
  OUTLINED_FUNCTION_1_69();
  sub_1E3820244(v5);
  sub_1E4200BC4();
  sub_1E37CDC8C(v4);
}

unint64_t sub_1E381C220()
{
  result = qword_1EE2897A0;
  if (!qword_1EE2897A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B598);
    sub_1E381F390(&unk_1EE2884F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897A0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  type metadata accessor for HorizontalCollectionViewWithHeader(0);
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_1E3264CE0();
  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = *(v3 + *(v0 + 36) + 80);
  if (v6 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E381C44C()
{
  type metadata accessor for HorizontalCollectionViewWithHeader(0);
  OUTLINED_FUNCTION_135_0();
  type metadata accessor for CollectionInteractor();
  OUTLINED_FUNCTION_1_69();
  sub_1E3820244(v0);
  v1 = sub_1E4200BC4();
  v2 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_5_0();
  v3 = *(v1 + v2);

  v5 = (*(*v3 + 392))(v4);

  if (v5)
  {
    sub_1E3C2AE10();
    v7 = v6;
    OUTLINED_FUNCTION_36();
    (*(v8 + 1640))();
  }

  type metadata accessor for LayoutGrid();
  v9.n128_f64[0] = sub_1E3A25914();
  j_nullsub_1(v9, v10, v11, v12);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5B8);
  sub_1E42038F4();
  result = sub_1E4200A44();
  if ((result & 1) == 0)
  {
    return sub_1E4203904();
  }

  return result;
}

void sub_1E381C6B4()
{
  OUTLINED_FUNCTION_41_5();
  v3 = v2;
  v4 = type metadata accessor for HorizontalCollectionView(0);
  OUTLINED_FUNCTION_0_10();
  v122 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v118 = v7;
  v8 = &v108[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5F0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v108[-v11];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v116 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B600);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_5();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v108[-v21];
  v151 = v4;
  v152 = v0;
  v23 = *(v0 + *(v4 + 40));
  OUTLINED_FUNCTION_36();
  v25 = (*(v24 + 1040))();
  v120 = v17;
  v121 = v3;
  v119 = v1;
  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = v25;
  if (!sub_1E32AE9B0(v25))
  {

LABEL_8:
    v128 = 0;
    goto LABEL_9;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    v128 = MEMORY[0x1E6911E60](0, v26);
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v128 = *(v26 + 32);
  }

LABEL_9:
  v114 = v8;
  v115 = v15;
  v27 = *(*v23 + 960);
  v126 = v23;
  v28 = v27(v25);
  v29 = v152;
  OUTLINED_FUNCTION_5_0();

  v127 = sub_1E3A610FC(v30);

  v31 = v29 + v151[7];
  OUTLINED_FUNCTION_46_8(v178);
  v32 = sub_1E3748B78(v178);
  v113 = v12;
  v123 = v28;
  if (v32 == 1 || v178[264] != 1)
  {
    memcpy(v176, v31, 0x60uLL);
    v49 = *(v31 + 96);
    v129 = *(v31 + 104);
    v50 = *(v31 + 112);
    *v160 = *(v31 + 113);
    *&v160[3] = *(v31 + 116);
    v51 = *(v31 + 120);
    v130 = *(v31 + 128);
    v131 = v49;
    v111 = *(v31 + 136);
    LODWORD(v112) = v50;
    LODWORD(v153) = *(v31 + 137);
    *(&v153 + 3) = *(v31 + 140);
    v52 = *(v31 + 144);
    v110 = *(v31 + 152);
    v53 = *(v31 + 153);
    *(v214 + 3) = *(v31 + 156);
    v214[0] = v53;
    v55 = *(v31 + 160);
    v54 = *(v31 + 168);
    v140 = v52;
    v141 = v55;
    v137 = v54;
    v138 = v51;
    LODWORD(v55) = *(v31 + 176);
    v109 = *(v31 + 177);
    v139 = *(v31 + 178);
    v175 = *(v31 + 183);
    v174 = *(v31 + 179);
    v135 = *(v31 + 184);
    v133 = *(v31 + 192);
    v134 = v55;
    v136 = *(v31 + 193);
    v142 = *(v31 + 194);
    v173 = *(v31 + 199);
    v172 = *(v31 + 195);
    v56 = *(v31 + 200);
    v145 = *(v31 + 208);
    v146 = v56;
    v144 = *(v31 + 216);
    v147 = *(v31 + 217);
    v148 = *(v31 + 218);
    LODWORD(v54) = *(v31 + 219);
    v171 = *(v31 + 223);
    v170 = v54;
    v40 = *(v31 + 224);
    v41 = *(v31 + 232);
    v42 = *(v31 + 240);
    v43 = *(v31 + 248);
    v57 = *(v31 + 256);
    v132 = *(v31 + 264);
    LODWORD(v54) = *(v31 + 265);
    *(v162 + 3) = *(v31 + 268);
    LODWORD(v162[0]) = v54;
    v149 = *(v31 + 272);
    v150 = v57;
    v58 = *(v31 + 280);
    v143 = *(v31 + 281);
    LODWORD(v54) = *(v31 + 282);
    v169 = *(v31 + 286);
    v168 = v54;
    *(&v157 + 3) = *(v31 + 300);
    LODWORD(v157) = *(v31 + 297);
    v59 = *(v31 + 288);
    v61 = *(v31 + 304);
    v60 = *(v31 + 312);
    v62 = *(v31 + 320);
    v63 = *(v31 + 328);
    v64 = *(v31 + 296);
    memcpy(v213, v31, 0x60uLL);
    *(v213[7].i32 + 1) = *(v31 + 113);
    *(&v213[8].i32[2] + 1) = *(v31 + 137);
    v213[9].i32[3] = *(v31 + 156);
    *(&v213[9].i32[2] + 1) = *(v31 + 153);
    *(v213[11].i32 + 3) = *(v31 + 179);
    *(v213[12].i32 + 3) = *(v31 + 195);
    *(&v213[13].i32[2] + 3) = *(v31 + 219);
    v65 = v59;
    *(&v213[16].i32[2] + 1) = *(v31 + 265);
    *(&v213[17].i32[2] + 2) = *(v31 + 282);
    v66 = v64;
    *(&v213[18].i32[2] + 1) = *(v31 + 297);
    v213[7].i32[1] = *(v31 + 116);
    v213[8].i32[3] = *(v31 + 140);
    v213[11].i8[7] = *(v31 + 183);
    v213[12].i8[7] = *(v31 + 199);
    v213[13].i8[15] = *(v31 + 223);
    v213[16].i32[3] = *(v31 + 268);
    v213[17].i16[7] = *(v31 + 286);
    v213[18].i32[3] = *(v31 + 300);
    v213[6].i64[0] = v131;
    v213[6].i64[1] = v129;
    v47 = v112;
    v213[7].i8[0] = v112;
    v213[7].i64[1] = v138;
    v213[8].i64[0] = v130;
    v46 = v111;
    v213[8].i8[8] = v111;
    v213[9].i64[0] = v140;
    v45 = v110;
    v213[9].i8[8] = v110;
    v213[10].i64[0] = v141;
    v213[10].i64[1] = v137;
    v213[11].i8[0] = v134;
    v44 = v109;
    v213[11].i8[1] = v109;
    v213[11].i8[2] = v139;
    v213[11].i64[1] = v135;
    v213[12].i8[0] = v133;
    v213[12].i8[1] = v136;
    v213[12].i8[2] = v142;
    v213[12].i64[1] = v146;
    v213[13].i64[0] = v145;
    v213[13].i8[8] = v144;
    v213[13].i8[9] = v147;
    v213[13].i8[10] = v148;
    *v213[14].i64 = v40;
    *&v213[14].i64[1] = v41;
    v213[15].i64[0] = v42;
    v213[15].i64[1] = v43;
    v213[16].i64[0] = v150;
    v213[16].i8[8] = v132;
    v213[17].i64[0] = v149;
    v213[17].i8[8] = v58;
    v213[17].i8[9] = v143;
    v125 = v65;
    v213[18].i64[0] = v65;
    v124 = v66;
    v213[18].i8[8] = v66;
    v213[19].i64[0] = v61;
    v213[19].i64[1] = v60;
    v213[20].i64[0] = v62;
    v213[20].i64[1] = v63;
    if (sub_1E3748B78(v213) == 1)
    {
      v67 = sub_1E3EBA288();
      OUTLINED_FUNCTION_5_0();
      memcpy(v167, v67, sizeof(v167));
      v124 = LOBYTE(v167[37]);
      v125 = v167[36];
      v143 = BYTE1(v167[35]);
      v39 = v167[35];
      v132 = LOBYTE(v167[33]);
      v149 = v167[34];
      v150 = v167[32];
      v40 = *&v167[28];
      v41 = *&v167[29];
      v42 = v167[30];
      v43 = v167[31];
      v148 = BYTE2(v167[27]);
      v147 = BYTE1(v167[27]);
      v145 = v167[26];
      v146 = v167[25];
      v144 = LOBYTE(v167[27]);
      v142 = BYTE2(v167[24]);
      v136 = BYTE1(v167[24]);
      v135 = v167[23];
      v139 = BYTE2(v167[22]);
      v133 = LOBYTE(v167[24]);
      v134 = LOBYTE(v167[22]);
      v44 = BYTE1(v167[22]);
      v140 = v167[18];
      v141 = v167[20];
      v45 = v167[19];
      v137 = v167[21];
      v138 = v167[15];
      v46 = v167[17];
      v130 = v167[16];
      v131 = v167[12];
      v129 = v167[13];
      v47 = v167[14];
      sub_1E37E6E1C(v167, v163);
      v68 = v167;
    }

    else
    {
      memcpy(v167, v176, 0x60uLL);
      *(&v167[14] + 1) = *v160;
      *(&v167[17] + 1) = LODWORD(v153);
      HIDWORD(v167[19]) = *(v214 + 3);
      *(&v167[19] + 1) = v214[0];
      *(&v167[22] + 3) = v174;
      *(&v167[24] + 3) = v172;
      *(&v167[27] + 3) = v170;
      *(&v167[33] + 1) = v162[0];
      *(&v167[35] + 2) = v168;
      v39 = v58;
      *(&v167[37] + 1) = v157;
      HIDWORD(v167[14]) = *&v160[3];
      HIDWORD(v167[17]) = *(&v153 + 3);
      HIBYTE(v167[22]) = v175;
      HIBYTE(v167[24]) = v173;
      HIBYTE(v167[27]) = v171;
      HIDWORD(v167[33]) = *(v162 + 3);
      HIWORD(v167[35]) = v169;
      HIDWORD(v167[37]) = *(&v157 + 3);
      v167[12] = v131;
      v167[13] = v129;
      LOBYTE(v167[14]) = v47;
      v167[15] = v138;
      v167[16] = v130;
      LOBYTE(v167[17]) = v46;
      v167[18] = v140;
      LOBYTE(v167[19]) = v45;
      v167[20] = v141;
      v167[21] = v137;
      LOBYTE(v167[22]) = v134;
      BYTE1(v167[22]) = v44;
      BYTE2(v167[22]) = v139;
      v167[23] = v135;
      LOBYTE(v167[24]) = v133;
      BYTE1(v167[24]) = v136;
      BYTE2(v167[24]) = v142;
      OUTLINED_FUNCTION_35_15();
      OUTLINED_FUNCTION_11_35(v69);
      LOBYTE(v167[33]) = v70;
      v167[34] = v149;
      LOBYTE(v167[35]) = v58;
      OUTLINED_FUNCTION_33_19(v143);
      OUTLINED_FUNCTION_29_11(v71);
      sub_1E37E6E1C(v167, v163);
      v68 = v176;
    }

    memcpy(v177, v68, sizeof(v177));
    v48 = v128;
    v38 = v126;
  }

  else
  {
    sub_1E3746E10(v22);
    v33 = sub_1E42012F4();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v33);
    OUTLINED_FUNCTION_46_8(v213);
    v34 = sub_1E3748B78(v213);
    v35.i32[0] = 1;
    v36.i32[0] = v34;
    v37 = vdupq_lane_s32(*&vceqq_s32(v36, v35), 0);
    v215 = vbicq_s8(v213[14], v37);
    v216 = vbicq_s8(v213[15], v37);
    v217 = v34 == 1;
    j__OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_5_11();
    v38 = v126;
    sub_1E389BFA8();
    sub_1E325F6F0(v22, &qword_1ECF2A250);
    v124 = v212;
    v125 = v211;
    v143 = v210;
    v39 = v209;
    v132 = v207;
    v149 = v208;
    v150 = v206;
    v40 = v202;
    v41 = v203;
    v42 = v204;
    v43 = v205;
    v148 = v201;
    v147 = v200;
    v145 = v198;
    v146 = v197;
    v144 = v199;
    v129 = v181;
    v130 = v184;
    v131 = v180;
    v140 = v186;
    v141 = v188;
    v137 = v189;
    v138 = v183;
    v139 = v192;
    v135 = v193;
    v142 = v196;
    v136 = v195;
    v133 = v194;
    v134 = v190;
    v44 = v191;
    v45 = v187;
    v46 = v185;
    v47 = v182;
    memcpy(v177, v179, sizeof(v177));
    v48 = v128;
  }

  memcpy(v162, v177, 0x5BuLL);
  v162[12] = v131;
  v162[13] = v129;
  LOBYTE(v162[14]) = v47 & 1;
  v162[15] = v138;
  v162[16] = v130;
  LOBYTE(v162[17]) = v46 & 1;
  v162[18] = v140;
  LOBYTE(v162[19]) = v45 & 1;
  v162[20] = v141;
  v162[21] = v137;
  LOBYTE(v162[22]) = v134;
  BYTE1(v162[22]) = v44 & 1;
  BYTE2(v162[22]) = v139;
  v162[23] = v135;
  LOBYTE(v162[24]) = v133 & 1;
  BYTE1(v162[24]) = v136 & 1;
  BYTE2(v162[24]) = v142 & 1;
  memcpy(v214, v162, 0xC3uLL);
  memcpy(v167, v162, 0xC3uLL);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_11_35(v72 & 1);
  LOBYTE(v167[33]) = v73 & 1;
  v167[34] = v149;
  LOBYTE(v167[35]) = v39 & 1;
  OUTLINED_FUNCTION_33_19(v143 & 1);
  OUTLINED_FUNCTION_29_11(v74 & 1);
  memcpy(v213, v167, sizeof(v213));
  v164 = &unk_1F5D5D888;
  v165 = &off_1F5D5C918;
  LOBYTE(v163[0]) = 8;
  v75 = j__OUTLINED_FUNCTION_18();
  LODWORD(v150) = sub_1E39C29F0(v163, v75 & 1);
  __swift_destroy_boxed_opaque_existential_1(v163);
  v164 = &unk_1F5D5D888;
  v165 = &off_1F5D5C918;
  LOBYTE(v163[0]) = 9;
  v76 = j__OUTLINED_FUNCTION_18();
  v77 = sub_1E39C29F0(v163, v76 & 1);
  __swift_destroy_boxed_opaque_existential_1(v163);
  if (!v48 || (v78 = *(*v48 + 872), v79 = , v80 = v78(v79), , !v80))
  {

    v80 = MEMORY[0x1E69E7CC0];
  }

  v81 = v38;
  OUTLINED_FUNCTION_46_8(v163);
  v82 = sub_1E3748B78(v163);
  v83 = v166;
  OUTLINED_FUNCTION_46_8(v160);
  if (sub_1E3748B78(v160) == 1)
  {
    sub_1E375C1CC(v162, &v153);
    v149 = sub_1E4201B64();
  }

  else
  {
    v149 = v161;
    sub_1E375C1CC(v162, &v153);
  }

  v84 = (v152 + v151[11]);
  v85 = *v84;
  v86 = v84[1];
  v153 = v85;
  v154 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E42038F4();
  v87 = *&v157;
  v112 = v42;
  v88 = v43;
  if (v77)
  {
    v89 = v123;
  }

  else
  {
    v89 = 0;
  }

  v90 = v152;
  v91 = (v152 + v151[12]);
  v92 = *(v91 + 4);
  v93 = v91[1];
  v157 = *v91;
  v158 = v93;
  v159 = v92;

  sub_1E37E6E1C(v167, &v153);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5B8);
  v94 = sub_1E42038F4();
  v95 = v153;
  v96 = v154;
  v97 = v155;
  v98 = v156;
  MEMORY[0x1EEE9AC00](v94);
  *&v108[-48] = v80;
  *&v108[-40] = v90;
  *&v108[-32] = v214;
  v108[-24] = (v82 != 1) & v83;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B608);
  v107 = sub_1E381ED8C();
  sub_1E3CBD2BC(v149, v150 & 1, v89, v81, v213, sub_1E381ED78, v113, v87, v95, v96, v97, v98, v40, v41, *&v112, v88);

  sub_1E381C098();
  swift_allocObject();
  OUTLINED_FUNCTION_44_18();
  v100 = v116;
  sub_1E32B4784();
  v101 = v117;
  v102 = (v100 + *(v117 + 36));
  *v102 = sub_1E381EFE4;
  v102[1] = v99;
  v102[2] = 0;
  v102[3] = 0;
  sub_1E381C098();
  swift_allocObject();
  OUTLINED_FUNCTION_44_18();
  *&v103 = COERCE_DOUBLE(sub_1E381F2C0());
  v104 = v119;
  sub_1E403796C(1, sub_1E381F264, v99, v101, v103);

  sub_1E32B47E4(v100);
  v153 = *&v101;
  v154 = *&v103;
  OUTLINED_FUNCTION_2_38();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = v115;
  sub_1E3F231A0(v126, v115, OpaqueTypeConformance2);
  sub_1E37E6F2C(v162);

  sub_1E375B760(v167);

  (*(v120 + 8))(v104, v106);
  OUTLINED_FUNCTION_42();
}

id sub_1E381D6F0@<X0>(uint64_t a1@<X0>, const void *a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a4;
  v40 = a3;
  v45 = a5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B620);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v38 = v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B630);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v44 = v11;
  v12 = type metadata accessor for HorizontalCollectionView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B610);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v21 = result;
    v22 = [result vStackInForEachEnabled];

    v23 = v14 + 7;
    v49 = a1;
    if (v22)
    {
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_13_43();
      sub_1E381C098();
      v24 = (v23 + ((*(v13 + 80) + 16) & ~*(v13 + 80))) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      sub_1E381C0F0();
      memcpy((v25 + v24), a2, 0xC3uLL);
      *(v25 + v24 + 195) = v40 & 1;
      *(v25 + ((v24 + 203) & 0xFFFFFFFFFFFFFFF8)) = v41;

      sub_1E375C1CC(a2, &v47);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B618);
      OUTLINED_FUNCTION_14_11();
      sub_1E381F390(v26);
      sub_1E381F390(&unk_1EE288510);
      sub_1E4203B34();
      v27 = v42;
      (*(v16 + 16))(v44, v19, v42);
      swift_storeEnumTagMultiPayload();
      sub_1E381EE18();
      sub_1E381EEC8();
      sub_1E4201F44();
      return (*(v16 + 8))(v19, v27);
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_43();
      sub_1E381C098();
      v28 = (v23 + ((*(v13 + 80) + 16) & ~*(v13 + 80))) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      sub_1E381C0F0();
      memcpy((v29 + v28), a2, 0xC3uLL);
      *(v29 + v28 + 195) = v40 & 1;
      *(v29 + ((v28 + 203) & 0xFFFFFFFFFFFFFFF8)) = v41;

      sub_1E375C1CC(a2, &v47);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B638);
      OUTLINED_FUNCTION_14_11();
      sub_1E381F390(v30);
      v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B628);
      v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060);
      v33 = OUTLINED_FUNCTION_6_8();
      v47 = v32;
      v48 = v33;
      OUTLINED_FUNCTION_5_47();
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v47 = v31;
      v48 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v35 = v38;
      sub_1E4203B34();
      v36 = KeyPath;
      v37 = v46;
      (*(KeyPath + 16))(v44, v35, v46);
      swift_storeEnumTagMultiPayload();
      sub_1E381EE18();
      sub_1E381EEC8();
      sub_1E4201F44();
      return (*(v36 + 8))(v35, v37);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E381DE18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E381DDD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E381DE44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_5();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B628);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_4();
  *a3 = sub_1E4201D44();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v14 = type metadata accessor for HorizontalCollectionView(0);
  OUTLINED_FUNCTION_45_11((a1 + *(v14 + 32)));
  v15 = *(a1 + *(v14 + 40));
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_24_12(v15);
  (*(v9 + 8))(v4, v7);
  if (a2)
  {
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_17_24();
    sub_1E3820244(v16);

    v17 = sub_1E4205E84();

    v18 = 0;
    if (v17)
    {
      v19 = *(a1 + 8);
      v20 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator;
      OUTLINED_FUNCTION_5_0();
      v18 = *(v19 + v20);
    }
  }

  else
  {
    v18 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B640);
  OUTLINED_FUNCTION_5_47();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3A610C8(v18, v24, OpaqueTypeConformance2);

  return (*(v12 + 8))(v3, v24);
}

uint64_t sub_1E381E0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B628);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  v16 = type metadata accessor for HorizontalCollectionView(0);
  OUTLINED_FUNCTION_45_11((a2 + *(v16 + 32)));
  v17 = *(a2 + *(v16 + 40));
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_24_12(v17);
  (*(v10 + 8))(v6, v8);
  if (a5)
  {
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_17_24();
    sub_1E3820244(v18);

    v19 = sub_1E4205E84();

    v20 = 0;
    if (v19)
    {
      v21 = *(a2 + 8);
      v22 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator;
      OUTLINED_FUNCTION_5_0();
      v20 = *(v21 + v22);
    }
  }

  else
  {
    v20 = 0;
  }

  OUTLINED_FUNCTION_5_47();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3A610C8(v20, v12, OpaqueTypeConformance2);

  return (*(v14 + 8))(v5, v12);
}

uint64_t sub_1E381E350(char a1)
{
  v3 = type metadata accessor for HorizontalCollectionView(0);
  memcpy(__dst, (v1 + *(v3 + 28)), sizeof(__dst));
  result = sub_1E3748B78(__dst);
  if (result != 1 && __dst[264] == 1)
  {
    type metadata accessor for LayoutGrid();
    v5 = sub_1E3A2593C(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
    sub_1E42038F4();
    if (v5 != v10)
    {
      sub_1E4203904();
    }

    v6.n128_f64[0] = sub_1E3A25914();
    j_nullsub_1(v6, v7, v8, v9);
    OUTLINED_FUNCTION_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5B8);
    sub_1E42038F4();
    result = sub_1E4200A44();
    if ((result & 1) == 0)
    {
      return sub_1E4203904();
    }
  }

  return result;
}

__n128 sub_1E381E510@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  memset(v7, 0, sizeof(v7));
  v8 = 1;
  sub_1E382A9B4(v3, v7, 0, a1);
  v4 = sub_1E4202734();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5E8) + 36);
  *v5 = v4;
  result = *v1;
  *(v5 + 24) = *(v1 + 16);
  *(v5 + 8) = result;
  *(v5 + 40) = 0;
  return result;
}

void sub_1E381E5E4()
{
  sub_1E381EBC4(319, &qword_1EE289E48, MEMORY[0x1E697DD40]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_16_24();
    sub_1E381E7C0(319, v1, v2, MEMORY[0x1E697DCC0]);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_3_38(v3, &qword_1EE288670, MEMORY[0x1E697DA60]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_3_38(v5, &qword_1EE288680, MEMORY[0x1E69E7DE0]);
        if (v7 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v9 <= 0x3F)
          {
            OUTLINED_FUNCTION_20_25(v8, &qword_1EE259C58, &unk_1F5D8B8B8);
            if (v10 <= 0x3F)
            {
              sub_1E381E7C0(319, qword_1EE283808, type metadata accessor for ShowcaseValue, MEMORY[0x1E69E6720]);
              if (v11 <= 0x3F)
              {
                type metadata accessor for CollectionViewModel();
                if (v12 <= 0x3F)
                {
                  OUTLINED_FUNCTION_23_21();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E381E770(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E381E7C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E381E824()
{
  result = qword_1EE289090;
  if (!qword_1EE289090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B5D8);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B5A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B598);
    type metadata accessor for CollectionViewModel();
    sub_1E381C220();
    sub_1E3820244(&unk_1EE275068);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289090);
  }

  return result;
}

uint64_t sub_1E381E998(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1E381E9D8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1E381EA58()
{
  sub_1E381EBC4(319, &qword_1EE289D48, MEMORY[0x1E697E430]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_16_24();
    sub_1E381E7C0(319, v1, v2, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      sub_1E381EC50();
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_20_25(v4, &qword_1EE259C58, &unk_1F5D8B8B8);
        if (v6 <= 0x3F)
        {
          sub_1E381ECE4();
          if (v7 <= 0x3F)
          {
            type metadata accessor for CGSize(319);
            if (v8 <= 0x3F)
            {
              v9 = type metadata accessor for CollectionViewModel();
              if (v10 <= 0x3F)
              {
                OUTLINED_FUNCTION_3_38(v9, &qword_1EE288680, MEMORY[0x1E69E7DE0]);
                if (v12 <= 0x3F)
                {
                  OUTLINED_FUNCTION_3_38(v11, &qword_1EE288670, MEMORY[0x1E697DA60]);
                  if (v13 <= 0x3F)
                  {
                    OUTLINED_FUNCTION_23_21();
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

void sub_1E381EBC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CollectionInteractor();
    OUTLINED_FUNCTION_1_69();
    v8 = sub_1E3820244(v7);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1E381EC50()
{
  if (!qword_1EE2892D8)
  {
    type metadata accessor for AppEnvironment();
    sub_1E3820244(&qword_1EE283350);
    v0 = sub_1E4201764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2892D8);
    }
  }
}

void sub_1E381ECE4()
{
  if (!qword_1EE23ACC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C3F0);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23ACC8);
    }
  }
}

unint64_t sub_1E381ED8C()
{
  result = qword_1EE288D78;
  if (!qword_1EE288D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B608);
    sub_1E381EE18();
    sub_1E381EEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D78);
  }

  return result;
}

unint64_t sub_1E381EE18()
{
  result = qword_1EE2883E8;
  if (!qword_1EE2883E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B610);
    sub_1E381F390(&unk_1EE288510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883E8);
  }

  return result;
}

unint64_t sub_1E381EEC8()
{
  result = qword_1EE2883F8;
  if (!qword_1EE2883F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883F8);
  }

  return result;
}

uint64_t sub_1E381EFE4()
{
  v1 = type metadata accessor for HorizontalCollectionView(0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_135_0();
  v4 = *(v0 + v2 + *(v3 + 32));
  if (v4)
  {
    v5 = *(*v4 + 216);

    LOBYTE(v5) = v5(v6);

    return sub_1E381E350(v5);
  }

  else
  {
    type metadata accessor for AppEnvironment();
    OUTLINED_FUNCTION_15_35();
    sub_1E3820244(v8);
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  type metadata accessor for HorizontalCollectionView(0);
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = *(v3 + v0[7] + 80);
  if (v6 != 1)
  {
  }

  if (*(v3 + v0[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E381F264(char a1)
{
  v2 = type metadata accessor for HorizontalCollectionView(0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_135_0();
  return sub_1E381E350(a1);
}

unint64_t sub_1E381F2C0()
{
  result = qword_1EE289BA8;
  if (!qword_1EE289BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B5F8);
    sub_1E381F390(&unk_1EE266750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BA8);
  }

  return result;
}

unint64_t sub_1E381F390(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t objectdestroy_39Tm()
{
  type metadata accessor for HorizontalCollectionView(0);
  OUTLINED_FUNCTION_144();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v1 + v3;

  v7 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v6 + v7);
  }

  else
  {
  }

  v9 = *(v6 + v0[7] + 80);
  if (v9 != 1)
  {
  }

  if (*(v6 + v0[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E381F598(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HorizontalCollectionView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6 + 195);
  v8 = *(v2 + ((v6 + 203) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v2 + v6, v7, v8);
}

unint64_t sub_1E381F668()
{
  result = qword_1ECF2B648;
  if (!qword_1ECF2B648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B5E8);
    sub_1E381F6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B648);
  }

  return result;
}

unint64_t sub_1E381F6F4()
{
  result = qword_1EE288A70;
  if (!qword_1EE288A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B650);
    sub_1E381F780();
    sub_1E381FE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A70);
  }

  return result;
}

unint64_t sub_1E381F780()
{
  result = qword_1EE288AE0;
  if (!qword_1EE288AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B658);
    sub_1E381F80C();
    sub_1E381FB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AE0);
  }

  return result;
}

unint64_t sub_1E381F80C()
{
  result = qword_1EE288BE8;
  if (!qword_1EE288BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B660);
    sub_1E381F898();
    sub_1E381F984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BE8);
  }

  return result;
}

unint64_t sub_1E381F898()
{
  result = qword_1EE288F90;
  if (!qword_1EE288F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B668);
    sub_1E3820244(qword_1EE23BBE8);
    sub_1E3820244(&unk_1EE249A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F90);
  }

  return result;
}

unint64_t sub_1E381F984()
{
  result = qword_1EE289108;
  if (!qword_1EE289108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B670);
    sub_1E381FA3C(&unk_1EE280018);
    sub_1E381FADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289108);
  }

  return result;
}

unint64_t sub_1E381FA3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4);
    v2();
    result = OUTLINED_FUNCTION_12_34();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E381FA88()
{
  result = qword_1EE280020[0];
  if (!qword_1EE280020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE280020);
  }

  return result;
}

unint64_t sub_1E381FADC()
{
  result = qword_1EE2837C0;
  if (!qword_1EE2837C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B680);
    sub_1E3820244(&unk_1EE2837F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2837C0);
  }

  return result;
}

unint64_t sub_1E381FB90()
{
  result = qword_1EE288CC0;
  if (!qword_1EE288CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B688);
    sub_1E381FC1C();
    sub_1E381FD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CC0);
  }

  return result;
}

unint64_t sub_1E381FC1C()
{
  result = qword_1EE289110;
  if (!qword_1EE289110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B690);
    sub_1E381FA3C(&unk_1EE280530);
    sub_1E381FE0C(&qword_1EE285DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289110);
  }

  return result;
}

unint64_t sub_1E381FD00()
{
  result = qword_1EE280538;
  if (!qword_1EE280538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE280538);
  }

  return result;
}

unint64_t sub_1E381FD54()
{
  result = qword_1EE289190;
  if (!qword_1EE289190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B6A0);
    sub_1E381FE0C(&qword_1EE284CA8);
    sub_1E3741E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289190);
  }

  return result;
}

unint64_t sub_1E381FE0C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v3);
    swift_getOpaqueTypeConformance2();
    result = OUTLINED_FUNCTION_12_34();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E381FE5C()
{
  result = qword_1EE288AC8;
  if (!qword_1EE288AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B6A8);
    sub_1E381FEE8();
    sub_1E3820188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AC8);
  }

  return result;
}

unint64_t sub_1E381FEE8()
{
  result = qword_1EE288B68;
  if (!qword_1EE288B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B6B0);
    sub_1E381FF74();
    sub_1E3820054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B68);
  }

  return result;
}

unint64_t sub_1E381FF74()
{
  result = qword_1EE288DA8;
  if (!qword_1EE288DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B6B8);
    sub_1E3820000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DA8);
  }

  return result;
}

unint64_t sub_1E3820000()
{
  result = qword_1EE23DE00;
  if (!qword_1EE23DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23DE00);
  }

  return result;
}

unint64_t sub_1E3820054()
{
  result = qword_1EE289030;
  if (!qword_1EE289030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B6C0);
    sub_1E38200E0();
    sub_1E3820134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289030);
  }

  return result;
}

unint64_t sub_1E38200E0()
{
  result = qword_1EE25BCE0;
  if (!qword_1EE25BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE25BCE0);
  }

  return result;
}

unint64_t sub_1E3820134()
{
  result = qword_1EE23D9B8[0];
  if (!qword_1EE23D9B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE23D9B8);
  }

  return result;
}

unint64_t sub_1E3820188()
{
  result = qword_1EE288D80;
  if (!qword_1EE288D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B6C8);
    sub_1E3820244(&unk_1EE288408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D80);
  }

  return result;
}

unint64_t sub_1E3820244(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E3820288()
{
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_tagsViewDictionary) = 0;

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_contentMetadata);
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_contentMetadata) = 0;

  *(v0 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_lastContentMetadataDict) = 0;

  *(v0 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_additionalMetadata) = 0;
}

uint64_t sub_1E38202F8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_lastContentMetadataDict;
  if (*(v2 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_lastContentMetadataDict))
  {

    v7 = sub_1E382051C(v6, a1);

    if ((v7 & 1) == 0 || !*(v2 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_additionalMetadata) || (v8 = , v9 = sub_1E382051C(v8, a2), , (v9 & 1) == 0))
    {
      sub_1E3820288();
    }
  }

  v10 = OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_tagsViewDictionary;
  if (*(v2 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_tagsViewDictionary))
  {
    v11 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_tagsViewDictionary);
  }

  else
  {
    v12 = sub_1E38209A0(a1);
    if (v12)
    {
      v13 = v12;
      v19 = OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_tagsHelper;
      v14 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_tagsHelper);
      sub_1E38206B8(a2);
      v15 = sub_1E4205C44();

      [v14 parseDictionaryForContentMetadata:v13 additionalMetadata:v15];

      *(v2 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_additionalMetadata) = a2;

      *(v2 + v5) = a1;

      v16 = [*(v2 + v19) tagsViewDictionary];
      v17 = sub_1E4205C64();

      *(v2 + v10) = v17;
    }

    v11 = *(v2 + v10);
    if (v11)
    {
    }

    else
    {
      v11 = sub_1E4205CB4();
    }
  }

  return v11;
}

uint64_t sub_1E382051C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1E374E74C(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_1E327D33C(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1E375D84C(&v24);
      return 0;
    }

    sub_1E374E74C(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x1E6911D60](v23, &v24);
    sub_1E375D84C(v23);
    result = sub_1E375D84C(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E38206B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    sub_1E374E74C(*(a1 + 56) + 40 * v11, v41);
    v39 = v14;
    v40 = v13;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v14;
    v27 = v13;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_1E329504C(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_1E329504C(v35, v24);
    result = sub_1E42073F4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v28;
    *(v23 + 16) = v29;
    *(v23 + 32) = v30;
    result = sub_1E329504C(v24, (*(v2 + 56) + 32 * v18));
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

id sub_1E38209A0(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_contentMetadata;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_contentMetadata);
  v5 = v4;
  if (!v4)
  {
    v6 = sub_1E38206B8(a1);
    v7 = objc_allocWithZone(VUIContentMetadata);
    v5 = sub_1E37AD294(v6);
    v8 = *(v2 + v3);
    *(v2 + v3) = v5;
    v9 = v5;
  }

  v10 = v4;
  return v5;
}

uint64_t sub_1E3820A58()
{
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_contentMetadata) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_lastContentMetadataDict) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_additionalMetadata) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_tagsViewDictionary) = 0;
  v1 = OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_tagsHelper;
  *(v0 + v1) = [objc_allocWithZone(VUIMediaTagsViewHelper) init];

  return sub_1E3B500B4();
}

void sub_1E3820ACC()
{

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_96BD907194C2776DAB81C0CC58D85B7819MediaTagsInteractor_tagsHelper);
}

uint64_t sub_1E3820B38()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3820BE0()
{
  type metadata accessor for MediaTagsInteractor(0);
  swift_allocObject();
  return sub_1E3820A58();
}

uint64_t sub_1E3820C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 56) = sub_1E3820BE0;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  v12 = *(type metadata accessor for MediaTags(0) + 48);
  *(a6 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  v13 = swift_storeEnumTagMultiPayload();
  if (!(*(*a1 + 552))(v13))
  {
    v19 = 0u;
    v20 = 0u;
    goto LABEL_7;
  }

  v18[3] = &unk_1F5D7BE68;
  v18[4] = &off_1F5D7BC48;
  LOBYTE(v18[0]) = 6;
  sub_1E3F9F164(v18);

  __swift_destroy_boxed_opaque_existential_1(v18);
  if (!*(&v20 + 1))
  {
LABEL_7:
    sub_1E329505C(&v19);
    v15 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6D0);
  v14 = swift_dynamicCast();
  v15 = v18[0];
  if (!v14)
  {
    v15 = 0;
  }

LABEL_8:
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = v15;
  *(a6 + 48) = a4;
  *(a6 + 16) = a5;
  *a6 = sub_1E39C408C(61);
  v16 = sub_1E39C408C(a5);

  *(a6 + 8) = v16;
  return result;
}

double sub_1E3820DFC(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 0.0;
  if (a2)
  {
    *&a1 = 0.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 vui:*&a1 sizeThatFits:v6];
  return result;
}

uint64_t sub_1E3820E48(void *a1)
{
  v2 = v1;
  v3 = v1[4];
  if (v3)
  {
    v48 = v3;
  }

  else
  {
    v48 = sub_1E4205CB4();
  }

  v4 = *v2;
  if (*v2)
  {
    sub_1E3280A90(0, &qword_1EE23B228);

    v5 = sub_1E40057DC(a1, v4);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1E4205F14();
      v9 = v8;
      sub_1E3280A90(0, &qword_1EE23AE80);
      sub_1E373C520();
      v10 = v6;
      sub_1E4207414();
      swift_isUniquelyReferenced_nonNull_native();
      sub_1E3821D68(v53, v7, v9);
    }

    else
    {
    }
  }

  else
  {
  }

  v11 = v2[1];
  if (!v11)
  {
    return v48;
  }

  v12 = v2[3];

  v13 = [v12 groupedKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  v14 = sub_1E42062B4();

  v15 = 0;
  v51 = 0;
  v46 = v14 + 32;
  v47 = v14;
  v16 = v48;
  while (1)
  {
    v17 = 0;
    v18 = v15 + 40;
    v49 = v16;
    if (v15)
    {
      break;
    }

LABEL_34:
    v43 = *(v47 + 16);
    if (v51 == v43)
    {

      return v16;
    }

    if (v51 >= v43)
    {
      goto LABEL_41;
    }

    v44 = *(v46 + 8 * v51);

    v15 = v44;
    ++v51;
  }

LABEL_12:
  for (i = (v18 + 16 * v17); ; i += 2)
  {
    v20 = *(v15 + 16);
    if (v17 == v20)
    {
      v16 = v49;
      goto LABEL_34;
    }

    if (v17 >= v20)
    {
      break;
    }

    v21 = *(i - 1);
    v22 = *i;
    if (v21 == sub_1E4205F14() && v22 == v23)
    {
    }

    else
    {
      v25 = sub_1E42079A4();

      if ((v25 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    sub_1E3280A90(0, &qword_1EE23B228);

    v26 = sub_1E4005F14(a1, v12, v11);

    if (v26)
    {
      v27 = sub_1E4205F14();
      v29 = v28;
      sub_1E3280A90(0, &qword_1EE23AE80);
      sub_1E373C520();
      v50 = v26;
      sub_1E4207414();
      swift_isUniquelyReferenced_nonNull_native();
      v30 = sub_1E327D33C(v27, v29);
      if (__OFADD__(v48[2], (v31 & 1) == 0))
      {
        goto LABEL_42;
      }

      v32 = v30;
      v33 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6D8);
      if (sub_1E4207644())
      {
        v34 = sub_1E327D33C(v27, v29);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_44;
        }

        v32 = v34;
      }

      ++v17;
      if (v33)
      {

        sub_1E37CB8D8(v53, v48[7] + 40 * v32);
      }

      else
      {
        v48[(v32 >> 6) + 8] |= 1 << v32;
        v36 = (v48[6] + 16 * v32);
        *v36 = v27;
        v36[1] = v29;
        v37 = v48[7] + 40 * v32;
        v38 = v54;
        v39 = v53[1];
        *v37 = v53[0];
        *(v37 + 16) = v39;
        *(v37 + 32) = v38;

        v40 = v48[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_43;
        }

        v48[2] = v42;
      }

      v49 = v48;
      v18 = v15 + 40;
      goto LABEL_12;
    }

LABEL_23:
    ++v17;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

id sub_1E3821344()
{
  v1 = v0;
  v2 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E4206BA4();
  v9 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_6_37();

  v19 = v2;
  v18 = *(v4 + 8);
  v18(v8, v2);
  type metadata accessor for MediaTagsInteractor(0);
  OUTLINED_FUNCTION_1_70();
  sub_1E38220B0(v10, v11);
  OUTLINED_FUNCTION_7_52();
  sub_1E3820288();

  result = [objc_allocWithZone(VUIMediaTagsView) initWithFrame:*(v1 + 24) layout:{0.0, 0.0, 0.0, 0.0}];
  if (result)
  {
    v13 = result;
    v14 = sub_1E3820E48(result);
    OUTLINED_FUNCTION_7_52();
    if (*(v1 + 40))
    {
      v15 = *(v1 + 40);
    }

    else
    {
      v15 = sub_1E4205CB4();
    }

    v16 = sub_1E38202F8(v15, v14);

    sub_1E3821F04(v16, v13);
    sub_1E4206B94();
    v17 = VUISignpostLogObject();
    sub_1E41FFBE4();
    OUTLINED_FUNCTION_6_37();

    v18(v8, v19);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E38215D0(void *a1)
{
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v34 = v4;
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v32 = v6 - v5;
  v33 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v31 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = type metadata accessor for MediaTags(0);
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1E3820E48(a1);
  type metadata accessor for MediaTagsInteractor(0);
  OUTLINED_FUNCTION_1_70();
  sub_1E38220B0(v15, v16);
  sub_1E4200BC4();
  if (*(v1 + 40))
  {
    v17 = *(v1 + 40);
  }

  else
  {
    v17 = sub_1E4205CB4();
  }

  v18 = sub_1E38202F8(v17, v14);

  [a1 firstBaselineOffsetFromTop];
  v20 = v19;
  [a1 vui_baselineOffsetFromBottom];
  if (*(v1 + 48))
  {
    v22 = v21;
    sub_1E3DAF300(v20, 0);
    sub_1E3DAF30C(v22, 0);
  }

  sub_1E3821F04(v18, a1);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v23 = sub_1E4206A04();
  sub_1E3821F84(v1, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v25 = swift_allocObject();
  sub_1E3821FE8(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  aBlock[4] = sub_1E382204C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_14;
  v26 = _Block_copy(aBlock);

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E38220B0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  v27 = v32;
  v28 = v35;
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v11, v27, v26);
  _Block_release(v26);

  (*(v34 + 8))(v27, v28);
  return (*(v31 + 8))(v11, v33);
}

uint64_t sub_1E3821A7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_46();
  v6 = sub_1E38220B0(v4, v5);

  return sub_1E3E36D18(a1, a2, v6);
}

uint64_t sub_1E3821AE8()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_46();
  sub_1E38220B0(v0, v1);
  v2 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v2, v3, v4, v5);
}

uint64_t sub_1E3821B70()
{
  OUTLINED_FUNCTION_0_46();
  sub_1E38220B0(v0, v1);
  return sub_1E3E36D40();
}

uint64_t sub_1E3821C30()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_46();
  sub_1E38220B0(v0, v1);
  v2 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v2);
}

uint64_t sub_1E3821CA4()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_46();
  sub_1E38220B0(v0, v1);
  v2 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v2);
}

void sub_1E3821D18()
{
  OUTLINED_FUNCTION_0_46();
  sub_1E38220B0(v0, v1);
  sub_1E4201F04();
  __break(1u);
}

uint64_t sub_1E3821D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6D8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7] + 40 * v11;

    return sub_1E37CB8D8(a1, v16);
  }

  else
  {
    sub_1E3821EA8(v11, a2, a3, a1, v15);
  }
}

unint64_t sub_1E3821EA8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void sub_1E3821F04(uint64_t a1, void *a2)
{
  v3 = sub_1E4205C44();

  [a2 updateWithMetadata_];
}

uint64_t sub_1E3821F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaTags(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3821FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaTags(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E382204C()
{
  v1 = *(type metadata accessor for MediaTags(0) - 8);
  if (*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 48))
  {
    sub_1E3DAF470();
  }
}

uint64_t sub_1E38220B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E38220F8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_46();
  result = sub_1E38220B0(v2, v3);
  *(a1 + 8) = result;
  return result;
}

void sub_1E382220C()
{
  sub_1E3822498(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E3280A90(319, &qword_1EE23B050);
    if (v1 <= 0x3F)
    {
      sub_1E38223A0();
      if (v2 <= 0x3F)
      {
        sub_1E3822498(319, qword_1EE24D358, type metadata accessor for ViewRepresentableProperties, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E3822404();
          if (v4 <= 0x3F)
          {
            sub_1E3822498(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

void sub_1E38223A0()
{
  if (!qword_1EE23B618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B6D0);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B618);
    }
  }
}

void sub_1E3822404()
{
  if (!qword_1EE289E50)
  {
    type metadata accessor for MediaTagsInteractor(255);
    sub_1E38220B0(&qword_1EE273158, type metadata accessor for MediaTagsInteractor);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289E50);
    }
  }
}

void sub_1E3822498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 sub_1E38224FC(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v4;
  *(v1 + 136) = *(a1 + 32);
  return result;
}

void *sub_1E3822590()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = v1;
  return v1;
}

void sub_1E38225D4(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_1E3822660()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    type metadata accessor for FlexibleGridHeaderRowLayout();
    v1 = sub_1E407838C();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1E38226D4()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    type metadata accessor for FlexibleGridRowLayout();
    v1 = sub_1E3BF17CC();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E3822748()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = v0;
    type metadata accessor for FlexibleGridGroupLayout();
    swift_allocObject();
    v1 = sub_1E3822DA4();
    *(v2 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1E3822854()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E382296C();
  sub_1E3822A64();
  sub_1E3822B5C();
  sub_1E3755B54();
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  v4 = [v2 blackColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = sub_1E3E5F2F8(v3, v5);
  OUTLINED_FUNCTION_14_0();
  v7 = *(v1 + 144);
  *(v1 + 144) = v6;

  return v1;
}

uint64_t sub_1E382296C()
{
  OUTLINED_FUNCTION_8();
  v0 += 222;
  v1 = *v0;
  (*v0)();
  sub_1E3952C28(12.0);
  OUTLINED_FUNCTION_6_22();
  (*(v2 + 184))(v6);

  v4 = *(v1)(v3);
  (*(v4 + 312))(0x4039000000000000, 0);
}

uint64_t sub_1E3822A64()
{
  OUTLINED_FUNCTION_8();
  v0 += 225;
  v1 = *v0;
  (*v0)();
  sub_1E3952C28(16.0);
  OUTLINED_FUNCTION_6_22();
  (*(v2 + 184))(v6);

  v4 = *(v1)(v3);
  (*(v4 + 312))(0x4046000000000000, 0);
}

uint64_t sub_1E3822B5C()
{
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1776))();
  sub_1E3C37CBC(v2, 247);

  v4 = (*(*v0 + 1800))(v3);
  sub_1E3C37CBC(v4, 245);

  v6 = (*(*v0 + 1824))(v5);
  sub_1E3C37CBC(v6, 140);
}

uint64_t sub_1E3822C58()
{
}

uint64_t sub_1E3822C98()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3822CE0()
{
  v0 = sub_1E3822C98();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

double sub_1E3822D10@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 1728))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1E3822DA4()
{
  type metadata accessor for FlexibleGridRowLayout();
  *(v0 + 104) = sub_1E3BF17CC();
  v1 = sub_1E3C2F9A0();

  sub_1E3822E14();

  sub_1E3C37CBC(v2, 245);

  return v1;
}

uint64_t sub_1E3822E14()
{
  v1 = *(v0 + 104);
  sub_1E3952C28(16.0);
  OUTLINED_FUNCTION_6_22();
  (*(v2 + 184))(v4);
  return (*(*v1 + 312))(0x4046000000000000, 0);
}

uint64_t sub_1E3822ECC()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3822F14(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_16_25();
  }

  if (a1 == 1)
  {
    return 0x6576694C657270;
  }

  return 1953722224;
}

uint64_t sub_1E3822F5C(unsigned __int8 a1, char a2)
{
  v2 = 0x6576694C657270;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6576694C657270;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1702259052;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1953722224;
      break;
    case 3:
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1702259052;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1953722224;
      break;
    case 3:
      v2 = 0x6E776F6E6B6E75;
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
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3823080(unsigned __int8 a1, char a2)
{
  v2 = 1702259052;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6576694C657270;
    }

    else
    {
      v4 = 1953722224;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1702259052;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6576694C657270;
    }

    else
    {
      v2 = 1953722224;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3823168()
{
  sub_1E4205754();
  sub_1E3827E1C(&unk_1EE23B670, MEMORY[0x1E69D3BB8]);
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

uint64_t sub_1E382325C()
{
  sub_1E4207B44();
  sub_1E38232AC();
  return sub_1E4207BA4();
}

uint64_t sub_1E38232AC()
{
  sub_1E4206014();
}

uint64_t sub_1E3823350()
{
  sub_1E4206014();
}

uint64_t sub_1E38233D4()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3823464()
{
  sub_1E4207B44();
  sub_1E38232AC();
  return sub_1E4207BA4();
}

uint64_t sub_1E38234A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3822ECC();
  *a1 = result;
  return result;
}

uint64_t sub_1E38234D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3822F14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3823510@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v3 + 1256))();

  v4 = OBJC_IVAR____TtC8VideosUI19ScoreboardViewModel__progressStatus;
  OUTLINED_FUNCTION_5_0();
  sub_1E4205754();
  OUTLINED_FUNCTION_2();
  return (*(v5 + 16))(a1, v1 + v4);
}