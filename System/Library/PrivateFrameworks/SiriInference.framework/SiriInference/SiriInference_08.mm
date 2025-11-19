unint64_t sub_1DD423F08()
{
  result = qword_1ECCDC800;
  if (!qword_1ECCDC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC800);
  }

  return result;
}

unint64_t sub_1DD423F60()
{
  result = qword_1ECCDC808;
  if (!qword_1ECCDC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC808);
  }

  return result;
}

unint64_t sub_1DD423FB8()
{
  result = qword_1ECCDC810;
  if (!qword_1ECCDC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC810);
  }

  return result;
}

unint64_t sub_1DD424010()
{
  result = qword_1ECCDC818;
  if (!qword_1ECCDC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC818);
  }

  return result;
}

unint64_t sub_1DD424068()
{
  result = qword_1EE165A78;
  if (!qword_1EE165A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A78);
  }

  return result;
}

unint64_t sub_1DD4240C0()
{
  result = qword_1EE165A80;
  if (!qword_1EE165A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A80);
  }

  return result;
}

unint64_t sub_1DD424114()
{
  result = qword_1EE163A88[0];
  if (!qword_1EE163A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE163A88);
  }

  return result;
}

unint64_t sub_1DD424168()
{
  result = qword_1EE165510;
  if (!qword_1EE165510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165510);
  }

  return result;
}

unint64_t sub_1DD4241BC()
{
  result = qword_1EE162668;
  if (!qword_1EE162668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162668);
  }

  return result;
}

unint64_t sub_1DD424210()
{
  result = qword_1EE1651F0;
  if (!qword_1EE1651F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1651F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecommendationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DD4242EC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_82_1(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4243D4()
{
  result = qword_1ECCDC830;
  if (!qword_1ECCDC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC830);
  }

  return result;
}

unint64_t sub_1DD42442C()
{
  result = qword_1ECCDC838;
  if (!qword_1ECCDC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC838);
  }

  return result;
}

unint64_t sub_1DD424484()
{
  result = qword_1EE163A78;
  if (!qword_1EE163A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163A78);
  }

  return result;
}

unint64_t sub_1DD4244DC()
{
  result = qword_1EE163A80;
  if (!qword_1EE163A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163A80);
  }

  return result;
}

unint64_t sub_1DD424530()
{
  result = qword_1EE165538;
  if (!qword_1EE165538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165538);
  }

  return result;
}

unint64_t sub_1DD424584()
{
  result = qword_1ECCDC858;
  if (!qword_1ECCDC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC858);
  }

  return result;
}

unint64_t sub_1DD4245D8()
{
  result = qword_1EE165550;
  if (!qword_1EE165550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165550);
  }

  return result;
}

_BYTE *sub_1DD42462C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_82_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD424734()
{
  result = qword_1ECCDC878;
  if (!qword_1ECCDC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC878);
  }

  return result;
}

unint64_t sub_1DD42478C()
{
  result = qword_1ECCDC880;
  if (!qword_1ECCDC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC880);
  }

  return result;
}

unint64_t sub_1DD4247E4()
{
  result = qword_1ECCDC888;
  if (!qword_1ECCDC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC888);
  }

  return result;
}

unint64_t sub_1DD42483C()
{
  result = qword_1ECCDC890;
  if (!qword_1ECCDC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC890);
  }

  return result;
}

unint64_t sub_1DD424894()
{
  result = qword_1ECCDC898;
  if (!qword_1ECCDC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC898);
  }

  return result;
}

unint64_t sub_1DD4248EC()
{
  result = qword_1EE165540;
  if (!qword_1EE165540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165540);
  }

  return result;
}

unint64_t sub_1DD424944()
{
  result = qword_1EE165548;
  if (!qword_1EE165548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165548);
  }

  return result;
}

unint64_t sub_1DD42499C()
{
  result = qword_1EE165518;
  if (!qword_1EE165518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165518);
  }

  return result;
}

unint64_t sub_1DD4249F4()
{
  result = qword_1EE165520;
  if (!qword_1EE165520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165520);
  }

  return result;
}

unint64_t sub_1DD424A4C()
{
  result = qword_1EE165528;
  if (!qword_1EE165528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165528);
  }

  return result;
}

unint64_t sub_1DD424AA4()
{
  result = qword_1EE165530;
  if (!qword_1EE165530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165530);
  }

  return result;
}

unint64_t sub_1DD424AF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void OUTLINED_FUNCTION_26_7()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 60);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
}

void OUTLINED_FUNCTION_28_4()
{

  sub_1DD3BE2A4();
}

void OUTLINED_FUNCTION_30_7()
{
  v0[83] = v0[21];
  v0[84] = v0[15];
  v0[85] = v0[20];
  v0[86] = v0[14];
}

void OUTLINED_FUNCTION_37_7()
{
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  v0[27] = 0;
}

void OUTLINED_FUNCTION_43_4()
{

  JUMPOUT(0x1E12B2260);
}

uint64_t OUTLINED_FUNCTION_44_3()
{

  return sub_1DD640C18();
}

void OUTLINED_FUNCTION_45_3(uint64_t a1@<X8>)
{
  *(v1 + 792) = a1;
  *(v1 + 800) = *(v1 + 104);
  *(v1 + 808) = *(v1 + 100);
}

uint64_t OUTLINED_FUNCTION_49_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD4178F8(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_53_3()
{
  v2 = *(v0 - 144);

  return sub_1DD640AB8();
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  v2 = *(v0 - 72);

  return sub_1DD640B78();
}

void OUTLINED_FUNCTION_61_3(__n128 a1)
{
  v1[5] = a1;
  v3 = v1[4].n128_u64[0];
  v2 = v1[4].n128_u64[1];
}

void OUTLINED_FUNCTION_62_3()
{
  v0[30] = 0;
  v0[32] = 0;
  v0[34] = 0;
  v0[20] = 0;
  v0[21] = 0;
}

void sub_1DD424E0C()
{
  sub_1DD3C6C14();
  if (v0 <= 0x3F)
  {
    sub_1DD424EA8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContactResolverConfig(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD424EA8()
{
  if (!qword_1EE160138)
  {
    sub_1DD424F00();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE160138);
    }
  }
}

unint64_t sub_1DD424F00()
{
  result = qword_1EE163870;
  if (!qword_1EE163870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE163870);
  }

  return result;
}

void sub_1DD424F6C()
{
  sub_1DD424FD4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1DD424FD4()
{
  if (!qword_1EE160510)
  {
    type metadata accessor for Contact();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE160510);
    }
  }
}

void sub_1DD4250A0(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_1_4();
  v47 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for Contact();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_4();
  v46 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v46 - v27;
  memcpy(v50, a1, 0x108uLL);
  if (sub_1DD4254CC(a1))
  {
    *v28 = 0;
    *(v28 + 1) = 0xE000000000000000;
    v28[16] = 2;
    *(v28 + 3) = 0;
    *(v28 + 4) = 0xE000000000000000;
    *(v28 + 7) = 0;
    *(v28 + 8) = 0xE000000000000000;
    *(v28 + 9) = 0;
    *(v28 + 10) = 0xE000000000000000;
    *(v28 + 11) = 0;
    *(v28 + 12) = 0xE000000000000000;
    *(v28 + 13) = 0;
    *(v28 + 14) = 0xE000000000000000;
    *(v28 + 15) = 0;
    *(v28 + 16) = 0xE000000000000000;
    *(v28 + 17) = 0;
    *(v28 + 18) = 0xE000000000000000;
    *(v28 + 19) = 0;
    *(v28 + 20) = 0xE000000000000000;
    *(v28 + 21) = 0;
    *(v28 + 22) = 0xE000000000000000;
    *(v28 + 23) = 0;
    *(v28 + 24) = 0xE000000000000000;
    *(v28 + 25) = 0;
    *(v28 + 26) = 0xE000000000000000;
    v29 = MEMORY[0x1E69E7CC0];
    *(v28 + 27) = MEMORY[0x1E69E7CC0];
    v30 = v14[19];
    v31 = sub_1DD63CBB8();
    __swift_storeEnumTagSinglePayload(&v28[v30], 1, 1, v31);
    *&v28[v14[20]] = v29;
    v28[v14[21]] = 0;
    v32 = &v28[v14[22]];
    *v32 = 0;
    *(v32 + 1) = 0;
    v28[v14[23]] = 2;
    v33 = &v28[v14[24]];
    *v33 = 0;
    *(v33 + 1) = 0xE000000000000000;
    *(v28 + 5) = 0xD000000000000012;
    *(v28 + 6) = 0x80000001DD66B6F0;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8A0, &qword_1DD649350) + 48);
    sub_1DD415D68(v28, a2);
    a2[v34] = 1;
    OUTLINED_FUNCTION_12_14();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_28();
    sub_1DD3C4D54(v28, v35);
    return;
  }

  OUTLINED_FUNCTION_10_18();
  v36 = v51;
  sub_1DD4255F4(v49, v13);
  if (!v36)
  {
    OUTLINED_FUNCTION_7_16();
    if (v37)
    {
      sub_1DD425B4C(v13);
      OUTLINED_FUNCTION_10_18();
      v38 = v48;
      sub_1DD425BB4(v49, v48);
      OUTLINED_FUNCTION_7_16();
      if (v37)
      {
        sub_1DD425B4C(v38);
        OUTLINED_FUNCTION_10_18();
        v39 = v47;
        sub_1DD425E7C(v49, v47);
        OUTLINED_FUNCTION_7_16();
        if (v37)
        {
          sub_1DD425B4C(v39);
          memcpy(a2, v50, 0x108uLL);
          OUTLINED_FUNCTION_12_14();
          swift_storeEnumTagMultiPayload();
          sub_1DD3C9478(v50, v49);
          return;
        }

        OUTLINED_FUNCTION_0_37();
        v44 = v46;
        sub_1DD426A24(v39, v46, v45);
        v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8A0, &qword_1DD649350) + 48);
        sub_1DD426A24(v44, a2, v2);
        v42 = 4;
      }

      else
      {
        OUTLINED_FUNCTION_0_37();
        sub_1DD426A24(v38, v22, v43);
        v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8A0, &qword_1DD649350) + 48);
        sub_1DD426A24(v22, a2, v2);
        v42 = 3;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_37();
      sub_1DD426A24(v13, v25, v40);
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8A0, &qword_1DD649350) + 48);
      sub_1DD426A24(v25, a2, v2);
      v42 = 2;
    }

    a2[v41] = v42;
    OUTLINED_FUNCTION_12_14();
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1DD4254CC(void *a1)
{
  if (a1[3] == 0xD000000000000012 && 0x80000001DD66B6F0 == a1[4])
  {
    return 1;
  }

  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[11];
  v5 = a1[12];
  if (OUTLINED_FUNCTION_11_13())
  {
    return 1;
  }

  v6 = v2 == 0xD000000000000012 && 0x80000001DD66B6F0 == v3;
  if (v6 || (OUTLINED_FUNCTION_11_13() & 1) != 0)
  {
    return 1;
  }

  v7 = v2 == 0x636E656772656D65 && v3 == 0xE900000000000079;
  if (v7 || (v8 = sub_1DD640CD8(), result = 0, (v8 & 1) != 0))
  {
    if (v4 != 0x7365636976726573 || v5 != 0xE800000000000000)
    {

      return sub_1DD640CD8();
    }

    return 1;
  }

  return result;
}

uint64_t sub_1DD4255F4@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  memcpy(__dst, __src, 0x108uLL);
  memcpy(__srca, __src, sizeof(__srca));
  if ((sub_1DD41E198() & 1) == 0)
  {
    if (!__dst[23] || ((__dst[23] & 0x2000000000000000) != 0 ? (v7 = HIBYTE(__dst[23]) & 0xFLL) : (v7 = __dst[22] & 0xFFFFFFFFFFFFLL), !v7))
    {
      if (__dst[26])
      {
        v8 = HIBYTE(__dst[29]) & 0xFLL;
        if ((__dst[29] & 0x2000000000000000) == 0)
        {
          v8 = __dst[28] & 0xFFFFFFFFFFFFLL;
        }

        if (v8)
        {
          v9 = __dst[24];
          if (qword_1EE165FB0 != -1)
          {
            OUTLINED_FUNCTION_0_2();
            swift_once();
          }

          v10 = sub_1DD63F9F8();
          __dst[35] = __swift_project_value_buffer(v10, qword_1EE16F068);
          v11 = sub_1DD63F9D8();
          v12 = sub_1DD640368();
          if (os_log_type_enabled(v11, v12))
          {
            OUTLINED_FUNCTION_28();
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&dword_1DD38D000, v11, v12, "Resolving handle value request", v13, 2u);
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
          }

          v14 = v4 + *(type metadata accessor for ContactQuickResolver(0) + 24);
          if ((v14[*(type metadata accessor for ContactResolverConfig(0) + 48)] & 1) == 0)
          {
            goto LABEL_37;
          }

          v15 = v4[4];
          __swift_project_boxed_opaque_existential_1(v4, v4[3]);
          if (v9)
          {
            if (v9 == 1)
            {
              v16 = *(v15 + 48);
            }

            else
            {
              v34 = *(v15 + 40);
            }

            v17 = OUTLINED_FUNCTION_3_19();
            v19 = v18(v17);
            v28 = v3;
            if (!v3)
            {
              v29 = v19;
LABEL_30:
              if (sub_1DD3CC020(v29))
              {
                sub_1DD408BFC(0);
                if ((v29 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x1E12B2C10](0, v29);
                }

                else
                {
                  v44 = *(v29 + 32);
                }

                memcpy(__srca, __dst, sizeof(__srca));
                sub_1DD3C9478(__dst, v50);
                sub_1DD40F314();
                goto LABEL_38;
              }

              v45 = sub_1DD63F9D8();
              v46 = sub_1DD640368();
              if (os_log_type_enabled(v45, v46))
              {
                OUTLINED_FUNCTION_28();
                v47 = swift_slowAlloc();
                *v47 = 0;
                _os_log_impl(&dword_1DD38D000, v45, v46, "No matching contacts", v47, 2u);
                OUTLINED_FUNCTION_13_0();
                MEMORY[0x1E12B3DA0]();
              }

LABEL_37:
              memcpy(__srca, __dst, sizeof(__srca));
              sub_1DD3C9478(__dst, v50);
              sub_1DD40ED6C(__srca, a2);
LABEL_38:
              v20 = type metadata accessor for Contact();
              v21 = a2;
              v22 = 0;
              return __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
            }
          }

          else
          {
            v24 = *(v15 + 40);
            v25 = OUTLINED_FUNCTION_3_19();
            v27 = v26(v25);
            v28 = v3;
            if (!v3)
            {
              v29 = v27;
              if (!sub_1DD3CC020(v27))
              {
                v30 = v4[4];
                __swift_project_boxed_opaque_existential_1(v4, v4[3]);
                v31 = *(v30 + 48);
                v32 = OUTLINED_FUNCTION_3_19();
                v48 = v33(v32);

                v29 = v48;
              }

              goto LABEL_30;
            }
          }

          v29 = MEMORY[0x1E69E7CC0];
          v35 = v28;
          v36 = v28;
          v37 = sub_1DD63F9D8();
          v38 = sub_1DD640378();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v50[0] = v35;
            __srca[0] = v49;
            *v39 = 136315138;
            v40 = v35;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
            v41 = sub_1DD63FE38();
            v43 = sub_1DD39565C(v41, v42, __srca);

            *(v39 + 4) = v43;
            _os_log_impl(&dword_1DD38D000, v37, v38, "%s", v39, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v49);
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
          }

          type metadata accessor for InferenceError();
          sub_1DD4DE46C(4, 0xD00000000000007ALL, 0x80000001DD66B710, 0xD000000000000028, 0x80000001DD66B7B0, 112);

          goto LABEL_30;
        }
      }
    }
  }

  v20 = type metadata accessor for Contact();
  v21 = a2;
  v22 = 1;
  return __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
}

