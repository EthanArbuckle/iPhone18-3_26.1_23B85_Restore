unint64_t sub_2313F8000()
{
  result = qword_27DD4E000;
  if (!qword_27DD4E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E000);
  }

  return result;
}

unint64_t sub_2313F80B4()
{
  result = qword_27DD4E080;
  if (!qword_27DD4E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4E080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceEngineInteractionStore.EventId.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2313F8198(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_231476CA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2313F81DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2313F8224(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for DonorStream(unsigned __int8 *a1, unsigned int a2)
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

uint64_t UserDonator.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v82 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED68, &qword_2314812A8);
  OUTLINED_FUNCTION_4(v85);
  v81 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13();
  v84 = v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED70, &qword_2314812B0);
  OUTLINED_FUNCTION_4(v78);
  v76 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13();
  v80 = v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED78, &qword_2314812B8);
  OUTLINED_FUNCTION_4(v79);
  v77 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED80, &qword_2314812C0);
  OUTLINED_FUNCTION_4(v19);
  v75 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v23);
  v25 = &v71 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED88, &unk_2314812C8);
  OUTLINED_FUNCTION_4(v26);
  v83 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v30);
  v32 = &v71 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313F8AC4();
  v34 = v86;
  sub_231478948();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v72 = v19;
  v73 = v25;
  v74 = v18;
  v35 = v84;
  v36 = v85;
  v86 = a1;
  v37 = sub_2314786D8();
  sub_2313F8D60(v37, 0);
  if (v39 == v40 >> 1)
  {
    goto LABEL_7;
  }

  v71 = 0;
  if (v39 >= (v40 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2313F8968);
  }

  v41 = *(v38 + v39);
  sub_2313F8D58(v39 + 1);
  v43 = v42;
  v45 = v44;
  swift_unknownObjectRelease();
  if (v43 != v45 >> 1)
  {
LABEL_7:
    v54 = sub_231478548();
    swift_allocError();
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7B0, &qword_23147A870) + 48);
    *v56 = &type metadata for UserDonator;
    sub_231478658();
    sub_231478538();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    v58 = OUTLINED_FUNCTION_1_25();
    v59(v58);
    a1 = v86;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v46 = v41;
  v48 = v81;
  v47 = v82;
  switch(v46)
  {
    case 1:
      v88 = 1;
      sub_231473224();
      OUTLINED_FUNCTION_3_13();
      v66 = sub_231478688();
      v67 = v83;
      v52 = v66;
      v53 = v68;
      swift_unknownObjectRelease();
      v69 = OUTLINED_FUNCTION_8_22();
      v70(v69);
      (*(v67 + 8))(v32, v26);
      break;
    case 2:
      v89 = 2;
      sub_2314731D0();
      v61 = v80;
      OUTLINED_FUNCTION_3_13();
      swift_unknownObjectRelease();
      (*(v76 + 8))(v61, v78);
      v62 = OUTLINED_FUNCTION_1_25();
      v63(v62);
      v52 = 0;
      v53 = 1;
      break;
    case 3:
      v90 = 3;
      sub_2313F8E2C();
      OUTLINED_FUNCTION_3_13();
      swift_unknownObjectRelease();
      (*(v48 + 8))(v35, v36);
      v64 = OUTLINED_FUNCTION_1_25();
      v65(v64);
      v52 = 0;
      v53 = 2;
      break;
    default:
      v87 = 0;
      sub_231473278();
      v49 = v73;
      OUTLINED_FUNCTION_3_13();
      swift_unknownObjectRelease();
      (*(v75 + 8))(v49, v72);
      v50 = OUTLINED_FUNCTION_1_25();
      v51(v50);
      v52 = 0;
      v53 = 0;
      break;
  }

  *v47 = v52;
  v47[1] = v53;
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

unint64_t sub_2313F89D8()
{
  result = qword_280C3C628;
  if (!qword_280C3C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C628);
  }

  return result;
}

uint64_t sub_2313F8A2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2313F8224(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2313F8A58()
{
  result = qword_27DD4D758;
  if (!qword_27DD4D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D758);
  }

  return result;
}

unint64_t sub_2313F8AC4()
{
  result = qword_27DD4ED40;
  if (!qword_27DD4ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED40);
  }

  return result;
}

uint64_t sub_2313F8B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2313F8B40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2313F8B40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7A696E676F636572 && a2 == 0xEE00726573556465;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000231483F50 == a2;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x55746C7561666564 && a2 == 0xEB00000000726573)
      {

        return 3;
      }

      else
      {
        v9 = sub_2314787C8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DonationConversionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2313F8D68(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2313F8DB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2313F8E2C()
{
  result = qword_27DD4ED48;
  if (!qword_27DD4ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED48);
  }

  return result;
}

unint64_t sub_2313F8E88(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x7A696E676F636572;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x55746C7561666564;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_2313F8F3C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2313F9008);
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

unint64_t sub_2313F9030()
{
  result = qword_27DD4D760;
  if (!qword_27DD4D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InteractionDevicePlatform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t OUTLINED_FUNCTION_67()
{
  v2 = *(v0 - 96);

  return swift_storeEnumTagMultiPayload();
}

uint64_t Donation.userDonator.getter()
{
  OUTLINED_FUNCTION_92();
  v2 = (v1 + *(type metadata accessor for Donation() + 32));
  v3 = *v2;
  v4 = v2[1];
  *v0 = *v2;
  v0[1] = v4;

  return sub_2313E6C34(v3, v4);
}

void static InteractionStore.inProcess(user:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  v7 = &unk_28460C4B0;
  v3 = sub_2313E3100();
  v8 = v3;
  LOBYTE(v6[0]) = 0;
  v4 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v6);
  v7 = &unk_28460C4B0;
  v8 = v3;
  OUTLINED_FUNCTION_19_7();
  v5 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v6);
  v7 = &unk_28460C4B0;
  v8 = v3;
  OUTLINED_FUNCTION_19_7();
  LOBYTE(v3) = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v6);
  LOBYTE(v6[0]) = v4 & 1;
  BYTE1(v6[0]) = v5 & 1;
  BYTE2(v6[0]) = v3 & 1;
  sub_2313E4D38(v6, &v9, a2);
}

uint64_t sub_2313F92E8()
{
  OUTLINED_FUNCTION_92();
  sub_231477CB8();
  sub_2313F7138(&qword_280C3C180, MEMORY[0x277D85198]);
  v0 = OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_2313FD260(&qword_280C3C140, &unk_27DD4EA90, &unk_23147F7E0);
  return sub_231478498();
}

uint64_t OUTLINED_FUNCTION_123_0()
{
  v2 = *(v0 - 304);
  v3 = *(v0 - 312);
  v4 = *(v0 - 296);

  return sub_2313ED944(v2, v3, v4);
}

uint64_t sub_2313F93F0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_231477C98();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2313F9468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v9 = *(*(v82 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v82);
  v83 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = (&v72 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = &v72 - v15;
  v16 = type metadata accessor for Interaction(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v72 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v72 - v24;
  v79 = type metadata accessor for _NewInteraction(0);
  v26 = *(*(v79 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v79);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = (&v72 - v30);
  swift_beginAccess();
  v32 = *(a1 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    v75 = v20;
    v81 = v16;
    *(a1 + 16) = v34;
    if (qword_280C3CF50 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v35 = sub_231477B68();
  v36 = __swift_project_value_buffer(v35, qword_280C3D970);
  sub_2313EB328();
  sub_2313EB328();

  v76 = v36;
  v37 = sub_231477B58();
  v38 = sub_231478298();
  v39 = os_log_type_enabled(v37, v38);
  v80 = a2;
  v78 = v25;
  v77 = v23;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v74 = a5;
    v41 = v40;
    v42 = swift_slowAlloc();
    v73 = a4;
    v43 = v42;
    v87 = v42;
    *v41 = 136315650;
    v44 = *v31;
    v45 = v31[1];

    sub_2313EB380();
    v46 = sub_2313EB684(v44, v45, &v87);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2048;
    v47 = *&v29[*(v79 + 64)];
    sub_2313EB380();
    *(v41 + 14) = v47;
    *(v41 + 22) = 2048;
    a2 = v80;
    swift_beginAccess();
    *(v41 + 24) = *(a1 + 16);

    _os_log_impl(&dword_2313E1000, v37, v38, "Track the interaction: %s, contentHash: %ld with %ld", v41, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v48 = v43;
    a4 = v73;
    MEMORY[0x23192F1F0](v48, -1, -1);
    MEMORY[0x23192F1F0](v41, -1, -1);
  }

  else
  {
    sub_2313EB380();

    sub_2313EB380();
  }

  v49 = a2[1];
  v50 = v86;
  *v86 = *a2;
  v50[1] = v49;
  type metadata accessor for QueryValue();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v91 = 0;
  sub_2313E93D4();

  v51 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  sub_2313E8CDC();
  v52 = v87;
  v53 = v88;
  v54 = v89;
  v55 = v90;
  v56 = v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = *(v51 + 16);
    sub_2313F3244();
    v56 = v70;
  }

  v57 = *(v56 + 16);
  if (v57 >= *(v56 + 24) >> 1)
  {
    sub_2313F3244();
    v56 = v71;
  }

  swift_bridgeObjectRelease_n();
  sub_2313E937C(v86, &unk_27DD4D680, &qword_2314795C0);
  *(v56 + 16) = v57 + 1;
  v58 = v56 + 32 * v57;
  *(v58 + 32) = v52;
  *(v58 + 40) = v53;
  *(v58 + 48) = v54;
  *(v58 + 56) = v55;
  v87 = v51;
  v88 = v56;
  v89 = v91;
  v59 = v85;
  sub_2313FEB98();

  if (__swift_getEnumTagSinglePayload(v59, 1, v81) == 1)
  {
    return sub_2313E937C(v59, &qword_27DD4D690, &qword_231479AD0);
  }

  sub_2313F31EC();
  sub_2313EB328();
  v61 = sub_231477B58();
  v62 = sub_231478298();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v87 = v64;
    *v63 = 136315138;
    sub_2313EB328();
    v65 = sub_231477EB8();
    v67 = v66;
    sub_2313EB380();
    v68 = sub_2313EB684(v65, v67, &v87);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_2313E1000, v61, v62, "Found the interaction: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x23192F1F0](v64, -1, -1);
    MEMORY[0x23192F1F0](v63, -1, -1);
  }

  else
  {

    sub_2313EB380();
  }

  if (sub_231438658(v80))
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
    swift_getObjectType();
    sub_231478388();
  }

  return sub_2313EB380();
}

void sub_2313F9CA4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for _NewInteraction(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_0();
  v68 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  OUTLINED_FUNCTION_14(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - v15;
  v66 = type metadata accessor for Interaction(0);
  v17 = OUTLINED_FUNCTION_3(v66);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_0();
  v65 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D988, &unk_23147A270);
  OUTLINED_FUNCTION_14(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v24);
  v26 = &v65 - v25;
  v27 = a1[4];
  v28 = a1[5];
  v29 = a1[6];
  v30 = a1[7];
  v31 = *(v8 + 72);
  v67 = a1;
  v32 = *(a1 + v31);
  *&v70 = v27;
  *(&v70 + 1) = v28;
  v71 = v29;
  v72 = v30;
  v73 = v29;
  v74 = v30;
  v75 = v32;
  v33 = *(v3 + 16);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  v35 = *(v34 + 48);
  OUTLINED_FUNCTION_1_21();
  sub_2314054F0();
  *&v26[v35] = a3;
  v36 = v3;
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v34);
  swift_bridgeObjectRetain_n();

  sub_23140620C(v26, &v70);
  v38 = *(a2 + 64);
  v37 = *(a2 + 72);
  v39 = v38 == 0xD000000000000011 && 0x8000000231482700 == v37;
  if (v39 || (v40 = *(a2 + 64), v41 = *(a2 + 72), (sub_2314787C8() & 1) != 0))
  {
    v42 = *(v3 + 24);

    OUTLINED_FUNCTION_14_12();
    v45 = sub_231406EA0(v43, v44);

    sub_231460790(v38, v37, v45);

    v46 = v66;
    if (__swift_getEnumTagSinglePayload(v16, 1, v66) == 1)
    {
      v47 = sub_2313E937C(v16, &qword_27DD4D690, &qword_231479AD0);
      v48 = *(v36 + 24);
      MEMORY[0x28223BE20](v47);
      OUTLINED_FUNCTION_18_7();
      sub_23140A904();
    }

    else
    {
      v49 = v65;
      sub_231461468();
      v50 = *(v46 + 48);
      v51 = sub_231476C18();
      if (v51)
      {
        v52 = *(v36 + 24);
        MEMORY[0x28223BE20](v51);
        OUTLINED_FUNCTION_18_7();
        sub_23140A904();
      }

      sub_231405CC4(v49, type metadata accessor for Interaction);
    }
  }

  sub_2314061B4();
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v53 = sub_231477B68();
  __swift_project_value_buffer(v53, qword_280C3D970);
  v54 = v68;
  sub_2314054F0();

  v55 = sub_231477B58();
  v56 = sub_2314782A8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v69 = v58;
    *v57 = 136315394;
    v59 = *v54;
    v60 = v54[1];

    OUTLINED_FUNCTION_4_14();
    v61 = OUTLINED_FUNCTION_17();
    v64 = sub_2313EB684(v61, v62, v63);

    *(v57 + 4) = v64;
    *(v57 + 12) = 2048;
    *(v57 + 14) = sub_231405C58();

    _os_log_impl(&dword_2313E1000, v55, v56, "Cached donation for %s: cacheSize %ld", v57, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x23192F1F0](v58, -1, -1);
    MEMORY[0x23192F1F0](v57, -1, -1);
  }

  else
  {

    OUTLINED_FUNCTION_4_14();
  }
}

uint64_t sub_2313FA1B8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = sub_231477E58();
  CanLearnFromApp = SGSiriCanLearnFromApp(v3);

  return CanLearnFromApp;
}

uint64_t sub_2313FA260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Interaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 Donation.init(interaction:entities:)()
{
  OUTLINED_FUNCTION_73();
  v3 = v2;
  v4 = type metadata accessor for Donation();
  v5 = OUTLINED_FUNCTION_132_0(v4);
  v7 = v3 + v6;
  *(v3 + v6) = xmmword_231479AA0;
  v8 = v5[9];
  v9 = v5[10];
  *(v3 + v9) = 0;
  *(v3 + v5[7]) = 0;
  OUTLINED_FUNCTION_9_2();
  sub_2313F31EC();
  *(v3 + *(v1 + 20)) = v0;
  sub_2313EADE8(*v7, *(v7 + 8));
  result = xmmword_231479AA0;
  *v7 = xmmword_231479AA0;
  *(v3 + v8) = 1;
  *(v3 + v9) = 0;
  return result;
}