uint64_t sub_1DD425B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD425BB4@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Contact();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  memcpy(v35, a1, 0x108uLL);
  if (LOBYTE(v35[2]) == 1 && v35[23] == 0)
  {
    v32 = a2;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    __swift_project_value_buffer(v18, qword_1EE16F068);
    v19 = sub_1DD63F9D8();
    v20 = sub_1DD640368();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_28();
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DD38D000, v19, v20, "Resolving Me request", v21, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v22 = *(v3 + 40);
    if (v22)
    {
      memcpy(v34, a1, sizeof(v34));
      v23 = v22;
      sub_1DD3C9478(v35, &v33);
      sub_1DD40F314();
      sub_1DD42639C(v15, v12);

      OUTLINED_FUNCTION_1_28();
      sub_1DD3C4D54(v15, v24);
      OUTLINED_FUNCTION_0_37();
      sub_1DD426A24(v12, v15, v25);
      v15[16] = 1;
      v26 = v32;
      sub_1DD426A24(v15, v32, v3);
      return __swift_storeEnumTagSinglePayload(v26, 0, 1, v6);
    }

    v28 = sub_1DD63F9D8();
    v29 = sub_1DD640378();
    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_28();
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DD38D000, v28, v29, "Me request but no MeCard", v30, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v17 = v32;
  }

  else
  {
    v17 = a2;
  }

  return __swift_storeEnumTagSinglePayload(v17, 1, 1, v6);
}

void sub_1DD425E7C(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Contact();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v52, a1, 0x108uLL);
  v12 = v52[0];
  v13 = v52[1];
  v14 = HIBYTE(v52[1]) & 0xFLL;
  if ((v52[1] & 0x2000000000000000) == 0)
  {
    v14 = v52[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (v15 = v3 + *(type metadata accessor for ContactQuickResolver(0) + 24), (*(v15 + *(type metadata accessor for ContactResolverConfig(0) + 48)) & 1) == 0))
  {
    v39 = OUTLINED_FUNCTION_16();
    v41 = v6;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v39, v40, 1, v41);
    return;
  }

  v48 = a2;
  v49 = v6;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v16 = sub_1DD63F9F8();
  v52[35] = __swift_project_value_buffer(v16, qword_1EE16F068);
  v17 = sub_1DD63F9D8();
  v18 = sub_1DD640368();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_28();
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DD38D000, v17, v18, "resolving a query with a known contact ID", v19, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1DD425040(sub_1DD426930);
  v22 = v21;
  if ((v23 & 1) == 0)
  {
    if (v21)
    {
      memcpy(v51, v52, sizeof(v51));
      sub_1DD426950(v22);
      sub_1DD3C9478(v52, &v50);
      sub_1DD40F314();
      v42 = v48;
      sub_1DD42639C(v11, v48);
      sub_1DD42695C(v22);
      OUTLINED_FUNCTION_1_28();
      sub_1DD3C4D54(v11, v43);
      v39 = v42;
      v40 = 0;
      v41 = v49;
    }

    else
    {
      sub_1DD3C9478(v52, v51);
      v44 = sub_1DD63F9D8();
      v45 = sub_1DD640378();
      sub_1DD3C9580(v52);
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v51[0] = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_1DD39565C(v12, v13, v51);
        _os_log_impl(&dword_1DD38D000, v44, v45, "no CNContacts with id=%s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      sub_1DD42695C(0);
      v39 = v48;
      v41 = v49;
      v40 = 1;
    }

    goto LABEL_14;
  }

  v24 = OUTLINED_FUNCTION_16();
  sub_1DD426950(v24);
  v25 = v22;
  v26 = sub_1DD63F9D8();
  v27 = sub_1DD640378();
  v28 = OUTLINED_FUNCTION_16();
  sub_1DD42695C(v28);
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v51[0] = v30;
    *v29 = 136315138;
    v50 = v22;
    v31 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v32 = sub_1DD63FE38();
    v34 = sub_1DD39565C(v32, v33, v51);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1DD38D000, v26, v27, "%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  type metadata accessor for InferenceError();
  swift_allocObject();
  v35 = sub_1DD4DE96C(4, 0, 0xE000000000000000, 0xD00000000000007ALL, 0x80000001DD66B710, 0xD00000000000001DLL, 0x80000001DD66B790, 143, MEMORY[0x1E69E7CC0], 1);
  sub_1DD426968();
  swift_allocError();
  *v36 = v35;
  swift_willThrow();
  v37 = OUTLINED_FUNCTION_16();
  sub_1DD42695C(v37);
  v38 = OUTLINED_FUNCTION_16();
  sub_1DD42695C(v38);
}

uint64_t sub_1DD42639C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v35 - v7;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v9 = (matched - 8);
  v10 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  OUTLINED_FUNCTION_1_4();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  sub_1DD415D68(a1, &v35 - v15);
  v39 = &v16[v9[7]];
  sub_1DD43038C(v39);
  sub_1DD3CE274();
  v17 = MEMORY[0x1E69E7CC0];
  v18 = sub_1DD63FC88();
  v19 = &v16[v9[8]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = v17;
  *&v16[v9[9]] = v18;
  *&v16[v9[10]] = 0;
  v16[v9[11]] = 1;
  v20 = v2 + *(type metadata accessor for ContactQuickResolver(0) + 24);
  v21 = *(v20 + *(type metadata accessor for ContactResolverConfig(0) + 60));
  v22 = *(a1 + *(type metadata accessor for Contact() + 80));
  v23 = *(v22 + 16);
  if (v23)
  {
    v35 = v13;
    v36 = v16;
    v37 = a2;
    v46 = v17;
    v38 = v21;
    v24 = sub_1DD42B5CC(0, v23, 0);
    v27 = v38;
    v28 = 0;
    v17 = v46;
    v29 = (v22 + 32);
    while (v28 < *(v22 + 16))
    {
      memcpy(__dst, v29, 0x4AuLL);
      memcpy(v44, v29, 0x4AuLL);
      sub_1DD426794(v44, v27, v41);
      memcpy(v43, v44, 0x4AuLL);
      sub_1DD3C6A40(__dst, v42);
      sub_1DD3C6A9C(v43);
      v46 = v17;
      v31 = *(v17 + 16);
      v30 = *(v17 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1DD42B5CC(v30 > 1, v31 + 1, 1);
        v27 = v38;
        v17 = v46;
      }

      ++v28;
      *(v17 + 16) = v31 + 1;
      v24 = sub_1DD3CD2CC(v41, v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v31);
      v29 += 80;
      if (v23 == v28)
      {
        v16 = v36;
        a2 = v37;
        v13 = v35;
        goto LABEL_8;
      }
    }

    __break(1u);
    memcpy(v24, v25, v26);
    sub_1DD3C6A40(__dst, v42);
    sub_1DD3C6A9C(v43);

    __break(1u);
  }

  else
  {
LABEL_8:
    v32 = v39;
    v33 = *(v39 + 34);

    *(v32 + 272) = v17;
    sub_1DD3CC39C(v16, 0, 0, 1, 100, v13);
    sub_1DD4269C0(v13, v16);
    sub_1DD415D68(v16, a2);
    return sub_1DD3C4D54(v16, type metadata accessor for ContactMatchRuntimeData);
  }

  return result;
}

uint64_t sub_1DD42670C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  result = (*(v9 + 24))(*a2, a2[1], v8, v9);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1DD426794@<X0>(const void *a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  v6 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(__dst, a1, 0x4AuLL);
  *(v9 + 1) = 0;
  v10 = v6[9];
  v11 = sub_1DD63F148();
  __swift_storeEnumTagSinglePayload(&v9[v10], 1, 1, v11);
  v9[v6[10]] = 0;
  v12 = v6[12];
  v9[v12] = 0;
  v9[v6[13]] = 0;
  v9[v6[14]] = 0;
  *v9 = __dst[72];
  v13 = HIBYTE(a2);
  if (a2 == 2)
  {
    v14 = 3;
  }

  else
  {
    v14 = HIBYTE(a2);
  }

  v15 = __dst[16];
  if (__dst[16] == 3)
  {
    if (v14 == 3)
    {
      goto LABEL_12;
    }
  }

  else if (a2 == 2 || __dst[16] == v14)
  {
    goto LABEL_12;
  }

  if ((a2 & 1) == 0)
  {
LABEL_12:
    v9[v12] = 1;
    v13 = v14;
  }

  v9[v6[11]] = v13 == v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  sub_1DD426A24(v9, a3 + *(v17 + 36), type metadata accessor for ContactResolver.HandleSignalSet);
  memcpy(a3, __dst, 0x4AuLL);
  return sub_1DD3C6A40(__dst, v19);
}

unint64_t sub_1DD426968()
{
  result = qword_1EE1663F0;
  if (!qword_1EE1663F0)
  {
    type metadata accessor for InferenceError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1663F0);
  }

  return result;
}

uint64_t sub_1DD4269C0(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  (*(*(matched - 8) + 40))(a2, a1, matched);
  return a2;
}

uint64_t sub_1DD426A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void *OUTLINED_FUNCTION_10_18()
{

  return memcpy((v0 + 24), (v0 + 288), 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_11_13()
{

  return sub_1DD640CD8();
}

double sub_1DD426AF4@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a3;
  v77 = a4;
  v8 = type metadata accessor for Contact();
  v82 = *(v8 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v12 = OUTLINED_FUNCTION_7(v73);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v74 = (v71 - v15);
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v17 = *(matched - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](matched);
  v21 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v80 = v71 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v71 - v24;
  v75 = *a2;
  v26 = sub_1DD3CC024(a1, 0, 0, 1, 100);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = a5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_21:
    sub_1DD5869D0(v26);
    v26 = v70;
  }

  v28 = *(v26 + 16);
  v29 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v84[0] = v26 + v29;
  v84[1] = v28;
  sub_1DD5261D8(v84);
  v85 = v26;
  sub_1DD42711C(&v85);
  v30 = 0;
  v26 = v85;
  v31 = *(v85 + 16);
  v79 = v29;
  v81 = MEMORY[0x1E69E7CC0];
  while (v31 != v30)
  {
    if (v30 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v32 = *(v17 + 72);
    OUTLINED_FUNCTION_3_3();
    sub_1DD4278F8(v33, v25, v34);
    if (v25[*(matched + 36)] == 1)
    {
      v72 = v11;
      OUTLINED_FUNCTION_3_3();
      sub_1DD427958(v25, v80, v35);
      v36 = v81;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v36;
      if ((v37 & 1) == 0)
      {
        v38 = *(v36 + 16);
        v81 = v26;
        sub_1DD42B564();
        v26 = v81;
        v36 = v84[0];
      }

      v39 = *(v36 + 16);
      v40 = v39 + 1;
      if (v39 >= *(v36 + 24) >> 1)
      {
        v81 = v26;
        v44 = v39 + 1;
        v71[1] = v39;
        sub_1DD42B564();
        v40 = v44;
        v26 = v81;
        v36 = v84[0];
      }

      ++v30;
      *(v36 + 16) = v40;
      v81 = v36;
      OUTLINED_FUNCTION_3_3();
      sub_1DD427958(v41, v42, v43);
      v11 = v72;
    }

    else
    {
      sub_1DD3C4D54(v25, type metadata accessor for ContactMatchRuntimeData);
      ++v30;
    }
  }

  v45 = v26;
  v46 = v81;
  v47 = *(v81 + 16);
  if (v47)
  {
    v84[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42B5EC(0, v47, 0);
    v48 = v84[0];
    v49 = v78;
    v50 = v46 + v79;
    v51 = *(v17 + 72);
    do
    {
      sub_1DD4278F8(v50, v21, type metadata accessor for ContactMatchRuntimeData);
      OUTLINED_FUNCTION_0_38();
      sub_1DD4278F8(v21, v11, v52);
      sub_1DD3C4D54(v21, type metadata accessor for ContactMatchRuntimeData);
      v84[0] = v48;
      v54 = *(v48 + 16);
      v53 = *(v48 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1DD42B5EC(v53 > 1, v54 + 1, 1);
        v48 = v84[0];
      }

      *(v48 + 16) = v54 + 1;
      v55 = v48 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
      v56 = *(v82 + 72);
      OUTLINED_FUNCTION_0_38();
      sub_1DD427958(v11, v57, v58);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
    v49 = v78;
  }

  sub_1DD427294(v45);
  v59 = v74;
  sub_1DD4273F4(v48, v74);

  v60 = type metadata accessor for ContactResolverRunTimeData(0);
  sub_1DD4279B8(v59, v49 + v60[10]);
  __swift_storeEnumTagSinglePayload(v49 + v60[14], 1, 1, v73);
  v61 = v60[19];
  v62 = sub_1DD63D0F8();
  __swift_storeEnumTagSinglePayload(v49 + v61, 1, 1, v62);
  v63 = v60[18];
  v64 = v77;

  sub_1DD63D0E8();
  sub_1DD427A28(v59);
  *v49 = 0;
  *(v49 + 8) = 0xE000000000000000;
  *(v49 + 16) = 0;
  *(v49 + 17) = v84[0];
  *(v49 + 20) = *(v84 + 3);
  *(v49 + 24) = 0;
  *(v49 + 32) = 0xE000000000000000;
  *(v49 + 40) = 0;
  *(v49 + 48) = 0xE000000000000000;
  *(v49 + 56) = 0;
  *(v49 + 64) = 0xE000000000000000;
  *(v49 + 72) = 0;
  *(v49 + 80) = 0xE000000000000000;
  *(v49 + 88) = 0;
  *(v49 + 96) = 0xE000000000000000;
  *(v49 + 104) = 0;
  *(v49 + 112) = 0xE000000000000000;
  *(v49 + 120) = 0;
  *(v49 + 128) = 0xE000000000000000;
  *(v49 + 136) = 0;
  *(v49 + 144) = 0xE000000000000000;
  *(v49 + 152) = 0;
  *(v49 + 160) = 0xE000000000000000;
  *(v49 + 216) = 0u;
  *(v49 + 200) = 0u;
  *(v49 + 184) = 0u;
  *(v49 + 168) = 0u;
  *(v49 + 232) = 0;
  *(v49 + 240) = MEMORY[0x1E69E7CC0];
  *(v49 + 248) = 1;
  *(v49 + 249) = v83[0];
  *(v49 + 252) = *(v83 + 3);
  *(v49 + 256) = 0;
  *(v49 + 264) = v75;
  *(v49 + 272) = v76;
  *(v49 + 280) = v64;
  *(v49 + 288) = 0;
  *(v49 + 296) = v45;
  *(v49 + v60[11]) = 0;
  *(v49 + v60[12]) = 0;
  *(v49 + v60[13]) = 5;
  v65 = (v49 + v60[15]);
  v65[1] = 0u;
  v65[2] = 0u;
  *v65 = xmmword_1DD642F70;
  v66 = v49 + v60[16];
  *&result = 0x100000001;
  *v66 = 1;
  *(v66 + 4) = 2;
  v68 = (v49 + v60[17]);
  *v68 = 0;
  v68[1] = 0;
  *(v49 + v60[20]) = 0;
  v69 = (v49 + v60[21]);
  *v69 = 0;
  v69[1] = 0;
  return result;
}

void sub_1DD42711C(uint64_t *a1)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  if (v7)
  {
    if (v7 != 1)
    {
      matched = type metadata accessor for ContactMatchRuntimeData(0);
      v2 = *(matched - 8);
      v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v4 = *(v6 + v3 + *(matched + 32));
      v5 = -0.5;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    v9 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_13;
    }

    while (!*(v6 + 16))
    {
      __break(1u);
LABEL_15:
      sub_1DD5869D0(v6);
      v6 = v13;
LABEL_7:
      v11 = 0;
      while (v11 < *(v6 + 16))
      {
        *(v6 + v3 + *(v2 + 72) * v11 + *(matched + 36)) = v4 + v5 < *(v6 + v3 + *(v2 + 72) * v11 + *(matched + 32));
        if (v7 == ++v11)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_13:
      sub_1DD5869D0(v6);
      v6 = v12;
    }

    v10 = type metadata accessor for ContactMatchRuntimeData(0);
    *(v6 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(v10 + 36)) = 1;
LABEL_10:
    *a1 = v6;
  }
}

uint64_t sub_1DD427294(uint64_t a1)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v3 = *(*(matched - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](matched);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v11 = *(v4 + 32);
  v12 = *(v10 + v11);
  v13 = *(v5 + 72);
  do
  {
    sub_1DD4278F8(v10, v7, type metadata accessor for ContactMatchRuntimeData);
    v14 = *&v7[v11];
    result = sub_1DD3C4D54(v7, type metadata accessor for ContactMatchRuntimeData);
    if (v12 + -1.0 <= v14 && __OFADD__(v9++, 1))
    {
      __break(1u);
      return result;
    }

    v10 += v13;
    --v8;
  }

  while (v8);
  return v12 >= 0.5 && v9 == 1;
}

uint64_t sub_1DD4273F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Contact();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v6 + 80);
    OUTLINED_FUNCTION_0_38();
    sub_1DD4278F8(a1 + v11, v8, v12);
    if (v9 == 1)
    {
      OUTLINED_FUNCTION_0_38();
      sub_1DD427958(v8, a2, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_1DD3C4D54(v8, type metadata accessor for Contact);
      *a2 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);

    return swift_storeEnumTagMultiPayload();
  }
}

SiriInference::ModelType_optional __swiftcall ModelType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ModelType.rawValue.getter()
{
  result = 0x64657355656E6F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      return result;
    case 4:
      result = 0x616974696E696E75;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

unint64_t sub_1DD4276E8@<X0>(unint64_t *a1@<X8>)
{
  result = ModelType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DD4277C8()
{
  result = qword_1ECCDC8A8;
  if (!qword_1ECCDC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD4278F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD427958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD4279B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD427A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD427A90()
{
  result = qword_1EE163A60;
  if (!qword_1EE163A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163A60);
  }

  return result;
}

uint64_t ContactResolver.Domain.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1DD640AA8();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t ContactResolver.Domain.rawValue.getter()
{
  result = 0x736567617373656DLL;
  switch(*v0)
  {
    case 1:
      result = 0x656E6F6870;
      break;
    case 2:
      result = 0x73746361746E6F63;
      break;
    case 3:
      result = 0x794D646E6966;
      break;
    case 4:
      result = 0x6669636570736E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD427C18@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ContactResolver.Domain.init(rawValue:)(a1);
}

uint64_t sub_1DD427C24@<X0>(uint64_t *a1@<X8>)
{
  result = ContactResolver.Domain.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD427D08()
{
  v2 = v0;
  v3 = sub_1DD63D168();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_5();
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001ELL, 0x80000001DD66B7E0);
  v9 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  (*(v6 + 16))(v1, v2 + v9, v3);
  v10 = sub_1DD63D118();
  v12 = v11;
  (*(v6 + 8))(v1, v3);
  MEMORY[0x1E12B2260](v10, v12);

  MEMORY[0x1E12B2260](0xD000000000000015, 0x80000001DD66B800);
  v13 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v31 = MEMORY[0x1E69E7CC0];

    sub_1DD42A2D4();
    v15 = v31;
    v16 = (v13 + 40);
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = *(v31 + 16);
      v20 = *(v31 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_1DD42A2D4();
      }

      *(v31 + 16) = v19 + 1;
      v21 = v31 + 16 * v19;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 3;
      --v14;
    }

    while (v14);
  }

  v22 = MEMORY[0x1E12B2430](v15, MEMORY[0x1E69E6158]);
  v24 = v23;

  MEMORY[0x1E12B2260](v22, v24);

  MEMORY[0x1E12B2260](0x6F64202020200A2CLL, 0xEE00203A6E69616DLL);
  v32 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](0x6E69202020200A2CLL, 0xEE00203A746E6574);
  v25 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  v26 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent + 8);

  MEMORY[0x1E12B2260](v25, v26);

  MEMORY[0x1E12B2260](0xD000000000000010, 0x80000001DD66B820);
  v27 = v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId;
  v28 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
  v29 = *(v27 + 8);

  MEMORY[0x1E12B2260](v28, v29);

  return 0;
}

uint64_t ContactResolver.RequestContext.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ContactResolver.RequestContext.init()();
  return v3;
}

uint64_t ContactResolver.RequestContext.init()()
{
  v1 = sub_1DD63D168();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  sub_1DD63D158();
  (*(v4 + 32))(v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale, v9, v1);
  *(v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain) = 4;
  v10 = (v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  return v0;
}

void sub_1DD42818C()
{
  OUTLINED_FUNCTION_61_4();
  v2 = v0;
  v3 = sub_1DD63D168();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_5();
  v9 = type metadata accessor for ContactResolver.RequestContext();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  ContactResolver.RequestContext.init()();
  v13 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  (*(v6 + 16))(v1, v2 + v13, v3);
  v14 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  swift_beginAccess();
  (*(v6 + 40))(v12 + v14, v1, v3);
  swift_endAccess();
  v15 = *(v12 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates);
  *(v12 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates) = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates);

  *(v12 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain) = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain);
  v16 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent + 8);
  v17 = (v12 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  v18 = *(v12 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent + 8);
  *v17 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  v17[1] = v16;

  v20 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
  v19 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId + 8);
  v21 = (v12 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
  v22 = *(v12 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId + 8);
  *v21 = v20;
  v21[1] = v19;

  OUTLINED_FUNCTION_25_1();
}