BOOL sub_2313FA388(void *a1, double a2)
{
  v4 = type metadata accessor for Interaction(0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = type metadata accessor for Donation();
  v12 = OUTLINED_FUNCTION_14(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = a1 + *(v4 + 48);
  sub_231476BC8();
  v20 = v19;
  v21 = a1[8];
  v43 = a1[9];
  v22 = a1[6];
  v23 = a1[7];
  v24 = sub_2313FA690(&unk_2846085E8);
  v25 = sub_2313FA690(&unk_284608648);
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v26 = sub_231477B68();
  __swift_project_value_buffer(v26, qword_280C3D970);
  sub_2313F4BF8(a1, v17, type metadata accessor for Donation);
  v27 = sub_231477B58();
  v28 = sub_2314782A8();
  if (os_log_type_enabled(v27, v28))
  {
    v42 = v22;
    v29 = swift_slowAlloc();
    v41 = v21;
    v30 = v23;
    v31 = swift_slowAlloc();
    v44 = v31;
    *v29 = 136315650;
    sub_2313F4BF8(v17, v10, type metadata accessor for Interaction);
    v32 = sub_231477EB8();
    v34 = v33;
    sub_231404F7C(v17);
    v35 = sub_2313EB684(v32, v34, &v44);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2048;
    *(v29 + 14) = a2;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v20;
    _os_log_impl(&dword_2313E1000, v27, v28, "Checking the interaction StartDate with interaction %s, donatedTs: %f, startDateTs: %f", v29, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v36 = v31;
    v23 = v30;
    v21 = v41;
    MEMORY[0x23192F1F0](v36, -1, -1);
    v37 = v29;
    v22 = v42;
    MEMORY[0x23192F1F0](v37, -1, -1);
  }

  else
  {

    sub_231404F7C(v17);
  }

  v38 = sub_231405B6C(v21, v43, v24);

  if (v38)
  {
    v39 = sub_231405B6C(v22, v23, v25);

    if (v39)
    {
      return v20 <= a2 + -86400.0;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2313FA690(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D558, &qword_231479560);
  result = sub_2314784C8();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_2314788E8();

    sub_231477F38();
    result = sub_231478918();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_2314787C8() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2313FA820()
{
  v2 = *v0;
  if (sub_231477268())
  {
    return 0;
  }

  sub_2314770E8();
  sub_231477628();

  sub_231477808();
  OUTLINED_FUNCTION_9_14();

  if (!v1)
  {
    result = v4;
    if (!v4)
    {
      sub_231477278();
      return 0;
    }
  }

  return result;
}

void sub_2313FA928()
{
  OUTLINED_FUNCTION_64();
  HIDWORD(v97) = v2;
  HIDWORD(v101) = v3;
  v105 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  v8 = OUTLINED_FUNCTION_4(v7);
  v103 = v9;
  v104 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v98 = v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39();
  v99 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39();
  v100 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_81();
  v102 = v18;
  OUTLINED_FUNCTION_47();
  v19 = sub_2314776A8();
  v20 = OUTLINED_FUNCTION_4(v19);
  v107 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v24 = sub_231476F88();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2();
  v32 = v31 - v30;
  v33 = v6[1];
  v112 = *v6;
  v113[0] = v33;
  *(v113 + 9) = *(v6 + 25);
  v34 = *v0;
  v35 = *(v0 + 8);
  v36 = *(v0 + 16);
  v37 = sub_2313F4D04();
  if (!v1)
  {
    v108 = v24;
    v109 = v32;
    v110 = v19;
    HIDWORD(v95) = v36;
    v96 = v35;
    v92 = v34;
    v93 = v37;
    v94 = 0;
    v38 = *(v105 + 16);
    v39 = MEMORY[0x277D84F90];
    if (v38)
    {
      *&v112 = MEMORY[0x277D84F90];
      v40 = OUTLINED_FUNCTION_47_1();
      sub_2314051E0(v40, v41, v42);
      v43 = 0;
      v44 = v112;
      v111 = (v105 + 32);
      v106 = (v107 + 8);
      v107 = v27 + 32;
      while (2)
      {
        switch(v111[v43])
        {
          case 1u:
            OUTLINED_FUNCTION_189();
            goto LABEL_14;
          case 2u:
            OUTLINED_FUNCTION_186();
            goto LABEL_14;
          case 4u:
            OUTLINED_FUNCTION_86_0();
            goto LABEL_14;
          case 5u:
            OUTLINED_FUNCTION_108_0();
            goto LABEL_14;
          case 6u:
            OUTLINED_FUNCTION_85_0();
            goto LABEL_14;
          case 7u:
            if (qword_280C3BC58 != -1)
            {
              OUTLINED_FUNCTION_11_14();
              swift_once();
            }

            v45 = sub_2314770D8();
            __swift_project_value_buffer(v45, qword_280C3D818);
            OUTLINED_FUNCTION_45_0();
            goto LABEL_22;
          case 8u:
            if (qword_27DD4D280 != -1)
            {
              OUTLINED_FUNCTION_10_12();
              swift_once();
            }

            v53 = sub_2314770D8();
            __swift_project_value_buffer(v53, qword_27DD5ACE0);
            OUTLINED_FUNCTION_45_0();
LABEL_22:
            sub_231477508();
            goto LABEL_15;
          case 9u:
            OUTLINED_FUNCTION_137_0();
            goto LABEL_14;
          default:
LABEL_14:
            sub_2314776B8();
            sub_2314774F8();
            v46 = *v106;
            v47 = OUTLINED_FUNCTION_134_0();
            v48(v47);
LABEL_15:
            *&v112 = v44;
            v50 = *(v44 + 16);
            v49 = *(v44 + 24);
            if (v50 >= v49 >> 1)
            {
              v54 = OUTLINED_FUNCTION_20(v49);
              sub_2314051E0(v54, v50 + 1, 1);
              v44 = v112;
            }

            ++v43;
            *(v44 + 16) = v50 + 1;
            v51 = *(v27 + 80);
            OUTLINED_FUNCTION_59();
            (*(v27 + 32))(v44 + v52 + *(v27 + 72) * v50, v109);
            if (v38 != v43)
            {
              continue;
            }

            v55 = OUTLINED_FUNCTION_47_1();
            sub_23140557C(v55, v56, v57);
            v58 = MEMORY[0x277D0B7F0];
            v27 = MEMORY[0x277D0B728];
            while (2)
            {
              v59 = *v111++;
              v60 = v110;
              switch(v59)
              {
                case 1:
                  OUTLINED_FUNCTION_170();
                  goto LABEL_33;
                case 2:
                  OUTLINED_FUNCTION_163();
                  goto LABEL_33;
                case 4:
                  OUTLINED_FUNCTION_82_0();
                  goto LABEL_33;
                case 5:
                  OUTLINED_FUNCTION_104_0();
                  goto LABEL_33;
                case 6:
                  OUTLINED_FUNCTION_81_0();
                  goto LABEL_33;
                case 7:
                  if (qword_280C3BC58 != -1)
                  {
                    OUTLINED_FUNCTION_11_14();
                    swift_once();
                  }

                  v61 = sub_2314770D8();
                  v62 = v61;
                  v63 = qword_280C3D818;
                  goto LABEL_41;
                case 8:
                  if (qword_27DD4D280 != -1)
                  {
                    OUTLINED_FUNCTION_10_12();
                    swift_once();
                  }

                  v61 = sub_2314770D8();
                  v62 = v61;
                  v63 = qword_27DD5ACE0;
LABEL_41:
                  __swift_project_value_buffer(v61, v63);
                  *(&v113[0] + 1) = v62;
                  *&v113[1] = v27;
                  __swift_allocate_boxed_opaque_existential_1(&v112);
                  OUTLINED_FUNCTION_38_1(v62);
                  (*(v66 + 16))();
                  goto LABEL_34;
                case 9:
                  OUTLINED_FUNCTION_128_0();
                  goto LABEL_33;
                default:
LABEL_33:
                  *(&v113[0] + 1) = v60;
                  *&v113[1] = v58;
                  __swift_allocate_boxed_opaque_existential_1(&v112);
                  sub_2314776B8();
LABEL_34:
                  v65 = *(v39 + 16);
                  v64 = *(v39 + 24);
                  if (v65 >= v64 >> 1)
                  {
                    v67 = OUTLINED_FUNCTION_20(v64);
                    sub_23140557C(v67, v65 + 1, 1);
                  }

                  *(v39 + 16) = v65 + 1;
                  sub_2313F198C(&v112, v39 + 40 * v65 + 32);
                  if (--v38)
                  {
                    continue;
                  }

                  v68 = v104;
                  OUTLINED_FUNCTION_127_0();
                  v78 = BYTE4(v95);
                  break;
              }

              break;
            }

            break;
        }

        break;
      }
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_127_0();
      v78 = BYTE4(v95);
      v68 = v79;
    }

    v80 = v92;
    *&v112 = v92;
    *(&v112 + 1) = v77;
    LOBYTE(v113[0]) = v78;
    sub_2313FEEDC(v76 & 1, v69, v70, v71, v72, v73, v74, v75, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
    sub_231405268(v44);

    OUTLINED_FUNCTION_2_10();
    sub_2313ED944(v81, &qword_27DD4E0B0, v82);
    OUTLINED_FUNCTION_139_0();
    sub_2314773D8();

    v83 = *(v103 + 8);
    v83(v27, v68);
    OUTLINED_FUNCTION_54_1();
    sub_2313ED944(v84, &qword_27DD4E0B0, &qword_23147CCE8);
    OUTLINED_FUNCTION_128();
    sub_231477438();

    v85 = OUTLINED_FUNCTION_98();
    (v83)(v85);
    v86 = v102;
    sub_231404004(&qword_27DD4E0B0, &qword_23147CCE8, v102);
    v87 = (v83)(v100, v68);
    *&v112 = MEMORY[0x277D84F98];
    MEMORY[0x28223BE20](v87);
    v88 = v96;
    *(&v92 - 6) = v80;
    *(&v92 - 5) = v88;
    *(&v92 - 32) = BYTE4(v95);
    v89 = v105;
    *(&v92 - 3) = v86;
    *(&v92 - 2) = v89;
    *(&v92 - 1) = &v112;
    v90 = v94;
    sub_231477098();

    if (v90)
    {
    }

    v91 = OUTLINED_FUNCTION_128();
    (v83)(v91);
  }

  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_62();
}

void InteractionQuery.fetchStats(_:groupBy:useDistinct:enableFastQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  v34 = OUTLINED_FUNCTION_4(v33);
  v124 = v35;
  v125 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_0();
  v121 = v38;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39();
  v122 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39();
  v123 = v42;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_119_0();
  v129 = sub_2314776A8();
  v44 = OUTLINED_FUNCTION_4(v129);
  v127 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2();
  v128 = sub_231476F88();
  v48 = OUTLINED_FUNCTION_4(v128);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_12_0();
  v130 = v53;
  v54 = *v32;
  v55 = *(v32 + 8);
  v56 = *(v20 + 8);
  v57 = *(v20 + 16);
  if (v55)
  {
    v131 = *v20;
    v132 = v56;
    v133 = v57;
    OUTLINED_FUNCTION_113_0(v55);
    sub_2313FA928();
  }

  else
  {
    v118 = *v20;
    v119 = v56;
    HIDWORD(v120) = v57;
    v117 = __PAIR64__(v28, v26);
    OUTLINED_FUNCTION_113_0(v55);
    v58 = sub_2313F4D04();
    if (!v21)
    {
      v114 = 0;
      v115 = v22;
      v59 = *(v30 + 16);
      v60 = MEMORY[0x277D84F90];
      v116 = v30;
      if (v59)
      {
        v113 = v58;
        *&v134 = MEMORY[0x277D84F90];
        v61 = OUTLINED_FUNCTION_47_1();
        sub_2314051E0(v61, v62, v63);
        v64 = 0;
        v65 = v134;
        v138 = (v30 + 32);
        v126 = (v127 + 8);
        v127 = v50 + 32;
        while (2)
        {
          switch(v138[v64])
          {
            case 1u:
              OUTLINED_FUNCTION_189();
              goto LABEL_16;
            case 2u:
              OUTLINED_FUNCTION_186();
              goto LABEL_16;
            case 4u:
              OUTLINED_FUNCTION_86_0();
              goto LABEL_16;
            case 5u:
              OUTLINED_FUNCTION_108_0();
              goto LABEL_16;
            case 6u:
              OUTLINED_FUNCTION_85_0();
              goto LABEL_16;
            case 7u:
              if (qword_280C3BC58 != -1)
              {
                OUTLINED_FUNCTION_11_14();
                swift_once();
              }

              v66 = sub_2314770D8();
              __swift_project_value_buffer(v66, qword_280C3D818);
              OUTLINED_FUNCTION_45_0();
              goto LABEL_24;
            case 8u:
              if (qword_27DD4D280 != -1)
              {
                OUTLINED_FUNCTION_10_12();
                swift_once();
              }

              v74 = sub_2314770D8();
              __swift_project_value_buffer(v74, qword_27DD5ACE0);
              OUTLINED_FUNCTION_45_0();
LABEL_24:
              sub_231477508();
              goto LABEL_17;
            case 9u:
              OUTLINED_FUNCTION_137_0();
              goto LABEL_16;
            default:
LABEL_16:
              sub_2314776B8();
              sub_2314774F8();
              v67 = *v126;
              v68 = OUTLINED_FUNCTION_134_0();
              v69(v68);
LABEL_17:
              *&v134 = v65;
              v71 = *(v65 + 16);
              v70 = *(v65 + 24);
              if (v71 >= v70 >> 1)
              {
                v75 = OUTLINED_FUNCTION_20(v70);
                sub_2314051E0(v75, v71 + 1, 1);
                v65 = v134;
              }

              ++v64;
              *(v65 + 16) = v71 + 1;
              v72 = *(v50 + 80);
              OUTLINED_FUNCTION_59();
              (*(v50 + 32))(v65 + v73 + *(v50 + 72) * v71, v130, v128);
              if (v59 != v64)
              {
                continue;
              }

              v131 = v60;
              v76 = OUTLINED_FUNCTION_47_1();
              sub_23140557C(v76, v77, v78);
              v79 = MEMORY[0x277D0B7F0];
              v80 = MEMORY[0x277D0B728];
              while (2)
              {
                v81 = *v138++;
                switch(v81)
                {
                  case 1:
                    OUTLINED_FUNCTION_170();
                    goto LABEL_35;
                  case 2:
                    OUTLINED_FUNCTION_163();
                    goto LABEL_35;
                  case 4:
                    OUTLINED_FUNCTION_82_0();
                    goto LABEL_35;
                  case 5:
                    OUTLINED_FUNCTION_104_0();
                    goto LABEL_35;
                  case 6:
                    OUTLINED_FUNCTION_81_0();
                    goto LABEL_35;
                  case 7:
                    if (qword_280C3BC58 != -1)
                    {
                      OUTLINED_FUNCTION_11_14();
                      swift_once();
                    }

                    v82 = sub_2314770D8();
                    v83 = v82;
                    v84 = qword_280C3D818;
                    goto LABEL_43;
                  case 8:
                    if (qword_27DD4D280 != -1)
                    {
                      OUTLINED_FUNCTION_10_12();
                      swift_once();
                    }

                    v82 = sub_2314770D8();
                    v83 = v82;
                    v84 = qword_27DD5ACE0;
LABEL_43:
                    __swift_project_value_buffer(v82, v84);
                    v136 = v83;
                    v137 = v80;
                    __swift_allocate_boxed_opaque_existential_1(&v134);
                    OUTLINED_FUNCTION_38_1(v83);
                    (*(v87 + 16))();
                    goto LABEL_36;
                  case 9:
                    OUTLINED_FUNCTION_128_0();
                    goto LABEL_35;
                  default:
LABEL_35:
                    v136 = v129;
                    v137 = v79;
                    __swift_allocate_boxed_opaque_existential_1(&v134);
                    sub_2314776B8();
LABEL_36:
                    v131 = v60;
                    v86 = *(v60 + 16);
                    v85 = *(v60 + 24);
                    if (v86 >= v85 >> 1)
                    {
                      v88 = OUTLINED_FUNCTION_20(v85);
                      sub_23140557C(v88, v86 + 1, 1);
                      v60 = v131;
                    }

                    *(v60 + 16) = v86 + 1;
                    sub_2313F198C(&v134, v60 + 40 * v86 + 32);
                    if (--v59)
                    {
                      continue;
                    }

                    v89 = v125;
                    OUTLINED_FUNCTION_156();
                    break;
                }

                break;
              }

              break;
          }

          break;
        }
      }

      else
      {
        v65 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_156();
        v89 = v125;
      }

      *&v134 = v100;
      *(&v134 + 1) = v99;
      v135 = v98;
      v101 = v121;
      sub_23143D8C4(v97 & 1, v90, v91, v92, v93, v94, v95, v96, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
      sub_231405268(v65);

      OUTLINED_FUNCTION_2_10();
      sub_2313ED944(v102, v103, qword_23147F7F0);
      OUTLINED_FUNCTION_25();
      sub_2314773D8();

      v104 = *(v124 + 8);
      v104(v101, v89);
      OUTLINED_FUNCTION_54_1();
      sub_2313ED944(v105, &unk_27DD4D890, qword_23147F7F0);
      sub_231477438();
      v106 = v124 + 8;

      v104(v122, v89);
      OUTLINED_FUNCTION_145_0(&a15);
      sub_231404004(&unk_27DD4D890, qword_23147F7F0, v107);
      v108 = (v104)(v123, v89);
      *&v134 = MEMORY[0x277D84F98];
      MEMORY[0x28223BE20](v108);
      v109 = v119;
      *(&v113 - 6) = v118;
      *(&v113 - 5) = v109;
      *(&v113 - 32) = BYTE4(v120);
      v110 = v116;
      *(&v113 - 3) = v106;
      *(&v113 - 2) = v110;
      *(&v113 - 1) = &v134;
      v111 = v114;
      sub_231477098();

      if (v111)
      {
      }

      v112 = OUTLINED_FUNCTION_133_0();
      (v104)(v112);
    }
  }

  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_62();
}

uint64_t sub_2313FBAA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t type metadata accessor for HistoryStats()
{
  result = qword_280C3CB30;
  if (!qword_280C3CB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2313FBB2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_2313FBB80(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2313FBC4CLL);
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

void sub_2313FBC74()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_43_1();
  v10 = *v2;
  v11 = v2[1];
  v12 = *v0;
  v13 = v0[1];
  v14 = *(v0 + 16);
  v15 = *(v2 + 16);
  sub_2313FBD8C();
  OUTLINED_FUNCTION_69();
  *(v4 + 16) = v14;
  v16 = OUTLINED_FUNCTION_160();
  sub_2313E95CC(v16, v17, &unk_27DD4D680, &qword_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_147_0();
  v18 = OUTLINED_FUNCTION_144();
  sub_2313E937C(v18, v19, &qword_2314795C0);
  OUTLINED_FUNCTION_62_1(&qword_2314795C0 + 1);
  OUTLINED_FUNCTION_36_1(v20 + 32 * &qword_2314795C0);
  OUTLINED_FUNCTION_16();
}

void sub_2313FBD8C()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_92();
  Value = type metadata accessor for QueryValue();
  v7 = OUTLINED_FUNCTION_4(Value);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_137();
  switch(v3)
  {
    case 6:
      v13 = *(v5 + 16);
      v14 = MEMORY[0x277D84F90];
      if (v13)
      {
        v24 = v0;
        v25 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_86();
        v14 = v25;
        v15 = (v5 + 40);
        do
        {
          v16 = *v15;
          *v1 = *(v15 - 1);
          v1[1] = v16;
          OUTLINED_FUNCTION_144();
          swift_storeEnumTagMultiPayload();
          v18 = *(v25 + 16);
          v17 = *(v25 + 24);

          if (v18 >= v17 >> 1)
          {
            OUTLINED_FUNCTION_95();
            sub_2313FC060(v21, v22, v23);
          }

          *(v25 + 16) = v18 + 1;
          v19 = *(v9 + 80);
          OUTLINED_FUNCTION_59();
          v20 = *(v9 + 72);
          OUTLINED_FUNCTION_0_5();
          sub_2313F31EC();
          v15 += 2;
          --v13;
        }

        while (v13);
        v0 = v24;
      }

      *v0 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_35();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_16();
      break;
    default:
      OUTLINED_FUNCTION_34_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_35();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_16();

      break;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

size_t OUTLINED_FUNCTION_119(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_23141D774(v5, a2, a3, a4, v4);
}

void sub_2313FC190(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2314770A8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2313FC214()
{
  v1 = OUTLINED_FUNCTION_91();
  v3 = v2(v1);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2313FC268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2313FC2C0(uint64_t a1, void (*a2)(void *))
{
  v119 = a2;
  v127 = a1;
  v126 = sub_231477C98();
  v2 = OUTLINED_FUNCTION_4(v126);
  v131 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v7);
  v124 = sub_231477D28();
  v8 = OUTLINED_FUNCTION_4(v124);
  v132 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v13);
  v118 = sub_231477CB8();
  v14 = OUTLINED_FUNCTION_4(v118);
  v130 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_0();
  v19 = OUTLINED_FUNCTION_28(v18);
  v20 = type metadata accessor for _NewInteraction(v19);
  v21 = OUTLINED_FUNCTION_29(v20);
  v114 = v22;
  v113 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_28(&v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = sub_231478348();
  v25 = OUTLINED_FUNCTION_4(v111);
  v112 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v29);
  v110 = sub_231478308();
  v30 = OUTLINED_FUNCTION_4(v110);
  v109 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2();
  v36 = v35 - v34;
  v37 = sub_2314782F8();
  v38 = OUTLINED_FUNCTION_3(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2();
  v116 = sub_231477D08();
  v41 = OUTLINED_FUNCTION_4(v116);
  v115 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2();
  v47 = v46 - v45;
  v125 = dispatch_group_create();
  v48 = swift_allocObject();
  v129 = v48;
  *(v48 + 16) = 0;
  v121 = v48 + 16;
  v49 = swift_allocObject();
  v128 = v49;
  *(v49 + 16) = 0;
  OUTLINED_FUNCTION_140(v49 + 16);
  v108 = sub_2313E4AFC(0, &qword_280C3C8F8, 0x277D85CA0);
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  aBlock = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_65_0();
  sub_2313F7138(v50, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313FD260(&qword_280C3CEB0, &unk_27DD4EAA0, qword_23147F920);
  sub_231478498();
  (*(v109 + 104))(v36, *MEMORY[0x277D85260], v110);
  v52 = sub_231478338();
  aBlock = MEMORY[0x277D84F90];
  sub_2313F7138(&unk_280C3C110, MEMORY[0x277D85278]);
  v53 = OUTLINED_FUNCTION_134();
  __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
  OUTLINED_FUNCTION_130();
  sub_2313FD260(v55, v56, v57);
  OUTLINED_FUNCTION_133(v133);
  sub_231478498();
  OUTLINED_FUNCTION_109();
  v58 = sub_231478358();

  v59 = *(v112 + 8);
  v60 = OUTLINED_FUNCTION_144();
  v61(v60);
  v62 = OUTLINED_FUNCTION_145();
  dispatch_group_enter(v62);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_105(v134);
  sub_2313EB328();
  v64 = (v113 + ((*(v114 + 80) + 24) & ~*(v114 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  *(v66 + 16) = v128;
  OUTLINED_FUNCTION_23_0();
  sub_2313F31EC();
  *(v66 + v64) = v119;
  *(v66 + v65) = v129;
  *(v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8)) = v58;
  v139 = sub_2313FD2FC;
  v140 = v66;
  aBlock = MEMORY[0x277D85DD0];
  v136 = 1107296256;
  v114 = &v137;
  v137 = sub_2313FD2B8;
  v138 = &block_descriptor_58;
  v67 = _Block_copy(&aBlock);

  v110 = v58;
  swift_unknownObjectRetain();
  v68 = v47;
  sub_231477CC8();
  v69 = v117;
  sub_2313F92E8();
  v70 = ObjectType;
  sub_231478368();
  _Block_release(v67);
  v71 = *(v130 + 8);
  v130 += 8;
  v72 = v118;
  v71(v69, v118);
  v73 = *(v115 + 8);
  v74 = v116;
  v73(v68, v116);

  v75 = swift_allocObject();
  v76 = v125;
  *(v75 + 16) = v125;
  v139 = sub_23141FA6C;
  v140 = v75;
  aBlock = MEMORY[0x277D85DD0];
  v136 = 1107296256;
  v137 = sub_2313FD2B8;
  v138 = &block_descriptor_64;
  v77 = _Block_copy(&aBlock);
  v125 = v76;
  sub_231477CC8();
  sub_2313F92E8();
  v78 = v110;
  sub_231478378();
  _Block_release(v77);
  v71(v69, v72);
  v73(v68, v74);

  v79 = v120;
  sub_231477D18();
  v80 = v122;
  *v122 = 200;
  LODWORD(v130) = *MEMORY[0x277D85178];
  v81 = v131;
  v119 = *(v131 + 104);
  v82 = v126;
  v119(v80);
  OUTLINED_FUNCTION_139(&v140);
  sub_2313F93F0(v83);
  v84 = v78;
  MEMORY[0x23192E4A0](v79, v80, v77, v70);
  v85 = *(v81 + 8);
  v131 = v81 + 8;
  v85(v77, v82);
  v85(v80, v82);
  v86 = *(v132 + 8);
  v132 += 8;
  v87 = v124;
  v86(v79, v124);
  v123 = v70;
  sub_231478398();
  OUTLINED_FUNCTION_139(v141);
  sub_231477D18();
  v88 = v80;
  v89 = v125;
  *v88 = 4000;
  v90 = v126;
  (v119)(v88, v130, v126);
  v91 = OUTLINED_FUNCTION_17();
  MEMORY[0x23192DDF0](v91);
  v85(v88, v90);
  v86(v77, v87);
  v92 = v89;
  sub_2314782E8();
  v86(v79, v87);
  if (sub_231477CA8())
  {
    v92 = v84;
    sub_231478388();
  }

  v93 = sub_231477E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D978, &unk_23147A260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479A40;
  *(inited + 32) = 0x6C6C6F50656D6974;
  *(inited + 40) = 0xEA00000000006465;
  OUTLINED_FUNCTION_146(&v136);
  v95 = *v92;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x64657461647075;
  *(inited + 64) = 0xE700000000000000;
  OUTLINED_FUNCTION_146(&v138);
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 80), "donationType");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  sub_2313E4AFC(0, &qword_280C3C0F0, 0x277CCACA8);
  v96 = *(v127 + 48);
  v97 = *(v127 + 56);

  OUTLINED_FUNCTION_42();
  *(inited + 96) = sub_23141A9D0();
  sub_2313E4AFC(0, &qword_280C3C0F8, 0x277D82BB8);
  sub_231477DC8();
  v98 = sub_231477DA8();

  OUTLINED_FUNCTION_17();
  AnalyticsSendEvent();

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v99 = sub_231477B68();
  v100 = __swift_project_value_buffer(v99, qword_280C3D970);
  v101 = v128;

  v102 = v129;

  v103 = sub_231477B58();
  sub_231478298();
  v104 = OUTLINED_FUNCTION_44();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 67109376;
    *(v106 + 4) = *(v102 + 16);

    *(v106 + 8) = 2048;
    *(v106 + 10) = *(v101 + 16);

    _os_log_impl(&dword_2313E1000, v103, v100, "End tracking the interaction with found: %{BOOL}d and timePolled: %ld", v106, 0x12u);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  else
  {
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_2313FD088()
{
  v1 = (type metadata accessor for _NewInteraction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = (v0 + v3);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 5);

  v12 = *(v8 + 7);

  v13 = *(v8 + 9);

  v14 = v1[15];
  v15 = sub_231476CA8();
  OUTLINED_FUNCTION_3(v15);
  (*(v16 + 8))(&v8[v14]);
  v17 = *&v8[v1[17] + 8];

  v18 = *(v0 + v4);

  v19 = *(v0 + v5);

  v20 = *(v0 + v6);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v2 | 7);
}

uint64_t sub_2313FD1DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_60()
{
  v2 = *(v0 - 376);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_60_0(unint64_t *a1)
{

  return sub_2313ED944(a1, v1, v2);
}

uint64_t sub_2313FD260(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2313FD2B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2313FD2FC()
{
  v0 = type metadata accessor for _NewInteraction(0);
  OUTLINED_FUNCTION_29(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_56_0(v5);

  return sub_2313F9468(v7, v8, v9, v10, v11);
}

uint64_t sub_2313FD390(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v126 = a4;
  v124 = a5;
  LODWORD(v8) = a3;
  v11 = type metadata accessor for Interaction(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v122 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v121 = &v118 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v118 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v118 - v20;
  v22 = sub_231477B48();
  v127 = *(v22 - 8);
  v128 = v22;
  v23 = *(v127 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v131 = v25 - v24;
  if (qword_280C3C7F0 != -1)
  {
    swift_once();
  }

  v123 = v19;
  sub_231477ED8();
  v129 = os_transaction_create();

  sub_2313E74F8();
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v26 = sub_231477B68();
  v27 = __swift_project_value_buffer(v26, qword_280C3D970);
  OUTLINED_FUNCTION_2_20();
  sub_231405490(a1, v21, v28);

  v125 = v27;
  v29 = sub_231477B58();
  v30 = sub_2314782A8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v132[0] = v119;
    *v31 = 136315394;
    v120 = v8;
    v32 = a1;
    v33 = *(v21 + 8);
    v34 = *(v21 + 9);

    OUTLINED_FUNCTION_0_18();
    sub_2313FC268(v21, v35);
    v36 = sub_2313EB684(v33, v34, v132);
    a1 = v32;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    if (a6)
    {
      v6 = v124;
    }

    else
    {
      v6 = 7104878;
    }

    if (a6)
    {
      v37 = a6;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    v8 = sub_2313EB684(v6, v37, v132);

    *(v31 + 14) = v8;
    LOBYTE(v8) = v120;
    _os_log_impl(&dword_2313E1000, v29, v30, "SiriRemembers starts the biome donation for interaction type: %s with accountIdentifier: %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  else
  {

    OUTLINED_FUNCTION_0_18();
    sub_2313FC268(v21, v38);
  }

  v39 = a1[6];
  v40 = a1[7];
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    if ((v8 & 1) == 0)
    {
      v42 = *__swift_project_boxed_opaque_existential_1(v130 + 7, v130[10]);
      if ((sub_2313FA1B8(v39, v40) & 1) == 0)
      {
        OUTLINED_FUNCTION_5_17();
        v43 = v121;
        sub_231405490(a1, v121, v44);
        v45 = v122;
        sub_231405490(a1, v122, v39);
        v46 = sub_231477B58();
        v47 = sub_2314782A8();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v132[0] = swift_slowAlloc();
          *v48 = 136315394;
          v49 = v43;
          v50 = *(v43 + 64);
          v51 = *(v43 + 72);

          sub_2313FC268(v49, type metadata accessor for Interaction);
          v52 = sub_2313EB684(v50, v51, v132);

          *(v48 + 4) = v52;
          *(v48 + 12) = 2080;
          v53 = *(v45 + 48);
          v54 = *(v45 + 56);

          sub_2313FC268(v45, type metadata accessor for Interaction);
          v55 = sub_2313EB684(v53, v54, v132);

          *(v48 + 14) = v55;
          _os_log_impl(&dword_2313E1000, v46, v47, "SiriRemembers skips the biome donation for interaction type: %s with appBundleId: %s.", v48, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0();
          MEMORY[0x23192F1F0]();
          OUTLINED_FUNCTION_15_0();
          MEMORY[0x23192F1F0]();
        }

        else
        {

          OUTLINED_FUNCTION_5_17();
          sub_2313FC268(v45, v91);
          sub_2313FC268(v43, v47);
        }

        sub_23141FA18();
        swift_allocError();
        *v92 = 1;
        swift_willThrow();
LABEL_50:
        sub_2314783A8();
        if (qword_280C3CF48 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v89 = v131;
        sub_231477B28();
        swift_unknownObjectRelease();
        (*(v127 + 8))(v89, v128);
        return v89;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_20();
    v56 = v123;
    sub_231405490(a1, v123, v57);
    v58 = sub_231477B58();
    v59 = sub_2314782A8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v132[0] = v61;
      *v60 = 136315138;
      v125 = a2;
      v63 = *(v56 + 64);
      v62 = *(v56 + 72);

      OUTLINED_FUNCTION_0_18();
      sub_2313FC268(v56, v64);
      v65 = sub_2313EB684(v63, v62, v132);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_2313E1000, v58, v59, "SiriRemembers skips the learn from appCheck for interaction type: %s.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    else
    {

      OUTLINED_FUNCTION_0_18();
      sub_2313FC268(v56, v66);
    }
  }

  v67 = a1[8];
  v68 = a1[9];
  OUTLINED_FUNCTION_132();
  v70 = v67 == 0xD000000000000011 && v69 == v68;
  if (v70 || (OUTLINED_FUNCTION_11_17() & 1) != 0)
  {
    v71 = v130[3];
    v72 = OUTLINED_FUNCTION_3_11();
    sub_23145F78C(v72, v73, v74, v75);
    if (v6)
    {
      goto LABEL_50;
    }

    v76 = OUTLINED_FUNCTION_13_14();
    v77 = [v76 source];
    [v77 sendEvent_];

    v132[1] = &unk_284611D38;
  }

  else
  {
    OUTLINED_FUNCTION_132();
    v79 = v67 == 0xD000000000000013 && v78 == v68;
    if (v79 || (OUTLINED_FUNCTION_11_17() & 1) != 0 || ((OUTLINED_FUNCTION_132(), v67 == 0xD00000000000001ALL) ? (v81 = v80 == v68) : (v81 = 0), v81 || (OUTLINED_FUNCTION_11_17() & 1) != 0))
    {
      v82 = v130[4];
      v83 = OUTLINED_FUNCTION_3_11();
      sub_23145F7E8(v83, v84, v85, v86);
      if (v6)
      {
        goto LABEL_50;
      }

      v87 = OUTLINED_FUNCTION_13_14();
      v88 = [v87 source];
      [v88 sendEvent_];

      v132[2] = &unk_284611D38;
    }

    else
    {
      OUTLINED_FUNCTION_132();
      v95 = v67 == 0xD000000000000011 && v94 == v68;
      if (v95 || (OUTLINED_FUNCTION_11_17() & 1) != 0)
      {
        v96 = v130[6];
        v97 = OUTLINED_FUNCTION_3_11();
        sub_23145F860(v97, v98, v99, v100);
        if (v6)
        {
          goto LABEL_50;
        }

        v101 = OUTLINED_FUNCTION_13_14();
        v102 = [v101 source];
        [v102 sendEvent_];

        v132[3] = &unk_284611D38;
      }

      else if (sub_231478048() & 1) != 0 || (v67 == 0xD000000000000010 ? (v103 = 0x8000000231481F90 == v68) : (v103 = 0), v103 || (sub_2314787C8()))
      {
        v104 = v130[5];
        v105 = OUTLINED_FUNCTION_3_11();
        sub_23145F824(v105, v106, v107, v108);
        if (v6)
        {
          goto LABEL_50;
        }

        v109 = OUTLINED_FUNCTION_13_14();
        v110 = [v109 source];
        [v110 sendEvent_];

        v132[4] = &unk_284611D38;
      }

      else
      {
        v111 = v130[2];
        v112 = OUTLINED_FUNCTION_3_11();
        sub_23145F748(v112, v113, v114, v115);
        if (v6)
        {
          goto LABEL_50;
        }

        v116 = OUTLINED_FUNCTION_13_14();
        v117 = [v116 source];
        [v117 sendEvent_];

        v132[6] = &unk_284611D38;
      }
    }
  }

  v89 = swift_dynamicCastObjCProtocolConditional();
  if (!v89)
  {
  }

  sub_2314783A8();
  if (qword_280C3CF48 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v90 = v131;
  sub_231477B28();
  swift_unknownObjectRelease();
  (*(v127 + 8))(v90, v128);
  return v89;
}

uint64_t sub_2313FDE50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v121 = a5;
  v122 = a4;
  v125 = a3;
  v6 = sub_231476CA8();
  v118 = *(v6 - 8);
  v119 = v6;
  v7 = *(v118 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v114 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v117 = &v114 - v10;
  v116 = type metadata accessor for _NewInteraction(0);
  v11 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v13 = (&v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D988, &unk_23147A270);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v114 - v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  v18 = *(*(v123 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v123);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v114 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v114 - v29;
  v31 = type metadata accessor for Interaction(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v120 = &v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v115 = &v114 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v114 - v37;
  v39 = *a1;
  if (v39)
  {
    v124 = v39;
  }

  else
  {
    if (qword_280C3CA98 != -1)
    {
      swift_once();
    }

    v124 = qword_280C3D8C8;
  }

  sub_2313E93D4();
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {

    sub_2313E937C(v30, &qword_27DD4D690, &qword_231479AD0);
  }

  else
  {
    sub_2313F31EC();
    if (v38[80] == 1)
    {
      v40 = qword_280C3CF50;

      if (v40 != -1)
      {
        swift_once();
      }

      v41 = sub_231477B68();
      __swift_project_value_buffer(v41, qword_280C3D970);
      v42 = sub_231477B58();
      v43 = sub_2314782A8();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v125;
      if (v44)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2313E1000, v42, v43, "donation is replacing existing interaction", v46, 2u);
        MEMORY[0x23192F1F0](v46, -1, -1);
      }

      *(v45 + 81) = 1;
      v48 = *v38;
      v47 = *(v38 + 1);

      sub_2313EB380();
      v49 = *(v125 + 8);
      *v125 = v48;
      *(v125 + 8) = v47;

      v50 = v122;
      *(v122 + 80) = 1;
      v51 = v50[1];
      *v50 = v48;
      v50[1] = v47;
      goto LABEL_44;
    }

    sub_2313EB380();
  }

  v52 = v125;
  sub_2313EB328();
  sub_231406A04(v13, v17);
  sub_2313EB380();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v123);
  v54 = v122;
  if (EnumTagSinglePayload == 1)
  {
    v55 = &qword_27DD4D988;
    v56 = &unk_23147A270;
    v57 = v17;
    goto LABEL_25;
  }

  sub_2314030BC();
  v58 = v123;
  sub_2313E93D4();
  v59 = *&v21[*(v58 + 48)];

  v60 = v21[80];
  sub_2313EB380();
  if (v60 != 1)
  {
    v55 = &qword_27DD4D990;
    v56 = &unk_23147FCE0;
    v57 = v23;
LABEL_25:
    sub_2313E937C(v57, v55, v56);
    v75 = *(v52 + 48) == 0xD000000000000011 && 0x8000000231482700 == *(v52 + 56);
    if (v75 || (sub_2314787C8() & 1) != 0)
    {
      v76 = *(v124 + 24);

      v77 = sub_231460150();

      v78 = *(v52 + 48);
      v79 = *(v52 + 56);

      sub_231460790(v78, v79, v77);

      if (__swift_getEnumTagSinglePayload(v28, 1, v31) == 1)
      {
        sub_2313E937C(v28, &qword_27DD4D690, &qword_231479AD0);
        goto LABEL_45;
      }

      v80 = v115;
      sub_2313F31EC();
      v81 = v117;
      v83 = v118;
      v82 = v119;
      (*(v118 + 16))(v117, v52 + *(v116 + 52), v119);
      sub_231476BC8();
      v85 = v84;
      (*(v83 + 8))(v81, v82);
      v86 = v80 + *(v31 + 48);
      sub_231476BC8();
      if (vabdd_f64(v85, v87) > 1.0)
      {
        sub_2313EB380();
        goto LABEL_45;
      }

      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v88 = sub_231477B68();
      __swift_project_value_buffer(v88, qword_280C3D970);
      v89 = sub_231477B58();
      v90 = sub_2314782A8();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_2313E1000, v89, v90, "donation is replacing existing interaction in Cache", v91, 2u);
        MEMORY[0x23192F1F0](v91, -1, -1);
      }

      *(v54 + 80) = 1;
      v93 = *v80;
      v92 = v80[1];

      sub_2313EB380();
      v94 = *(v54 + 8);
      *v54 = v93;
      *(v54 + 8) = v92;

      v95 = v125;
      *(v125 + 81) = 1;
      v96 = v95[1];
      *v95 = v93;
      v95[1] = v92;
LABEL_44:

      goto LABEL_45;
    }

    goto LABEL_45;
  }

  sub_2313E93D4();
  v61 = *&v21[*(v58 + 48)];

  v63 = v117;
  v62 = v118;
  v64 = v52;
  v65 = *(v118 + 16);
  v66 = &v21[*(v31 + 48)];
  v67 = v119;
  v65(v117, v66, v119);
  sub_2313EB380();
  sub_231476BC8();
  v69 = v68;
  v70 = *(v62 + 8);
  v70(v63, v67);
  v71 = v114;
  v65(v114, (v64 + *(v116 + 52)), v67);
  sub_231476BC8();
  v73 = v72;
  v70(v71, v67);
  if (v69 - v73 <= 1.0 && v69 - v73 >= -4.0)
  {
    v97 = v122;
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v98 = sub_231477B68();
    __swift_project_value_buffer(v98, qword_280C3D970);
    v99 = sub_231477B58();
    v100 = sub_2314782A8();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_2313E1000, v99, v100, "donation is replacing existing interaction in Cache", v101, 2u);
      MEMORY[0x23192F1F0](v101, -1, -1);
    }

    *(v97 + 80) = 1;
    sub_2313E93D4();
    v102 = v123;
    v103 = *&v21[*(v123 + 48)];

    v105 = *v21;
    v104 = *(v21 + 1);

    sub_2313EB380();
    v106 = *(v97 + 8);
    *v97 = v105;
    *(v97 + 8) = v104;

    v107 = v125;
    *(v125 + 81) = 1;
    sub_2314030BC();
    v108 = *&v21[*(v102 + 48)];

    v110 = *v21;
    v109 = *(v21 + 1);

    sub_2313EB380();
    v111 = v107[1];
    *v107 = v110;
    v107[1] = v109;
    goto LABEL_44;
  }

  sub_2313E937C(v23, &qword_27DD4D990, &unk_23147FCE0);
LABEL_45:
  sub_2313EB328();
  v112 = v120;
  sub_2313EB328();
  sub_2313F9CA4(v13, v112, v121);

  sub_2313EB380();
  return sub_2313EB380();
}

uint64_t OUTLINED_FUNCTION_42_0()
{
  v2 = *(v0 - 208);

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return sub_231478968();
}

void OUTLINED_FUNCTION_125_0()
{

  JUMPOUT(0x23192E060);
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t result, uint64_t a2)
{
  *(v2 - 240) = result;
  *(v2 - 232) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return sub_231477EA8();
}

uint64_t get_enum_tag_for_layout_string_13SiriRemembers8QueryKeyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_2313FEB98()
{
  OUTLINED_FUNCTION_64();
  v44 = v3;
  v40 = v4;
  v42 = sub_231477948();
  v5 = OUTLINED_FUNCTION_4(v42);
  v38 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_34();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_28_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E180, &unk_23147CDF0);
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_34();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_119_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  OUTLINED_FUNCTION_4(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_76_0();
  sub_2313FEEDC(0, v27, v28, v29, v30, v31, v32, v33, v38, v40, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  sub_231477098();
  if (!v0)
  {
    sub_2313E95CC(v2, v19, &qword_27DD4E180, &unk_23147CDF0);
    if (__swift_getEnumTagSinglePayload(v19, 1, v43) != 1)
    {
      (*(v39 + 32))(v1, v19, v43);
      (*(v39 + 16))(v11, v1, v43);
      sub_2314393C4(v11, v41);
      (*(v39 + 8))(v1, v43);
    }

    sub_2313E937C(v2, &qword_27DD4E180, &unk_23147CDF0);
    v34 = type metadata accessor for Interaction(0);
    OUTLINED_FUNCTION_197(v34);
  }

  v35 = *(v23 + 8);
  v36 = OUTLINED_FUNCTION_25();
  v37(v36);
  OUTLINED_FUNCTION_62();
}

uint64_t OUTLINED_FUNCTION_117()
{
  v2 = *(v0 - 152);

  return sub_231478648();
}

void sub_2313FEEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v22;
  a20 = v23;
  HIDWORD(v332) = v24;
  OUTLINED_FUNCTION_171(v25);
  v26 = sub_231477668();
  v27 = OUTLINED_FUNCTION_0_0(v26, &v366);
  v331 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0D0, &qword_23147CD58);
  v33 = OUTLINED_FUNCTION_0_0(v32, &v381);
  v330 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v38);
  v39 = sub_2314773C8();
  v40 = OUTLINED_FUNCTION_0_0(v39, &v352);
  v328 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v45);
  v46 = sub_231476EB8();
  v47 = OUTLINED_FUNCTION_0_0(v46, &v372);
  v334 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v51);
  v52 = sub_2314770D8();
  v53 = OUTLINED_FUNCTION_0_0(v52, &v373);
  v326 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA98, &qword_23147CD60);
  v59 = OUTLINED_FUNCTION_0_0(v58, &v382);
  v333 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0D8, &qword_23147CD68);
  v68 = OUTLINED_FUNCTION_0_0(v67, &v361);
  v336 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v73);
  v74 = sub_231477468();
  v75 = OUTLINED_FUNCTION_0_0(v74, &v387);
  v362 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0E0, &unk_23147CD70);
  OUTLINED_FUNCTION_14(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_28(v84);
  v85 = sub_231476CA8();
  v86 = OUTLINED_FUNCTION_0_0(v85, &a13);
  v361 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v90);
  Value = type metadata accessor for QueryValue();
  v92 = OUTLINED_FUNCTION_0_0(Value, &a14);
  v348 = v93;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_34();
  v98 = (v96 - v97);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_28_3();
  v100 = sub_2314770C8();
  v101 = OUTLINED_FUNCTION_0_0(v100, &a17);
  v103 = v102;
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v106);
  v108 = (v325 - v107);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  v110 = OUTLINED_FUNCTION_0_0(v109, &v391);
  v340 = v111;
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v116);
  v118 = v325 - v117;
  v119 = *(v20 + 8);
  v347 = *v20;
  OUTLINED_FUNCTION_176(*(v20 + 16));
  sub_231477948();
  sub_231400E2C(&qword_280C3D6F8, MEMORY[0x277D1F230]);
  v364 = v118;
  sub_231476ED8();
  v120 = v119;
  v388 = v119;
  v121 = *(v119 + 2) + 1;
  v122 = 40;
  do
  {
    if (!--v121)
    {
      break;
    }

    v123 = *&v120[v122];
    v122 += 32;
  }

  while (v123 != 15);
  *(&v390 + 1) = &unk_28460C4B0;
  v124 = sub_2313E3100();
  v391 = v124;
  LOBYTE(v389) = 0;
  v360 = v120;

  sub_231476D68();
  OUTLINED_FUNCTION_198();
  LOBYTE(v389) = 2;
  v125 = sub_231476D68();
  OUTLINED_FUNCTION_198();
  v126 = 1;
  LOBYTE(v389) = 1;
  sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(&v389);
  if ((v125 & 1) == 0)
  {
    *(&v390 + 1) = &unk_28460C4B0;
    v391 = v124;
    LOBYTE(v389) = 0;
    sub_231476D68();
    OUTLINED_FUNCTION_198();
    LOBYTE(v389) = 2;
    sub_231476D68();
    OUTLINED_FUNCTION_198();
    LOBYTE(v389) = 1;
    v125 = sub_231476D68();
    __swift_destroy_boxed_opaque_existential_0(&v389);
    if ((v125 & 1) == 0)
    {
      OUTLINED_FUNCTION_23_5();
      v127 = v360;
      goto LABEL_32;
    }
  }

  if (!v376)
  {
    v127 = v360;
    if (!v121)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      OUTLINED_FUNCTION_180(&v377 + 8);
      v131 = v130 & ~v129;
      v127 = swift_allocObject();
      *(v127 + 1) = xmmword_231479580;
      v127[v131] = 1;
      swift_storeEnumTagMultiPayload();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_11;
      }

      goto LABEL_120;
    }

    goto LABEL_14;
  }

  v125 = v347;
  swift_bridgeObjectRetain_n();
  v127 = v360;
  swift_bridgeObjectRetain_n();
  v126 = v338;
  v376 = sub_23144490C(v127);
  v338 = v126;
  if ((v128 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_0();
    v136 = v135 + 1;
    if (__OFADD__(v135, 1))
    {
      goto LABEL_117;
    }

    OUTLINED_FUNCTION_91_0();
    v138 = 32 * v137 + 88;
    OUTLINED_FUNCTION_23_5();
    while (1)
    {
      v139 = *(v127 + 2);
      if (v136 == v139)
      {
        goto LABEL_30;
      }

      if (v136 >= v139)
      {
        goto LABEL_111;
      }

      v126 = *&v127[v138 - 16];
      if (v126 != 15)
      {
        if (v136 != v376)
        {
          if (v376 >= v139)
          {
            goto LABEL_112;
          }

          OUTLINED_FUNCTION_164();
          LODWORD(v367) = v140;
          v142 = *(v141 + 24);
          v144 = *(v143 - 24);
          OUTLINED_FUNCTION_165();
          OUTLINED_FUNCTION_135_0(*v145);
          v369 = v146;
          v368 = v147;
          sub_2313E8ABC(v146, v147);
          v366 = v142;

          v371 = v144;
          v148 = OUTLINED_FUNCTION_144();
          sub_2313E8ABC(v148, v149);
          OUTLINED_FUNCTION_142_0();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2314285F0(v127);
            v127 = v163;
          }

          if (v376 >= *(v127 + 2))
          {
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          v125 = v369;
          OUTLINED_FUNCTION_91_0();
          v151 = &v127[32 * v150];
          v152 = *(v151 + 4);
          v153 = *(v151 + 5);
          v154 = *(v151 + 7);
          OUTLINED_FUNCTION_101_0(v151);
          *(v155 + 56) = v375;
          sub_2313ED930(v156, v157);

          if (v136 >= *(v127 + 2))
          {
            goto LABEL_114;
          }

          v158 = &v127[v138];
          v159 = *&v127[v138 - 24];
          v160 = *&v127[v138 - 16];
          v126 = *&v127[v138];
          v161 = v368;
          *(v158 - 3) = v125;
          *(v158 - 2) = v161;
          *(v158 - 8) = v367;
          *v158 = v366;
          sub_2313ED930(v159, v160);

          v388 = v127;
        }

        OUTLINED_FUNCTION_91_0();
        v376 = v162 + 1;
      }

      OUTLINED_FUNCTION_23_5();
      ++v136;
      v138 += 32;
    }
  }

  v376 = *(v127 + 2);
  OUTLINED_FUNCTION_23_5();
LABEL_30:

  v164 = *(v127 + 2);
  OUTLINED_FUNCTION_91_0();
  if (v165 < v166)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  sub_23144472C(v376, v165);
  v127 = v388;
  while (1)
  {
LABEL_32:
    v357 = *(v127 + 2);
    if (v357)
    {
      v167 = 0;
      v356 = v127 + 32;
      v371 = v361 + 32;
      v370 = (v361 + 8);
      v376 = v103 + 32;
      v342 = v103 + 16;
      *(&v343 + 1) = 0x8000000231482D80;
      v355 = v362 + 8;
      v354[1] = v340 + 8;
      v354[0] = v340 + 32;
      *&v343 = 0xD000000000000025;
      v375 = v108;
      v360 = v127;
      do
      {
        if (v167 >= *(v127 + 2))
        {
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v366 = v167;
        v168 = &v356[32 * v167];
        v169 = *(v168 + 1);
        v170 = v168[16];
        v171 = *(v168 + 3);
        *&v389 = *v168;
        *(&v389 + 1) = v169;
        v368 = v170;
        LOBYTE(v390) = v170;
        *(&v390 + 1) = v171;
        v369 = v389;
        sub_2313E8ABC(v389, v169);

        sub_231400F04();
        v173 = v172;
        v174 = *(v172 + 16);
        v367 = v169;
        if (v174)
        {
          v362 = v171;
          *&v389 = MEMORY[0x277D84F90];
          v175 = OUTLINED_FUNCTION_47_1();
          sub_2313E8C84(v175, v176, v177);
          v178 = v389;
          OUTLINED_FUNCTION_6();
          v361 = v173;
          v180 = v173 + v179;
          v182 = *(v181 + 72);
          do
          {
            sub_2314015B4(v180, v21, type metadata accessor for QueryValue);
            sub_2314015B4(v21, v98, type metadata accessor for QueryValue);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 1u:
                MEMORY[0x23192E2E0](*v98);
                break;
              case 2u:
                MEMORY[0x23192E290](*v98);
                break;
              case 3u:
                v190 = *v98;
                v191 = *(v98 + 1);
                sub_231477EE8();

                break;
              case 4u:
                OUTLINED_FUNCTION_37_1(&a11);
                v184 = v372;
                v185 = OUTLINED_FUNCTION_96_0();
                v186 = v373;
                v187(v185);
                v188 = sub_231476BC8();
                MEMORY[0x23192E290](v188);
                OUTLINED_FUNCTION_37_1(&a10);
                v189(v184, v186);
                break;
              default:
                v183 = *v98;
                sub_2314781B8();
                break;
            }

            OUTLINED_FUNCTION_8_13();
            sub_23140166C(v21, v192);
            *&v389 = v178;
            v194 = *(v178 + 16);
            v193 = *(v178 + 24);
            if (v194 >= v193 >> 1)
            {
              OUTLINED_FUNCTION_20(v193);
              OUTLINED_FUNCTION_129_0();
              sub_2313E8C84(v198, v199, v200);
              v178 = v389;
            }

            *(v178 + 16) = v194 + 1;
            v195 = *(v103 + 80);
            OUTLINED_FUNCTION_59();
            v197 = v178 + v196 + *(v103 + 72) * v194;
            v108 = v375;
            (*(v103 + 32))(v197, v375, v377);
            v180 += v182;
            --v174;
          }

          while (v174);
          OUTLINED_FUNCTION_166();

          v169 = v367;
        }

        else
        {

          v178 = MEMORY[0x277D84F90];
        }

        if (v169 >= 0x12)
        {
          OUTLINED_FUNCTION_188();
          v205 = v369;
          sub_2313E8ABC(v369, v169);
          MEMORY[0x23192E060](v205, v169);
          sub_2313ED930(v205, v169);
          v206 = v346;
          sub_231477EE8();

          OUTLINED_FUNCTION_37_1(&a16);
          v207(v363, v206, v377);
          v208 = *(v178 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v208 >= *(v178 + 24) >> 1)
          {
            sub_23141CF98();
            v178 = v209;
          }

          v210 = *(v103 + 80);
          OUTLINED_FUNCTION_59();
          v127 = (v178 + v211);
          v212 = *(v103 + 72);
          swift_arrayDestroy();
          if (v212 < 0 || v212 >= *(v178 + 16) * v212)
          {
            OUTLINED_FUNCTION_167();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v212)
          {
            OUTLINED_FUNCTION_167();
            swift_arrayInitWithTakeBackToFront();
          }

          ++*(v178 + 16);
          if (v212 >= 1)
          {
            v213 = 0;
            v214 = v127;
            while ((v213 & 1) == 0)
            {
              OUTLINED_FUNCTION_37_1(&v367);
              v215(v214, v363, v377);
              v214 += v212;
              v213 = 1;
              if (&v214[-v212] >= v127)
              {
                goto LABEL_63;
              }
            }

LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

LABEL_63:
          sub_2313E937C(v363, &qword_27DD4E0E0, &unk_23147CD70);
          OUTLINED_FUNCTION_196();

          v389 = v343;
          v216 = 0xE200000000000000;
          v217 = 15649;
          v204 = v358;
          switch(v368)
          {
            case 1uLL:
              break;
            case 2uLL:
              v216 = 0xE100000000000000;
              v217 = 60;
              break;
            case 3uLL:
              v217 = 15676;
              break;
            case 4uLL:
              v216 = 0xE100000000000000;
              v217 = 62;
              break;
            case 5uLL:
              v217 = 15678;
              break;
            case 6uLL:
              v217 = 20041;
              break;
            case 7uLL:
              v216 = 0xE400000000000000;
              v217 = OUTLINED_FUNCTION_141_0();
              break;
            default:
              v216 = 0xE100000000000000;
              v217 = 61;
              break;
          }

          MEMORY[0x23192E060](v217, v216);

          OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_158(&v392);
          if (v218)
          {
            v233 = OUTLINED_FUNCTION_151();
            OUTLINED_FUNCTION_25_2(v233, v234);
            if (v235)
            {
              OUTLINED_FUNCTION_19_6();
              OUTLINED_FUNCTION_153();
              sub_231477FC8();
            }

            OUTLINED_FUNCTION_63_1();
            v236 = OUTLINED_FUNCTION_90_0();
            MEMORY[0x23192E060](v236);
            v237 = OUTLINED_FUNCTION_46_0();
            sub_2313ED930(v237, v238);

            v242 = v379;
            v241 = v380;
          }

          else
          {
            v239 = OUTLINED_FUNCTION_46_0();
            sub_2313ED930(v239, v240);

            v241 = 0xE100000000000000;
            v242 = 63;
          }

          MEMORY[0x23192E060](v242, v241);

          *&v389 = v178;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA0, &qword_23147A7E8);
          OUTLINED_FUNCTION_7_7();
          OUTLINED_FUNCTION_131_0();
          sub_2313ED944(v243, v244, v245);
          OUTLINED_FUNCTION_155();
          sub_231477478();
          OUTLINED_FUNCTION_0_13();
          sub_2313ED944(&qword_280C3D7F8, &qword_27DD4E0B0, &qword_23147CCE8);
          v232 = &v374;
        }

        else
        {
          OUTLINED_FUNCTION_46_0();
          *&v389 = sub_2313ED6C8();
          *(&v389 + 1) = v201;
          v202 = 0xE100000000000000;
          OUTLINED_FUNCTION_125_0();
          v203 = 61;
          v204 = v358;
          switch(v368)
          {
            case 1uLL:
              v202 = 0xE200000000000000;
              v203 = 15649;
              break;
            case 2uLL:
              v203 = 60;
              break;
            case 3uLL:
              v202 = 0xE200000000000000;
              v203 = 15676;
              break;
            case 4uLL:
              v203 = 62;
              break;
            case 5uLL:
              v202 = 0xE200000000000000;
              v203 = 15678;
              break;
            case 6uLL:
              v202 = 0xE200000000000000;
              v203 = 20041;
              break;
            case 7uLL:
              v202 = 0xE400000000000000;
              v203 = OUTLINED_FUNCTION_141_0();
              break;
            default:
              break;
          }

          MEMORY[0x23192E060](v203, v202);

          OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_158(&v392);
          if (v218)
          {
            v219 = OUTLINED_FUNCTION_151();
            OUTLINED_FUNCTION_25_2(v219, v220);
            if (v221)
            {
              OUTLINED_FUNCTION_19_6();
              OUTLINED_FUNCTION_153();
              sub_231477FC8();
            }

            OUTLINED_FUNCTION_63_1();
            v222 = OUTLINED_FUNCTION_90_0();
            MEMORY[0x23192E060](v222);
            v223 = OUTLINED_FUNCTION_46_0();
            sub_2313ED930(v223, v224);

            v228 = v379;
            v227 = v380;
          }

          else
          {
            v225 = OUTLINED_FUNCTION_46_0();
            sub_2313ED930(v225, v226);

            v227 = 0xE100000000000000;
            v228 = 63;
          }

          MEMORY[0x23192E060](v228, v227);

          *&v389 = v178;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA0, &qword_23147A7E8);
          OUTLINED_FUNCTION_7_7();
          OUTLINED_FUNCTION_131_0();
          sub_2313ED944(v229, v230, v231);
          OUTLINED_FUNCTION_155();
          sub_231477478();
          OUTLINED_FUNCTION_0_13();
          sub_2313ED944(&qword_280C3D7F8, &qword_27DD4E0B0, &qword_23147CCE8);
          v232 = &v375;
        }

        OUTLINED_FUNCTION_144_0(v232);
        v125 = v365;
        v126 = v364;
        sub_2314771B8();
        v167 = v366 + 1;

        OUTLINED_FUNCTION_37_1(v385);
        v246(v204, v359);
        v247 = OUTLINED_FUNCTION_33_1(&v384);
        v248(v247, v125);
        v249 = OUTLINED_FUNCTION_33_1(&v383);
        v250(v249, &qword_23147A7E8, v125);
        v127 = v360;
      }

      while (v167 != v357);
    }

    v251 = v347;
    if (!*(v347 + 16))
    {
      (*(v340 + 32))(v339, v126, v125);
      goto LABEL_107;
    }

    v252 = v335;
    sub_231477918();
    v253 = v126;
    OUTLINED_FUNCTION_60_0(&qword_280C3CE08);
    OUTLINED_FUNCTION_145_0(&v359);
    v103 = v337;
    sub_2314773D8();
    v254 = v336 + 8;
    v21 = *(v336 + 8);
    v21(v252, v103);
    OUTLINED_FUNCTION_72_0(&qword_280C3CE20, &qword_27DD4E0B0, &qword_23147CCE8);
    OUTLINED_FUNCTION_49_0();
    v255 = v365;
    sub_2313ED944(v256, v257, v258);
    OUTLINED_FUNCTION_138_0(&v357);
    v127 = v253;
    sub_2314771D8();
    v259 = OUTLINED_FUNCTION_134_0();
    (v21)(v259);
    OUTLINED_FUNCTION_139(&v364);
    v261 = *(v260 + 8);
    v262 = OUTLINED_FUNCTION_144();
    v371 = v263;
    v370 = v264;
    v264(v262);
    off_27DD4E0F8(v253, v98, v255);
    v265 = *(v251 + 16);
    v376 = v265 - 1;
    if (v265 != 1)
    {
      break;
    }

    v266 = *(v251 + 16);
    if ((v332 & 0x100000000) != 0)
    {
      if (v266)
      {
        v267 = *(v251 + 48);
        v389 = *(v251 + 32);
        v390 = v267;
        OUTLINED_FUNCTION_61_1(*(v251 + 64));
        sub_231477998();
        v269 = v268;
        OUTLINED_FUNCTION_194();
        sub_23143BEA8(*(v270 - 256), v271, v269, v272, v273, v274, v275, v276, v325[0], v325[1], v325[2], v326, v327, v328, v329, v330, v331, v332, v333, v334);

        sub_23144467C(&v389);
        OUTLINED_FUNCTION_36_0();
        OUTLINED_FUNCTION_168();
        v277();
        goto LABEL_107;
      }

      goto LABEL_118;
    }

    if (v266)
    {
      v303 = *(v251 + 48);
      v389 = *(v251 + 32);
      v390 = v303;
      OUTLINED_FUNCTION_61_1(*(v251 + 64));
      OUTLINED_FUNCTION_138_0(&v347);
      sub_2314231F4();
      sub_23144467C(&v389);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
      OUTLINED_FUNCTION_41_1();
      v304 = swift_allocObject();
      OUTLINED_FUNCTION_110_0(v304, xmmword_231479580);
      v305 = sub_2314776A8();
      v306 = MEMORY[0x277D0B7E8];
      v304[3].n128_u64[1] = v305;
      v304[4].n128_u64[0] = v306;
      __swift_allocate_boxed_opaque_existential_1(&v304[2]);
      sub_231477698();
      OUTLINED_FUNCTION_2_10();
      sub_2313ED944(v307, v308, v309);
      OUTLINED_FUNCTION_145_0(&v348);
      OUTLINED_FUNCTION_109_0();
      sub_2314773D8();

      sub_231477998();
      v310 = sub_231476E98();
      v311 = *(v310 + 48);
      v312 = *(v310 + 52);
      swift_allocObject();
      OUTLINED_FUNCTION_17();
      sub_231476E88();
      v382 = v305;
      v383 = MEMORY[0x277D0B7F8];
      __swift_allocate_boxed_opaque_existential_1(&v379);
      sub_231477698();
      OUTLINED_FUNCTION_144_0(&v349);
      sub_231476EA8();
      __swift_destroy_boxed_opaque_existential_0(&v379);
      OUTLINED_FUNCTION_92_0(&v371);
      sub_2314774D8();
      v313 = v345;
      v386 = v345;
      v387 = MEMORY[0x277D0B728];
      __swift_allocate_boxed_opaque_existential_1(v385);
      OUTLINED_FUNCTION_107_0(v350);
      (*(v314 + 16))();
      v382 = v313;
      v383 = MEMORY[0x277D0B730];
      __swift_allocate_boxed_opaque_existential_1(&v379);
      OUTLINED_FUNCTION_130_0();
      sub_231477208();
      OUTLINED_FUNCTION_13_1(&v356);
      v315(v251, v21);
      __swift_destroy_boxed_opaque_existential_0(v385);
      OUTLINED_FUNCTION_0_13();
      sub_2313ED944(v316, v317, v318);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_130_0();
      OUTLINED_FUNCTION_126_0();
      sub_2314771C8();

      (*(v103 + 8))(v254, v313);
      v319 = *(v333 + 8);
      v320 = OUTLINED_FUNCTION_133_0();
      v319(v320);
      (v319)(v98, v253);
      OUTLINED_FUNCTION_98();
      goto LABEL_106;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    v322 = *(v360 + 2);
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v360 = v323;
LABEL_11:
    v126 = *(v360 + 2);
    v132 = *(v360 + 3);
    v125 = v126 + 1;
    if (v126 >= v132 >> 1)
    {
      OUTLINED_FUNCTION_20(v132);
      OUTLINED_FUNCTION_129_0();
      sub_2313F3244();
      v360 = v324;
    }

    v133 = v360;
    *(v360 + 2) = v125;
    v134 = &v133[32 * v126];
    *(v134 + 2) = xmmword_23147CC80;
    v134[48] = 0;
    *(v134 + 7) = v127;
    v127 = v133;
    v388 = v133;
LABEL_14:
    OUTLINED_FUNCTION_23_5();
  }

  if (v265 + 0x4000000000000000 < 0)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  sub_231477378();
  v278 = 0;
  OUTLINED_FUNCTION_135_0("DirectEngagement");
  OUTLINED_FUNCTION_100_0(&v356);
  v374 = v279;
  v108 = (v330 + 8);
  OUTLINED_FUNCTION_100_0(&v355);
  v373 = v280;
  OUTLINED_FUNCTION_100_0(v354);
  v372 = v281;
  v282 = v251 + 72;
  v377 = xmmword_231479580;
  while (1)
  {
    v283 = *(v251 + 16);
    if (v278 == v283)
    {
      break;
    }

    if (v278 >= v283)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_138_0(&v378);
    sub_2314231F4();
    sub_23144467C(&v389);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
    OUTLINED_FUNCTION_41_1();
    v284 = swift_allocObject();
    OUTLINED_FUNCTION_68(v284);
    v285 = sub_2314776A8();
    v284[3].n128_u64[1] = v285;
    v284[4].n128_u64[0] = MEMORY[0x277D0B7E8];
    __swift_allocate_boxed_opaque_existential_1(&v284[2]);
    sub_231477698();
    OUTLINED_FUNCTION_2_10();
    sub_2313ED944(&qword_280C3CB48, &qword_27DD4DA98, &qword_23147CD60);
    OUTLINED_FUNCTION_145_0(&v379);
    OUTLINED_FUNCTION_130_0();
    sub_2314773D8();

    sub_231477988();
    OUTLINED_FUNCTION_41_1();
    v103 = swift_allocObject();
    OUTLINED_FUNCTION_68(v103);
    v286[7] = v285;
    v286[8] = MEMORY[0x277D0B7E8];
    __swift_allocate_boxed_opaque_existential_1(v286 + 4);
    OUTLINED_FUNCTION_87();
    sub_2314776B8();
    sub_231400E2C(&qword_280C3C190, MEMORY[0x277D1F240]);
    OUTLINED_FUNCTION_144_0(&v368);
    sub_231476F08();

    OUTLINED_FUNCTION_107_0(&v371);
    sub_2314774D8();
    v386 = v285;
    v387 = MEMORY[0x277D0B7F0];
    __swift_allocate_boxed_opaque_existential_1(v385);
    OUTLINED_FUNCTION_45_0();
    sub_2314776B8();
    v382 = v345;
    v383 = MEMORY[0x277D0B730];
    __swift_allocate_boxed_opaque_existential_1(&v379);
    v287 = v344;
    sub_231477208();
    OUTLINED_FUNCTION_37_1(&a14);
    v288(v103, v287);
    __swift_destroy_boxed_opaque_existential_0(v385);
    OUTLINED_FUNCTION_0_13();
    v98 = &qword_23147CD58;
    sub_2313ED944(&qword_27DD4E0E8, &qword_27DD4E0D0, &qword_23147CD58);
    OUTLINED_FUNCTION_107_0(&v380);
    OUTLINED_FUNCTION_130_0();
    sub_2314771C8();
    v289 = *v108;
    v290 = OUTLINED_FUNCTION_128();
    v289(v290);
    __swift_destroy_boxed_opaque_existential_0(&v379);
    OUTLINED_FUNCTION_55_1();
    sub_2313ED944(&qword_27DD4E0F0, &qword_27DD4E0D0, &qword_23147CD58);
    OUTLINED_FUNCTION_139_0();
    sub_2314773A8();
    OUTLINED_FUNCTION_91_0();
    if (v278 < v291)
    {
      OUTLINED_FUNCTION_105_0(&v365);
      OUTLINED_FUNCTION_99_0();
      sub_231477398();
      OUTLINED_FUNCTION_37_1(&a12);
      v292(v21, v341);
    }

    (v289)(v351, v352);
    v127 = *v373;
    v21 = v353;
    (*v373)(v350[1], v353);
    (v127)(v350[0], v21);
    v282 += 48;
    ++v278;
    v251 = v347;
  }

  OUTLINED_FUNCTION_92_0(&v351);
  (*(v293 + 16))(v327, v349, v329);
  OUTLINED_FUNCTION_195(&v365);
  sub_231477658();
  sub_231477378();
  sub_231477368();
  sub_231477398();
  OUTLINED_FUNCTION_90_0();
  sub_231477368();
  v294 = v341;
  v382 = v341;
  v383 = MEMORY[0x277D0B7D0];
  __swift_allocate_boxed_opaque_existential_1(&v379);
  sub_231477658();
  OUTLINED_FUNCTION_0_13();
  sub_2313ED944(v295, v296, v297);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_126_0();
  sub_2314771C8();
  v298 = OUTLINED_FUNCTION_33_1(&a12);
  v299(v298, v294);
  v300 = *(v251 + 8);
  v301 = OUTLINED_FUNCTION_139_0();
  v302(v301);
  OUTLINED_FUNCTION_134();
LABEL_106:
  OUTLINED_FUNCTION_168();
  v321();
  __swift_destroy_boxed_opaque_existential_0(&v379);
LABEL_107:
  OUTLINED_FUNCTION_16();
}

void OUTLINED_FUNCTION_43(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_51_0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_231400E2C(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_172()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_196()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0xE000000000000000;

  return sub_2314784E8();
}

void OUTLINED_FUNCTION_180(uint64_t a1@<X8>)
{
  v1 = *(a1 - 256);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80) + 32;
}

void sub_231400F04()
{
  OUTLINED_FUNCTION_15();
  v102 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_27DD4E0F8, &unk_23147CD80);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_78_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_43_1();
  Value = type metadata accessor for QueryValue();
  v11 = *(*(Value - 8) + 64);
  v12 = MEMORY[0x28223BE20](Value);
  v14 = (&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v104 = &v101 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v101 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v101 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v101 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v101 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v103 = &v101 - v31;
  MEMORY[0x28223BE20](v30);
  v35 = &v101 - v34;
  v36 = *(v102 + 8);
  v37 = *(v102 + 24);
  if (v36 != 6)
  {
    if (v36 != 10)
    {
      if (v36 != 7)
      {

        goto LABEL_48;
      }

      v38 = *(v37 + 16);
      if (!v38)
      {
        goto LABEL_48;
      }

      v104 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v39 = v37 + v104;
      v40 = *(v32 + 72);
      v102 = v37;

      v41 = MEMORY[0x277D84F90];
      while (1)
      {
        OUTLINED_FUNCTION_21_4();
        v42 = OUTLINED_FUNCTION_36_0();
        sub_2314015B4(v42, v43, v44);
        OUTLINED_FUNCTION_1_12();
        sub_2314448B0(v35, v29, v45);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          if (*v29 < 3uLL)
          {
            *v1 = qword_23147CE00[*v29];
            OUTLINED_FUNCTION_129_0();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_150_0(v1, 0);
            OUTLINED_FUNCTION_1_12();
            sub_2314448B0(v1, v103, v46);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v57 = *(v41 + 16);
              OUTLINED_FUNCTION_3_0();
              sub_23141CEC0();
              v41 = v58;
            }

            v47 = v41;
            v48 = *(v41 + 16);
            v49 = v47;
            v50 = *(v47 + 24);
            if (v48 >= v50 >> 1)
            {
              OUTLINED_FUNCTION_20(v50);
              sub_23141CEC0();
              v49 = v59;
            }

            *(v49 + 16) = v48 + 1;
            v41 = v49;
            OUTLINED_FUNCTION_1_12();
            sub_2314448B0(v51, v52, v53);
            goto LABEL_15;
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_13();
          sub_23140166C(v29, v54);
        }

        OUTLINED_FUNCTION_150_0(v1, 1);
        v55 = OUTLINED_FUNCTION_160();
        sub_2313E937C(v55, v56, &unk_23147CD80);
LABEL_15:
        v39 += v40;
        if (!--v38)
        {
          goto LABEL_45;
        }
      }
    }

    v60 = *(v37 + 16);
    if (!v60)
    {
      goto LABEL_48;
    }

    v61 = v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v62 = *(v32 + 72);
    v102 = *(v102 + 24);

    v63 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_21_4();
      sub_2314015B4(v61, v19, v64);
      OUTLINED_FUNCTION_1_12();
      v65 = OUTLINED_FUNCTION_134_0();
      sub_2314448B0(v65, v66, v67);
      OUTLINED_FUNCTION_191();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (!*v14)
        {
          v68 = 1;
          goto LABEL_26;
        }

        if (*v14 == 1)
        {
          v68 = 2;
LABEL_26:
          *v0 = v68;
          OUTLINED_FUNCTION_16_5();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_150_0(v0, 0);
          OUTLINED_FUNCTION_1_12();
          sub_2314448B0(v0, v104, v70);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = *(v63 + 16);
            OUTLINED_FUNCTION_3_0();
            sub_23141CEC0();
            v63 = v77;
          }

          v72 = *(v63 + 16);
          v71 = *(v63 + 24);
          v73 = v63;
          if (v72 >= v71 >> 1)
          {
            OUTLINED_FUNCTION_20(v71);
            sub_23141CEC0();
            v73 = v78;
          }

          *(v73 + 16) = v72 + 1;
          v63 = v73;
          OUTLINED_FUNCTION_1_12();
          sub_2314448B0(v104, v74, v75);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_13();
        sub_23140166C(v14, v69);
      }

      OUTLINED_FUNCTION_150_0(v0, 1);
      sub_2313E937C(v0, &off_27DD4E0F8, &unk_23147CD80);
LABEL_31:
      v61 += v62;
      if (!--v60)
      {
        goto LABEL_45;
      }
    }
  }

  v104 = v33;
  v79 = *(v37 + 16);
  if (!v79)
  {
    goto LABEL_48;
  }

  v80 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v102 = v37;
  v103 = v80;
  v81 = v37 + v80;
  v82 = *(v32 + 72);

  v83 = MEMORY[0x277D84F90];
  do
  {
    OUTLINED_FUNCTION_21_4();
    v84 = OUTLINED_FUNCTION_154();
    sub_2314015B4(v84, v85, v86);
    OUTLINED_FUNCTION_1_12();
    sub_2314448B0(v26, v22, v87);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_8_13();
      sub_23140166C(v22, v95);
LABEL_43:
      OUTLINED_FUNCTION_150_0(v2, 1);
      v96 = OUTLINED_FUNCTION_25();
      sub_2313E937C(v96, v97, &unk_23147CD80);
      goto LABEL_44;
    }

    if (*v22 >= 7uLL)
    {
      goto LABEL_43;
    }

    *v2 = *v22 + 1;
    OUTLINED_FUNCTION_129_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_150_0(v2, 0);
    OUTLINED_FUNCTION_1_12();
    v88 = OUTLINED_FUNCTION_84_0();
    sub_2314448B0(v88, v89, v90);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = *(v83 + 16);
      OUTLINED_FUNCTION_3_0();
      sub_23141CEC0();
      v83 = v99;
    }

    v92 = *(v83 + 16);
    v91 = *(v83 + 24);
    if (v92 >= v91 >> 1)
    {
      OUTLINED_FUNCTION_20(v91);
      sub_23141CEC0();
      v83 = v100;
    }

    *(v83 + 16) = v92 + 1;
    OUTLINED_FUNCTION_1_12();
    sub_2314448B0(v104, v93, v94);
LABEL_44:
    v81 += v82;
    --v79;
  }

  while (v79);
LABEL_45:

LABEL_48:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2314015B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_17();
  v8(v7);
  return a2;
}

uint64_t sub_231401610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_17();
  v8(v7);
  return a2;
}

uint64_t sub_23140166C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2314016C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_231401768()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  sub_2313ED944(&qword_280C3D6D0, &qword_27DD4E0B0, &qword_23147CCE8);
  sub_231400E2C(qword_280C3CB80, MEMORY[0x277D1F230]);
  return sub_231476F68();
}

const void *sub_231401890(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D8, &qword_23147A1F0);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_98_0(v3);
  OUTLINED_FUNCTION_100(v4);
  return v3;
}