uint64_t static ContactResolver.RequestContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D168();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v16 = *(v7 + 16);
  v38 = a1;
  v16(v14, a1 + v15, v4);
  v17 = sub_1DD63D118();
  v19 = v18;
  v20 = *(v7 + 8);
  v20(v14, v4);
  v21 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v39 = a2;
  v16(v12, a2 + v21, v4);
  v22 = sub_1DD63D118();
  v24 = v23;
  v20(v12, v4);
  v25 = v17 == v22 && v19 == v24;
  if (v25)
  {
  }

  else
  {
    v26 = sub_1DD640CD8();

    if ((v26 & 1) == 0)
    {
LABEL_20:
      v36 = 0;
      return v36 & 1;
    }
  }

  v28 = v38;
  v27 = v39;
  if ((sub_1DD3C4B10(*(v38 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates), *(v39 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates)) & 1) == 0)
  {
    goto LABEL_20;
  }

  v29 = *(v27 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain);
  if ((sub_1DD3B0974(*(v28 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain)) & 1) == 0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_45_4(OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  v32 = v25 && v30 == v31;
  if (!v32 && (sub_1DD640CD8() & 1) == 0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_45_4(OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
  if (v25 && v33 == v34)
  {
    v36 = 1;
  }

  else
  {
    v36 = sub_1DD640CD8();
  }

  return v36 & 1;
}

uint64_t sub_1DD42859C(uint64_t a1)
{
  v4 = sub_1DD63D168();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_5();
  (*(v7 + 16))(v2, a1, v4);
  v10 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  swift_beginAccess();
  (*(v7 + 40))(v1 + v10, v2, v4);
  swift_endAccess();
}

uint64_t sub_1DD42869C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates);
  *(v1 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates) = a1;
}

uint64_t sub_1DD428714(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_1DD428764(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69646E6143707061 && a2 == 0xED00007365746164;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6449746E65746E69 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD640CD8();

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

uint64_t sub_1DD428910(char a1)
{
  result = 0x656C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x69646E6143707061;
      break;
    case 2:
      result = 0x6E69616D6F64;
      break;
    case 3:
      result = 0x746E65746E69;
      break;
    case 4:
      result = 0x6449746E65746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4289AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD428764(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4289D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD428908();
  *a1 = result;
  return result;
}

uint64_t sub_1DD4289FC(uint64_t a1)
{
  v2 = sub_1DD42A35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD428A38(uint64_t a1)
{
  v2 = sub_1DD42A35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactResolver.RequestContext.deinit()
{
  v1 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  v2 = sub_1DD63D168();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates);

  v4 = *(v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent + 8);

  v5 = *(v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId + 8);

  return v0;
}

uint64_t ContactResolver.RequestContext.__deallocating_deinit()
{
  ContactResolver.RequestContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DD428B64()
{
  OUTLINED_FUNCTION_93();
  v29 = v0;
  v30 = v1;
  v3 = v2;
  v4 = sub_1DD63D168();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8B0, &qword_1DD6494D0);
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  v21 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DD42A35C();
  v22 = v29;
  sub_1DD640EF8();
  v23 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  (*(v7 + 16))(v12, v22 + v23, v4);
  sub_1DD42A458(&qword_1EE165CB8);
  v24 = v30;
  sub_1DD640C68();
  if (v24)
  {
    (*(v7 + 8))(v12, v4);
    (*(v15 + 8))(v20, v13);
  }

  else
  {
    (*(v7 + 8))(v12, v4);
    v32 = *(v22 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates);
    v31 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8C0, &qword_1DD6494D8);
    sub_1DD42A49C(&qword_1ECCDC8C8, sub_1DD42A3B0);
    sub_1DD640C68();
    v33 = *(v22 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain);
    v31 = 2;
    sub_1DD42A404();
    sub_1DD640C68();
    v25 = *(v22 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
    v26 = *(v22 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent + 8);

    OUTLINED_FUNCTION_40_5();
    if (!v25)
    {

      v27 = *(v22 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
      v28 = *(v22 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId + 8);

      OUTLINED_FUNCTION_40_5();
    }

    (*(v15 + 8))(v20, v13);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t ContactResolver.RequestContext.__allocating_init(from:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ContactResolver.RequestContext.init(from:)(a1, v6, v7, v8, v9, v10, v11, v12, v14, *v15, v15[4], v15[5]);
  return v5;
}

void ContactResolver.RequestContext.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  OUTLINED_FUNCTION_93();
  v51 = v12;
  v15 = v14;
  v16 = sub_1DD63D168();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8E0, &qword_1DD6494E0);
  OUTLINED_FUNCTION_0(v50);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v49 - v30;
  v33 = v15[3];
  v32 = v15[4];
  v52 = v15;
  __swift_project_boxed_opaque_existential_1(v15, v33);
  sub_1DD42A35C();
  sub_1DD640ED8();
  if (v13)
  {
    v37 = v51;
    type metadata accessor for ContactResolver.RequestContext();
    v38 = *(*v37 + 48);
    v39 = *(*v37 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = v26;
    v35 = v19;
    sub_1DD42A458(&qword_1EE1637F0);
    v36 = v50;
    OUTLINED_FUNCTION_56_4();
    sub_1DD640B78();
    v40 = *(v35 + 32);
    v41 = v51;
    v49[1] = v16;
    v40(v51 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8C0, &qword_1DD6494D8);
    sub_1DD42A49C(&qword_1ECCDC8E8, sub_1DD42A514);
    OUTLINED_FUNCTION_56_4();
    sub_1DD640B78();
    *(v41 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates) = v53;
    sub_1DD42A568();
    sub_1DD640B78();
    *(v41 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain) = a12;
    OUTLINED_FUNCTION_56_4();
    v42 = sub_1DD640B28();
    v43 = (v41 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
    *v43 = v42;
    v43[1] = v44;
    OUTLINED_FUNCTION_56_4();
    v45 = sub_1DD640B28();
    v47 = v46;
    (*(v34 + 8))(v31, v36);
    v48 = (v41 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
    *v48 = v45;
    v48[1] = v47;
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD429360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactResolver.RequestContext.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ContactResolver.AppCandidate.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContactResolver.AppCandidate.init(bundleId:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

BOOL static ContactResolver.AppCandidate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1DD640CD8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1DD4294A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD42956C(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_1DD4295A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4294A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4295CC(uint64_t a1)
{
  v2 = sub_1DD42A5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD429608(uint64_t a1)
{
  v2 = sub_1DD42A5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactResolver.AppCandidate.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC900, &qword_1DD6494E8);
  OUTLINED_FUNCTION_0(v5);
  v13 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_43_5();
  v10 = *v0;
  v11 = v0[1];
  v14 = *(v0 + 16);
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DD42A5BC();
  sub_1DD640EF8();
  sub_1DD640C18();
  if (!v1)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DD42A610();
    OUTLINED_FUNCTION_57_5();
    sub_1DD640C68();
  }

  (*(v13 + 8))(v2, v5);
  OUTLINED_FUNCTION_86();
}

void ContactResolver.AppCandidate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_93();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC918, &qword_1DD6494F0);
  OUTLINED_FUNCTION_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1DD42A5BC();
  OUTLINED_FUNCTION_51_4();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    OUTLINED_FUNCTION_44_4();
    v22 = sub_1DD640B28();
    v24 = v23;
    OUTLINED_FUNCTION_59_2();
    sub_1DD42A664();
    OUTLINED_FUNCTION_39_4();
    v25 = OUTLINED_FUNCTION_41();
    v26(v25);
    *v16 = v22;
    *(v16 + 8) = v24;
    *(v16 + 16) = a12;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  OUTLINED_FUNCTION_86();
}

unint64_t ContactResolver.AppCandidateType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1DD429AD0()
{
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000002BLL, 0x80000001DD66B840);
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v1, v2);

  MEMORY[0x1E12B2260](0xD00000000000001ELL, 0x80000001DD66B870);
  v4 = *(v0 + 17);
  sub_1DD6409F8();
  return 0;
}

uint64_t ContactResolver.Spec.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 513;
  return result;
}

uint64_t ContactResolver.Spec.init()()
{
  result = v0;
  *(v0 + 16) = 513;
  return result;
}

uint64_t sub_1DD429C24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001DLL && 0x80000001DD66B930 == a2;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DD66B950 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

unint64_t sub_1DD429CF8(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_1DD429D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD429C24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD429D60(uint64_t a1)
{
  v2 = sub_1DD42A6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD429D9C(uint64_t a1)
{
  v2 = sub_1DD42A6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD429DF0(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC928, &qword_1DD6494F8);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_43_5();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD42A6B8();
  sub_1DD640EF8();
  v13 = *(v4 + 16);
  sub_1DD640C28();
  if (!v2)
  {
    v15 = *(v4 + 17);
    OUTLINED_FUNCTION_59_2();
    sub_1DD42A70C();
    OUTLINED_FUNCTION_57_5();
    sub_1DD640C68();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t ContactResolver.Spec.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ContactResolver.Spec.init(from:)(a1, v3, v4, v5, v6, v7, v8, v9, v11, *v12, *&v12[4], v12[6]);
  return v2;
}

void ContactResolver.Spec.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_93();
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC940, &qword_1DD649500);
  OUTLINED_FUNCTION_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  v20 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_1DD42A6B8();
  OUTLINED_FUNCTION_51_4();
  if (v13)
  {
    type metadata accessor for ContactResolver.Spec();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_44_4();
    *(v12 + 16) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_59_2();
    sub_1DD42A784();
    OUTLINED_FUNCTION_39_4();
    v21 = OUTLINED_FUNCTION_41();
    v22(v21);
    *(v12 + 17) = a12;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD42A100@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactResolver.Spec.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD42A1EC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

void sub_1DD42A2D4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_27_8();
  sub_1DD42D7EC();
  *v0 = v2;
}

uint64_t type metadata accessor for ContactResolver.RequestContext()
{
  result = qword_1EE162D78;
  if (!qword_1EE162D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DD42A35C()
{
  result = qword_1ECCDC8B8;
  if (!qword_1ECCDC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8B8);
  }

  return result;
}

unint64_t sub_1DD42A3B0()
{
  result = qword_1ECCDC8D0;
  if (!qword_1ECCDC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8D0);
  }

  return result;
}

unint64_t sub_1DD42A404()
{
  result = qword_1ECCDC8D8;
  if (!qword_1ECCDC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8D8);
  }

  return result;
}

uint64_t sub_1DD42A458(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD63D168();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD42A49C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC8C0, &qword_1DD6494D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD42A514()
{
  result = qword_1ECCDC8F0;
  if (!qword_1ECCDC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8F0);
  }

  return result;
}

unint64_t sub_1DD42A568()
{
  result = qword_1ECCDC8F8;
  if (!qword_1ECCDC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8F8);
  }

  return result;
}

unint64_t sub_1DD42A5BC()
{
  result = qword_1ECCDC908;
  if (!qword_1ECCDC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC908);
  }

  return result;
}

unint64_t sub_1DD42A610()
{
  result = qword_1ECCDC910;
  if (!qword_1ECCDC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC910);
  }

  return result;
}

unint64_t sub_1DD42A664()
{
  result = qword_1ECCDC920;
  if (!qword_1ECCDC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC920);
  }

  return result;
}

unint64_t sub_1DD42A6B8()
{
  result = qword_1ECCDC930;
  if (!qword_1ECCDC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC930);
  }

  return result;
}

unint64_t sub_1DD42A70C()
{
  result = qword_1ECCDC938;
  if (!qword_1ECCDC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC938);
  }

  return result;
}

unint64_t sub_1DD42A784()
{
  result = qword_1ECCDC948;
  if (!qword_1ECCDC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC948);
  }

  return result;
}

unint64_t sub_1DD42A7DC()
{
  result = qword_1ECCDC950;
  if (!qword_1ECCDC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC950);
  }

  return result;
}

unint64_t sub_1DD42A834()
{
  result = qword_1ECCDC958;
  if (!qword_1ECCDC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC958);
  }

  return result;
}

unint64_t sub_1DD42A88C()
{
  result = qword_1ECCDC960;
  if (!qword_1ECCDC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC960);
  }

  return result;
}

uint64_t sub_1DD42A8F8()
{
  result = sub_1DD63D168();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD42AB8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_50_6(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_50_6(v8);
}

_BYTE *sub_1DD42AC10(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_49_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_47_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_48_5(result, v6);
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
          result = OUTLINED_FUNCTION_82_1(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD42AE2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_50_6(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_50_6(v8);
}

_BYTE *sub_1DD42AEB0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_49_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_47_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_48_5(result, v6);
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
          result = OUTLINED_FUNCTION_82_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD42AF7C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_50_6(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 5);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_50_6(v8);
}

_BYTE *sub_1DD42B000(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_49_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_47_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_48_5(result, v6);
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
          result = OUTLINED_FUNCTION_82_1(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD42B0D0()
{
  result = qword_1ECCDC968;
  if (!qword_1ECCDC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC968);
  }

  return result;
}

unint64_t sub_1DD42B128()
{
  result = qword_1ECCDC970;
  if (!qword_1ECCDC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC970);
  }

  return result;
}

unint64_t sub_1DD42B180()
{
  result = qword_1ECCDC978;
  if (!qword_1ECCDC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC978);
  }

  return result;
}

unint64_t sub_1DD42B1D8()
{
  result = qword_1ECCDC980;
  if (!qword_1ECCDC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC980);
  }

  return result;
}

unint64_t sub_1DD42B230()
{
  result = qword_1ECCDC988;
  if (!qword_1ECCDC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC988);
  }

  return result;
}

unint64_t sub_1DD42B288()
{
  result = qword_1ECCDC990;
  if (!qword_1ECCDC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC990);
  }

  return result;
}

unint64_t sub_1DD42B2E0()
{
  result = qword_1ECCDC998;
  if (!qword_1ECCDC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC998);
  }

  return result;
}

unint64_t sub_1DD42B338()
{
  result = qword_1ECCDC9A0;
  if (!qword_1ECCDC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC9A0);
  }

  return result;
}

unint64_t sub_1DD42B390()
{
  result = qword_1ECCDC9A8;
  if (!qword_1ECCDC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC9A8);
  }

  return result;
}

void *sub_1DD42B3E4(void *a1, int64_t a2, char a3)
{
  result = sub_1DD42C228(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42B404(void *a1, int64_t a2, char a3)
{
  result = sub_1DD42C340(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42B424(void *a1, int64_t a2, char a3)
{
  result = sub_1DD42C450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42B444()
{
  v1 = *v0;
  OUTLINED_FUNCTION_26_8();
  sub_1DD42E278();
  *v0 = v2;
}

void sub_1DD42B478()
{
  v1 = *v0;
  sub_1DD42D55C();
  *v0 = v2;
}

void sub_1DD42B4BC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_25_5();
  sub_1DD42F710();
  *v0 = v2;
}

void sub_1DD42B4F8()
{
  v1 = *v0;
  sub_1DD42C5B8();
  *v0 = v2;
}

void sub_1DD42B518()
{
  v1 = *v0;
  sub_1DD42CB18();
  *v0 = v2;
}

void sub_1DD42B564()
{
  v1 = *v0;
  OUTLINED_FUNCTION_24_6();
  sub_1DD42F244(v2, v3, v4, v5, v6, v7, v8, sub_1DD3C1C14);
  *v0 = v9;
}

void sub_1DD42B5AC()
{
  v1 = *v0;
  sub_1DD42C748();
  *v0 = v2;
}

size_t sub_1DD42B5CC(size_t a1, int64_t a2, char a3)
{
  result = sub_1DD42C808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42B644()
{
  v1 = *v0;
  sub_1DD42D55C();
  *v0 = v2;
}

void sub_1DD42B688()
{
  v1 = *v0;
  OUTLINED_FUNCTION_23_9();
  sub_1DD42F244(v2, v3, v4, v5, v6, v7, v8, sub_1DD3C1C80);
  *v0 = v9;
}

uint64_t sub_1DD42B780(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42CA10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42B7A0()
{
  v1 = *v0;
  sub_1DD42CB18();
  *v0 = v2;
}

size_t sub_1DD42B7EC(size_t a1, int64_t a2, char a3)
{
  result = sub_1DD42CBC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B80C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42CD8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B8DC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42CFF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42B8FC(void *a1, int64_t a2, char a3)
{
  result = sub_1DD42D0FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B91C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42D20C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B93C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42D324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42B95C(void *a1, int64_t a2, char a3)
{
  result = sub_1DD42D424(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42B97C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_29_5();
  sub_1DD42D55C();
  *v0 = v2;
}

size_t sub_1DD42BA08(size_t a1, int64_t a2, char a3)
{
  result = sub_1DD42D620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42BA28()
{
  v1 = *v0;
  sub_1DD42D7EC();
  *v0 = v2;
}

size_t sub_1DD42BA74(size_t a1, int64_t a2, char a3)
{
  result = sub_1DD42D8A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42BA94()
{
  v1 = *v0;
  sub_1DD42E194();
  *v0 = v2;
}

uint64_t sub_1DD42BAD8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42DA74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BB50(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42DCD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DD42BBC8(size_t a1, int64_t a2, char a3)
{
  result = sub_1DD42DDE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42BBE8()
{
  v1 = *v0;
  sub_1DD42DFB4();
  *v0 = v2;
}

void sub_1DD42BC08()
{
  v1 = *v0;
  sub_1DD42E194();
  *v0 = v2;
}

uint64_t sub_1DD42BC4C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42E09C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42BC6C()
{
  v1 = *v0;
  sub_1DD42E194();
  *v0 = v2;
}

void sub_1DD42BCB0()
{
  v1 = *v0;
  sub_1DD42E194();
  *v0 = v2;
}

void sub_1DD42BCF4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_26_8();
  sub_1DD42E278();
  *v0 = v2;
}

void sub_1DD42BD28()
{
  v1 = *v0;
  sub_1DD42E33C();
  *v0 = v2;
}

void *sub_1DD42BD48(void *a1, int64_t a2, char a3)
{
  result = sub_1DD42E3F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BDC0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42E508(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BDE0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42E620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42BE8C(void *a1, int64_t a2, char a3)
{
  result = sub_1DD42E728(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BEAC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42E87C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BECC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42E97C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42BF44()
{
  v1 = *v0;
  sub_1DD42EB78();
  *v0 = v2;
}

void sub_1DD42BF90()
{
  v1 = *v0;
  sub_1DD42EB78();
  *v0 = v2;
}

uint64_t sub_1DD42BFDC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42EC20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42BFFC(void *a1, int64_t a2, char a3)
{
  result = sub_1DD42EDE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DD42C01C(size_t a1, int64_t a2, char a3)
{
  result = sub_1DD42EEF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42C0EC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42F3D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42C10C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42F4E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42C12C(void *a1, int64_t a2, char a3)
{
  result = sub_1DD42F5F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42C14C()
{
  v1 = *v0;
  sub_1DD42F710();
  *v0 = v2;
}

uint64_t sub_1DD42C198(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42F7B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42C1B8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42F8D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42C1D8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DD42FADC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42C228(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEC0, &unk_1DD649F60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2534(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEC8, &qword_1DD6441E8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DD42C340(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF8, &qword_1DD644040);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC00, &qword_1DD649DF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DD42C450(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA00, &qword_1DD649E98);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA08, &qword_1DD649EA0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42C5B8()
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_6();
      if (v6)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v5);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
    OUTLINED_FUNCTION_51(v8);
    v10 = *(v9 + 72);
    v11 = OUTLINED_FUNCTION_12_15();
    _swift_stdlib_malloc_size(v11);
    if (v10)
    {
      OUTLINED_FUNCTION_37_8();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        OUTLINED_FUNCTION_36_4(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_1_5(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_35_5(v17);
    sub_1DD3C1BE8(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_31_7();
  }

  OUTLINED_FUNCTION_25_1();
}

void sub_1DD42C748()
{
  OUTLINED_FUNCTION_16_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD60, &unk_1DD649EC0);
      v8 = OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_1_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_5_22();
        sub_1DD3C1C2C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD68, &qword_1DD6440E8);
    OUTLINED_FUNCTION_11_14();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_1DD42C808(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE0, &qword_1DD663660);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1C54(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DD42CA10(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAD0, &qword_1DD649FE0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1CF0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42CB18()
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_8_11();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_35(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_53(v9, v10, v11, v12, v13, v14);
      v15 = OUTLINED_FUNCTION_52_1();
      OUTLINED_FUNCTION_22_2(v15);
      OUTLINED_FUNCTION_48(v16);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_17_12();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        OUTLINED_FUNCTION_25_1();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_13_12();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v7)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_1DD42CBC0(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA20, &qword_1DD649ED8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD78, &unk_1DD644390) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD78, &unk_1DD644390) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1D14(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DD42CD8C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAB0, &qword_1DD649FA8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3AA4E0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAB8, &unk_1DD649FB0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42CEA4()
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_6();
      if (v6)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v5);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAC0, &unk_1DD649FC0);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
    OUTLINED_FUNCTION_51(v8);
    v10 = *(v9 + 72);
    v11 = OUTLINED_FUNCTION_12_15();
    _swift_stdlib_malloc_size(v11);
    if (v10)
    {
      OUTLINED_FUNCTION_37_8();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        OUTLINED_FUNCTION_36_4(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  OUTLINED_FUNCTION_1_5(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_35_5(v17);
    sub_1DD3C1D40(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_31_7();
  }

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_1DD42CFF8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB60, &qword_1DD64A0B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1D6C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DD42D0FC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC70, &unk_1DD649E00);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFD10, &qword_1DD6589F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42D20C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9C0, &qword_1DD649E10);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3AA4E0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9C8, &qword_1DD649E18);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42D324(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9B8, &qword_1DD649DF8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3AA4C0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DD42D424(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC08, &unk_1DD645A80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC10, &unk_1DD649DC0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42D55C()
{
  OUTLINED_FUNCTION_34_5();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_22_6(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_53(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_22_2(v16);
      v16[2] = v3;
      v16[3] = 2 * (v17 / 8);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_16_10();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = OUTLINED_FUNCTION_58_3();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v8)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_1DD42D620(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1D8C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DD42D7EC()
{
  OUTLINED_FUNCTION_8_11();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_35(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_53(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_22_2(v16);
      v16[2] = v3;
      v16[3] = 2 * (v17 / 16);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_17_12();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_13_12();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v8)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_1DD42D8A8(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB50, &qword_1DD64A088);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1DB8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DD42DA74(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED8, &qword_1DD64A0A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 264);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1DCC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42DB7C()
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_6();
      if (v6)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v5);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEF0, &unk_1DD64A090);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
    OUTLINED_FUNCTION_51(v8);
    v10 = *(v9 + 72);
    v11 = OUTLINED_FUNCTION_12_15();
    _swift_stdlib_malloc_size(v11);
    if (v10)
    {
      OUTLINED_FUNCTION_37_8();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        OUTLINED_FUNCTION_36_4(v12);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

LABEL_14:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE8, &qword_1DD6441F0);
  OUTLINED_FUNCTION_1_5(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_35_5(v17);
    sub_1DD3C1E0C(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_31_7();
  }

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_1DD42DCD0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB28, &qword_1DD64A058);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3AA4E0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB30, &unk_1DD64A060);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1DD42DDE8(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB20, &qword_1DD64A048);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1E38(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DD42DFB4()
{
  OUTLINED_FUNCTION_16_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE8, &qword_1DD6440A8);
      v8 = OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_1_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_5_22();
        sub_1DD3C2524(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
    OUTLINED_FUNCTION_11_14();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DD42E09C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB78, &qword_1DD64A0C8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1B90((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42E194()
{
  OUTLINED_FUNCTION_34_5();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_22_6(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_53(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * v17 - 64;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_16_10();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = OUTLINED_FUNCTION_58_3();
    memcpy(v19, v20, v3);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v8)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DD42E278()
{
  OUTLINED_FUNCTION_34_5();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_22_6(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_53(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_22_2(v16);
      v16[2] = v3;
      v16[3] = 2 * (v17 / 4);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_16_10();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v19 = OUTLINED_FUNCTION_58_3();
    memcpy(v19, v20, v21);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v8)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DD42E33C()
{
  OUTLINED_FUNCTION_16_1();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_6(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9E8, &qword_1DD649E78);
      v9 = OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_1_7(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_5_22();
        sub_1DD3AA508(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 40 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v7)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1DD42E3F8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9D8, &qword_1DD649E68);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9E0, &qword_1DD649E70);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42E508(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB00, &qword_1DD64A028);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 728);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1E64((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB08, &qword_1DD64A030);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42E620(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE0, &qword_1DD657080);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 712);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1E8C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DD42E728(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF48, &unk_1DD649F20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2534(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF50, &qword_1DD644240);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42E87C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA68, &qword_1DD649F38);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 128);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1EFC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42E97C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAA8, &qword_1DD649FA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 136);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1F1C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42EA84(char a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v11 == v12)
  {
LABEL_7:
    OUTLINED_FUNCTION_22_6(v10);
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE28, &qword_1DD644170);
      v13 = swift_allocObject();
      OUTLINED_FUNCTION_22_2(v13);
      v13[2] = v5;
      v13[3] = 2 * (v14 / 40);
      if (a1)
      {
LABEL_9:
        v15 = OUTLINED_FUNCTION_16_10();
        a5(v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE30, &qword_1DD649EE0);
    OUTLINED_FUNCTION_58_3();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v11)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DD42EB78()
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_8_11();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_35(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_53(v9, v10, v11, v12, v13, v14);
      v15 = OUTLINED_FUNCTION_52_1();
      OUTLINED_FUNCTION_22_2(v15);
      OUTLINED_FUNCTION_48(v16);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_17_12();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        OUTLINED_FUNCTION_25_1();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_13_12();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v7)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DD42EC20(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAA0, &qword_1DD649F98);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1C2C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42ED28()
{
  OUTLINED_FUNCTION_16_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE20, &qword_1DD649F50);
      v8 = OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_1_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_5_22();
        sub_1DD3C2534(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF190, &qword_1DD649F58);
    OUTLINED_FUNCTION_11_14();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1DD42EDE8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA78, &qword_1DD649F70);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA80, &qword_1DD649F78);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1DD42EEF8(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA70, &unk_1DD649F40);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1F58(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DD42F0C4()
{
  OUTLINED_FUNCTION_16_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDF0, &qword_1DD649F10);
      v8 = OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_1_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_5_22();
        sub_1DD3C2534(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA60, &qword_1DD649F18);
    OUTLINED_FUNCTION_11_14();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DD42F184()
{
  OUTLINED_FUNCTION_16_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDE8, &qword_1DD649F00);
      v8 = OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_1_7(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_5_22();
        sub_1DD3C207C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA58, &qword_1DD649F08);
    OUTLINED_FUNCTION_11_14();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DD42F244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_5_8();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_15_6();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_53(a1, a2, a3, a4, a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_51(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_48(v23 - v21);
LABEL_18:
  v25 = a7(0);
  OUTLINED_FUNCTION_1_5(v25);
  v27 = *(v26 + 80);
  OUTLINED_FUNCTION_24_0();
  if (v11)
  {
    a8(a4 + v28, v15, &v22[v28]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1DD42F3D8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDD8, &unk_1DD65AB80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1DD3C203C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42F4E0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAD8, &qword_1DD649FE8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1C2C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAE0, &unk_1DD649FF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DD42F5F8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA48, &qword_1DD649EF0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1DD3C252C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA50, &qword_1DD649EF8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42F710()
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_8_11();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_8();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_35(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_53(v9, v10, v11, v12, v13, v14);
      v15 = OUTLINED_FUNCTION_52_1();
      OUTLINED_FUNCTION_22_2(v15);
      OUTLINED_FUNCTION_48(v16);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_17_12();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        OUTLINED_FUNCTION_25_1();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_13_12();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v7)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DD42F7B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCA0, &qword_1DD644080);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 104);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2160((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCA8, &unk_1DD649E40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42F8D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB0, &qword_1DD644088);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1D6C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB8, &unk_1DD649E50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD42F9E0()
{
  result = qword_1ECCDCA30;
  if (!qword_1ECCDCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCA30);
  }

  return result;
}

unint64_t sub_1DD42FA34()
{
  result = qword_1ECCDCA38;
  if (!qword_1ECCDCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCA38);
  }

  return result;
}

unint64_t sub_1DD42FA88()
{
  result = qword_1ECCDCA40;
  if (!qword_1ECCDCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCA40);
  }

  return result;
}

uint64_t sub_1DD42FADC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB38, &qword_1DD664C60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1B90((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB40, &unk_1DD64A070);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_14()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_15()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_12()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_22_6(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_38_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return sub_1DD640B78();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_1DD640C18();
}

uint64_t OUTLINED_FUNCTION_45_4@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_51_4()
{

  return sub_1DD640ED8();
}

uint64_t sub_1DD42FEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
{
  v6 = type metadata accessor for ContactResolverConfig(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1DD450B90();
  v10 = a4(a1, v9);
  sub_1DD43032C(v9, type metadata accessor for ContactResolverConfig);
  return v10;
}

uint64_t sub_1DD430018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v24 = a2;
  v6 = type metadata accessor for Contact();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v22 = v3;
    v23 = a3;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1DD42BAD8(0, v14, 0);
    v15 = v26;
    v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v7 + 72);
    do
    {
      sub_1DD415D68(v16, v13);
      sub_1DD415D68(v13, v11);
      sub_1DD41D418(v11, v25);
      sub_1DD43032C(v13, type metadata accessor for Contact);
      v26 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DD42BAD8(v18 > 1, v19 + 1, 1);
        v15 = v26;
      }

      *(v15 + 16) = v19 + 1;
      memcpy((v15 + 264 * v19 + 32), v25, 0x108uLL);
      v16 += v17;
      --v14;
    }

    while (v14);
    a3 = v23;
  }

  v20 = a3(v15, v24);

  return v20;
}

uint64_t ContactResolver.makeRecommendation(matches:config:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactResolverRunTimeData(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD4425CC();
  sub_1DD4279B8(&v6[*(v3 + 48)], a1);
  return sub_1DD43032C(v6, type metadata accessor for ContactResolverRunTimeData);
}

uint64_t sub_1DD43032C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DD43038C(uint64_t a1@<X8>)
{
  *a1 = 6;
  ContactQuery.init()(a1 + 8);
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 272) = MEMORY[0x1E69E7CC0];
  *(a1 + 280) = 0;
  v3 = type metadata accessor for ContactResolver.SignalSet(0);
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 333) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  v4 = v3[30];
  v5 = sub_1DD63F148();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = v3[31];
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  v13 = v3[32];
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v5);
  v17 = a1 + v3[33];
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(a1 + v3[34]) = 0;
  *(a1 + v3[35]) = 0;
  *(a1 + v3[36]) = 0;
  *(a1 + v3[37]) = 0;
  *(a1 + v3[38]) = 0;
  *(a1 + v3[39]) = 0;
  *(a1 + v3[40]) = 0;
  *(a1 + v3[41]) = 0;
  OUTLINED_FUNCTION_52_3(v3[42]);
  *(v18 + 8) = 0;
  OUTLINED_FUNCTION_52_3(v3[43]);
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0xE000000000000000;
  *(a1 + v3[44]) = 0;
  *(a1 + v3[45]) = 0;
  *(a1 + v3[46]) = 0;
  *(a1 + v3[47]) = 0;
  *(a1 + v3[48]) = 0;
  OUTLINED_FUNCTION_52_3(v3[49]);
  *(v20 + 8) = 0;
  OUTLINED_FUNCTION_52_3(v3[50]);
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(a1 + v3[51]) = 0;
  *(a1 + v3[52]) = v2;
  *(a1 + v3[53]) = 0;
  *(a1 + v3[54]) = 0;
  *(a1 + v3[55]) = 0;
  *(a1 + v3[56]) = 0;
  *(a1 + v3[57]) = 0;
  *(a1 + v3[58]) = 0;
  *(a1 + v3[59]) = 0;
  *(a1 + v3[60]) = 0;
  v22 = v3[61];
  type metadata accessor for MegadomeEntityFeatures();
  v23 = swift_allocObject();
  bzero((v23 + 16), 0x3B8uLL);
  *(a1 + v22) = v23;
}

void ContactResolver.SignalSet.isThirdPartyMatch.getter()
{
  v2 = OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_26_9((v1 + *(v2 + 168)));
  OUTLINED_FUNCTION_48_6();
  *(v0 + 9) = v3;
}

void ContactResolver.SignalSet.isThirdPartyMatch.setter(uint64_t *a1)
{
  v1 = *(OUTLINED_FUNCTION_54_4(a1) + 9);
  v2 = type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_36_5(*(v2 + 168));
  *(v3 + 9) = v1;
}

uint64_t ContactResolver.SignalSet.isThirdPartyMatch.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  v1 = *(type metadata accessor for ContactResolver.SignalSet(v0) + 168);
  return OUTLINED_FUNCTION_88_2();
}

uint64_t ContactResolver.SignalSet.thirdPartyBundleId.getter()
{
  v2 = OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_31_8((v1 + *(v2 + 172)));
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  OUTLINED_FUNCTION_48_6();
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
}

uint64_t ContactResolver.SignalSet.thirdPartyBundleId.setter(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_54_4(a1);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v2 + *(type metadata accessor for ContactResolver.SignalSet(0) + 172);
  v8 = *(v7 + 24);

  *v7 = v1;
  *(v7 + 8) = v3;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  return result;
}

uint64_t ContactResolver.SignalSet.thirdPartyBundleId.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  v1 = *(type metadata accessor for ContactResolver.SignalSet(v0) + 172);
  return OUTLINED_FUNCTION_88_2();
}

void ContactResolver.SignalSet.isCommunalRequest.getter()
{
  v2 = OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_26_9((v1 + *(v2 + 196)));
  OUTLINED_FUNCTION_48_6();
  *(v0 + 9) = v3;
}

void ContactResolver.SignalSet.isCommunalRequest.setter(uint64_t *a1)
{
  v1 = *(OUTLINED_FUNCTION_54_4(a1) + 9);
  v2 = type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_36_5(*(v2 + 196));
  *(v3 + 9) = v1;
}

uint64_t ContactResolver.SignalSet.isCommunalRequest.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  v1 = *(type metadata accessor for ContactResolver.SignalSet(v0) + 196);
  return OUTLINED_FUNCTION_88_2();
}

void ContactResolver.SignalSet.fractionOfCommunalDevicesMatchingCandidate.getter()
{
  v2 = OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_31_8((v1 + *(v2 + 200)));
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_48_6();
  *(v0 + 16) = v5;
}

void ContactResolver.SignalSet.fractionOfCommunalDevicesMatchingCandidate.setter(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_54_4(a1)[2];
  v2 = type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_36_5(*(v2 + 200));
  *(v3 + 16) = v1;
}

uint64_t ContactResolver.SignalSet.fractionOfCommunalDevicesMatchingCandidate.modify()
{
  v0 = OUTLINED_FUNCTION_43();
  v1 = *(type metadata accessor for ContactResolver.SignalSet(v0) + 200);
  return OUTLINED_FUNCTION_88_2();
}

BOOL static ContactResolver.SignalSet.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1DD63F148();
  v5 = OUTLINED_FUNCTION_0(v4);
  v116 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v117 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v118 = v15 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v109 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v109 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB88, &qword_1DD64A0E8);
  v24 = OUTLINED_FUNCTION_7(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1_4();
  v29 = v27 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v109 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v109 - v34;
  if (*a1 != *a2)
  {
    return 0;
  }

  v115 = v4;
  memcpy(v122, a1 + 1, sizeof(v122));
  memcpy(v121, a1 + 1, 0x108uLL);
  memcpy(v123, a2 + 1, sizeof(v123));
  memcpy(v120, a2 + 1, 0x108uLL);
  sub_1DD3C9478(v122, v119);
  sub_1DD3C9478(v123, v119);
  v36 = a1;
  v37 = a2;
  v38 = static ContactQuery.== infix(_:_:)(v121, v120);
  memcpy(v124, v120, sizeof(v124));
  sub_1DD3C9580(v124);
  memcpy(v125, v121, sizeof(v125));
  sub_1DD3C9580(v125);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1DD3C45E4(v36[34], v37[34]) & 1) == 0)
  {
    return 0;
  }

  v39 = *(v36 + 37);
  v126[0] = *(v36 + 35);
  v126[1] = v39;
  v126[2] = *(v36 + 39);
  v40 = *(v37 + 37);
  v119[0] = *(v37 + 35);
  v119[1] = v40;
  v119[2] = *(v37 + 39);
  if (!sub_1DD5C1588(v126, v119))
  {
    return 0;
  }

  if (*(v36 + 328) != *(v37 + 328))
  {
    return 0;
  }

  if (*(v36 + 329) != *(v37 + 329))
  {
    return 0;
  }

  if (*(v36 + 330) != *(v37 + 330))
  {
    return 0;
  }

  if (*(v36 + 331) != *(v37 + 331))
  {
    return 0;
  }

  if (*(v36 + 332) != *(v37 + 332))
  {
    return 0;
  }

  if (*(v36 + 333) != *(v37 + 333))
  {
    return 0;
  }

  if (*(v36 + 334) != *(v37 + 334))
  {
    return 0;
  }

  if (*(v36 + 335) != *(v37 + 335))
  {
    return 0;
  }

  if (*(v36 + 336) != *(v37 + 336))
  {
    return 0;
  }

  if (*(v36 + 337) != *(v37 + 337))
  {
    return 0;
  }

  v113 = v33;
  v114 = v35;
  v111 = v20;
  v112 = v29;
  if (*(v36 + 338) != *(v37 + 338))
  {
    return 0;
  }

  v41 = v22;
  v42 = v36;
  v43 = v37;
  if (*(v36 + 339) != *(v37 + 339) || *(v36 + 340) != *(v37 + 340) || *(v36 + 43) != *(v37 + 43) || *(v36 + 44) != *(v37 + 44) || *(v36 + 360) != *(v37 + 360) || *(v36 + 361) != *(v37 + 361) || *(v36 + 362) != *(v37 + 362) || *(v36 + 363) != *(v37 + 363) || v36[46] != v37[46] || v36[47] != v37[47] || v36[48] != v37[48])
  {
    return 0;
  }

  v110 = type metadata accessor for ContactResolver.SignalSet(0);
  v44 = v110[30];
  v45 = *(v23 + 48);
  v46 = v114;
  sub_1DD4313E0(v36 + v44, v114);
  sub_1DD4313E0(v43 + v44, v46 + v45);
  OUTLINED_FUNCTION_11_15(v46);
  if (v48)
  {
    if (__swift_getEnumTagSinglePayload(&v114[v45], 1, v115) == 1)
    {
      sub_1DD390754(v114, &qword_1ECCDCB80, &qword_1DD64A0E0);
      goto LABEL_36;
    }

LABEL_34:
    v49 = v114;
LABEL_55:
    sub_1DD390754(v49, &qword_1ECCDCB88, &qword_1DD64A0E8);
    return 0;
  }

  v47 = v114;
  sub_1DD4313E0(v114, v41);
  OUTLINED_FUNCTION_11_15(v47 + v45);
  if (v48)
  {
    (*(v116 + 8))(v41, v115);
    goto LABEL_34;
  }

  v50 = v116;
  v51 = v117;
  v52 = v115;
  (*(v116 + 32))(v117, &v114[v45], v115);
  OUTLINED_FUNCTION_1_29();
  sub_1DD433844(v53);
  v54 = v41;
  v55 = sub_1DD63FD98();
  v56 = *(v50 + 8);
  v56(v51, v52);
  v56(v54, v52);
  sub_1DD390754(v114, &qword_1ECCDCB80, &qword_1DD64A0E0);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v57 = v110[31];
  v58 = *(v23 + 48);
  v59 = v113;
  sub_1DD4313E0(v42 + v57, v113);
  sub_1DD4313E0(v43 + v57, v59 + v58);
  OUTLINED_FUNCTION_11_15(v59);
  if (v48)
  {
    OUTLINED_FUNCTION_11_15(&v113[v58]);
    if (v48)
    {
      sub_1DD390754(v113, &qword_1ECCDCB80, &qword_1DD64A0E0);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v60 = v113;
  sub_1DD4313E0(v113, v111);
  OUTLINED_FUNCTION_11_15(v60 + v58);
  if (v61)
  {
    (*(v116 + 8))(v111, v115);
LABEL_44:
    v49 = v113;
    goto LABEL_55;
  }

  v62 = v116;
  v63 = v117;
  v64 = v115;
  (*(v116 + 32))(v117, &v113[v58], v115);
  OUTLINED_FUNCTION_1_29();
  sub_1DD433844(v65);
  v66 = v111;
  v67 = sub_1DD63FD98();
  v68 = *(v62 + 8);
  v68(v63, v64);
  v68(v66, v64);
  sub_1DD390754(v113, &qword_1ECCDCB80, &qword_1DD64A0E0);
  if ((v67 & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  v69 = v110[32];
  v70 = *(v23 + 48);
  v71 = v112;
  sub_1DD4313E0(v42 + v69, v112);
  sub_1DD4313E0(v43 + v69, v71 + v70);
  OUTLINED_FUNCTION_11_15(v71);
  if (!v48)
  {
    v72 = v112;
    sub_1DD4313E0(v112, v118);
    OUTLINED_FUNCTION_11_15(v72 + v70);
    if (!v73)
    {
      v77 = v116;
      v76 = v117;
      v78 = v112;
      v79 = v115;
      (*(v116 + 32))(v117, v112 + v70, v115);
      OUTLINED_FUNCTION_1_29();
      sub_1DD433844(v80);
      v81 = v118;
      v82 = sub_1DD63FD98();
      v83 = *(v77 + 8);
      v83(v76, v79);
      v83(v81, v79);
      sub_1DD390754(v78, &qword_1ECCDCB80, &qword_1DD64A0E0);
      if ((v82 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_59;
    }

    (*(v116 + 8))(v118, v115);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_11_15(v112 + v70);
  if (!v48)
  {
LABEL_54:
    v49 = v112;
    goto LABEL_55;
  }

  sub_1DD390754(v112, &qword_1ECCDCB80, &qword_1DD64A0E0);
LABEL_59:
  v84 = v110[33];
  v85 = *(v42 + v84 + 16);
  v120[0] = *(v42 + v84);
  v120[1] = v85;
  v120[2] = *(v42 + v84 + 32);
  *&v120[3] = *(v42 + v84 + 48);
  v86 = v43 + v84;
  v87 = *(v86 + 16);
  v121[0] = *v86;
  v121[1] = v87;
  v121[2] = *(v86 + 32);
  *&v121[3] = *(v86 + 48);
  if (sub_1DD585198(v120, v121))
  {
    OUTLINED_FUNCTION_9_13(v110[34]);
    if (v48)
    {
      OUTLINED_FUNCTION_9_13(v110[35]);
      if (v48)
      {
        OUTLINED_FUNCTION_9_13(v110[36]);
        if (v48)
        {
          OUTLINED_FUNCTION_9_13(v110[37]);
          if (v48)
          {
            OUTLINED_FUNCTION_9_13(v110[38]);
            if (v48)
            {
              OUTLINED_FUNCTION_9_13(v110[39]);
              if (v48)
              {
                OUTLINED_FUNCTION_9_13(v110[40]);
                if (v48)
                {
                  OUTLINED_FUNCTION_9_13(v110[41]);
                  if (v48)
                  {
                    v88 = v110[42];
                    OUTLINED_FUNCTION_10_19();
                    if (v48)
                    {
                      OUTLINED_FUNCTION_25_6(v89);
                      if ((v92 & 1) == 0 && ((*(v90 + 9) ^ *(v91 + 9)) & 1) == 0)
                      {
                        v93 = v110[43];
                        OUTLINED_FUNCTION_10_19();
                        if (v48)
                        {
                          OUTLINED_FUNCTION_25_6(v94);
                          if ((v97 & 1) == 0)
                          {
                            v98 = *(v95 + 16) == *(v96 + 16) && *(v95 + 24) == *(v96 + 24);
                            if (v98 || (sub_1DD640CD8() & 1) != 0)
                            {
                              OUTLINED_FUNCTION_9_13(v110[44]);
                              if (v48)
                              {
                                OUTLINED_FUNCTION_9_13(v110[45]);
                                if (v48)
                                {
                                  OUTLINED_FUNCTION_9_13(v110[46]);
                                  if (v48)
                                  {
                                    OUTLINED_FUNCTION_9_13(v110[47]);
                                    if (v48)
                                    {
                                      OUTLINED_FUNCTION_9_13(v110[48]);
                                      if (v48)
                                      {
                                        v99 = v110[49];
                                        OUTLINED_FUNCTION_10_19();
                                        if (v48)
                                        {
                                          OUTLINED_FUNCTION_25_6(v100);
                                          if ((v103 & 1) == 0 && ((*(v101 + 9) ^ *(v102 + 9)) & 1) == 0)
                                          {
                                            v104 = v110[50];
                                            OUTLINED_FUNCTION_10_19();
                                            if (v48)
                                            {
                                              OUTLINED_FUNCTION_25_6(v105);
                                              if ((v108 & 1) == 0 && *(v106 + 16) == *(v107 + 16))
                                              {
                                                OUTLINED_FUNCTION_9_13(v110[51]);
                                                if (v48)
                                                {
                                                  if (sub_1DD3C4934(*(v42 + v110[52]), *(v43 + v110[52])))
                                                  {
                                                    OUTLINED_FUNCTION_9_13(v110[53]);
                                                    if (v48)
                                                    {
                                                      OUTLINED_FUNCTION_9_13(v110[54]);
                                                      if (v48)
                                                      {
                                                        OUTLINED_FUNCTION_9_13(v110[55]);
                                                        if (v48)
                                                        {
                                                          OUTLINED_FUNCTION_9_13(v110[56]);
                                                          if (v48)
                                                          {
                                                            OUTLINED_FUNCTION_9_13(v110[57]);
                                                            if (v48)
                                                            {
                                                              OUTLINED_FUNCTION_9_13(v110[58]);
                                                              if (v48)
                                                              {
                                                                OUTLINED_FUNCTION_9_13(v110[59]);
                                                                if (v48)
                                                                {
                                                                  if (*(v42 + v110[60]) == *(v43 + v110[60]))
                                                                  {
                                                                    type metadata accessor for MegadomeEntityFeatures();
                                                                    return static MegadomeEntityFeatures.== infix(_:_:)(*(v42 + v110[61]), *(v43 + v110[61]));
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
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1DD4313E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4314F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E696769726FLL && a2 == 0xED00007972657551;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001DD66B9A0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001DD66B9C0 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001DD66B9E0 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x80000001DD66BA00 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x80000001DD66BA20 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001DD66BA40 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7365676775537369 && a2 == 0xEB00000000646574;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001ALL && 0x80000001DD66BA60 == a2;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000021 && 0x80000001DD66BA80 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x80000001DD667420 == a2;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6F636F7079487369 && a2 == 0xEC0000006D736972;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x80000001DD667400 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x74536D6F72467369 && a2 == 0xEF68637261655364;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x4C4E6D6F72467369 && a2 == 0xEF68637261655358;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x52536D6F72467369 && a2 == 0xEF68637261655352;
                                  if (v21 || (sub_1DD640CD8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x65726F6353786C6ELL && a2 == 0xE800000000000000;
                                    if (v22 || (sub_1DD640CD8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x65726F6353727273 && a2 == 0xE800000000000000;
                                      if (v23 || (sub_1DD640CD8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x746E656365527369 && a2 == 0xE800000000000000;
                                        if (v24 || (sub_1DD640CD8() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000014 && 0x80000001DD667040 == a2;
                                          if (v25 || (sub_1DD640CD8() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000015 && 0x80000001DD667060 == a2;
                                            if (v26 || (sub_1DD640CD8() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000013 && 0x80000001DD667080 == a2;
                                              if (v27 || (sub_1DD640CD8() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x5279636E65636572 && a2 == 0xEB000000006B6E61;
                                                if (v28 || (sub_1DD640CD8() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000017 && 0x80000001DD6670A0 == a2;
                                                  if (v29 || (sub_1DD640CD8() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000018 && 0x80000001DD6670C0 == a2;
                                                    if (v30 || (sub_1DD640CD8() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x5379726F74736968 && a2 == 0xEC00000073746174;
                                                      if (v31 || (sub_1DD640CD8() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000018 && 0x80000001DD66BAB0 == a2;
                                                        if (v32 || (sub_1DD640CD8() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000019 && 0x80000001DD66BAD0 == a2;
                                                          if (v33 || (sub_1DD640CD8() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000013 && 0x80000001DD66BAF0 == a2;
                                                            if (v34 || (sub_1DD640CD8() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x64726143654D7369 && a2 == 0xE800000000000000;
                                                              if (v35 || (sub_1DD640CD8() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000010 && 0x80000001DD667110 == a2;
                                                                if (v36 || (sub_1DD640CD8() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD00000000000001ALL && 0x80000001DD66BB10 == a2;
                                                                  if (v37 || (sub_1DD640CD8() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x6974616C65527369 && a2 == 0xEF7361696C416E6FLL;
                                                                    if (v38 || (sub_1DD640CD8() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000019 && 0x80000001DD66BB30 == a2;
                                                                      if (v39 || (sub_1DD640CD8() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0x45696A6F6D457369 && a2 == 0xEF6465646E617078;
                                                                        if (v40 || (sub_1DD640CD8() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000027 && 0x80000001DD66BB50 == a2;
                                                                          if (v41 || (sub_1DD640CD8() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000027 && 0x80000001DD66BB80 == a2;
                                                                            if (v42 || (sub_1DD640CD8() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD000000000000011 && 0x80000001DD66BBB0 == a2;
                                                                              if (v43 || (sub_1DD640CD8() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000012 && 0x80000001DD66BBD0 == a2;
                                                                                if (v44 || (sub_1DD640CD8() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
                                                                                  if (v45 || (sub_1DD640CD8() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000010 && 0x80000001DD66BBF0 == a2;
                                                                                    if (v46 || (sub_1DD640CD8() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0x6C616D726F4E7369 && a2 == 0xEC00000064657A69;
                                                                                      if (v47 || (sub_1DD640CD8() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD00000000000001ALL && 0x80000001DD66BC10 == a2;
                                                                                        if (v48 || (sub_1DD640CD8() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000018 && 0x80000001DD66BC30 == a2;
                                                                                          if (v49 || (sub_1DD640CD8() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0xD000000000000011 && 0x80000001DD66BC50 == a2;
                                                                                            if (v50 || (sub_1DD640CD8() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0xD00000000000002ALL && 0x80000001DD66BC70 == a2;
                                                                                              if (v51 || (sub_1DD640CD8() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 0x695353554C507369 && a2 == 0xEC0000006C616E67;
                                                                                                if (v52 || (sub_1DD640CD8() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0xD000000000000011 && 0x80000001DD66BCA0 == a2;
                                                                                                  if (v53 || (sub_1DD640CD8() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v54 = a1 == 0xD000000000000021 && 0x80000001DD66BCC0 == a2;
                                                                                                    if (v54 || (sub_1DD640CD8() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v55 = a1 == 0xD000000000000018 && 0x80000001DD66BCF0 == a2;
                                                                                                      if (v55 || (sub_1DD640CD8() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v56 = a1 == 0xD000000000000019 && 0x80000001DD66BD10 == a2;
                                                                                                        if (v56 || (sub_1DD640CD8() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v57 = a1 == 0x6143796C6E4F7369 && a2 == 0xEF6574616469646ELL;
                                                                                                          if (v57 || (sub_1DD640CD8() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v58 = a1 == 0x6E61434743557369 && a2 == 0xEE00657461646964;
                                                                                                            if (v58 || (sub_1DD640CD8() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v59 = a1 == 0x646E614333457369 && a2 == 0xED00006574616469;
                                                                                                              if (v59 || (sub_1DD640CD8() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v60 = a1 == 0xD000000000000015 && 0x80000001DD66BD30 == a2;
                                                                                                                if (v60 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v61 = a1 == 0xD000000000000017 && 0x80000001DD667590 == a2;
                                                                                                                  if (v61 || (sub_1DD640CD8() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else if (a1 == 0xD000000000000016 && 0x80000001DD66BD50 == a2)
                                                                                                                  {

                                                                                                                    return 57;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v63 = sub_1DD640CD8();

                                                                                                                    if (v63)
                                                                                                                    {
                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      return 58;
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

uint64_t sub_1DD4325C0(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      v3 = 0x6E696769726FLL;
      goto LABEL_35;
    case 2:
    case 4:
    case 24:
    case 56:
      return 0xD000000000000017;
    case 3:
    case 13:
    case 57:
      return 0xD000000000000016;
    case 5:
      return 0xD00000000000001CLL;
    case 6:
      return 0xD00000000000001BLL;
    case 7:
      return 0xD000000000000018;
    case 8:
      return 0x7365676775537369;
    case 9:
    case 32:
    case 43:
      return 0xD00000000000001ALL;
    case 10:
    case 49:
      return 0xD000000000000021;
    case 11:
    case 39:
      return 0xD000000000000012;
    case 12:
      return 0x6F636F7079487369;
    case 14:
      return 0x74536D6F72467369;
    case 15:
      return 0x4C4E6D6F72467369;
    case 16:
      return 0x52536D6F72467369;
    case 17:
      v4 = 1400401006;
      goto LABEL_26;
    case 18:
      v4 = 1400009331;
LABEL_26:
      result = v4 | 0x65726F6300000000;
      break;
    case 19:
      result = 0x746E656365527369;
      break;
    case 20:
      result = 0xD000000000000014;
      break;
    case 21:
    case 55:
      result = 0xD000000000000015;
      break;
    case 22:
    case 29:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0x5279636E65636572;
      break;
    case 25:
      result = 0xD000000000000018;
      break;
    case 26:
      result = 0x5379726F74736968;
      break;
    case 27:
      result = 0xD000000000000018;
      break;
    case 28:
    case 34:
    case 51:
      result = 0xD000000000000019;
      break;
    case 30:
      result = 0x64726143654D7369;
      break;
    case 31:
    case 41:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0x6974616C65527369;
      break;
    case 35:
      result = 0x45696A6F6D457369;
      break;
    case 36:
    case 37:
      result = 0xD000000000000027;
      break;
    case 38:
    case 45:
    case 48:
      result = 0xD000000000000011;
      break;
    case 40:
      result = 0x69726F7661467369;
      break;
    case 42:
      v3 = 0x6D726F4E7369;
LABEL_35:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
      break;
    case 44:
      result = 0xD000000000000018;
      break;
    case 46:
      result = 0xD00000000000002ALL;
      break;
    case 47:
      result = 0x695353554C507369;
      break;
    case 50:
      result = 0xD000000000000018;
      break;
    case 52:
      result = 0x6143796C6E4F7369;
      break;
    case 53:
      result = 0x6E61434743557369;
      break;
    case 54:
      result = 0x646E614333457369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD432B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4314F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD432BC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD4325B8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD432BE8(uint64_t a1)
{
  v2 = sub_1DD4337F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD432C24(uint64_t a1)
{
  v2 = sub_1DD4337F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactResolver.SignalSet.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB98, &qword_1DD64A0F0);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22_4();
  v12 = a1[3];
  v13 = a1[4];
  OUTLINED_FUNCTION_44_5(a1);
  sub_1DD4337F0();
  OUTLINED_FUNCTION_45_5();
  sub_1DD640EF8();
  v14 = *v4;
  v90[271] = 0;
  OUTLINED_FUNCTION_8_12();
  sub_1DD640C48();
  if (!v2)
  {
    memcpy(v90, v4 + 1, 0x108uLL);
    memcpy(v89, v4 + 1, sizeof(v89));
    v88[271] = 1;
    sub_1DD3C9478(v90, v88);
    sub_1DD4236C0();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C68();
    memcpy(v88, v89, 0x108uLL);
    sub_1DD3C9580(v88);
    *&v85[0] = v4[34];
    LOBYTE(v81) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBA0, &unk_1DD64A0F8);
    OUTLINED_FUNCTION_22_0();
    sub_1DD43994C(v15);
    OUTLINED_FUNCTION_13();
    sub_1DD640C68();
    v16 = v4[40];
    LOBYTE(v85[0]) = *(v4 + 280);
    v17 = *(v4 + 19);
    *(v85 + 8) = *(v4 + 18);
    *(&v85[1] + 8) = v17;
    *(&v85[2] + 1) = v16;
    LOBYTE(v81) = 3;
    sub_1DD4338A8();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C68();
    v18 = *(v4 + 328);
    OUTLINED_FUNCTION_2_21(4);
    sub_1DD640C28();
    v19 = *(v4 + 329);
    OUTLINED_FUNCTION_2_21(5);
    sub_1DD640C28();
    v20 = *(v4 + 330);
    OUTLINED_FUNCTION_2_21(6);
    sub_1DD640C28();
    v21 = *(v4 + 331);
    OUTLINED_FUNCTION_2_21(7);
    sub_1DD640C28();
    v22 = *(v4 + 332);
    OUTLINED_FUNCTION_2_21(8);
    sub_1DD640C28();
    v23 = *(v4 + 333);
    OUTLINED_FUNCTION_2_21(9);
    sub_1DD640C28();
    v24 = *(v4 + 334);
    OUTLINED_FUNCTION_2_21(10);
    sub_1DD640C28();
    v25 = *(v4 + 335);
    OUTLINED_FUNCTION_2_21(11);
    sub_1DD640C28();
    v26 = *(v4 + 336);
    OUTLINED_FUNCTION_2_21(12);
    sub_1DD640C28();
    v27 = *(v4 + 337);
    OUTLINED_FUNCTION_2_21(13);
    sub_1DD640C28();
    v28 = *(v4 + 338);
    OUTLINED_FUNCTION_2_21(14);
    sub_1DD640C28();
    v29 = *(v4 + 339);
    OUTLINED_FUNCTION_2_21(15);
    sub_1DD640C28();
    v30 = *(v4 + 340);
    OUTLINED_FUNCTION_2_21(16);
    sub_1DD640C28();
    v31 = v4[43];
    LOBYTE(v85[0]) = 17;
    OUTLINED_FUNCTION_13();
    sub_1DD640C38();
    v32 = v4[44];
    LOBYTE(v85[0]) = 18;
    OUTLINED_FUNCTION_13();
    sub_1DD640C38();
    v33 = *(v4 + 360);
    OUTLINED_FUNCTION_2_21(19);
    sub_1DD640C28();
    v34 = *(v4 + 361);
    OUTLINED_FUNCTION_2_21(20);
    sub_1DD640C28();
    v35 = *(v4 + 362);
    OUTLINED_FUNCTION_2_21(21);
    sub_1DD640C28();
    v36 = *(v4 + 363);
    OUTLINED_FUNCTION_2_21(22);
    sub_1DD640C28();
    v37 = v4[46];
    OUTLINED_FUNCTION_2_21(23);
    sub_1DD640C48();
    v38 = v4[47];
    OUTLINED_FUNCTION_2_21(24);
    sub_1DD640C48();
    v39 = v4[48];
    OUTLINED_FUNCTION_2_21(25);
    sub_1DD640C48();
    v91 = type metadata accessor for ContactResolver.SignalSet(0);
    v40 = v91[30];
    LOBYTE(v85[0]) = 26;
    sub_1DD63F148();
    OUTLINED_FUNCTION_1_29();
    sub_1DD433844(v41);
    OUTLINED_FUNCTION_13();
    sub_1DD640C08();
    v42 = v91[31];
    LOBYTE(v85[0]) = 27;
    OUTLINED_FUNCTION_13();
    sub_1DD640C08();
    v43 = v91[32];
    v87 = 28;
    OUTLINED_FUNCTION_13();
    sub_1DD640C08();
    v44 = (v4 + v91[33]);
    v45 = v44[1];
    v85[0] = *v44;
    v85[1] = v45;
    v47 = *v44;
    v46 = v44[1];
    v85[2] = v44[2];
    v86 = *(v44 + 6);
    v81 = v47;
    v82 = v46;
    v83 = v44[2];
    v84 = *(v44 + 6);
    v80[63] = 29;
    sub_1DD4338FC(v85, v80);
    sub_1DD433958();
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C68();
    OUTLINED_FUNCTION_34_6();
    v48 = *(v4 + v91[34]);
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    v49 = *(v4 + v91[35]);
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    v50 = *(v4 + v91[36]);
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    v51 = *(v4 + v91[37]);
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    v52 = *(v4 + v91[38]);
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    v53 = *(v4 + v91[39]);
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    v54 = *(v4 + v91[40]);
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    v56 = *(v4 + v91[41]);
    OUTLINED_FUNCTION_8_12();
    sub_1DD640C28();
    OUTLINED_FUNCTION_26_9((v4 + v91[42]));
    OUTLINED_FUNCTION_50_7();
    sub_1DD433A00();
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_13();
    sub_1DD640C68();
    OUTLINED_FUNCTION_31_8((v4 + v91[43]));
    v58 = *(v57 + 16);
    v59 = *(v57 + 24);
    OUTLINED_FUNCTION_50_7();
    v60 = sub_1DD433A54();

    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_13();
    sub_1DD640C68();

    if (!v60)
    {
      v61 = *(v4 + v91[44]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v62 = *(v4 + v91[45]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v63 = *(v4 + v91[46]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v64 = *(v4 + v91[47]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v65 = *(v4 + v91[48]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      OUTLINED_FUNCTION_26_9((v4 + v91[49]));
      OUTLINED_FUNCTION_50_7();
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_13();
      sub_1DD640C68();
      OUTLINED_FUNCTION_31_8((v4 + v91[50]));
      v67 = *(v66 + 16);
      OUTLINED_FUNCTION_50_7();
      sub_1DD433AA8();
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C68();
      v68 = *(v4 + v91[51]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v78 = *(v4 + v91[52]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBA8, &qword_1DD64A108);
      sub_1DD439CC0(&unk_1EE163948);
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_13();
      sub_1DD640C68();
      v69 = *(v4 + v91[53]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v70 = *(v4 + v91[54]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v71 = *(v4 + v91[55]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v72 = *(v4 + v91[56]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v73 = *(v4 + v91[57]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v74 = *(v4 + v91[58]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v75 = *(v4 + v91[59]);
      OUTLINED_FUNCTION_8_12();
      sub_1DD640C28();
      v76 = *(v4 + v91[60]);
      OUTLINED_FUNCTION_13();
      sub_1DD640C38();
      v79 = *(v4 + v91[61]);
      type metadata accessor for MegadomeEntityFeatures();
      OUTLINED_FUNCTION_24_7();
      sub_1DD433844(v77);
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_13();
      sub_1DD640C68();
    }
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1DD4337F0()
{
  result = qword_1EE165800;
  if (!qword_1EE165800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165800);
  }

  return result;
}

unint64_t sub_1DD433844(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD4338A8()
{
  result = qword_1EE163CE8;
  if (!qword_1EE163CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CE8);
  }

  return result;
}

unint64_t sub_1DD433958()
{
  result = qword_1EE163D08;
  if (!qword_1EE163D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163D08);
  }

  return result;
}

unint64_t sub_1DD433A00()
{
  result = qword_1EE165C18;
  if (!qword_1EE165C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165C18);
  }

  return result;
}

unint64_t sub_1DD433A54()
{
  result = qword_1EE165A20;
  if (!qword_1EE165A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A20);
  }

  return result;
}

unint64_t sub_1DD433AA8()
{
  result = qword_1EE165A50;
  if (!qword_1EE165A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A50);
  }

  return result;
}

uint64_t ContactResolver.SignalSet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a1;
  v114 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v90 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v76 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBB0, &qword_1DD64A110);
  v13 = OUTLINED_FUNCTION_0(v12);
  v115 = v14;
  v116 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  v118 = &v76 - v18;
  v19 = type metadata accessor for ContactResolver.SignalSet(0);
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  *v24 = xmmword_1DD64A0D0;
  *(v24 + 16) = 0xE000000000000000;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 40) = 0xE000000000000000;
  *(v24 + 48) = 0;
  *(v24 + 56) = 0xE000000000000000;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0xE000000000000000;
  *(v24 + 80) = 0;
  *(v24 + 88) = 0xE000000000000000;
  *(v24 + 96) = 0;
  *(v24 + 104) = 0xE000000000000000;
  *(v24 + 112) = 0;
  *(v24 + 120) = 0xE000000000000000;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0xE000000000000000;
  *(v24 + 144) = 0;
  *(v24 + 152) = 0xE000000000000000;
  *(v24 + 160) = 0;
  *(v24 + 168) = 0xE000000000000000;
  *(v24 + 208) = 0u;
  *(v24 + 224) = 0u;
  *(v24 + 176) = 0u;
  *(v24 + 192) = 0u;
  v25 = MEMORY[0x1E69E7CC0];
  *(v24 + 240) = 0;
  *(v24 + 248) = v25;
  *(v24 + 256) = 1;
  *(v24 + 264) = 0;
  *(v24 + 272) = v25;
  *(v24 + 280) = 0;
  *(v24 + 288) = 0u;
  *(v24 + 304) = 0u;
  *(v24 + 320) = 0u;
  *(v23 - v22 + 333) = 0;
  *(v24 + 360) = 0;
  *(v24 + 344) = 0;
  *(v24 + 352) = 0;
  *(v24 + 376) = 0;
  *(v24 + 384) = 0;
  *(v24 + 368) = 0;
  v26 = v20[32];
  v27 = sub_1DD63F148();
  v80 = v26;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  v81 = v20[33];
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v27);
  v82 = v20[34];
  v83 = v27;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v27);
  v37 = v24 + v20[35];
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0u;
  *(v37 + 40) = 0u;
  v85 = v20[36];
  *(v24 + v85) = 0;
  v86 = v20[37];
  *(v24 + v86) = 0;
  v88 = v20[38];
  *(v24 + v88) = 0;
  v89 = v20[39];
  *(v24 + v89) = 0;
  v91 = v20[40];
  *(v24 + v91) = 0;
  v92 = v20[41];
  *(v24 + v92) = 0;
  v93 = v20[42];
  *(v24 + v93) = 0;
  v94 = v20[43];
  *(v24 + v94) = 0;
  v38 = v24 + v20[44];
  *v38 = 0;
  v95 = v38;
  *(v38 + 8) = 0;
  v39 = v24 + v20[45];
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 16) = 0;
  *(v39 + 24) = 0xE000000000000000;
  v96 = v20[46];
  *(v24 + v96) = 0;
  v97 = v20[47];
  *(v24 + v97) = 0;
  v98 = v20[48];
  *(v24 + v98) = 0;
  v99 = v20[49];
  *(v24 + v99) = 0;
  v100 = v20[50];
  *(v24 + v100) = 0;
  v40 = v24 + v20[51];
  *v40 = 0;
  v101 = v40;
  *(v40 + 8) = 0;
  v41 = v24 + v20[52];
  *v41 = 0;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  v102 = v20[53];
  *(v24 + v102) = 0;
  v103 = v20[54];
  *(v24 + v103) = v25;
  v104 = v20[55];
  *(v24 + v104) = 0;
  v105 = v20[56];
  *(v24 + v105) = 0;
  v106 = v20[57];
  *(v24 + v106) = 0;
  v107 = v20[58];
  *(v24 + v107) = 0;
  v108 = v20[59];
  *(v24 + v108) = 0;
  v109 = v20[60];
  *(v24 + v109) = 0;
  v110 = v20[61];
  *(v24 + v110) = 0;
  v111 = v20[62];
  *(v24 + v111) = 0;
  v42 = v20[63];
  v112 = type metadata accessor for MegadomeEntityFeatures();
  v43 = swift_allocObject();
  bzero((v43 + 16), 0x3B8uLL);
  v113 = v42;
  *(v24 + v42) = v43;
  v44 = v137[4];
  __swift_project_boxed_opaque_existential_1(v137, v137[3]);
  sub_1DD4337F0();
  v45 = v117;
  sub_1DD640ED8();
  if (!v45)
  {
    v77 = v37;
    v78 = v39;
    v79 = v41;
    v117 = v43;
    v46 = v115;
    v136[0] = 0;
    OUTLINED_FUNCTION_14_15();
    *v24 = sub_1DD640B58();
    v135[271] = 1;
    sub_1DD42366C();
    sub_1DD640B78();
    memcpy(v134, v136, sizeof(v134));
    memcpy(v135, (v24 + 8), 0x108uLL);
    sub_1DD3C9580(v135);
    memcpy((v24 + 8), v134, 0x108uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBA0, &unk_1DD64A0F8);
    LOBYTE(v129[0]) = 2;
    OUTLINED_FUNCTION_23_10();
    sub_1DD43994C(v47);
    sub_1DD640B78();
    *(v24 + 272) = *&v132[0];
    LOBYTE(v129[0]) = 3;
    sub_1DD439AAC();
    sub_1DD640B78();
    v49 = *(&v132[2] + 1);
    *(v24 + 280) = v132[0];
    v50 = *(&v132[1] + 8);
    *(v24 + 288) = *(v132 + 8);
    *(v24 + 304) = v50;
    *(v24 + 320) = v49;
    OUTLINED_FUNCTION_16_11(4);
    *(v24 + 328) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_16_11(5);
    OUTLINED_FUNCTION_14_15();
    *(v24 + 329) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_16_11(6);
    OUTLINED_FUNCTION_14_15();
    *(v24 + 330) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_16_11(7);
    OUTLINED_FUNCTION_14_15();
    *(v24 + 331) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_16_11(8);
    OUTLINED_FUNCTION_14_15();
    *(v24 + 332) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_16_11(9);
    OUTLINED_FUNCTION_14_15();
    *(v24 + 333) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(10);
    *(v24 + 334) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(11);
    *(v24 + 335) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(12);
    *(v24 + 336) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(13);
    *(v24 + 337) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(14);
    *(v24 + 338) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(15);
    *(v24 + 339) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(16);
    *(v24 + 340) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(17);
    sub_1DD640B48();
    *(v24 + 344) = v51;
    OUTLINED_FUNCTION_5_23(18);
    sub_1DD640B48();
    *(v24 + 352) = v52;
    OUTLINED_FUNCTION_5_23(19);
    *(v24 + 360) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(20);
    *(v24 + 361) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(21);
    *(v24 + 362) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(22);
    *(v24 + 363) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_5_23(23);
    *(v24 + 368) = sub_1DD640B58();
    OUTLINED_FUNCTION_5_23(24);
    *(v24 + 376) = sub_1DD640B58();
    OUTLINED_FUNCTION_5_23(25);
    *(v24 + 384) = sub_1DD640B58();
    LOBYTE(v132[0]) = 26;
    OUTLINED_FUNCTION_1_29();
    sub_1DD433844(v53);
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B18();
    sub_1DD439B00(v84, v24 + v80);
    LOBYTE(v132[0]) = 27;
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B18();
    sub_1DD439B00(v87, v24 + v81);
    LOBYTE(v132[0]) = 28;
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B18();
    sub_1DD439B00(v90, v24 + v82);
    v131 = 29;
    sub_1DD439B70();
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    v125 = v132[0];
    v126 = v132[1];
    v127 = v132[2];
    v128 = v133;
    v54 = v77;
    v55 = *(v77 + 16);
    v129[0] = *v77;
    v129[1] = v55;
    v129[2] = *(v77 + 32);
    v130 = *(v77 + 48);
    sub_1DD4339AC(v129);
    v56 = v126;
    *v54 = v125;
    *(v54 + 16) = v56;
    *(v54 + 32) = v127;
    *(v54 + 48) = v128;
    OUTLINED_FUNCTION_3_20(30);
    *(v24 + v85) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(31);
    *(v24 + v86) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(32);
    *(v24 + v88) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(33);
    *(v24 + v89) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(34);
    *(v24 + v91) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(35);
    *(v24 + v92) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(36);
    *(v24 + v93) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(37);
    *(v24 + v94) = sub_1DD640B38() & 1;
    v124 = 38;
    sub_1DD439BC4();
    OUTLINED_FUNCTION_17_13();
    v94 = v57;
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    v58 = v120;
    v59 = v121;
    v60 = v95;
    *v95 = v119;
    *(v60 + 8) = v58;
    *(v60 + 9) = v59;
    v124 = 39;
    sub_1DD439C18();
    OUTLINED_FUNCTION_17_13();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    v61 = v119;
    v62 = v120;
    v63 = v122;
    v64 = v123;
    v65 = v78;
    v66 = *(v78 + 24);

    *v65 = v61;
    *(v65 + 8) = v62;
    *(v65 + 16) = v63;
    *(v65 + 24) = v64;
    OUTLINED_FUNCTION_3_20(40);
    *(v24 + v96) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(41);
    *(v24 + v97) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(42);
    *(v24 + v98) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(43);
    *(v24 + v99) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(44);
    *(v24 + v100) = sub_1DD640B38() & 1;
    v124 = 45;
    OUTLINED_FUNCTION_17_13();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    v67 = v120;
    v68 = v121;
    v69 = v101;
    *v101 = v119;
    *(v69 + 8) = v67;
    *(v69 + 9) = v68;
    v124 = 46;
    sub_1DD439C6C();
    OUTLINED_FUNCTION_17_13();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    v70 = v120;
    v71 = v122;
    v72 = v79;
    *v79 = v119;
    *(v72 + 8) = v70;
    v72[2] = v71;
    *(v24 + v102) = OUTLINED_FUNCTION_55_4(47) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCBA8, &qword_1DD64A108);
    v124 = 48;
    sub_1DD439CC0(&unk_1EE160318);
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    *(v24 + v103) = v119;
    *(v24 + v104) = OUTLINED_FUNCTION_55_4(49) & 1;
    OUTLINED_FUNCTION_3_20(50);
    *(v24 + v105) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(51);
    *(v24 + v106) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(52);
    *(v24 + v107) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(53);
    *(v24 + v108) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(54);
    *(v24 + v109) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(55);
    *(v24 + v110) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_20(56);
    sub_1DD640B48();
    *(v24 + v111) = v73;
    v124 = 57;
    OUTLINED_FUNCTION_24_7();
    sub_1DD433844(v74);
    OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_14_15();
    sub_1DD640B78();
    (*(v46 + 8))(v118, v116);

    v75 = v114;
    *(v24 + v113) = v119;
    sub_1DD439FE4(v24, v75, type metadata accessor for ContactResolver.SignalSet);
  }

  __swift_destroy_boxed_opaque_existential_1(v137);
  return sub_1DD439F90();
}