uint64_t OUTLINED_FUNCTION_112()
{

  return sub_2313F31EC();
}

__n128 OUTLINED_FUNCTION_112_0@<Q0>(char a1@<W8>)
{
  *(v3 - 128) = v1;
  *(v3 - 120) = a1;
  *(v3 - 119) = *(v2 + 9);
  result = *(v2 + 25);
  *(v3 - 103) = result;
  return result;
}

void *sub_23140193C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v10 = 0;
    a3 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v9 = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v25 = a4;
    while (1)
    {
      if (v9 >= a3)
      {
        goto LABEL_24;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            v7 = 0;
            a3 = v9;
            result = v24;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v13);
          ++v10;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v13 = v10;
LABEL_15:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(a4 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(a4 + 56) + 24 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v8 = *v16;
      *(v8 + 8) = v17;
      *(v8 + 16) = v19;
      *(v8 + 24) = v20;
      *(v8 + 32) = v21;
      v22 = a3;
      if (v12 == a3)
      {
        break;
      }

      v8 += 40;

      result = sub_231401AEC(v19, v20, v21);
      v9 = v12;
      v10 = v13;
      a4 = v25;
      a3 = v22;
    }

    sub_231401AEC(v19, v20, v21);
    v10 = v13;
    result = v24;
    a4 = v25;
    a3 = v22;
LABEL_19:
    v5 = v23;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_231401AEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

void sub_231401B20(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231402F78(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_231401C64(v5);
  *a1 = v2;
}

void sub_231401B8C()
{
  OUTLINED_FUNCTION_64();
  if (v2 != v1)
  {
    v4 = v2;
    v5 = v1;
    v6 = *v3;
    v7 = *v3 + 40 * v2 - 40;
    v8 = v0 - v2;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = v10 + 40;
        v12 = *(v10 + 40) == *v10 && *(v10 + 48) == *(v10 + 8);
        if (v12 || (sub_2314787C8() & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v14 = *(v10 + 40);
        v13 = *(v10 + 48);
        v15 = *(v10 + 72);
        v16 = *(v10 + 56);
        v17 = *(v10 + 16);
        v18 = *(v10 + 32);
        *v11 = *v10;
        *(v10 + 56) = v17;
        *v10 = v14;
        *(v10 + 8) = v13;
        *(v10 + 16) = v16;
        *(v10 + 32) = v15;
        v10 -= 40;
        *(v11 + 32) = v18;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != v5)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_62();
}

void sub_231401C64(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_231478788() < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8C0, &qword_231479890);
        v3 = sub_231478178();
        *(v3 + 16) = v2;
      }

      OUTLINED_FUNCTION_138();
      sub_23141DB14(v4, v5, v6, v7);
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    sub_231401B8C();
  }
}

uint64_t sub_231401D64(uint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  *&v43 = a1;
  *(&v43 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDC0, &qword_23147BA70);
  if (swift_dynamicCast())
  {
    sub_2313F198C(v41, &v44);
    __swift_project_boxed_opaque_existential_1(&v44, v45);
    sub_2314769A8();
    v41[0] = v43;
    __swift_destroy_boxed_opaque_existential_0(&v44);
    goto LABEL_59;
  }

  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_23140224C(v41, &qword_27DD4DDC8, &unk_23147BA78);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v41[0] = a1;
    *(&v41[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v41;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_231478558();
  }

  sub_2314022AC(v4, v5, &v44);
  v6 = *(&v44 + 1);
  v7 = v44;
  if (*(&v44 + 1) >> 60 != 15)
  {
    v41[0] = v44;
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
  *&v41[0] = MEMORY[0x23192CC30](v8);
  *(&v41[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v41[0]);
  v10 = sub_231431D98(sub_231432420);
  v12 = *(&v41[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v41[0]);
  switch(*(&v41[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v41[0]) - LODWORD(v41[0]);
      if (__OFSUB__(DWORD1(v41[0]), v41[0]))
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
        v18 = *(*&v41[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v41[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v41[0] + 16);
      v20 = *(*&v41[0] + 24);
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

        sub_231476B68();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v40 = v7;
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
      *(&v43 + 7) = 0;
      *&v43 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v41[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v31 = OUTLINED_FUNCTION_9_10();
      v27 = sub_231431CE8(v31, v32, v33);
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
      v8 = sub_231477FF8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_231478028();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v44 = v13;
      *(&v44 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v44 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_231478558();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v34 = OUTLINED_FUNCTION_9_10();
      v17 = sub_231431CE8(v34, v35, v36);
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

    OUTLINED_FUNCTION_9_10();
    v17 = sub_231478008();
LABEL_46:
    *(&v43 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      OUTLINED_FUNCTION_11_10();
      sub_231476B88();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    OUTLINED_FUNCTION_11_10();
    sub_231476B88();
    sub_2313F3D2C(v40, v6);
    goto LABEL_58;
  }

  sub_2313F3D2C(v40, v6);
LABEL_59:
  v37 = v41[0];
  sub_2313F3FD4(*&v41[0], *(&v41[0] + 1));

  sub_2313EB8A4(v37, *(&v37 + 1));
  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t sub_23140224C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2314022AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_231476B08();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_231476878();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_231476838();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_231476B58();
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

void OUTLINED_FUNCTION_65()
{

  sub_2313FBD8C();
}

uint64_t OUTLINED_FUNCTION_65_1()
{
  v2 = *(v0 - 168);

  return sub_23140166C(v2, type metadata accessor for _InteractionWithEntity);
}

const void *sub_2314023F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D9A0, &qword_2314798E8);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_98_0(v3);
  OUTLINED_FUNCTION_100(v4);
  return v3;
}

uint64_t sub_231402470(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2314025F0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23144923C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_231403918(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_23140265C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_2314787C8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_113()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_113_0@<Q0>(char a1@<W8>)
{
  *(v3 - 136) = v1;
  *(v3 - 128) = a1;
  *(v3 - 127) = *(v2 + 9);
  result = *(v2 + 25);
  *(v3 - 111) = result;
  return result;
}

uint64_t sub_2314027B0(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v6;
LABEL_7:
      result = sub_23140285C(a1, v4);
      if (v2)
      {
LABEL_8:

        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x23140284CLL);
      }

      return result;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      goto LABEL_7;
    default:
      result = sub_2314068D0();
      if (!v2)
      {
        return result;
      }

      goto LABEL_8;
  }
}

uint64_t sub_23140285C(uint64_t a1, uint64_t a2)
{
  result = sub_231476848();
  if (!result || (result = sub_231476868(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_231476858();
      sub_231477D88();
      OUTLINED_FUNCTION_3_4();
      sub_23140292C(v5, v6);
      return sub_231477D48();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23140292C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_231402974()
{
  OUTLINED_FUNCTION_64();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8B8, &unk_23147A238);
  v2 = sub_231478628();
  v3 = 0;
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_36();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v12 = v11 + 64;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_8:
      v16 = v13 | (v3 << 6);
      v17 = (*(v1 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = 3 * v16;
      v21 = *(v1 + 56) + 24 * v16;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v25 = (v2[6] + 16 * v16);
      *v25 = v19;
      v25[1] = v18;
      v26 = v2[7] + 8 * v20;
      *v26 = v22;
      *(v26 + 8) = v23;
      *(v26 + 16) = v24;
      v27 = v2[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v2[2] = v29;

      sub_231401AEC(v22, v23, v24);
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        OUTLINED_FUNCTION_62();
        return;
      }

      v15 = *(v1 + 64 + 8 * v3);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void OUTLINED_FUNCTION_36_1(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return sub_2314786B8();
}

uint64_t sub_231402B08(uint64_t a1, unint64_t a2)
{
  v3 = *v2;
  switch(*(v2 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_10_14();
      v49 = v3;
      v6 = sub_231478798();
      goto LABEL_16;
    case 2:
      v21 = *v2;
      v46 = 0;
      v47 = 0xE000000000000000;
      MEMORY[0x23192E060](a1, a2);
      OUTLINED_FUNCTION_10_14();
      sub_2314781E8();
      goto LABEL_17;
    case 3:
      v22 = *(v2 + 8);
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_10_14();
      v23 = OUTLINED_FUNCTION_22_5();
      MEMORY[0x23192E060](v23);
      goto LABEL_17;
    case 4:
      v49 = 0;
      v50 = 0xE000000000000000;
      v9 = *(v3 + 16);
      if (!v9)
      {
        return 0;
      }

      v10 = (v3 + 48);
      do
      {
        v11 = *(v10 - 2);
        v12 = *(v10 - 1);
        v13 = *v10;
        v10 += 24;
        v46 = v11;
        v47 = v12;
        v48 = v13;
        v14 = OUTLINED_FUNCTION_22_5();
        sub_231401AEC(v14, v15, v13);
        v16 = sub_231402B08(a1, a2);
        v18 = v17;
        v19 = OUTLINED_FUNCTION_22_5();
        sub_231403090(v19, v20, v13);
        MEMORY[0x23192E060](v16, v18);

        --v9;
      }

      while (v9);
      return v49;
    case 5:
      v49 = 0;
      v50 = 0xE000000000000000;
      v46 = sub_231401864(v3);
      sub_231402E40(&v46);
      v25 = *(v46 + 16);
      if (v25)
      {
        v26 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v26 = a1 & 0xFFFFFFFFFFFFLL;
        }

        v45 = v26;
        v27 = (v46 + 64);
        do
        {
          v29 = *(v27 - 4);
          v28 = *(v27 - 3);
          v30 = *(v27 - 2);
          v31 = *(v27 - 1);
          v32 = *v27;
          if (v45)
          {
            OUTLINED_FUNCTION_27_3();

            v33 = OUTLINED_FUNCTION_3_7();
            sub_231401AEC(v33, v34, v35);
            MEMORY[0x23192E060](46, 0xE100000000000000);
            MEMORY[0x23192E060](v29, v28);

            v29 = v46;
            v28 = v47;
          }

          else
          {

            v36 = OUTLINED_FUNCTION_3_7();
            sub_231401AEC(v36, v37, v38);
          }

          v27 += 40;
          v46 = v30;
          v47 = v31;
          v48 = v32;
          v39 = sub_231402B08(v29, v28);
          v41 = v40;

          v42 = OUTLINED_FUNCTION_3_7();
          sub_231403090(v42, v43, v44);
          MEMORY[0x23192E060](v39, v41);

          --v25;
        }

        while (v25);

        return v49;
      }

      else
      {

        return 0;
      }

    default:
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_10_14();
      if (v3)
      {
        v6 = 1702195828;
      }

      else
      {
        v6 = 0x65736C6166;
      }

      if (v3)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      v8 = v7;
LABEL_16:
      MEMORY[0x23192E060](v6, v8);

LABEL_17:
      MEMORY[0x23192E060](10, 0xE100000000000000);
      return v46;
  }
}

uint64_t sub_231402E40(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231402F78(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_231402F8C(v6);
  *a1 = v2;
  return result;
}

void sub_231402EAC()
{
  OUTLINED_FUNCTION_54();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_3();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_43(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D8, &qword_23147A1F0);
      v8 = OUTLINED_FUNCTION_49();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_33(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_41();
        sub_23141FBB4(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8C0, &qword_231479890);
    OUTLINED_FUNCTION_48();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_37();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_231402F8C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231478788();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8C0, &qword_231479890);
        v6 = sub_231478178();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2314488A0(v7, v8, a1, v4);
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
    return sub_231406F78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231403090(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

uint64_t sub_2314030BC()
{
  OUTLINED_FUNCTION_73();
  v5 = OUTLINED_FUNCTION_149(v1, v2, v3, v4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_17();
  v9(v8);
  return v0;
}

void OUTLINED_FUNCTION_71(uint64_t a1@<X8>)
{
  *(a1 + 32) = *(v4 - 184);
  *(a1 + 40) = v1;
  *(a1 + 48) = v2;
  *(a1 + 56) = v3;
}

uint64_t OUTLINED_FUNCTION_48()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_48_1()
{
  v2 = *(v0 - 256);

  return sub_2314786F8();
}

uint64_t OUTLINED_FUNCTION_146@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_beginAccess();
}

uint64_t *OUTLINED_FUNCTION_146_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 64) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 32));
}

void sub_231403238()
{
  OUTLINED_FUNCTION_15();
  v36 = v2;
  v40 = sub_231476CA8();
  v3 = OUTLINED_FUNCTION_4(v40);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_137();
  Value = type metadata accessor for QueryValue();
  v8 = OUTLINED_FUNCTION_4(Value);
  v39 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_141();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D568, &qword_2314795C8);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  sub_2313E93D4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 6u:
      v20 = *v17;
      v21 = *(*v17 + 16);
      if (v21)
      {
        v42 = MEMORY[0x277D84F90];
        sub_2313FC060(0, v21, 0);
        v22 = 0;
        v23 = v42;
        v24 = *(v5 + 80);
        OUTLINED_FUNCTION_59();
        v38 = v20 + v25;
        v37 = v5 + 8;
        do
        {
          if (v22 >= *(v20 + 16))
          {
            __break(1u);
            JUMPOUT(0x2314036A8);
          }

          v26 = *(v5 + 16);
          v27 = v40;
          v26(v0, v38 + *(v5 + 72) * v22, v40);
          v26(v1, v0, v27);
          swift_storeEnumTagMultiPayload();
          (*(v5 + 8))(v0, v27);
          v42 = v23;
          v29 = *(v23 + 16);
          v28 = *(v23 + 24);
          if (v29 >= v28 >> 1)
          {
            v33 = OUTLINED_FUNCTION_20(v28);
            sub_2313FC060(v33, v29 + 1, 1);
            v23 = v42;
          }

          ++v22;
          *(v23 + 16) = v29 + 1;
          v30 = *(v39 + 80);
          OUTLINED_FUNCTION_59();
          v32 = *(v31 + 72);
          OUTLINED_FUNCTION_0_5();
          sub_2313F31EC();
        }

        while (v21 != v22);
      }

      else
      {
        v34 = *v17;

        v23 = MEMORY[0x277D84F90];
      }

      *v36 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_35();
      break;
    default:
      v18 = OUTLINED_FUNCTION_16_1();
      v19(v18);
      OUTLINED_FUNCTION_67();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &qword_2314795C0);
      OUTLINED_FUNCTION_35();
      break;
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_16();
}

__n128 OUTLINED_FUNCTION_76_0()
{
  v2 = v0[1].n128_u8[0];
  result = *v0;
  *(v1 - 112) = *v0;
  *(v1 - 96) = v2;
  return result;
}

void OUTLINED_FUNCTION_61_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_61_1(__n128 a1)
{
  *(v1 - 112) = a1;

  return sub_2314446D0(v1 - 144, v1 - 240);
}

uint64_t OUTLINED_FUNCTION_84@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_23141D9F4(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_115()
{
  v2 = *(v0 - 192);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_115_0()
{
  v2 = *v0;
  v3 = *(v0 - 3);
  v4 = *(v0 - 2);
  v5 = *(v0 - 5);
  v6 = *(v0 - 4);
  v7 = *(v0 - 8);
  *(v1 - 144) = v5;
  *(v1 - 136) = v6;
  *(v1 - 128) = v3;
  *(v1 - 120) = v4;
  *(v1 - 112) = v7;
  *(v1 - 104) = v2;
  sub_2313E9688(v5, v6, v3, v4, v7);
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_2()
{

  return sub_231478948();
}

size_t sub_23140380C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_149(a1, a2, a3, a4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_29(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      OUTLINED_FUNCTION_100(result - v13);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231403918(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231478788();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D628, &unk_2314798F0);
        v6 = sub_231478178();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23141E06C(v7, v8, a1, v4);
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
    return sub_23140265C(0, v2, 1, a1);
  }

  return result;
}

size_t sub_231403A1C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_23140380C(v9, a2, &qword_27DD4D8B0, &qword_23147A230, &qword_27DD4D888, &unk_23147A210);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D888, &unk_23147A210) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_2314070BC(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_231403B58(uint64_t a1)
{
  v2 = sub_231477D58();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_231403C40();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 32);
    do
    {
      v10 = *v9++;
      v8 = v10 | (v8 << 8);
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_231403C40()
{
  v1 = sub_231477D58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  (*(v2 + 16))(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  sub_2313F7138(&unk_280C3C170, MEMORY[0x277CC5290]);
  v5 = sub_2314780B8();
  v6 = *(v5 + 16);
  (*(v2 + 8))(v0, v1);
  if (v6 < 2)
  {
    return;
  }

  v7 = v6 >> 1;
  v8 = v6 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v8)
    {
      goto LABEL_9;
    }

    v10 = *(v5 + 16);
    if (i - 32 >= v10)
    {
      break;
    }

    if (v8 - 32 >= v10)
    {
      goto LABEL_12;
    }

    v11 = *(v5 + i);
    v12 = *(v5 + v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2314285DC(v5);
      v5 = v13;
    }

    *(v5 + i) = v12;
    *(v5 + v8) = v11;
LABEL_9:
    --v8;
    if (!--v7)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t *OUTLINED_FUNCTION_88(uint64_t a1)
{
  v3 = *(a1 + 9);
  v4 = *(a1 + 25);

  return sub_2313F4D04();
}

void InteractionQuery.filter(startDate:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_175();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  v13 = *v0;
  v14 = v0[1];
  v15 = *(v0 + 16);
  sub_231403238();
  OUTLINED_FUNCTION_172();
  sub_2313E95CC(v12, v1, &unk_27DD4D680, &qword_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  v16 = v22[0];
  v17 = v22[1];
  sub_2313F3390();
  OUTLINED_FUNCTION_147_0();
  v18 = OUTLINED_FUNCTION_191();
  sub_2313E937C(v18, v19, &qword_2314795C0);
  OUTLINED_FUNCTION_62_1(v3 + 1);
  v21 = v20 + 32 * v3;
  *(v21 + 32) = v16;
  *(v21 + 40) = v17;
  OUTLINED_FUNCTION_118_0(v21);
  OUTLINED_FUNCTION_16();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_164()
{
  v2 = (v0 + 32 * *(v1 - 256));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t sub_231403FE4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_231412C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_231404004@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_171(a3);
  v7 = sub_231477668();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_177();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v13 = OUTLINED_FUNCTION_4(v60);
  v62 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_78_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v24);
  v25 = sub_231476CA8();
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  sub_231476C98();
  sub_231476BC8();
  v32 = v31;
  v33 = *(v28 + 8);
  v34 = OUTLINED_FUNCTION_134();
  v35(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
  OUTLINED_FUNCTION_41_1();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_231479580;
  OUTLINED_FUNCTION_132();
  MEMORY[0x23192D700](0xD00000000000001CLL);
  v37 = sub_231476F88();
  v38 = MEMORY[0x277D0B6D8];
  *(v36 + 56) = v37;
  *(v36 + 64) = v38;
  v59 = v37;
  __swift_allocate_boxed_opaque_existential_1((v36 + 32));
  sub_231477508();
  v61 = *(v10 + 8);
  (v61)(v4, v7);
  OUTLINED_FUNCTION_2_10();
  v39 = OUTLINED_FUNCTION_142_0();
  v40 = sub_2313ED944(v39, a1, a2);
  OUTLINED_FUNCTION_140_0();
  sub_2314773F8();

  OUTLINED_FUNCTION_41_1();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_184(v41);
  sub_231405614(v32 + -120.0, v32);
  *(v36 + 56) = v37;
  *(v36 + 64) = MEMORY[0x277D0B6D8];
  __swift_allocate_boxed_opaque_existential_1((v36 + 32));
  sub_231477508();
  (v61)(v4, v7);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_140_0();
  sub_2314773F8();

  v42 = *(v62 + 8);
  v42(v3, v60);
  OUTLINED_FUNCTION_41_1();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_184(v43);
  sub_231405614(v32 + -600.0, v32 + -120.0);
  *(v36 + 56) = v59;
  *(v36 + 64) = MEMORY[0x277D0B6D8];
  __swift_allocate_boxed_opaque_existential_1((v36 + 32));
  sub_231477508();
  (v61)(v4, v7);
  OUTLINED_FUNCTION_89();
  sub_2314773F8();

  v44 = OUTLINED_FUNCTION_98();
  (v42)(v44);
  OUTLINED_FUNCTION_41_1();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_26_4(v45);
  sub_231405614(v32 + -3600.0, v32 + -600.0);
  *(v61 + 56) = v59;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  OUTLINED_FUNCTION_157();
  sub_231477508();
  (v61)(v4, v7);
  sub_2314773F8();

  v46 = OUTLINED_FUNCTION_96_0();
  (v42)(v46);
  OUTLINED_FUNCTION_41_1();
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_26_4(v47);
  sub_231405614(v32 + -21600.0, v32 + -3600.0);
  *(v61 + 56) = v59;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  sub_231477508();
  v48 = OUTLINED_FUNCTION_84_0();
  (v61)(v48);
  OUTLINED_FUNCTION_144_0(&v63);
  sub_2314773F8();

  v42(v58, v60);
  OUTLINED_FUNCTION_41_1();
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_26_4(v49);
  sub_231405614(v32 + -86400.0, v32 + -21600.0);
  *(v61 + 56) = v59;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  sub_231477508();
  (v61)(v4, v7);
  sub_2314773F8();

  v42(v40, v60);
  OUTLINED_FUNCTION_41_1();
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_26_4(v50);
  sub_231405614(v32 + -604800.0, v32 + -86400.0);
  *(v61 + 56) = v59;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  OUTLINED_FUNCTION_157();
  sub_231477508();
  v51 = OUTLINED_FUNCTION_84_0();
  (v61)(v51);
  sub_2314773F8();

  v52 = OUTLINED_FUNCTION_160();
  (v42)(v52);
  OUTLINED_FUNCTION_41_1();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_26_4(v53);
  sub_231405614(v32 + -2419200.0, v32 + -604800.0);
  *(v61 + 56) = v59;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  v54 = v7;
  sub_231477508();
  (v61)(v4, v7);
  OUTLINED_FUNCTION_138_0(&v64);
  OUTLINED_FUNCTION_140_0();
  sub_2314773F8();

  v55 = OUTLINED_FUNCTION_98();
  (v42)(v55);
  OUTLINED_FUNCTION_41_1();
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_231479580;
  sub_231405614(0.0, v32 + -2419200.0);
  *(v56 + 56) = v59;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  sub_231477508();
  (v61)(v4, v54);
  OUTLINED_FUNCTION_140_0();
  sub_2314773F8();

  return (v42)(v61, v60);
}

void OUTLINED_FUNCTION_136()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_156()
{
  v1 = *(v0 - 244);
  v2 = *(v0 - 256);
  v3 = *(v0 - 264);
}

uint64_t OUTLINED_FUNCTION_132_0(uint64_t result)
{
  *(v1 + *(result + 24)) = 0;
  v2 = *(result + 32);
  return result;
}

uint64_t sub_231404A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E140, &unk_23147CDD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for HistoryStats();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2314058C0();
  sub_231477628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  sub_2313ED944(&qword_280C3D6D0, &qword_27DD4E0B0, &qword_23147CCE8);
  v15 = v29;
  result = sub_2314775E8();
  if (!v15)
  {
    v29 = v11;
    v17 = v27;
    while (1)
    {
      v18 = sub_2313FA820();
      v19 = v18;
      if (!v18)
      {
        break;
      }

      sub_2314438EC(v17, v18);
      sub_231442C9C(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
      sub_2314015B4(v14, v10, type metadata accessor for HistoryStats);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v29);
      sub_231460450();

      sub_23140166C(v14, type metadata accessor for HistoryStats);
    }
  }

  return result;
}

void sub_231404CE8()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v4 = sub_231477468();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v10 = sub_2314771F8();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_177();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v1);
  sub_2314774B8();
  sub_2314771E8();
  v16 = *(v13 + 8);
  v17 = OUTLINED_FUNCTION_25();
  v18(v17);
  sub_2314784E8();
  sub_231477838();
  sub_231400E2C(&qword_280C3CE70, MEMORY[0x277D0B828]);
  sub_231478798();

  OUTLINED_FUNCTION_132();
  MEMORY[0x23192E060](0xD000000000000011);
  sub_231477828();
  sub_231400E2C(&qword_280C3CE78, MEMORY[0x277D0B748]);
  v19 = sub_231478798();
  MEMORY[0x23192E060](v19);

  v20 = *(v7 + 8);
  v21 = OUTLINED_FUNCTION_16_5();
  v22(v21);

  OUTLINED_FUNCTION_16();
}

uint64_t sub_231404F7C(uint64_t a1)
{
  v2 = type metadata accessor for Donation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_231404FD8()
{
  sub_231476CA8();
  if (v0 <= 0x3F)
  {
    sub_2314050B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2314050B0()
{
  if (!qword_280C3CEC0[0])
  {
    v0 = sub_231478418();
    if (!v1)
    {
      atomic_store(v0, qword_280C3CEC0);
    }
  }
}

uint64_t sub_23140510C()
{
  result = sub_231476CA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23140518C()
{
  result = qword_280C3C198;
  if (!qword_280C3C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C198);
  }

  return result;
}

void OUTLINED_FUNCTION_150()
{

  sub_2313E8CDC();
}

uint64_t OUTLINED_FUNCTION_150_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_231405268(uint64_t a1)
{
  v2 = sub_231476F88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_231403FE4(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_231403FE4(v13 > 1, v14 + 1, 1);
      }

      v20 = v2;
      v21 = MEMORY[0x277D0B6D8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_2313F198C(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_231405434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_17();
  v8(v7);
  return a2;
}

uint64_t sub_231405490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2314054F0()
{
  OUTLINED_FUNCTION_73();
  v2 = v1(0);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_116()
{
  v2 = *(v0 - 208);

  return sub_2313E93D4();
}

uint64_t sub_23140557C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_231412D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_152()
{

  return type metadata accessor for QueryFilter();
}

uint64_t *OUTLINED_FUNCTION_95_0@<X0>(char a1@<W8>)
{
  *(v3 - 128) = v1;
  *(v3 - 120) = a1;
  *(v3 - 119) = *(v2 + 9);
  *(v3 - 103) = *(v2 + 25);

  return sub_2313F4D04();
}

uint64_t sub_231405614(double a1, double a2)
{
  v4 = sub_2314773C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_231477378();
  sub_231477368();
  v6 = MEMORY[0x277D839F8];
  v7 = MEMORY[0x277D0B858];
  v10 = MEMORY[0x277D839F8];
  v11 = MEMORY[0x277D0B858];
  *v9 = a1;
  sub_231477388();
  sub_2313E937C(v9, &qword_27DD4E0C8, &qword_23147CD50);
  sub_231477368();
  v10 = v6;
  v11 = v7;
  *v9 = a2;
  sub_231477388();
  sub_2313E937C(v9, &qword_27DD4E0C8, &qword_23147CD50);
  sub_231477368();
  return sub_231477658();
}

uint64_t OUTLINED_FUNCTION_147()
{
  v3 = *(*(*(v1 - 200) + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_147_0()
{
  v2 = *(*v0 + 16);

  return sub_2313F34A0(v2);
}

void sub_2314058C0()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_4(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_177();
  if (byte_27DD4EE00 == 2 || (has_internal_diagnostics = os_variant_has_internal_diagnostics(), byte_27DD4EE00 = has_internal_diagnostics, has_internal_diagnostics))
  {
    v32 = v4;
    (*(v11 + 16))(v0, v6, v9);
    v16 = qword_280C3CF50;

    if (v16 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v17 = sub_231477B68();
    __swift_project_value_buffer(v17, qword_280C3D970);

    v18 = sub_231477B58();
    v19 = sub_2314782A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_2313EB684(v32, v2, &v33);
      *(v20 + 12) = 2080;
      sub_231404CE8();
      v22 = v21;
      v24 = v23;
      v25 = *(v11 + 8);
      v26 = OUTLINED_FUNCTION_84_0();
      v27(v26);
      v28 = sub_2313EB684(v22, v24, &v33);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_2313E1000, v18, v19, "InteractionQuery#logGeneratedSQL (%s): %s", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    else
    {

      v29 = *(v11 + 8);
      v30 = OUTLINED_FUNCTION_84_0();
      v31(v30);
    }
  }

  OUTLINED_FUNCTION_16();
}

uint64_t OUTLINED_FUNCTION_153()
{

  return sub_231477F68();
}

BOOL sub_231405B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2314788E8();
  sub_231477F38();
  v7 = sub_231478918();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_2314787C8();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_231405C58()
{
  v1 = *(v0 + 16);

  v2 = sub_231406EA0(&qword_27DD4EB60, &qword_23147FCF8);

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_231405CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_231405D1C(uint64_t *a1)
{
  v2 = sub_231476CA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v7 = *a1;
  v8 = *a1 + 64;
  v9 = 1 << *(*a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(*a1 + 64);
  v12 = (v9 + 63) >> 6;
  v42 = (v4 + 8);
  result = swift_bridgeObjectRetain_n();
  v14 = 0;
  v41 = v7;
  v39 = v2;
  v38 = v6;
  v37 = v7;
  if (v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      do
      {
LABEL_8:
        v16 = __clz(__rbit64(v11)) | (v14 << 6);
        v17 = *(v7 + 56);
        v18 = *(v7 + 48) + 56 * v16;
        v19 = *(v18 + 48);
        v20 = *(v18 + 32);
        v21 = *v18;
        v47[1] = *(v18 + 16);
        v47[2] = v20;
        v47[0] = v21;
        v48 = v19;
        v45 = *(v18 + 8);
        v22 = *(v18 + 24);
        v43 = *(v18 + 40);
        v44 = v22;
        v23 = *(v17 + 8 * v16);
        sub_231406050(v47, v46);

        sub_231476C98();
        v24 = *(*v23 + 112);
        sub_231407184();
        if ((sub_231477E38() & 1) == 0)
        {
          v25 = sub_23140674C(v47);
          if (v26)
          {
            v27 = v25;
            v28 = v40;
            v29 = *v40;
            swift_isUniquelyReferenced_nonNull_native();
            v46[0] = *v28;
            v30 = *(v46[0] + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD90, &unk_23147FD00);
            v6 = v38;
            sub_2314785F8();
            v31 = v46[0];
            v32 = (*(v46[0] + 48) + 56 * v27);
            v33 = v32[1];
            v34 = v32[3];
            v35 = v32[5];

            v36 = *(*(v31 + 56) + 8 * v27);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAD0, &qword_23147F908);
            sub_23140769C();
            v2 = v39;
            sub_231478608();

            v41 = v31;
            *v40 = v31;
            v7 = v37;
          }
        }

        v11 &= v11 - 1;
        (*v42)(v6, v2);
      }

      while (v11);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2314060AC()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13_2();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_9(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2314068B0;
  *(v4 + 24) = v0;
  v8[4] = sub_2313EAA4C;
  v8[5] = v4;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  v8[2] = v5;
  v8[3] = &block_descriptor_14;
  _Block_copy(v8);
  OUTLINED_FUNCTION_12_2();

  dispatch_sync(v1, v2);
  _Block_release(v2);
  v6 = OUTLINED_FUNCTION_6_0();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2314061B4()
{
  v1 = *(v0 + 16);

  sub_2314060AC();
}

uint64_t sub_23140620C(uint64_t a1, __int128 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D988, &unk_23147A270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  sub_231461370();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2313E937C(v7, &qword_27DD4D988, &unk_23147A270);
    sub_23146093C(a2);
    sub_2314071DC(a2);
    v12 = a1;
    v13 = &qword_27DD4D988;
    v14 = &unk_23147A270;
  }

  else
  {
    sub_231406994(v7, v11);
    sub_2314063B0(v11, a2);
    sub_2314071DC(a2);
    sub_2313E937C(a1, &qword_27DD4D988, &unk_23147A270);
    v13 = &qword_27DD4D990;
    v14 = &unk_23147FCE0;
    v12 = v11;
  }

  return sub_2313E937C(v12, v13, v14);
}

uint64_t sub_2314063B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26[-v7];
  v9 = sub_231476CA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v26[-v15];
  v17 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v17;
  v29[2] = *(a2 + 32);
  v30 = *(a2 + 48);
  sub_231476C98();
  v18 = *(v3 + 24);
  sub_231476BE8();
  v19 = *(v10 + 8);
  v19(v14, v9);
  sub_231461370();
  (*(v10 + 16))(v14, v16, v9);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAD0, &qword_23147F908);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  sub_231406994(v8, v23 + *(*v23 + 104));
  (*(v10 + 32))(v23 + *(*v23 + 112), v14, v9);
  v24 = *(v3 + 16);
  v27 = v29;
  v28 = v23;

  sub_2314060AC();

  return (v19)(v16, v9);
}

uint64_t sub_231406630(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_23140674C(a2);
  OUTLINED_FUNCTION_0_7(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = sub_231478888();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD90, &unk_23147FD00);
  if (sub_2314785F8())
  {
    v14 = *v3;
    sub_23140674C(a2);
    OUTLINED_FUNCTION_10_8();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  v17 = *v3;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = a1;
  }

  else
  {
    sub_23140720C(v12, a2, a1, v17);
    return sub_231406050(a2, v21);
  }
}

unint64_t sub_23140674C(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_2314788E8();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  sub_231477F38();
  sub_231477F38();
  sub_231477F38();
  MEMORY[0x23192E9B0](v10);
  v11 = sub_231478918();

  return sub_2314072F0(a1, v11);
}

uint64_t sub_231406800(uint64_t *a1, uint64_t *a2, uint64_t a3)
{

  v6 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_231406630(a3, a2);
  *a1 = v8;
  return result;
}

uint64_t sub_23140686C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  return sub_231406800(a1, v5, a3);
}

uint64_t sub_2314068D0()
{
  v4 = *MEMORY[0x277D85DE8];
  sub_231477D88();
  OUTLINED_FUNCTION_3_4();
  sub_23140292C(v0, v1);
  result = sub_231477D48();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_231406994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231406A04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D988, &unk_23147A270);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-1] - v9;
  v12 = a1[4];
  v11 = a1[5];
  v14 = a1[6];
  v13 = a1[7];
  v15 = *(a1 + *(type metadata accessor for _NewInteraction(0) + 64));
  v21[0] = v12;
  v21[1] = v11;
  v21[2] = v14;
  v21[3] = v13;
  v21[4] = v14;
  v21[5] = v13;
  v21[6] = v15;
  v16 = *(v2 + 16);
  swift_bridgeObjectRetain_n();

  sub_231406B50(v21, v10);
  sub_2314071DC(v21);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v17) == 1)
  {
    sub_2313E937C(v10, &qword_27DD4D988, &unk_23147A270);
    v18 = 1;
  }

  else
  {
    sub_231406994(v10, a2);
    v18 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v18, 1, v17);
}

uint64_t sub_231406B50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_231476CA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);

  v11 = sub_231406EA0(&qword_27DD4EB60, &qword_23147FCF8);

  v12 = sub_231406DA4(a1, v11);

  if (v12)
  {
    sub_231476C98();
    v13 = *(*v12 + 112);
    v14 = sub_231476C18();
    (*(v6 + 8))(v9, v5);
    if (v14)
    {
      v15 = *(*v12 + 104);
      sub_231461370();

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
      v17 = a2;
      v18 = 0;
    }

    else
    {
      sub_23146093C(a1);

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
      v17 = a2;
      v18 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v19);
  }
}

uint64_t sub_231406DA4(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_23140674C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_231406DF4()
{
  OUTLINED_FUNCTION_11_1();
  v1 = *(v0 + 24);
}

uint64_t sub_231406E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231406E28();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_231406EA0(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_231478318();
  return v5;
}

uint64_t sub_231406EF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  OUTLINED_FUNCTION_29(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_56_0(v5);

  return sub_2313FDE50(v7, v8, v9, v10, v11);
}

uint64_t sub_231406F78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = v10 + 40;
        result = *(v10 + 40);
        if (result == *v10 && *(v10 + 48) == *(v10 + 8))
        {
          break;
        }

        result = sub_2314787C8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v10 + 40);
        v13 = *(v10 + 48);
        v15 = *(v10 + 72);
        v16 = *(v10 + 56);
        v17 = *(v10 + 16);
        v18 = *(v10 + 32);
        *v11 = *v10;
        *(v10 + 56) = v17;
        *v10 = v14;
        *(v10 + 8) = v13;
        *(v10 + 16) = v16;
        *(v10 + 32) = v15;
        v10 -= 40;
        *(v11 + 32) = v18;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t SGSiriCanLearnFromApp(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

uint64_t sub_2314070BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_73();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_109(), v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), result = OUTLINED_FUNCTION_3(v10), v4 + *(v12 + 72) * v3 <= a3))
  {
    v13 = OUTLINED_FUNCTION_109();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_39_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_39_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_231407184()
{
  result = qword_280C3CB68;
  if (!qword_280C3CB68)
  {
    sub_231476CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3CB68);
  }

  return result;
}

unint64_t sub_23140720C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
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

uint64_t sub_23140726C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAC0, &qword_23147D020);
  swift_allocObject();
  v0 = sub_231407518(20.0);
  type metadata accessor for SiriRemembersDonationCache();
  swift_allocObject();
  result = sub_2314078F8(v0);
  qword_280C3D8C8 = result;
  return result;
}

unint64_t sub_2314072F0(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v24 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v6 = *a1;
    v5 = a1[1];
    v7 = a1[2];
    v8 = a1[3];
    v21 = a1[4];
    v19 = a1[6];
    v20 = a1[5];
    v23 = *(v2 + 48);
    do
    {
      v9 = (v23 + 56 * v4);
      v11 = v9[2];
      v10 = v9[3];
      v12 = v9[4];
      v13 = v9[5];
      v14 = v9[6];
      v15 = *v9 == v6 && v9[1] == v5;
      if (v15 || (sub_2314787C8() & 1) != 0)
      {
        v16 = v11 == v7 && v10 == v8;
        if (v16 || (sub_2314787C8() & 1) != 0)
        {
          v17 = v12 == v21 && v13 == v20;
          if (v17 || (sub_2314787C8()) && v14 == v19)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v22;
    }

    while (((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_231407454()
{
  result = qword_280C3C5B8;
  if (!qword_280C3C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5B8);
  }

  return result;
}

uint64_t sub_231407518(double a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAD0, &qword_23147F908);
  sub_23140769C();
  v4 = sub_231477DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAE0, &unk_23147F910);
  OUTLINED_FUNCTION_15_10();
  *(v2 + 16) = sub_2314078CC(v4);
  *(v2 + 24) = a1;
  return v2;
}

uint64_t sub_2314075CC(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_231476CA8();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23140769C()
{
  result = qword_280C3C5C8;
  if (!qword_280C3C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5C8);
  }

  return result;
}

void sub_2314076F0()
{
  OUTLINED_FUNCTION_15();
  v19 = v1;
  v18 = sub_231478308();
  v2 = OUTLINED_FUNCTION_4(v18);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_2314782F8();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_0();
  v14 = sub_231477D08();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  sub_231478498();
  (*(v4 + 104))(v9, *MEMORY[0x277D85260], v18);
  *(v0 + 16) = sub_231478338();
  *(v0 + 24) = v19;
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2314078F8(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Interaction(0);
  v4 = sub_231477DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EB68, &qword_23147FD18);
  swift_allocObject();
  v5 = sub_2314078CC(v4);
  *(v2 + 16) = a1;
  *(v2 + 24) = v5;
  return v2;
}

uint64_t sub_231407C7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231407C5C();
  *a1 = result & 1;
  return result;
}

char *sub_231407CEC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_231407D10(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

uint64_t sub_231407DAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_231476CA8();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_231407FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231476CA8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_231408074(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231476CA8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314081F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314082F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_231476CA8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = type metadata accessor for Interaction(0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2314083BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_231476CA8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = type metadata accessor for Interaction(0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_231408550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231435594(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23140857C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_97();
  v4 = sub_231477A58();
  if (*(*(v4 - 8) + 84) == a2)
  {
    v5 = v4;
    v6 = v2;
  }

  else
  {
    sub_231477A88();
    v6 = OUTLINED_FUNCTION_28_2();
  }

  return __swift_getEnumTagSinglePayload(v6, a2, v5);
}

uint64_t sub_231408610(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_97();
  v6 = sub_231477A58();
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    sub_231477A88();
    v8 = OUTLINED_FUNCTION_28_2();
  }

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_2314086AC(uint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_231477A88();
    v5 = OUTLINED_FUNCTION_28_2();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void *sub_231408730(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_231477A88();
    v4 = OUTLINED_FUNCTION_28_2();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_231408848@<X0>(uint64_t *a1@<X8>)
{
  result = InteractionDirection.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_231408870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_91();
  v7 = type metadata accessor for Interaction(v6);
  if (*(*(v7 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_28_0(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_23140890C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Interaction(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_231408A8C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
  result = sub_231477DC8();
  *a1 = result;
  return result;
}

__n128 sub_231408BB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231408BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_2314770C8();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_231408C54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_2314770C8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_231408E34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_231408EE8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231408F14(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_231421F4C();
}

uint64_t sub_231408F34(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_23140A374();
}

uint64_t sub_231408F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_231424118(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2314091A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314091EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231409230()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 24))
  {

    v2 = *(v0 + 40);

    if (*(v0 + 56) >= 3uLL)
    {
    }
  }

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  if (*(v0 + 104) >= 3uLL)
  {
  }

  v5 = *(v0 + 128);

  v6 = *(v0 + 136);

  v7 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

void *sub_2314092CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v95 = a4;
  LODWORD(v94) = a3;
  v98 = a2;
  v7 = type metadata accessor for Entity();
  v103 = *(v7 - 8);
  v8 = *(v103 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_2();
  v96 = (v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC0, &qword_23147F580);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v85 - v13;
  v16 = *a1;
  v15 = *(a1 + 8);
  v17 = *(a1 + 72);
  v92 = *(a1 + 64);
  v93 = v16;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = *(a1 + 56);
  v90 = *(a1 + 48);
  v91 = v18;
  v21 = *(a1 + 81);
  v89 = dword_23147FB54[*(a1 + 82)];
  v22 = *(a1 + 80);
  v101 = v15;

  v102 = v17;

  v104 = v19;

  v105 = v20;

  v100 = sub_2314781A8();
  v23 = type metadata accessor for Interaction(0);
  v24 = v23[12];
  v25 = sub_231476CA8();
  OUTLINED_FUNCTION_3(v25);
  (*(v26 + 16))(v14, a1 + v24, v25);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v25);
  v27 = *(a1 + v23[13]);
  v97 = sub_231478218();
  v28 = *(a1 + v23[19]);
  v29 = sub_2314767B8();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_2314767A8();
  v32 = sub_2313F6380();
  if (v5)
  {
    sub_2313E937C(v14, &qword_27DD4DEC0, &qword_23147F580);
  }

  else
  {
    v35 = v32;
    v36 = v33;
    v106 = 0;
    v88 = v21 + 1;

    v37 = v23[18];
    v38 = (a1 + v23[17]);
    v39 = v38[1];
    v87 = *v38;
    v40 = *(a1 + v37 + 8);
    v86 = *(a1 + v37);
    if (v94)
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }

    LODWORD(v94) = v41;

    v42 = sub_231478218();
    v43 = *(a1 + v23[16]);
    v44 = objc_allocWithZone(MEMORY[0x277CF1580]);
    v90 = sub_23145FBE8(v93, v101, v92, v102, v91, v104, v90, v105, v88, v89, v100, v14, v97, v35, v36, v87, v39, v86, v40, v94, v42, v43);
    v45 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v46 = *(v98 + 64);
    v95 = v98 + 64;
    v47 = 1 << *(v98 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & v46;
    v94 = (v47 + 63) >> 6;

    v50 = 0;
    v51 = v96;
    v52 = v103;
    v99 = v29;
    while (v49)
    {
      v91 = v45;
      result = v98;
LABEL_16:
      v96 = v50;
      v54 = __clz(__rbit64(v49)) | (v50 << 6);
      v55 = result[7];
      v56 = (result[6] + 16 * v54);
      v57 = v56[1];
      v92 = *v56;
      v93 = (v49 - 1) & v49;
      v58 = *(v55 + 8 * v54);
      v59 = MEMORY[0x277D84F90];
      v110 = MEMORY[0x277D84F90];
      v102 = *(v58 + 16);
      v97 = v57;

      v60 = 0;
      v101 = v58;
      while (v102 != v60)
      {
        if (v60 >= *(v58 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        v100 = v59;
        v61 = v58 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
        v62 = *(v52 + 72);
        v105 = v60;
        sub_231405490(v61 + v62 * v60, v51, type metadata accessor for Entity);
        v63 = v51[1];
        v104 = *v51;
        v64 = v51[2];
        v65 = v51[3];
        v66 = v51[4];
        v67 = *(v29 + 48);
        v68 = *(v29 + 52);
        swift_allocObject();

        sub_2314767A8();
        v69 = v106;
        v70 = sub_2313F6380();
        if (v69)
        {

          OUTLINED_FUNCTION_4_13();
          sub_2313FC268(v51, v84);
        }

        v72 = v70;
        v73 = v71;

        sub_2314212C8();
        v106 = 0;
        v107 = v74;
        v108 = 0;
        v109 = 5;

        v75 = sub_231402B08(0, 0xE000000000000000);
        v76 = v51;
        v78 = v77;

        sub_231403090(v107, v108, v109);
        v79 = objc_allocWithZone(MEMORY[0x277CF1578]);
        v80 = v78;
        v51 = v76;
        sub_23145FAD0(v104, v63, v64, v65, v72, v73, v75, v80);
        OUTLINED_FUNCTION_4_13();
        v82 = sub_2313FC268(v76, v81);
        MEMORY[0x23192E1C0](v82);
        if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          OUTLINED_FUNCTION_16_10();
        }

        OUTLINED_FUNCTION_16_5();
        result = sub_231478188();
        v59 = v110;
        v60 = v105 + 1;
        v52 = v103;
        v29 = v99;
        v58 = v101;
      }

      v83 = objc_allocWithZone(MEMORY[0x277CF1570]);
      sub_23145FE68(v92, v97);
      MEMORY[0x23192E1C0]();
      if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_16_10();
      }

      OUTLINED_FUNCTION_16_5();
      sub_231478188();
      v45 = v111;
      v50 = v96;
      v49 = v93;
    }

    result = v98;
    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v53 >= v94)
      {

        return v90;
      }

      v49 = *(v95 + 8 * v53);
      ++v50;
      if (v49)
      {
        v91 = v45;
        v50 = v53;
        goto LABEL_16;
      }
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_231409A6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231409AAC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_231476AF8();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_231409BA4()
{
  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_28_0(*(v0 + 16));
  }

  v4 = OUTLINED_FUNCTION_23_9();
  type metadata accessor for _Entity(v4);
  v5 = OUTLINED_FUNCTION_30_5(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_231409C0C()
{
  OUTLINED_FUNCTION_13_15();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_52_1();
    type metadata accessor for _Entity(v4);
    v5 = OUTLINED_FUNCTION_22_9(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_231409C74()
{
  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_28_0(*(v0 + 16));
  }

  OUTLINED_FUNCTION_23_9();
  sub_231476CA8();
  v4 = OUTLINED_FUNCTION_30_5(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_231409CDC()
{
  OUTLINED_FUNCTION_13_15();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    sub_231476CA8();
    v4 = OUTLINED_FUNCTION_22_9(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_231409D6C()
{
  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_28_0(*(v0 + 16));
  }

  OUTLINED_FUNCTION_23_9();
  sub_231476CA8();
  v4 = OUTLINED_FUNCTION_30_5(*(v1 + 56));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_231409DD4()
{
  OUTLINED_FUNCTION_13_15();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    sub_231476CA8();
    v4 = OUTLINED_FUNCTION_22_9(*(v2 + 56));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_231409E3C()
{
  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_28_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_23_9();
  sub_231476CA8();
  v4 = OUTLINED_FUNCTION_30_5(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_231409EA4()
{
  OUTLINED_FUNCTION_13_15();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    sub_231476CA8();
    v4 = OUTLINED_FUNCTION_22_9(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_231409F0C()
{
  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_28_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_23_9();
  sub_231476CA8();
  v4 = OUTLINED_FUNCTION_30_5(*(v1 + 52));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_231409F74()
{
  OUTLINED_FUNCTION_13_15();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    sub_231476CA8();
    v4 = OUTLINED_FUNCTION_22_9(*(v2 + 52));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_23140A20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2314779E8();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23140A294(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2314779E8();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

xpc_object_t sub_23140A418()
{
  result = xpc_int64_create(*MEMORY[0x277D862C0]);
  qword_27DD4D218 = result;
  return result;
}

uint64_t static ActivityHeartbeat.idleCheckFrequency.getter()
{
  if (qword_27DD4D210 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

void *sub_23140A4A0()
{
  type metadata accessor for ActivityHeartbeat();
  v0 = swift_allocObject();
  result = sub_23140A64C(v0);
  qword_280C3BE28 = result;
  return result;
}

uint64_t sub_23140A4D0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v2();
  v5 = *(v1 + 32);
  v6 = __OFSUB__(v4, v5);
  result = v4 - v5;
  if (v6)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23140A52C()
{
  sub_2314784E8();

  sub_23140A4D0();
  v0 = sub_231478798();
  MEMORY[0x23192E060](v0);

  MEMORY[0x23192E060](0x73646E6F63657320, 0xEF3D656C6469202CLL);
  v1 = sub_23140A4D0();
  v2 = v1 <= 420;
  if (v1 <= 420)
  {
    v3 = 0x65736C6166;
  }

  else
  {
    v3 = 1702195828;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x23192E060](v3, v4);

  MEMORY[0x23192E060](23849, 0xE200000000000000);
  return 0xD000000000000016;
}

void *sub_23140A64C(void *a1)
{
  a1[2] = sub_2313F6BB4;
  a1[3] = 0;
  a1[4] = sub_2313F6BB4();
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v2 = sub_231477B68();
  __swift_project_value_buffer(v2, qword_280C3D970);

  v3 = sub_231477B58();
  v4 = sub_2314782A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1[4];

    _os_log_impl(&dword_2313E1000, v3, v4, "ActivityHeartbeat: initialized %ld", v5, 0xCu);
    MEMORY[0x23192F1F0](v5, -1, -1);
  }

  else
  {
  }

  return a1;
}

uint64_t ActivityHeartbeat.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ActivityHeartbeat.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23140A854()
{
  result = sub_231478508();
  qword_280C3D898 = result;
  unk_280C3D8A0 = v1;
  return result;
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

uint64_t sub_23140A904()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13_2();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_9(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_23140AE3C;
  *(v4 + 24) = v0;
  v8[4] = sub_2313EAA1C;
  v8[5] = v4;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  v8[2] = v5;
  v8[3] = &block_descriptor;
  _Block_copy(v8);
  OUTLINED_FUNCTION_12_2();

  dispatch_sync(v1, v2);
  _Block_release(v2);
  v6 = OUTLINED_FUNCTION_6_0();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23140AA04()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13_2();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_9(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2313E3434;
  *(v4 + 24) = v0;
  v8[4] = sub_2313EAA4C;
  v8[5] = v4;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  v8[2] = v5;
  v8[3] = &block_descriptor_24;
  _Block_copy(v8);
  OUTLINED_FUNCTION_12_2();

  dispatch_sync(v1, v2);
  _Block_release(v2);
  v6 = OUTLINED_FUNCTION_6_0();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

id AppIntentProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23140ABB0()
{
  OUTLINED_FUNCTION_15();
  v2 = v0;
  v19 = v3;
  v20 = v4;
  v18 = sub_231478308();
  v5 = OUTLINED_FUNCTION_4(v18);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_0();
  v10 = sub_2314782F8();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v14 = sub_231477D08();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  OUTLINED_FUNCTION_10_0();
  (*(v7 + 104))(v1, *MEMORY[0x277D85260], v18);
  v2[2] = OUTLINED_FUNCTION_7();
  v2[3] = v19;
  v2[4] = v20;
  OUTLINED_FUNCTION_16();
}

uint64_t sub_23140AD58()
{
  OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  return v2;
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

double AppMatcher.init()@<D0>(_OWORD *a1@<X8>)
{
  static InteractionStore.inProcess()();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[9];
    *(a1 + 25) = *&v5[9];
  }

  return result;
}

__n128 AppMatcher.init(store:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 25);
  *(a2 + 25) = result;
  return result;
}

void AppMatcher.resolve(intent:bundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_231477B48();
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2();
  v40 = v39 - v38;
  sub_2313E74F8();
  v41 = v27[2];
  if (v41 == 1)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v48 = sub_231477B68();
    OUTLINED_FUNCTION_38(v48, qword_280C3D970);

    v49 = sub_231477B58();
    v50 = sub_2314782A8();

    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_24();
      v51 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v62 = swift_slowAlloc();
      *v51 = 136315138;
      v63 = v35;
      v64 = v62;
      v53 = v27[4];
      v52 = v27[5];

      v54 = sub_2313EB684(v53, v52, &v64);
      v35 = v63;

      *(v51 + 4) = v54;
      _os_log_impl(&dword_2313E1000, v49, v50, "AppMatcher has 1 candidate: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    v55 = v27[5];
    *v31 = v27[4];
    *(v31 + 8) = v55;
    *(v31 + 16) = 0;
    *(v31 + 24) = MEMORY[0x277D84F90];
  }

  else
  {
    if (!v41)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v42 = sub_231477B68();
      OUTLINED_FUNCTION_38(v42, qword_280C3D970);
      v43 = sub_231477B58();
      v44 = sub_2314782A8();
      v45 = OUTLINED_FUNCTION_28_1();
      if (os_log_type_enabled(v45, v46))
      {
        OUTLINED_FUNCTION_32();
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_2313E1000, v43, v44, "AppMatcher has no candidates", v47, 2u);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      goto LABEL_8;
    }

    v56 = static AppSelectionUtilityHelper.equivalentInteractionIntentsFor(intent:)(v29);
    a13 = 1;
    v57.super.isa = v29;
    v58 = AppMatcher.getInteractionStats(intent:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:)(v57, v56, &a13, v27, 0, 2u);
    if (!v23)
    {
      v59 = v58;

      if (!*(v59 + 16))
      {

LABEL_8:
        *v31 = 0;
        *(v31 + 8) = 0;
        *(v31 + 16) = 3;
        *(v31 + 24) = MEMORY[0x277D84F90];
        goto LABEL_18;
      }

      v60 = v35;
      v61 = AppMatcher.makeAppSignals(stats:)(v59);

      AppMatcher.decide(signals:)(v61, v31);
      v35 = v60;
    }
  }

LABEL_18:
  sub_2314783A8();
  if (qword_280C3CF48 != -1)
  {
    swift_once();
  }

  sub_231477B28();
  (*(v35 + 8))(v40, v32);
  OUTLINED_FUNCTION_62();
}

__n128 AppMatcherResult.init(recommendation:signals:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u64[1] = a2;
  return result;
}

uint64_t AppMatcher.getInteractionStats(intent:bundleIds:)(void *a1, uint64_t a2)
{
  v4 = static AppSelectionUtilityHelper.equivalentInteractionIntentsFor(intent:)(a1);
  v8 = 1;
  v5.super.isa = a1;
  v6 = AppMatcher.getInteractionStats(intent:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:)(v5, v4, &v8, a2, 0, 2u);

  return v6;
}

uint64_t AppMatcher.makeAppSignals(stats:)(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D560, &qword_2314795B0);
  v2 = OUTLINED_FUNCTION_3(v45);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_34();
  v43 = (v5 - v6);
  MEMORY[0x28223BE20](v7);
  v44 = &v36 - v8;
  v46[0] = sub_23140FED0(a1);
  v9 = 0;
  sub_23140FE1C(v46);
  v10 = v46[0];
  v11 = *(v46[0] + 16);
  if (v11)
  {
    v38 = 0;
    v49 = MEMORY[0x277D84F90];
    sub_231412598();
    v12 = v49;
    v42 = *(v10 + 16);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
    v14 = 0;
    v40 = *(v13 - 8);
    v41 = v13;
    v39 = v10 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    while (v42 != v14)
    {
      if (v14 >= *(v10 + 16))
      {
        goto LABEL_16;
      }

      v16 = v44;
      v15 = v45;
      v17 = *(v45 + 48);
      sub_2313E95CC(v39 + *(v40 + 72) * v14, &v44[v17], &qword_27DD4D900, &qword_2314795B8);
      v18 = v43;
      *v43 = v14;
      v19 = (v18 + *(v15 + 48));
      sub_2314125B8(&v16[v17], v19);
      sub_23140EFF4(v14, *v19, v19[1], v19 + *(v41 + 48), v46);
      sub_2313E937C(v18, &qword_27DD4D560, &qword_2314795B0);
      v20 = v46[0];
      v9 = v46[1];
      v21 = v46[2];
      v22 = v47;
      v23 = v48;
      v49 = v12;
      v24 = *(v12 + 16);
      if (v24 >= *(v12 + 24) >> 1)
      {
        v36 = v48;
        v37 = v47;
        sub_231412598();
        v23 = v36;
        v22 = v37;
        v12 = v49;
      }

      *(v12 + 16) = v24 + 1;
      v25 = v12 + 56 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v9;
      *(v25 + 48) = v21;
      *(v25 + 56) = v22;
      *(v25 + 72) = v23;
      if (v11 == ++v14)
      {

        v9 = v38;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_10:
  if (qword_280C3CF50 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v26 = sub_231477B68();
  __swift_project_value_buffer(v26, qword_280C3D970);

  v27 = sub_231477B58();
  v28 = sub_2314782A8();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_24();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_23();
    v30 = swift_slowAlloc();
    v46[0] = v30;
    *v29 = 136315138;
    v31 = MEMORY[0x23192E1F0](v12, &type metadata for AppMatcherSignals);
    v33 = sub_2313EB684(v31, v32, v46);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_2313E1000, v27, v28, "AppMatcher#makeAppSignals signals: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v34 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x23192F1F0](v34);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  v46[0] = v12;

  sub_23140FDB0(v46);
  if (v9)
  {

    __break(1u);
  }

  else
  {

    return v46[0];
  }

  return result;
}

uint64_t AppMatcher.decide(signals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v79 = a2;
    v5 = 0;
    v6 = *(a1 + 80);
    v7 = v6 / 10.0;
    v8 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
    v10 = v6 / 5.0;
LABEL_3:
    v11 = (v3 + 56 * v5);
    while (v4 != v5)
    {
      if (v5 >= v4)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        OUTLINED_FUNCTION_0();
        swift_once();
        goto LABEL_45;
      }

      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_62;
      }

      v13 = v11[10];
      v14 = *(v11 + 6);
      v11 += 7;
      if (v14)
      {
        ++v5;
        if (v10 >= v13)
        {
          continue;
        }
      }

      v15 = *(v11 - 3);
      v2 = *(v11 - 2);
      v16 = *v11;
      v17 = *(v11 + 1);
      v18 = *(v11 + 2);

      v81 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v9 + 16);
        OUTLINED_FUNCTION_55();
        sub_231412598();
        v9 = v81;
      }

      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_20(v20);
        sub_231412598();
        v9 = v81;
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + 56 * v21;
      *(v22 + 32) = v15;
      *(v22 + 40) = v2;
      *(v22 + 48) = v14;
      *(v22 + 56) = v16;
      *(v22 + 64) = v17;
      *(v22 + 72) = v18;
      *(v22 + 80) = v13;
      v5 = v12;
      goto LABEL_3;
    }

    v23 = *(v9 + 16);
    v80 = v3;
    if (v23)
    {
      v81 = v8;
      v24 = OUTLINED_FUNCTION_55();
      sub_23141252C(v24, v23, 0);
      v2 = v8;
      v25 = (v9 + 40);
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        v81 = v2;
        v28 = v2[2];
        v29 = v2[3];

        if (v28 >= v29 >> 1)
        {
          sub_23141252C(v29 > 1, v28 + 1, 1);
          v2 = v81;
        }

        v2[2] = v28 + 1;
        v30 = &v2[2 * v28];
        v30[4] = v27;
        v30[5] = v26;
        v25 += 7;
        --v23;
      }

      while (v23);

      v3 = v80;
    }

    else
    {

      v2 = MEMORY[0x277D84F90];
    }

    v32 = 0;
    v33 = MEMORY[0x277D84F90];
    v34 = MEMORY[0x277D84F90];
LABEL_23:
    v35 = (v3 + 56 * v32);
    while (v4 != v32)
    {
      if (v32 >= v4)
      {
        goto LABEL_63;
      }

      v36 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_64;
      }

      v37 = v35[10];
      ++v32;
      v35 += 7;
      if (v7 <= v37 && v37 < v10)
      {
        v39 = *(v35 - 3);
        v9 = *(v35 - 2);
        v40 = *(v35 - 1);
        v41 = *v35;
        v42 = *(v35 + 1);
        v43 = *(v35 + 2);

        v81 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(v34 + 16);
          OUTLINED_FUNCTION_55();
          sub_231412598();
          v34 = v81;
        }

        v46 = *(v34 + 16);
        v45 = *(v34 + 24);
        if (v46 >= v45 >> 1)
        {
          OUTLINED_FUNCTION_20(v45);
          sub_231412598();
          v34 = v81;
        }

        *(v34 + 16) = v46 + 1;
        v47 = v34 + 56 * v46;
        *(v47 + 32) = v39;
        *(v47 + 40) = v9;
        *(v47 + 48) = v40;
        *(v47 + 56) = v41;
        *(v47 + 64) = v42;
        *(v47 + 72) = v43;
        *(v47 + 80) = v37;
        v32 = v36;
        v3 = v80;
        goto LABEL_23;
      }
    }

    v48 = *(v34 + 16);
    if (v48)
    {
      v81 = v33;
      v49 = OUTLINED_FUNCTION_55();
      sub_23141252C(v49, v48, 0);
      v9 = v33;
      v50 = (v34 + 40);
      do
      {
        v52 = *(v50 - 1);
        v51 = *v50;
        v81 = v9;
        v53 = *(v9 + 16);
        v54 = *(v9 + 24);

        if (v53 >= v54 >> 1)
        {
          sub_23141252C(v54 > 1, v53 + 1, 1);
          v9 = v81;
        }

        *(v9 + 16) = v53 + 1;
        v55 = v9 + 16 * v53;
        *(v55 + 32) = v52;
        *(v55 + 40) = v51;
        v50 += 7;
        --v48;
      }

      while (v48);

      v3 = v80;
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    if (qword_280C3CF50 != -1)
    {
      goto LABEL_65;
    }

LABEL_45:
    v56 = sub_231477B68();
    __swift_project_value_buffer(v56, qword_280C3D970);

    v57 = sub_231477B58();
    v58 = sub_2314782A8();

    if (os_log_type_enabled(v57, v58))
    {
      OUTLINED_FUNCTION_24();
      v59 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v60 = swift_slowAlloc();
      v81 = v60;
      *v59 = 136315138;
      v61 = MEMORY[0x23192E1F0](v2, MEMORY[0x277D837D0]);
      v63 = sub_2313EB684(v61, v62, &v81);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_2313E1000, v57, v58, "AppMatcher#decide plausibleApps: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    v64 = sub_231477B58();
    v65 = sub_2314782A8();

    if (os_log_type_enabled(v64, v65))
    {
      OUTLINED_FUNCTION_24();
      v66 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v67 = swift_slowAlloc();
      v81 = v67;
      *v66 = 136315138;
      v68 = MEMORY[0x23192E1F0](v9, MEMORY[0x277D837D0]);
      v70 = sub_2313EB684(v68, v69, &v81);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_2313E1000, v64, v65, "AppMatcher#decide spoilerApps: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      v71 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x23192F1F0](v71);
    }

    if (v2[2] >= 2uLL)
    {

      a2 = v79;
      *v79 = v2;
      *(v79 + 8) = 0;
      v31 = 2;
      goto LABEL_51;
    }

    v72 = *(v9 + 16);

    v74 = v2[2];
    if (v72)
    {
      if (v74)
      {
        v75 = v2[4];
        v76 = v2[5];

        a2 = v79;
        *v79 = v75;
        *(v79 + 8) = v76;
        *(v79 + 16) = 1;
LABEL_57:
        v3 = v80;
        goto LABEL_58;
      }

      __break(1u);
    }

    else if (v74)
    {
      v77 = v2[4];
      v78 = v2[5];

      a2 = v79;
      *v79 = v77;
      *(v79 + 8) = v78;
      *(v79 + 16) = 0;
      goto LABEL_57;
    }

    __break(1u);
    return result;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v31 = 3;
LABEL_51:
  *(a2 + 16) = v31;
LABEL_58:
  *(a2 + 24) = v3;
}