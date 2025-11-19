unint64_t sub_266A8D6D0()
{
  result = qword_2800B2128;
  if (!qword_2800B2128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2128);
  }

  return result;
}

unint64_t sub_266A8D724()
{
  result = qword_2800B2130;
  if (!qword_2800B2130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2130);
  }

  return result;
}

unint64_t sub_266A8D778()
{
  result = qword_2800B2138;
  if (!qword_2800B2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2138);
  }

  return result;
}

uint64_t UserInputModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v5);
  v7 = v38 - v6;
  v8 = type metadata accessor for ParticipantModel();
  v9 = OUTLINED_FUNCTION_16(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2140, &unk_266AC2888);
  OUTLINED_FUNCTION_1_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v20);
  v22 = v38 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A8D6D0();
  v24 = v38[1];
  sub_266ABE2C4();
  v25 = v24[16];
  v39 = *(v24 + 1);
  LOBYTE(v40) = v25;
  v43 = 3;
  sub_266A8DBD4();
  v26 = v38[2];
  sub_266ABE0F4();
  if (v26)
  {
    return (*(v17 + 8))(v22, v15);
  }

  v28 = v22;
  v29 = v8;
  v30 = v17;
  sub_266A6F968((v24 + 24), &v39, &qword_2800B1C48, &unk_266AC1310);
  if (!v42)
  {
    sub_266A798F4(&v39, &qword_2800B1C48, &unk_266AC1310);
    v31 = v7;
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v29);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
  v31 = v7;
  v32 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v7, v32 ^ 1u, 1, v29);
  if (__swift_getEnumTagSinglePayload(v7, 1, v29) == 1)
  {
LABEL_7:
    sub_266A798F4(v31, &qword_2800B1CB0, &qword_266AC0FB8);
    goto LABEL_8;
  }

  sub_266A7977C(v7, v14);
  LOBYTE(v39) = 1;
  sub_266A8DC7C(&qword_2800B2158);
  sub_266ABE154();
  sub_266A6A63C(v14);
LABEL_8:
  v33 = v24[64];
  LOBYTE(v39) = 0;
  OUTLINED_FUNCTION_7_4();
  v34 = *(v24 + 10);
  v35 = v24[88];
  v39 = *(v24 + 9);
  v40 = v34;
  v41 = v35;
  v43 = 2;
  sub_266A8CE78(v39, v34, v35);
  sub_266A8DC28();
  sub_266ABE0F4();
  sub_266A8CEE4(v39, v40, v41);
  v36 = v24[89];
  LOBYTE(v39) = 4;
  OUTLINED_FUNCTION_7_4();
  v37 = *v24;
  LOBYTE(v39) = 5;
  OUTLINED_FUNCTION_7_4();
  return (*(v30 + 8))(v28, 0);
}

unint64_t sub_266A8DBD4()
{
  result = qword_2800B2148;
  if (!qword_2800B2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2148);
  }

  return result;
}

unint64_t sub_266A8DC28()
{
  result = qword_2800B2150;
  if (!qword_2800B2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2150);
  }

  return result;
}

uint64_t sub_266A8DC7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ParticipantModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static UserInputModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantModel();
  v5 = OUTLINED_FUNCTION_16(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2160, &qword_266AC2898);
  OUTLINED_FUNCTION_16(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v14);
  v16 = &v78 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  v18 = OUTLINED_FUNCTION_21(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v78 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v78 - v27;
  v29 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return v29 & 1;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_34;
    }
  }

  sub_266A6F968(a1 + 24, &v83, &qword_2800B1C48, &unk_266AC1310);
  if (v86)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
    v30 = swift_dynamicCast() ^ 1;
    v31 = v28;
  }

  else
  {
    sub_266A798F4(&v83, &qword_2800B1C48, &unk_266AC1310);
    v31 = v28;
    v30 = 1;
  }

  __swift_storeEnumTagSinglePayload(v31, v30, 1, v4);
  sub_266A6F968(a2 + 24, &v83, &qword_2800B1C48, &unk_266AC1310);
  v79 = a2;
  if (v86)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
    v32 = swift_dynamicCast() ^ 1;
    v33 = v26;
  }

  else
  {
    sub_266A798F4(&v83, &qword_2800B1C48, &unk_266AC1310);
    v33 = v26;
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v33, v32, 1, v4);
  v34 = *(v11 + 48);
  sub_266A6F968(v28, v16, &qword_2800B1CB0, &qword_266AC0FB8);
  sub_266A6F968(v26, &v16[v34], &qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_10_3(v16);
  if (v35)
  {
    OUTLINED_FUNCTION_10_3(&v16[v34]);
    if (v35)
    {
      sub_266A798F4(v16, &qword_2800B1CB0, &qword_266AC0FB8);
      sub_266A798F4(v26, &qword_2800B1CB0, &qword_266AC0FB8);
      sub_266A798F4(v28, &qword_2800B1CB0, &qword_266AC0FB8);
      goto LABEL_23;
    }

LABEL_21:
    sub_266A798F4(v16, &qword_2800B2160, &qword_266AC2898);
    sub_266A798F4(v26, &qword_2800B1CB0, &qword_266AC0FB8);
    sub_266A798F4(v28, &qword_2800B1CB0, &qword_266AC0FB8);
    goto LABEL_34;
  }

  sub_266A6F968(v16, v23, &qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_10_3(&v16[v34]);
  if (v35)
  {
    sub_266A6A63C(v23);
    goto LABEL_21;
  }

  sub_266A7977C(&v16[v34], v10);
  static ParticipantModel.== infix(_:_:)();
  v37 = v36;
  sub_266A6A63C(v10);
  sub_266A6A63C(v23);
  sub_266A798F4(v16, &qword_2800B1CB0, &qword_266AC0FB8);
  sub_266A798F4(v26, &qword_2800B1CB0, &qword_266AC0FB8);
  sub_266A798F4(v28, &qword_2800B1CB0, &qword_266AC0FB8);
  if ((v37 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_23:
  v38 = v79;
  if (*(a1 + 64) != *(v79 + 64))
  {
    goto LABEL_34;
  }

  v40 = *(a1 + 72);
  v39 = *(a1 + 80);
  v41 = *(a1 + 88);
  v43 = *(v79 + 72);
  v42 = *(v79 + 80);
  v44 = *(v79 + 88);
  if (v41 != 255)
  {
    v83 = *(a1 + 72);
    v84 = v39;
    v85 = v41;
    if (v44 != 255)
    {
      v80 = v43;
      v81 = v42;
      v82 = v44;
      v45 = OUTLINED_FUNCTION_0_3();
      sub_266A8CE78(v45, v46, v47);
      v48 = OUTLINED_FUNCTION_2_3();
      sub_266A8CE78(v48, v49, v44);
      v50 = OUTLINED_FUNCTION_0_3();
      sub_266A8CE78(v50, v51, v52);
      v53 = static UserFeedbackDevicePreferenceResponse.== infix(_:_:)(&v83, &v80);
      sub_266A8244C(v80, v81, v82);
      sub_266A8244C(v83, v84, v85);
      v54 = OUTLINED_FUNCTION_0_3();
      sub_266A8CEE4(v54, v55, v56);
      if ((v53 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v59 = OUTLINED_FUNCTION_0_3();
    sub_266A8CE78(v59, v60, v61);
    v62 = OUTLINED_FUNCTION_2_3();
    sub_266A8CE78(v62, v63, 255);
    v64 = OUTLINED_FUNCTION_0_3();
    sub_266A8CE78(v64, v65, v66);
    v67 = OUTLINED_FUNCTION_0_3();
    sub_266A8244C(v67, v68, v69);
LABEL_31:
    v70 = OUTLINED_FUNCTION_0_3();
    sub_266A8CEE4(v70, v71, v72);
    v73 = OUTLINED_FUNCTION_2_3();
    sub_266A8CEE4(v73, v74, v44);
    goto LABEL_34;
  }

  sub_266A8CE78(*(a1 + 72), *(a1 + 80), 255);
  if (v44 != 255)
  {
    v57 = OUTLINED_FUNCTION_2_3();
    sub_266A8CE78(v57, v58, v44);
    goto LABEL_31;
  }

  v75 = OUTLINED_FUNCTION_2_3();
  sub_266A8CE78(v75, v76, 255);
  sub_266A8CEE4(v40, v39, 255);
LABEL_33:
  if (*(a1 + 89) == v38[89])
  {
    v29 = *a1 ^ *v38 ^ 1;
    return v29 & 1;
  }

LABEL_34:
  v29 = 0;
  return v29 & 1;
}

uint64_t UserInputModel.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for ParticipantModel();
  v8 = OUTLINED_FUNCTION_16(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  if (v0[16] == 1)
  {
    sub_266ABE264();
  }

  else
  {
    v14 = *(v0 + 1);
    sub_266ABE264();
    MEMORY[0x26D5E8B00](0);
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x26D5E8B40](v15);
  }

  sub_266A6F968((v0 + 24), &v25, &qword_2800B1C48, &unk_266AC1310);
  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
    v16 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v6, v16 ^ 1u, 1, v7);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_266A7977C(v6, v13);
      ParticipantModel.hash(into:)();
      sub_266A6A63C(v13);
      goto LABEL_12;
    }
  }

  else
  {
    sub_266A798F4(&v25, &qword_2800B1C48, &unk_266AC1310);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  }

  sub_266A798F4(v6, &qword_2800B1CB0, &qword_266AC0FB8);
LABEL_12:
  v17 = v0[64];
  sub_266ABE264();
  v18 = v0[88];
  if (v18 == 255)
  {
    sub_266ABE264();
  }

  else
  {
    v19 = *(v0 + 10);
    v25 = *(v0 + 9);
    v20 = v25;
    v26 = v19;
    v27 = v18;
    sub_266ABE264();
    sub_266A8CE8C(v20, v19, v18);
    UserFeedbackDevicePreferenceResponse.hash(into:)();
    sub_266A8244C(v25, v26, v27);
  }

  v21 = v0[89];
  sub_266ABE264();
  v22 = *v0;
  return sub_266ABE264();
}

uint64_t UserInputModel.hashValue.getter()
{
  sub_266ABE244();
  UserInputModel.hash(into:)();
  return sub_266ABE2A4();
}

uint64_t sub_266A8E500()
{
  sub_266ABE244();
  UserInputModel.hash(into:)();
  return sub_266ABE2A4();
}

unint64_t sub_266A8E540()
{
  result = qword_2800B2168;
  if (!qword_2800B2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2168);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_34SiriCrossDeviceArbitrationFeedback11Participant_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_34SiriCrossDeviceArbitrationFeedback04UsereC18PreferenceResponseO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t get_enum_tag_for_layout_string_34SiriCrossDeviceArbitrationFeedback04UsereC18PreferenceResponseOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266A8E74C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 90))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_266A8E7A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserInputModel.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266A8E8FC()
{
  result = qword_2800B2170;
  if (!qword_2800B2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2170);
  }

  return result;
}

unint64_t sub_266A8E954()
{
  result = qword_2800B2178;
  if (!qword_2800B2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2178);
  }

  return result;
}

unint64_t sub_266A8E9AC()
{
  result = qword_2800B2180;
  if (!qword_2800B2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2180);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return sub_266ABE024();
}

uint64_t sub_266A8EA2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_266ABD7A4();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  swift_beginAccess();
  FeedbackPreferences.UserFeedback.lastPromptedDate.setter(v5);
  return swift_endAccess();
}

unint64_t sub_266A8EB58(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_266A8EB7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266A8EBE4(uint64_t a1)
{
  if (sub_266A6AF8C(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B21A8, &unk_266AC2C10);
    v2 = sub_266ABDE84();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v19 = sub_266A6AF84(a1);
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_266A8EB58(v3, v18 == 0, a1);
      result = v18 ? MEMORY[0x26D5E8780](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      result = sub_266ABDDC4();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        sub_266A8ED8C();
        v14 = *(*(v2 + 48) + 8 * v10);
        v15 = sub_266ABDDD4();

        if (v15)
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v16 = *(v2 + 16);
      v7 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_266A8ED8C()
{
  result = qword_280BB6BF8;
  if (!qword_280BB6BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BB6BF8);
  }

  return result;
}

uint64_t sub_266A8EDE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736963657270 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266A8EE74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266ABE1C4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266A8EF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A8EDE4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266A8EF34(uint64_t a1)
{
  v2 = sub_266A8F23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A8EF70(uint64_t a1)
{
  v2 = sub_266A8F23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A8EFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A8EE74(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266A8EFDC(uint64_t a1)
{
  v2 = sub_266A8F290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A8F018(uint64_t a1)
{
  v2 = sub_266A8F290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DistanceFromUser.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B21B0, &qword_266AC2C40);
  OUTLINED_FUNCTION_1_0(v3);
  v21 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B21B8, &qword_266AC2C48);
  OUTLINED_FUNCTION_1_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A8F23C();
  sub_266ABE2C4();
  sub_266A8F290();
  sub_266ABE0C4();
  sub_266ABE134();
  (*(v21 + 8))(v9, v3);
  return (*(v12 + 8))(v17, v10);
}

unint64_t sub_266A8F23C()
{
  result = qword_2800B21C0;
  if (!qword_2800B21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B21C0);
  }

  return result;
}

unint64_t sub_266A8F290()
{
  result = qword_2800B21C8;
  if (!qword_2800B21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B21C8);
  }

  return result;
}

uint64_t DistanceFromUser.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x26D5E8B00](0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x26D5E8B40](*&v2);
}

uint64_t DistanceFromUser.hashValue.getter()
{
  v1 = *v0;
  sub_266ABE244();
  MEMORY[0x26D5E8B00](0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26D5E8B40](*&v2);
  return sub_266ABE2A4();
}

void DistanceFromUser.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B21D0, &qword_266AC2C50);
  OUTLINED_FUNCTION_1_0(v4);
  v45 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B21D8, &unk_266AC2C58);
  OUTLINED_FUNCTION_1_0(v11);
  v44 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A8F23C();
  sub_266ABE2B4();
  if (v2)
  {
    goto LABEL_8;
  }

  v42 = v10;
  v43 = a1;
  v41 = v4;
  v20 = v45;
  v19 = v46;
  v21 = sub_266ABE0B4();
  sub_266A86550(v21, 0);
  v24 = v11;
  if (v22 == v23 >> 1)
  {
LABEL_7:
    v32 = sub_266ABDEF4();
    swift_allocError();
    v34 = v33;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F78, &qword_266AC1AA0) + 48);
    *v34 = &type metadata for DistanceFromUser;
    sub_266ABDFF4();
    sub_266ABDEE4();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v17, v24);
    a1 = v43;
LABEL_8:
    v40 = a1;
    goto LABEL_9;
  }

  if (v22 < (v23 >> 1))
  {
    v25 = v11;
    sub_266A86BCC(v22 + 1);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 == v29 >> 1)
    {
      sub_266A8F290();
      v30 = v42;
      v31 = v25;
      sub_266ABDFE4();
      v36 = v41;
      sub_266ABE064();
      v37 = v44;
      v39 = v38;
      swift_unknownObjectRelease();
      (*(v20 + 8))(v30, v36);
      (*(v37 + 8))(v17, v31);
      *v19 = v39;
      v40 = v43;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      return;
    }

    v24 = v11;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_266A8F7E0()
{
  v1 = *v0;
  sub_266ABE244();
  MEMORY[0x26D5E8B00](0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26D5E8B40](*&v2);
  return sub_266ABE2A4();
}

unint64_t sub_266A8F848()
{
  result = qword_2800B21E0;
  if (!qword_2800B21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B21E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DistanceFromUser(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DistanceFromUser(uint64_t result, int a2, int a3)
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

_BYTE *sub_266A8F910(_BYTE *result, int a2, int a3)
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

unint64_t sub_266A8F9C0()
{
  result = qword_2800B21E8;
  if (!qword_2800B21E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B21E8);
  }

  return result;
}

unint64_t sub_266A8FA18()
{
  result = qword_2800B21F0;
  if (!qword_2800B21F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B21F0);
  }

  return result;
}

unint64_t sub_266A8FA70()
{
  result = qword_2800B21F8;
  if (!qword_2800B21F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B21F8);
  }

  return result;
}

unint64_t sub_266A8FAC8()
{
  result = qword_2800B2200;
  if (!qword_2800B2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2200);
  }

  return result;
}

unint64_t sub_266A8FB20()
{
  result = qword_2800B2208;
  if (!qword_2800B2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2208);
  }

  return result;
}

unint64_t sub_266A8FB78()
{
  result = qword_2800B2210;
  if (!qword_2800B2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2210);
  }

  return result;
}

id static NSBundle.feedback.getter()
{
  type metadata accessor for UserFeedbackController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_266A8FC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ParticipantModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  v13 = 0;
  v14 = *(a1 + 16);
  while (1)
  {
    if (v14 == v13)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    sub_266A6E9E4(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v9);
    if (v9[112] == 3)
    {
      break;
    }

    ++v13;
    result = sub_266A6A63C(v9);
  }

  sub_266A7977C(v9, v12);
  *(a2 + 24) = v4;
  *(a2 + 32) = sub_266A81304();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_266A7977C(v12, boxed_opaque_existential_1);
}

id sub_266A8FD8C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_266ABD7D4();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_266ABD7F4();
  OUTLINED_FUNCTION_1_4(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t sub_266A8FE1C(uint64_t a1)
{
  *v12 = *(v1 + 16);
  FeedbackPreferences.UserFeedback.promptFrequency.getter(&v11);
  if (!v11)
  {
    return 0;
  }

  sub_266A6FFD8(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v11;
  v12[0] = v11;
  v4 = sub_266A8FFB4(v12);
  v12[0] = v3;
  v5 = sub_266A90038(v12, 2);
  v12[0] = v3;
  sub_266A90120(v12, v5, v4);

  if (qword_2800B1AE8 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v6 = sub_266ABD8D4();
  __swift_project_value_buffer(v6, qword_2800BD108);
  v7 = sub_266ABD8C4();
  v8 = sub_266ABDD54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_266A65000, v7, v8, "#feedback #scda FeedbackSELFInstrumentationService - Tracked notification dismissed", v9, 2u);
    MEMORY[0x26D5E9280](v9, -1, -1);
  }

  return 1;
}

id sub_266A8FFB4(uint64_t *a1)
{
  v6 = *a1;
  v1 = RequestModel.firstParticipantId.getter();
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D56D30]) init];
  if (v4)
  {
    sub_266A9078C(v1, v3, v4);
  }

  else
  {
  }

  return v4;
}

id sub_266A90038(void *a1, uint64_t a2)
{
  v3 = v2;
  *&v12 = *a1;
  v5 = RequestModel.firstParticipantId.getter();
  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D56D20]) init];
  if (v8)
  {
    sub_266A9078C(v5, v7, v8);
    v12 = *(v3 + 16);
    v9 = v8;
    FeedbackPreferences.UserFeedback.dataCollectionGroup.getter(&v11);
    [v9 setDataCollectionGroup_];
  }

  else
  {
  }

  [v8 setUserFeedbackStatus_];
  return v8;
}

void sub_266A90120(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DC0, &unk_266AC12F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - v7;
  v9 = sub_266ABD7F4();
  v51 = *(v9 - 8);
  isa = v51[8].isa;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = *a1;
  v17 = 0x279BD9000uLL;
  v18 = [objc_allocWithZone(MEMORY[0x277D56CA0]) init];
  if (v18)
  {
    v19 = v18;
    [v18 setUserFeedbackParticipantCollectionReported_];
    v49 = objc_opt_self();
    [objc_msgSend(v49 sharedStream)];
    swift_unknownObjectRelease();
    v20 = [objc_allocWithZone(MEMORY[0x277D56CA0]) init];
    if (v20)
    {
      v21 = v20;
      v47 = v13;
      sub_266ABD7E4();
      v48 = sub_266ABD7C4();
      v46 = v51[1].isa;
      (v46)(v15, v9);
      sub_266A94EF0(v16, v22, v23, v24, v25, v26, v27, v28, v46, v47, v48, v49, v50, v51, v52, *(&v52 + 1), v53, v54, v55, v56[0], v56[1], v56[2], v57, v58, v59, v60);
      sub_266A95358();
      v30 = v29;

      if (v30)
      {
        sub_266A8FC2C(v30, &v52);

        if (v54)
        {
          sub_266A79964(&v52, v56);
          v31 = v57;
          v32 = v58;
          __swift_project_boxed_opaque_existential_1(v56, v57);
          (*(v32 + 144))(v31, v32);
          if (v33)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v56);
            v17 = 0x279BD9000;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v56);
            v17 = 0x279BD9000uLL;
          }
        }

        else
        {
          sub_266A90738(&v52, &qword_2800B1C48, &unk_266AC1310);
        }
      }

      v41 = [objc_allocWithZone(MEMORY[0x277D56CA8]) *(v17 + 3936)];
      if (v41)
      {
        v42 = v41;
        sub_266ABD7B4();

        if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
        {

          sub_266A90738(v8, &qword_2800B1DC0, &unk_266AC12F0);
        }

        else
        {
          v43 = v51;
          v44 = v47;
          (v51[4].isa)(v47, v8, v9);
          sub_266A906F4();
          (v43[2].isa)(v15, v44, v9);
          v45 = sub_266A8FD8C(v15);
          [v42 setCdaId_];

          [v21 setEventMetadata_];
          (v46)(v44, v9);
        }
      }

      else
      {
      }

      [v21 setUserFeedbackCompleted_];
      [objc_msgSend(v49 sharedStream)];
      swift_unknownObjectRelease();

      return;
    }

    if (qword_2800B1AE8 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v37 = sub_266ABD8D4();
    __swift_project_value_buffer(v37, qword_2800BD108);
    v51 = sub_266ABD8C4();
    v38 = sub_266ABDD64();
    if (os_log_type_enabled(v51, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_266A65000, v51, v38, "#feedback FeedbackSELFInstrumentationService - Unable to create feedback CDAClientEvent", v39, 2u);
      MEMORY[0x26D5E9280](v39, -1, -1);
    }
  }

  else
  {
    if (qword_2800B1AE8 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v34 = sub_266ABD8D4();
    __swift_project_value_buffer(v34, qword_2800BD108);
    v51 = sub_266ABD8C4();
    v35 = sub_266ABDD64();
    if (os_log_type_enabled(v51, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_266A65000, v51, v35, "#feedback FeedbackSELFInstrumentationService - Unable to create participation CDAClientEvent", v36, 2u);
      MEMORY[0x26D5E9280](v36, -1, -1);
    }
  }

  v40 = v51;
}

unint64_t sub_266A906F4()
{
  result = qword_2800B1DC8;
  if (!qword_2800B1DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800B1DC8);
  }

  return result;
}

uint64_t sub_266A90738(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_266A9078C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266ABDA74();

  [a3 setSurveyId_];
}

uint64_t Participation.description.getter()
{
  result = 7237463;
  switch(*v0)
  {
    case 1:
      result = 0x73694D207261654ELL;
      break;
    case 2:
      result = 1953722188;
      break;
    case 3:
      return result;
    default:
      result = 0x20746F4E20646944;
      break;
  }

  return result;
}

SiriCrossDeviceArbitrationFeedback::Participation_optional __swiftcall Participation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BOOL static Participation.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 1:
      if (!*a2)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    case 2:
      return v2 < 2;
    case 3:
      if (v2 >= 3)
      {
        goto LABEL_3;
      }

LABEL_6:
      result = 1;
      break;
    default:
LABEL_3:
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_266A90940()
{
  result = qword_2800B2218;
  if (!qword_2800B2218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2218);
  }

  return result;
}

BOOL sub_266A909A4(unsigned __int8 a1, char a2)
{
  switch(a2)
  {
    case 1:
      if (!a1)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    case 2:
      return a1 > 1u;
    case 3:
      if (a1 >= 3u)
      {
        goto LABEL_3;
      }

LABEL_6:
      result = 0;
      break;
    default:
LABEL_3:
      result = 1;
      break;
  }

  return result;
}

BOOL sub_266A90A08(char a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 1:
      if (!a2)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    case 2:
      return a2 > 1u;
    case 3:
      if (a2 >= 3u)
      {
        goto LABEL_3;
      }

LABEL_6:
      result = 0;
      break;
    default:
LABEL_3:
      result = 1;
      break;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Participation(_BYTE *result, unsigned int a2, unsigned int a3)
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

BOOL sub_266A90B48(unsigned __int8 a1, char a2)
{
  switch(a2)
  {
    case 1:
      if (!a1)
      {
        goto LABEL_6;
      }

      goto LABEL_3;
    case 2:
      return a1 < 2u;
    case 3:
      if (a1 >= 3u)
      {
        goto LABEL_3;
      }

LABEL_6:
      result = 1;
      break;
    default:
LABEL_3:
      result = 0;
      break;
  }

  return result;
}

double sub_266A90BE4@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_266ABDA74();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_266ABDE14();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_266A90C78()
{
  v1 = sub_266ABDA74();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266ABDA84();

  return v3;
}

uint64_t sub_266A90CF8()
{
  v1 = sub_266ABDA74();
  v2 = [v0 arrayForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266ABDC24();

  return v3;
}

uint64_t sub_266A90D78()
{
  v1 = sub_266ABDA74();
  v2 = [v0 dictionaryForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266ABD9A4();

  return v3;
}

id sub_266A90E08()
{
  v1 = sub_266ABDA74();
  v2 = [v0 longLongForKey_];

  return v2;
}

double sub_266A90E50()
{
  v1 = sub_266ABDA74();
  [v0 doubleForKey_];
  v3 = v2;

  return v3;
}

id sub_266A90EA0()
{
  v1 = sub_266ABDA74();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_266A90EE8(uint64_t a1)
{
  sub_266A915A4(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_266ABE1B4();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_266ABDA74();
  [v1 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

void sub_266A9104C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_266ABDA74();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_266ABDA74();
  [v2 setString:v3 forKey:v4];
}

void sub_266A910D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_266ABD6D4();
  }

  v4 = sub_266ABDA74();
  [v2 setData:v3 forKey:v4];
}

void sub_266A9116C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266ABDC14();
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_266ABDA74();
  [v1 setArray:v2 forKey:v3];
}

void sub_266A91204(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266ABD994();
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_266ABDA74();
  [v1 setDictionary:v2 forKey:v3];
}

void sub_266A912AC(uint64_t a1)
{
  v3 = sub_266ABDA74();
  [v1 setLongLong:a1 forKey:v3];
}

void sub_266A91314(double a1)
{
  v3 = sub_266ABDA74();
  [v1 setDouble:v3 forKey:a1];
}

void sub_266A91374(char a1)
{
  v3 = sub_266ABDA74();
  [v1 setBool:a1 & 1 forKey:v3];
}

uint64_t dispatch thunk of CloudKeyValueStore.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 88))();
}

{
  return (*(a5 + 112))();
}

{
  return (*(a5 + 120))();
}

{
  return (*(a5 + 128))();
}

{
  return (*(a5 + 144))();
}

uint64_t dispatch thunk of CloudKeyValueStore.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 96))();
}

{
  return (*(a6 + 104))();
}

void sub_266A91558()
{
  v1 = sub_266ABDA74();
  [v0 removeObjectForKey_];
}

uint64_t sub_266A915A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C50, &qword_266AC0EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FeedbackPreferences.init(store:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = result;
  a3[3] = a2;
  return result;
}

uint64_t FeedbackPreferences.UserFeedback.lastPromptedDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = OUTLINED_FUNCTION_1_5();
  v8 = v7(v6);
  sub_266A93510(a1, v5);
  v9 = sub_266ABD7A4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) != 1)
  {
    v10 = sub_266ABD714();
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  v11 = OUTLINED_FUNCTION_40_0();
  [v8 setValue:v10 forKey:v11];

  swift_unknownObjectRelease();
  return sub_266A6CBB4(a1, &qword_2800B1DB8, "h9");
}

uint64_t FeedbackPreferences.UserFeedback.dataCollectionGroup.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = (*(v4 + 8))(*v1, v4);
  v6 = sub_266ABDA74();
  v7 = [v5 stringForKey_];

  if (!v7)
  {
    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v11 = sub_266ABD8D4();
    OUTLINED_FUNCTION_8_5(v11, qword_280BB7028);
    v12 = sub_266ABD8C4();
    v13 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_14_0(v13))
    {
      v14 = OUTLINED_FUNCTION_19();
      *v14 = 0;
      _os_log_impl(&dword_266A65000, v12, v13, "#feedback Data Collection Group not set using default", v14, 2u);
      OUTLINED_FUNCTION_8();
    }

    v15 = (*(v4 + 16))(v3, v4);
    v16 = sub_266ABDA74();
    v17 = [v15 objectForKey_];

    if (v17)
    {
      sub_266ABDE14();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25[0] = v23;
    v25[1] = v24;
    if (*(&v24 + 1))
    {
      result = swift_dynamicCast();
      if (result)
      {
        v18 = sub_266ABDAF4();
        v20 = v19;

        if (v18 == 0x7972726163 && v20 == 0xE500000000000000)
        {

LABEL_23:
          v10 = 1;
          goto LABEL_24;
        }

        v22 = sub_266ABE1C4();

        if (v22)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      result = sub_266A6CBB4(v25, &qword_2800B1C50, &qword_266AC0EE0);
    }

    v10 = 0;
    goto LABEL_24;
  }

  sub_266ABDA84();

  v8 = sub_266ABDFD4();

  v10 = v8 == 1;
  if (v8 == 2)
  {
    v10 = 2;
  }

LABEL_24:
  *a1 = v10;
  return result;
}

__n128 FeedbackPreferences.userFeedback.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 FeedbackPreferences.userFeedback.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

id FeedbackPreferences.UserFeedback.isCollectionGroupConfigByProfile.getter()
{
  v0 = OUTLINED_FUNCTION_1_5();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_39();
  v4 = OUTLINED_FUNCTION_22_1();
  v6 = [v4 v5];

  return v6;
}

id FeedbackPreferences.UserFeedback.isCollectionIdentifierConfigByProfile.getter()
{
  v0 = OUTLINED_FUNCTION_1_5();
  v2 = v1(v0);
  v3 = sub_266ABDA74();
  v4 = OUTLINED_FUNCTION_22_1();
  v6 = [v4 v5];

  return v6;
}

id FeedbackPreferences.UserFeedback.isPromptFrequencyConfiguredByProfile.getter()
{
  v0 = OUTLINED_FUNCTION_1_5();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_39();
  v4 = OUTLINED_FUNCTION_22_1();
  v6 = [v4 v5];

  return v6;
}

void FeedbackPreferences.UserFeedback.promptFrequency.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = sub_266ABD4F4();
  OUTLINED_FUNCTION_29_2(v3);
  sub_266ABD4E4();
  LOBYTE(v38) = v2;
  sub_266A93580();
  sub_266ABD4D4();

  v4 = *v1;
  v36 = *(v1[1] + 24);
  v37 = v1[1];
  (v36)(*v1);
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 104);
  v9 = OUTLINED_FUNCTION_5();
  sub_266A6CCDC(v9, v10);
  v11 = OUTLINED_FUNCTION_5();
  v8(v11);
  v12 = OUTLINED_FUNCTION_5();
  sub_266A6A5B4(v12, v13);
  swift_unknownObjectRelease();
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v14 = sub_266ABD8D4();
  __swift_project_value_buffer(v14, qword_280BB7028);
  v15 = sub_266ABD8C4();
  v16 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v16))
  {
    OUTLINED_FUNCTION_25();
    v17 = OUTLINED_FUNCTION_33_2();
    v38 = v17;
    *ObjectType = 136315138;
    v18 = 0xE500000000000000;
    v19 = 0x726576654ELL;
    switch(v2)
    {
      case 1:
        v18 = 0xEC00000072756F48;
        v19 = OUTLINED_FUNCTION_4_5() & 0xFFFFFFFFFFFFLL | 0x206E000000000000;
        break;
      case 2:
        v18 = 0xEA00000000007961;
        v19 = OUTLINED_FUNCTION_4_5() & 0xFFFFFFFFFFFFLL | 0x4420000000000000;
        break;
      case 3:
        v18 = 0xED00007473657571;
        v19 = OUTLINED_FUNCTION_35_0();
        break;
      default:
        break;
    }

    v20 = sub_266A66D34(v19, v18, &v38);

    *(ObjectType + 4) = v20;
    OUTLINED_FUNCTION_21_3();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_7_5();
  }

  else
  {
  }

  v36(v4, v37);
  v27 = v26;
  v28 = swift_getObjectType();
  LOBYTE(v27) = (*(v27 + 16))(v28, v27);
  swift_unknownObjectRelease();
  if (v27)
  {
    v29 = OUTLINED_FUNCTION_5();
    sub_266A6A5B4(v29, v30);
  }

  else
  {
    v31 = sub_266ABD8C4();
    v32 = sub_266ABDD64();
    if (OUTLINED_FUNCTION_14_0(v32))
    {
      v33 = OUTLINED_FUNCTION_19();
      *v33 = 0;
      _os_log_impl(&dword_266A65000, v31, v32, "#feedback Preferences -  Failed to synchronize frequency to preferences.", v33, 2u);
      OUTLINED_FUNCTION_8();
    }

    v34 = OUTLINED_FUNCTION_5();
    sub_266A6A5B4(v34, v35);
  }
}

void (*FeedbackPreferences.UserFeedback.promptFrequency.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v2 = a1 + 1;
  OUTLINED_FUNCTION_16_4();
  FeedbackPreferences.UserFeedback.promptFrequency.getter(v2);
  return sub_266A92094;
}

void sub_266A92094(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = *(a1 + 8);
    v4 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  FeedbackPreferences.UserFeedback.promptFrequency.setter(v4);
}

uint64_t sub_266A92110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_266A93510(a1, &v7 - v4);
  return FeedbackPreferences.UserFeedback.lastPromptedDate.setter(v5);
}

void (*FeedbackPreferences.UserFeedback.lastPromptedDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9") - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  a1[2] = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_16_4();
  FeedbackPreferences.UserFeedback.lastPromptedDate.getter(v4);
  return sub_266A92248;
}

void sub_266A92248(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_266A93510(v3, v2);
    FeedbackPreferences.UserFeedback.lastPromptedDate.setter(v2);
    sub_266A6CBB4(v3, &qword_2800B1DB8, "h9");
  }

  else
  {
    FeedbackPreferences.UserFeedback.lastPromptedDate.setter(v3);
  }

  free(v3);

  free(v2);
}

void *sub_266A922C8@<X0>(__int128 *a1@<X0>, void *(*a2)(char *__return_ptr)@<X3>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  result = a2(&v5);
  *a3 = v5;
  return result;
}

void FeedbackPreferences.UserFeedback.dataCollectionGroup.setter(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = OUTLINED_FUNCTION_1_5();
  v4 = v3(v2);
  v5 = sub_266ABDA74();

  OUTLINED_FUNCTION_2_4();
  v6 = sub_266ABDA74();
  [v4 setObject:v5 forKey:v6];
}

void (*FeedbackPreferences.UserFeedback.dataCollectionGroup.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  FeedbackPreferences.UserFeedback.dataCollectionGroup.getter((a1 + 16));
  return sub_266A9247C;
}

void sub_266A9247C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4 = (*(*(a1 + 8) + 8))(*a1);
  v2 = sub_266ABDA74();

  OUTLINED_FUNCTION_2_4();
  v3 = sub_266ABDA74();
  [v4 setObject:v2 forKey:v3];
}

uint64_t FeedbackPreferences.UserFeedback.dataCollectionIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_1_5();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_12_3();
  v4 = [v2 stringForKey_];

  if (v4)
  {
    v5 = sub_266ABDA84();
  }

  else
  {
    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v6 = sub_266ABD8D4();
    OUTLINED_FUNCTION_8_5(v6, qword_280BB7028);
    v7 = sub_266ABD8C4();
    v8 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v8))
    {
      *OUTLINED_FUNCTION_19() = 0;
      OUTLINED_FUNCTION_10_4(&dword_266A65000, v9, v10, "#feedback Data Collection Identifier not set, using nil");
      OUTLINED_FUNCTION_8();
    }

    return 0;
  }

  return v5;
}

uint64_t sub_266A92670@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = FeedbackPreferences.UserFeedback.dataCollectionIdentifier.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_266A926AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FeedbackPreferences.UserFeedback.dataCollectionIdentifier.setter(v1, v2);
}

void FeedbackPreferences.UserFeedback.dataCollectionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_1_5();
    v4 = v3(v2);
    v5 = sub_266ABDA74();

    v8 = OUTLINED_FUNCTION_12_3();
    [v4 setObject:v5 forKey:?];
  }

  else
  {
    v6 = OUTLINED_FUNCTION_1_5();
    v5 = v7(v6);
    v8 = OUTLINED_FUNCTION_12_3();
    [v5 removeObjectForKey_];
  }
}

void (*FeedbackPreferences.UserFeedback.dataCollectionIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_16_4();
  *a1 = FeedbackPreferences.UserFeedback.dataCollectionIdentifier.getter();
  a1[1] = v3;
  return sub_266A92824;
}

void sub_266A92824(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    FeedbackPreferences.UserFeedback.dataCollectionIdentifier.setter(v3, v2);
  }

  else
  {
    FeedbackPreferences.UserFeedback.dataCollectionIdentifier.setter(*a1, v2);
  }
}

void FeedbackPreferences.UserFeedback.cancelledFeedback.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18_2();
  v11 = *v10;
  v12 = *(v10[1] + 8);
  v13 = OUTLINED_FUNCTION_5_4();
  v14 = (v12)(v13);
  v15 = OUTLINED_FUNCTION_15_3();
  v16 = [v14 dataForKey_];

  if (v16)
  {
    sub_266ABD6E4();

    v17 = sub_266ABD494();
    OUTLINED_FUNCTION_29_2(v17);
    sub_266ABD484();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    OUTLINED_FUNCTION_3_6(&qword_2800B2040);
    OUTLINED_FUNCTION_14_2();
    if (v18)
    {

      if (qword_280BB6C30 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      v19 = sub_266ABD8D4();
      OUTLINED_FUNCTION_8_5(v19, qword_280BB7028);
      v20 = v18;
      v21 = sub_266ABD8C4();
      v22 = sub_266ABDD64();

      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_25();
        v23 = OUTLINED_FUNCTION_37_0();
        *v12 = 138412290;
        v24 = v18;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v25;
        *v23 = v25;
        OUTLINED_FUNCTION_21_3();
        _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
        sub_266A6CBB4(v23, &unk_2800B2110, &unk_266AC20E0);
        OUTLINED_FUNCTION_8();
        v12 = a10;
        OUTLINED_FUNCTION_8();
      }

      v31 = OUTLINED_FUNCTION_5_4();
      v32 = (v12)(v31);
      v33 = OUTLINED_FUNCTION_15_3();
      v34 = OUTLINED_FUNCTION_22_1();
      [v34 v35];

      OUTLINED_FUNCTION_43();
    }

    else
    {
      OUTLINED_FUNCTION_43();
    }
  }

  else
  {
    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v36 = sub_266ABD8D4();
    OUTLINED_FUNCTION_8_5(v36, qword_280BB7028);
    v37 = sub_266ABD8C4();
    v38 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v38))
    {
      *OUTLINED_FUNCTION_19() = 0;
      OUTLINED_FUNCTION_10_4(&dword_266A65000, v39, v40, "#feedback No Submitted Feedback returning empty set.");
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void FeedbackPreferences.UserFeedback.submittedFeedback.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18_2();
  v11 = *v10;
  v12 = *(v10[1] + 8);
  v13 = OUTLINED_FUNCTION_5_4();
  v14 = (v12)(v13);
  v15 = OUTLINED_FUNCTION_15_3();
  v16 = [v14 dataForKey_];

  if (v16)
  {
    sub_266ABD6E4();

    v17 = sub_266ABD494();
    OUTLINED_FUNCTION_29_2(v17);
    sub_266ABD484();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    OUTLINED_FUNCTION_3_6(&qword_2800B2040);
    OUTLINED_FUNCTION_14_2();
    if (v18)
    {

      if (qword_280BB6C30 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      v19 = sub_266ABD8D4();
      OUTLINED_FUNCTION_8_5(v19, qword_280BB7028);
      v20 = v18;
      v21 = sub_266ABD8C4();
      v22 = sub_266ABDD64();

      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_25();
        v23 = OUTLINED_FUNCTION_37_0();
        *v12 = 138412290;
        v24 = v18;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v25;
        *v23 = v25;
        OUTLINED_FUNCTION_21_3();
        _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
        sub_266A6CBB4(v23, &unk_2800B2110, &unk_266AC20E0);
        OUTLINED_FUNCTION_8();
        v12 = a10;
        OUTLINED_FUNCTION_8();
      }

      v31 = OUTLINED_FUNCTION_5_4();
      v32 = (v12)(v31);
      v33 = OUTLINED_FUNCTION_15_3();
      v34 = OUTLINED_FUNCTION_22_1();
      [v34 v35];

      OUTLINED_FUNCTION_43();
    }

    else
    {
      OUTLINED_FUNCTION_43();
    }
  }

  else
  {
    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v36 = sub_266ABD8D4();
    OUTLINED_FUNCTION_8_5(v36, qword_280BB7028);
    v37 = sub_266ABD8C4();
    v38 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v38))
    {
      *OUTLINED_FUNCTION_19() = 0;
      OUTLINED_FUNCTION_10_4(&dword_266A65000, v39, v40, "#feedback No Submitted Feedback returning empty set.");
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_19_2();
}

Swift::Void __swiftcall FeedbackPreferences.UserFeedback.clearSubmittedFeedback()()
{
  v0 = OUTLINED_FUNCTION_1_5();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_13_2();
  [v2 removeObjectForKey_];
}

unint64_t sub_266A934BC()
{
  result = qword_2800B2228;
  if (!qword_2800B2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2228);
  }

  return result;
}

uint64_t sub_266A93510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266A93580()
{
  result = qword_2800B2230;
  if (!qword_2800B2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2230);
  }

  return result;
}

uint64_t sub_266A935D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_266A93614(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FeedbackPreferences.UserFeedback(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for FeedbackPreferences.UserFeedback(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_5(unint64_t *a1)
{

  return sub_266A7250C(a1);
}

uint64_t OUTLINED_FUNCTION_26_2(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2048;
  v4 = *(v1 + 16);
}

void OUTLINED_FUNCTION_28_1()
{

  sub_266A6CFCC();
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_39()
{

  return sub_266ABDA74();
}

uint64_t OUTLINED_FUNCTION_41()
{

  return sub_266ABD4D4();
}

uint64_t sub_266A937E0(char a1, char a2)
{
  if (a1)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_266ABE1C4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_266A93848(unsigned __int8 a1, char a2)
{
  v2 = 7759204;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E4F6576696CLL;
    }

    else
    {
      v4 = 6447468;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7759204;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E4F6576696CLL;
    }

    else
    {
      v2 = 6447468;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_3();
  }

  return v8 & 1;
}

uint64_t sub_266A9391C(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v4 = 0xD000000000000013;
      v5 = "1";
      goto LABEL_5;
    case 2:
      v4 = 0xD000000000000013;
      v5 = "dataCollectionGroup";
LABEL_5:
      v3 = v5 | 0x8000000000000000;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v4 = 0x74736575716572;
      break;
    case 4:
      v4 = 0x657474696D627573;
      v3 = 0xE900000000000064;
      break;
    case 5:
      v4 = 0x75706E4972657375;
      v3 = 0xE900000000000074;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v4 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  v6 = 0xE200000000000000;
  v7 = 25705;
  switch(a2)
  {
    case 1:
      v7 = 0xD000000000000013;
      v8 = "1";
      goto LABEL_13;
    case 2:
      v7 = 0xD000000000000013;
      v8 = "dataCollectionGroup";
LABEL_13:
      v6 = v8 | 0x8000000000000000;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v7 = 0x74736575716572;
      break;
    case 4:
      v7 = 0x657474696D627573;
      v6 = 0xE900000000000064;
      break;
    case 5:
      v7 = 0x75706E4972657375;
      v6 = 0xE900000000000074;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v7 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  if (v4 == v7 && v3 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_3();
  }

  return v10 & 1;
}

uint64_t sub_266A93B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_3();
  }

  return v10 & 1;
}

uint64_t sub_266A93BA8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x654479627261656ELL;
  }

  else
  {
    v3 = 0x7069636974726170;
  }

  if (v2)
  {
    v4 = 0xEC00000073746E61;
  }

  else
  {
    v4 = 0xED00007365636976;
  }

  if (a2)
  {
    v5 = 0x654479627261656ELL;
  }

  else
  {
    v5 = 0x7069636974726170;
  }

  if (a2)
  {
    v6 = 0xED00007365636976;
  }

  else
  {
    v6 = 0xEC00000073746E61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_3();
  }

  return v8 & 1;
}

uint64_t sub_266A93C50(unsigned __int8 a1, char a2)
{
  v2 = 0x6449736469;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6449736469;
  switch(v4)
  {
    case 1:
      v5 = 0x646C697562;
      break;
    case 2:
      v5 = 0x7275736F6C636E65;
      v3 = 0xEE00726F6C6F4365;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x656C61636F6CLL;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1701667182;
      break;
    case 5:
      v5 = 0x54746375646F7270;
      v6 = 1936027769;
      goto LABEL_9;
    case 6:
      v5 = 0x6E61747369737361;
      v3 = 0xEB00000000644974;
      break;
    case 7:
      v3 = 0xE800000000000000;
      v5 = 0x6449686365657073;
      break;
    case 8:
      v3 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_35_1();
      break;
    case 9:
      v5 = OUTLINED_FUNCTION_35_1();
      v6 = 1752392008;
LABEL_9:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x646C697562;
      break;
    case 2:
      v2 = 0x7275736F6C636E65;
      v7 = 0xEE00726F6C6F4365;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v2 = 0x656C61636F6CLL;
      break;
    case 4:
      v7 = 0xE400000000000000;
      v2 = 1701667182;
      break;
    case 5:
      v2 = 0x54746375646F7270;
      v8 = 1936027769;
      goto LABEL_20;
    case 6:
      v2 = 0x6E61747369737361;
      v7 = 0xEB00000000644974;
      break;
    case 7:
      v7 = 0xE800000000000000;
      v2 = 0x6449686365657073;
      break;
    case 8:
      v7 = 0xE800000000000000;
      OUTLINED_FUNCTION_32_1();
      break;
    case 9:
      OUTLINED_FUNCTION_32_1();
      v8 = 1752392008;
LABEL_20:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_3();
  }

  return v10 & 1;
}

uint64_t sub_266A93E94(unsigned __int8 a1, char a2)
{
  v2 = 0x656E6F687069;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656E6F687069;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1684107369;
      break;
    case 2:
      v5 = 1685024873;
      v3 = 0xE400000000000000;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x6863746177;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x7674656C707061;
      break;
    case 5:
      v5 = 0x6363616F69647561;
      v3 = 0xEE0079726F737365;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 6513005;
      break;
    case 7:
      v5 = 0x647974696C616572;
      v3 = 0xED00006563697665;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    case 9:
      v5 = 0x6874666F656E6F6ELL;
      v3 = 0xEB00000000657365;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1684107369;
      break;
    case 2:
      v2 = 1685024873;
      v6 = 0xE400000000000000;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x6863746177;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x7674656C707061;
      break;
    case 5:
      v2 = 0x6363616F69647561;
      v6 = 0xEE0079726F737365;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 6513005;
      break;
    case 7:
      v2 = 0x647974696C616572;
      v6 = 0xED00006563697665;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    case 9:
      v2 = 0x6874666F656E6F6ELL;
      v6 = 0xEB00000000657365;
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
    v8 = OUTLINED_FUNCTION_9_3();
  }

  return v8 & 1;
}

BOOL Request.isDirectTrigger.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(v4() + 16);

  if (v5 == 1)
  {
    v6 = (v4)(a1, a2);
    sub_266A79954(v6, v13);

    if (v14)
    {
      v7 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v8 = *(v7 + 176);
      v9 = OUTLINED_FUNCTION_28_2();
      v10(v9, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v12 == 1;
    }

    sub_266A6CBB4(v13, &qword_2800B1C48, &unk_266AC1310);
  }

  return 0;
}

uint64_t Request.winningDeviceName.getter()
{
  Request.winningDevices.getter();
  swift_getKeyPath();
  v0 = OUTLINED_FUNCTION_28_2();
  v1 = sub_266A949F0(v0);

  return v1;
}

uint64_t RequestModel.hashValue.getter()
{
  v1 = *v0;
  sub_266ABE244();
  v2 = sub_266A95214(v1);
  if (v2)
  {
    sub_266A9C670(v4, v2);
  }

  return sub_266ABE2A4();
}

void sub_266A9444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, ValueMetadata *a12, _UNKNOWN **a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_37_1();
  a34 = v35;
  a35 = v37;
  v38 = *(v36 + 16);
  if (v38)
  {
    v39 = v36;
    a23 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3();
    sub_266A98BA8();
    v40 = a23;
    v41 = v39 + 32;
    do
    {
      sub_266A841B0(v41, &a14);
      a23 = v40;
      v42 = *(v40 + 16);
      if (v42 >= *(v40 + 24) >> 1)
      {
        sub_266A98BA8();
        v40 = a23;
      }

      a12 = &type metadata for ArbitrationModel;
      a13 = &protocol witness table for ArbitrationModel;
      *&a10 = swift_allocObject();
      sub_266A841B0(&a14, a10 + 16);
      *(v40 + 16) = v42 + 1;
      sub_266A6DBC4(&a10, v40 + 40 * v42 + 32);
      sub_266A8420C(&a14);
      v41 += 72;
      --v38;
    }

    while (v38);
  }

  OUTLINED_FUNCTION_38_1();
}

void sub_266A94558()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for ParticipantModel();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22_2();
  v9 = *(v2 + 16);
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_266A98BE8();
    v10 = v20;
    v11 = *(v6 + 80);
    OUTLINED_FUNCTION_21_4();
    v13 = v2 + v12;
    v14 = *(v6 + 72);
    do
    {
      sub_266A6E9E4(v13, v0);
      v20 = v10;
      v15 = *(v10 + 16);
      if (v15 >= *(v10 + 24) >> 1)
      {
        sub_266A98BE8();
        v10 = v20;
      }

      v18 = v3;
      v19 = sub_266A81304();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
      sub_266A6E9E4(v0, boxed_opaque_existential_1);
      *(v10 + 16) = v15 + 1;
      sub_266A6DBC4(&v17, v10 + 40 * v15 + 32);
      sub_266A6A63C(v0);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_30();
}

void sub_266A946BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, ValueMetadata *a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_13_3();
  a24 = v25;
  a25 = v27;
  v28 = *(v26 + 16);
  if (v28)
  {
    v29 = v26;
    a13 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3();
    sub_266A98C68();
    v30 = a13;
    v31 = (v29 + 48);
    do
    {
      v32 = *(v31 - 2);
      v33 = *(v31 - 1);
      v34 = *v31;
      a13 = v30;
      v35 = *(v30 + 16);
      if (v35 >= *(v30 + 24) >> 1)
      {
        OUTLINED_FUNCTION_33();
        sub_266A98C68();
        v30 = a13;
      }

      v31 += 3;
      a11 = &type metadata for BoostModel;
      v36 = sub_266A9CEB0();
      *&a9 = v32;
      *(&a9 + 1) = v33;
      a12 = v36;
      a10 = v34;
      *(v30 + 16) = v35 + 1;
      sub_266A6DBC4(&a9, v30 + 40 * v35 + 32);
      --v28;
    }

    while (v28);
  }

  OUTLINED_FUNCTION_14_3();
}

uint64_t sub_266A94794(uint64_t *a1)
{
  v2 = *(type metadata accessor for ParticipantModel() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_266AB5070(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_266A9932C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_266A9483C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_266AB5088(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_266A9945C(v6);
  *a1 = v2;
  return result;
}

double sub_266A948A8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 112))(&v8, v3, v4);
  v5 = v9;
  v6 = v10;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_266A94918(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v6);
  v10[0] = v3;
  v10[1] = v2;
  v10[2] = v5;
  v10[3] = v4;
  v8 = *(v7 + 120);

  return v8(v10, v6, v7);
}

uint64_t sub_266A949AC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  result = DeviceName.guaranteed.getter(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_266A949F0(uint64_t result)
{
  v1 = 0;
  v14 = 0;
  v15 = 0xE000000000000000;
  v2 = result + 32;
  v3 = *(result + 16);
  v4 = 0x20646E61202CLL;
  if (v3 == 2)
  {
    v4 = 0x20646E6120;
  }

  v10 = v4;
  if (v3 == 2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  while (1)
  {
    v6 = 0uLL;
    v7 = v3;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v1 == v3)
    {
      goto LABEL_10;
    }

    if (v1 >= v3)
    {
      break;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_19;
    }

    *&v12[0] = v1;
    sub_266A6FFD8(v2 + 40 * v1, v12 + 8);
    v6 = v12[0];
    v8 = v12[1];
    v9 = v12[2];
LABEL_10:
    v13[0] = v6;
    v13[1] = v8;
    v13[2] = v9;
    if (!v9)
    {
      return v14;
    }

    v1 = v7;
    v11 = v6;
    sub_266A6DBC4((v13 + 8), v12);
    if (v3 > 1)
    {
      if (v11 == v3 - 1)
      {
        MEMORY[0x26D5E83C0](v10, v5);
      }

      else if (v11 > 0)
      {
        MEMORY[0x26D5E83C0](8236, 0xE200000000000000);
      }
    }

    swift_getAtKeyPath();
    MEMORY[0x26D5E83C0]();

    result = __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_266A94B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_13_3();
  v11 = 0;
  v12 = *(v10 + 16);
  if (v12 == 2)
  {
    v13 = 0x20646E6120;
  }

  else
  {
    v13 = 0x20646E61202CLL;
  }

  if (v12 == 2)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  v15 = (v10 + 40);
  while (v12 != v11)
  {
    v16 = *v15;
    v17 = *(v15 - 1);
    if (v12 <= 1)
    {
    }

    else if (v12 - 1 == v11)
    {

      MEMORY[0x26D5E83C0](v13, v14);
    }

    else
    {

      if (v11)
      {
        MEMORY[0x26D5E83C0](8236, 0xE200000000000000);
      }
    }

    swift_getAtKeyPath();
    MEMORY[0x26D5E83C0](a9, a10);

    v15 += 2;
    ++v11;
  }

  OUTLINED_FUNCTION_14_3();
}

void sub_266A94EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_3();
  a25 = v26;
  a26 = v28;
  v29 = *(v27 + 16);
  if (v29)
  {
    v30 = MEMORY[0x277D84F90];
    v31 = v27 + 32;
    while (1)
    {
      sub_266A6FFD8(v31, &a10);
      v32 = a13;
      v33 = a14;
      __swift_project_boxed_opaque_existential_1(&a10, a13);
      v34 = (*(v33 + 24))(v32, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(&a10);
      v35 = *(v34 + 16);
      v36 = *(v30 + 16);
      if (__OFADD__(v36, v35))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v36 + v35 > *(v30 + 24) >> 1)
      {
        sub_266A986F0();
        v30 = v37;
      }

      if (*(v34 + 16))
      {
        v38 = *(v30 + 16);
        v39 = *(v30 + 24);
        OUTLINED_FUNCTION_19_3();
        if (v40 != v41)
        {
          goto LABEL_17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
        swift_arrayInitWithCopy();

        if (v35)
        {
          v42 = *(v30 + 16);
          v41 = __OFADD__(v42, v35);
          v43 = v42 + v35;
          if (v41)
          {
            goto LABEL_18;
          }

          *(v30 + 16) = v43;
        }
      }

      else
      {

        if (v35)
        {
          goto LABEL_16;
        }
      }

      v31 += 40;
      if (!--v29)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_14_3();
  }
}

void Request.triggeredParticipants.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_3();
  a25 = v26;
  a26 = v27;
  v29 = (*(v28 + 16))();
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = MEMORY[0x277D84F90];
    v32 = v29 + 32;
    while (1)
    {
      sub_266A6FFD8(v32, &a10);
      v33 = a13;
      v34 = a14;
      __swift_project_boxed_opaque_existential_1(&a10, a13);
      v35 = (*(v34 + 24))(v33, v34);
      __swift_destroy_boxed_opaque_existential_1Tm(&a10);
      v36 = *(v35 + 16);
      v37 = *(v31 + 16);
      if (__OFADD__(v37, v36))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v37 + v36 > *(v31 + 24) >> 1)
      {
        OUTLINED_FUNCTION_10_5();
        sub_266A986F0();
        v31 = v38;
      }

      if (*(v35 + 16))
      {
        v39 = *(v31 + 16);
        v40 = *(v31 + 24);
        OUTLINED_FUNCTION_19_3();
        if (v41 != v42)
        {
          goto LABEL_17;
        }

        v43 = OUTLINED_FUNCTION_11_4();
        __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
        swift_arrayInitWithCopy();

        if (v36)
        {
          v45 = *(v31 + 16);
          v42 = __OFADD__(v45, v36);
          v46 = v45 + v36;
          if (v42)
          {
            goto LABEL_18;
          }

          *(v31 + 16) = v46;
        }
      }

      else
      {

        if (v36)
        {
          goto LABEL_16;
        }
      }

      v32 += 40;
      if (!--v30)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_14_3();
  }
}

uint64_t sub_266A95214(uint64_t a1)
{
  v2 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  v3 = OUTLINED_FUNCTION_3();
  sub_266A98B88(v3, v4, v5);
  v6 = v18;
  v7 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_266A6FFD8(v7, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2320, &unk_266AC35A8);
      if ((OUTLINED_FUNCTION_41_0() & 1) == 0)
      {
        break;
      }

      memcpy(__dst, __src, sizeof(__dst));
      v18 = v6;
      OUTLINED_FUNCTION_20_4();
      if (v8)
      {
        OUTLINED_FUNCTION_30_3();
        sub_266A98B88(v11, v12, v13);
        v6 = v18;
      }

      v9 = OUTLINED_FUNCTION_36();
      memcpy(v9, v10, 0x48uLL);
      v7 += 40;
      if (!--v2)
      {
        return v6;
      }
    }

    memset(__src, 0, 72);
    return 0;
  }

  return v6;
}

void sub_266A95358()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31[-v4];
  v6 = type metadata accessor for ParticipantModel();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v31[-v15];
  v17 = *(v1 + 16);
  v32 = MEMORY[0x277D84F90];
  sub_266A98B68();
  v18 = v32;
  v19 = v1 + 32;
  if (v17)
  {
    while (1)
    {
      sub_266A6FFD8(v19, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_10_5();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      sub_266A7977C(v5, v16);
      sub_266A7977C(v16, v14);
      v32 = v18;
      v24 = *(v18 + 16);
      if (v24 >= *(v18 + 24) >> 1)
      {
        sub_266A98B68();
        v18 = v32;
      }

      *(v18 + 16) = v24 + 1;
      v25 = *(v9 + 80);
      OUTLINED_FUNCTION_21_4();
      sub_266A7977C(v14, v18 + v26 + *(v9 + 72) * v24);
      v19 += 40;
      if (!--v17)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_10_5();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    sub_266A6CBB4(v5, &qword_2800B1CB0, &qword_266AC0FB8);
  }

LABEL_8:
  OUTLINED_FUNCTION_30();
}

uint64_t sub_266A9559C(uint64_t a1)
{
  v2 = type metadata accessor for ParticipantModel();
  v102 = *(v2 - 1);
  v3 = *(v102 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v99 = &v93 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v93 - v9;
  sub_266A94EF0(a1, v11, v12, v13, v14, v15, v16, v17, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5]);
  v19 = v18;
  sub_266A95358();
  v21 = v20;

  v97 = v21;
  if (!v21)
  {
    return MEMORY[0x277D84F90];
  }

  v98 = v10;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x277D84F90];
  if (!v22)
  {
LABEL_15:
    sub_266A70C04();
    v34 = v33;

    if (!v34)
    {
      sub_266A94558();
      v57 = v60;

      return v57;
    }

    v35 = sub_266A96DE4(v34);
    v36 = sub_266A96EBC(v35);
    v37 = *(v36 + 2);
    if (v37)
    {
      v38 = MEMORY[0x277D84F90];
      v106[0] = MEMORY[0x277D84F90];
      sub_266A98B68();
      v19 = v106[0];
      v103 = sub_266A6DA44();
      v39 = v37 - 1;
      for (i = 32; ; i += 168)
      {
        v41 = v36;
        memcpy(__dst, &v36[i], 0xA8uLL);
        *v6 = 0u;
        *(v6 + 1) = 0u;
        *(v6 + 4) = 0;
        v42 = v103;
        *(v6 + 9) = &type metadata for DeviceModel;
        *(v6 + 10) = v42;
        v43 = swift_allocObject();
        *(v6 + 6) = v43;
        memcpy((v43 + 16), __dst, 0xA8uLL);
        v44 = v2[11];
        sub_266A6E078(__dst, v110);
        sub_266ABD6F4();
        v45 = v2[15];
        v46 = sub_266ABD7A4();
        __swift_storeEnumTagSinglePayload(&v6[v45], 1, 1, v46);
        v47 = &v6[v2[16]];
        *(v47 + 4) = 0;
        *v47 = 0u;
        *(v47 + 1) = 0u;
        *(v6 + 5) = v38;
        *(v6 + 11) = 0;
        *(v6 + 12) = 0;
        *(v6 + 13) = v38;
        *(v6 + 56) = 0;
        v6[114] = 1;
        *&v6[v2[12]] = v38;
        *&v6[v2[13]] = v38;
        v48 = &v6[v2[14]];
        *v48 = 0;
        *(v48 + 1) = 0;
        v49 = &v6[v2[17]];
        *v49 = 0;
        *(v49 + 1) = 0;
        v50 = &v6[v2[18]];
        *v50 = 0;
        *(v50 + 1) = 0;
        v6[v2[19]] = 0;
        v6[v2[20]] = 0;
        v6[v2[21]] = 0;
        v6[v2[22]] = 0;
        v51 = &v6[v2[23]];
        *v51 = 0;
        *(v51 + 1) = 0;
        v52 = &v6[v2[24]];
        *v52 = 0;
        v52[8] = 1;
        v53 = &v6[v2[25]];
        *v53 = 0;
        v53[8] = 1;
        v54 = &v6[v2[26]];
        *v54 = 0;
        *(v54 + 1) = 0;
        v55 = v19;
        v106[0] = v19;
        v56 = v19[2];
        if (v56 >= v19[3] >> 1)
        {
          sub_266A98B68();
          v55 = v106[0];
        }

        v55[2] = v56 + 1;
        v19 = v55;
        sub_266A7977C(v6, v55 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v56);
        if (!v39)
        {
          break;
        }

        --v39;
        v38 = MEMORY[0x277D84F90];
        v36 = v41;
      }

      v58 = v98;
      v59 = v19;
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
      v58 = v98;
    }

    v61 = 0;
    v62 = *(v59 + 16);
    v95 = v97 + 48;
    v96 = v62;
    v63 = MEMORY[0x277D84F90];
    v94 = v59;
LABEL_27:
    v101 = v63;
LABEL_28:
    if (v61 == v96)
    {

      __dst[0] = v97;
      sub_266A7FAB0(v63);

      sub_266A94794(__dst);

      sub_266A94558();
      v57 = v91;

      return v57;
    }

    if (v61 >= *(v59 + 16))
    {
      goto LABEL_104;
    }

    v64 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v65 = *(v102 + 72);
    v103 = v61 + 1;
    sub_266A6E9E4(v59 + v64 + v65 * v61, v58);
    v66 = 0;
    v19 = *(v97 + 16);
    v100 = v64;
    v67 = v95 + v64;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          do
          {
            if (v66 == v19)
            {
              sub_266A7977C(v58, v99);
              v63 = v101;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v109 = v63;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v89 = *(v63 + 16);
                sub_266A98B68();
                v63 = v109;
              }

              v61 = v103;
              v90 = *(v63 + 16);
              v19 = (v90 + 1);
              if (v90 >= *(v63 + 24) >> 1)
              {
                sub_266A98B68();
                v63 = v109;
              }

              *(v63 + 16) = v19;
              sub_266A7977C(v99, v63 + v100 + v90 * v65);
              v59 = v94;
              goto LABEL_27;
            }

            v68 = v66;
            v66 = (v66 + 1);
            sub_266A6FFD8(v58 + 48, &v108);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
          }

          while (!swift_dynamicCast());
          memcpy(v110, __dst, sizeof(v110));
          sub_266A6FFD8(v67 + v68 * v65, &v107);
          if (swift_dynamicCast())
          {
            break;
          }

          sub_266A72578(v110);
        }

        memcpy(v105, v106, sizeof(v105));
        v69 = v110[1];
        if (v110[1])
        {
          v70 = v105[1];
          if (v105[1])
          {
            v71 = v110[0];
            v72 = v105[0];
            goto LABEL_44;
          }
        }

        v69 = v110[14];
        if (v110[14])
        {
          v70 = v105[14];
          if (v105[14])
          {
            v71 = v110[13];
            v72 = v105[13];
            goto LABEL_44;
          }
        }

        v69 = v110[16];
        if (v110[16])
        {
          v70 = v105[16];
          if (v105[16])
          {
            v71 = v110[15];
            v72 = v105[15];
LABEL_44:
            if (v71 == v72 && v69 == v70)
            {
              goto LABEL_93;
            }

            goto LABEL_48;
          }
        }

        v75 = *(v110[12] + 16);
        if (v75 == *(v105[12] + 16))
        {
          break;
        }

LABEL_89:
        sub_266A72578(v105);
        sub_266A72578(v110);
        v58 = v98;
      }

      if (v75 && v110[12] != v105[12])
      {
        v76 = (v110[12] + 40);
        v77 = (v105[12] + 40);
        do
        {
          v78 = *(v76 - 1) == *(v77 - 1) && *v76 == *v77;
          if (!v78 && (sub_266ABE1C4() & 1) == 0)
          {
            goto LABEL_89;
          }

          v76 += 2;
          v77 += 2;
        }

        while (--v75);
      }

      v79 = v110[10];
      v80 = v110[11];
      v81 = v105[10];
      v82 = v105[11];
      if (v110[9])
      {
        if (!v105[9])
        {
          goto LABEL_89;
        }

        v83 = v110[8] == v105[8] && v110[9] == v105[9];
        if (!v83 && (sub_266ABE1C4() & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else if (v105[9])
      {
        goto LABEL_89;
      }

      v84 = v79 == v81 && v80 == v82;
      if (!v84 && (sub_266ABE1C4() & 1) == 0)
      {
        goto LABEL_89;
      }

      if (v110[3])
      {
        if (!v105[3])
        {
          goto LABEL_89;
        }

        v85 = v110[2] == v105[2] && v110[3] == v105[3];
        if (!v85 && (sub_266ABE1C4() & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else if (v105[3])
      {
        goto LABEL_89;
      }

      v86 = v105[7];
      if (v110[7])
      {
        v58 = v98;
        if (v105[7])
        {
          if (v110[6] == v105[6] && v110[7] == v105[7])
          {
LABEL_93:
            sub_266A72578(v105);
            sub_266A72578(v110);
LABEL_94:
            sub_266A6A63C(v58);
            v59 = v94;
            v61 = v103;
            v63 = v101;
            goto LABEL_28;
          }

LABEL_48:
          v74 = sub_266ABE1C4();
          sub_266A72578(v105);
          sub_266A72578(v110);
          if (v74)
          {
            goto LABEL_94;
          }
        }

        else
        {
          sub_266A72578(v105);
          sub_266A72578(v110);
        }
      }

      else
      {
        sub_266A72578(v105);
        sub_266A72578(v110);
        v58 = v98;
        if (!v86)
        {
          goto LABEL_94;
        }
      }
    }
  }

  v24 = a1 + 32;
  while (1)
  {
    sub_266A6FFD8(v24, __dst);
    v19 = __dst[3];
    v25 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v26 = (*(v25 + 16))(v19, v25);
    v27 = *(v26 + 16);
    v28 = *(v23 + 16);
    if (__OFADD__(v28, v27))
    {
      break;
    }

    v19 = v26;
    if (!swift_isUniquelyReferenced_nonNull_native() || v28 + v27 > *(v23 + 24) >> 1)
    {
      sub_266A986F0();
      v23 = v29;
    }

    if (v19[2])
    {
      if ((*(v23 + 24) >> 1) - *(v23 + 16) < v27)
      {
        goto LABEL_105;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
      swift_arrayInitWithCopy();

      if (v27)
      {
        v30 = *(v23 + 16);
        v31 = __OFADD__(v30, v27);
        v32 = v30 + v27;
        if (v31)
        {
          goto LABEL_106;
        }

        *(v23 + 16) = v32;
      }
    }

    else
    {

      if (v27)
      {
        goto LABEL_103;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
    v24 += 40;
    if (!--v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);

  __break(1u);
  return result;
}

void Request.triggeredAndNearbyParticipants.getter()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v101 = type metadata accessor for ParticipantModel();
  v4 = OUTLINED_FUNCTION_1_0(v101);
  v99 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v97 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v91 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v91 - v13;
  (*(v1 + 32))(v3, v1);
  sub_266A95358();
  v16 = v15;

  v17 = MEMORY[0x277D84F90];
  v96 = v16;
  if (!v16)
  {
LABEL_100:
    OUTLINED_FUNCTION_30();
    return;
  }

  v18 = (*(v1 + 16))(v3, v1);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_15:

    sub_266A70C04();
    v36 = v35;

    v37 = MEMORY[0x277D84F90];
    if (!v36)
    {
      sub_266A94558();

      goto LABEL_100;
    }

    v38 = sub_266A96DE4(v36);
    v39 = sub_266A96EBC(v38);
    v25 = *(v39 + 2);
    if (v25)
    {
      v103[0] = v37;
      sub_266A98B68();
      v40 = 0;
      v41 = v103[0];
      v100 = v25 - 1;
      for (i = 32; ; i += 168)
      {
        if (v40 >= *(v39 + 2))
        {
          goto LABEL_104;
        }

        memcpy(v108, &v39[i], 0xA8uLL);
        *v14 = 0u;
        *(v14 + 1) = 0u;
        *(v14 + 4) = 0;
        *(v14 + 9) = &type metadata for DeviceModel;
        *(v14 + 10) = sub_266A6DA44();
        v43 = swift_allocObject();
        *(v14 + 6) = v43;
        memcpy((v43 + 16), v108, 0xA8uLL);
        v44 = v101;
        v45 = v101[11];
        sub_266A6E078(v108, v107);
        sub_266A6E078(v108, v107);
        sub_266ABD6F4();
        v46 = v44[15];
        v47 = sub_266ABD7A4();
        __swift_storeEnumTagSinglePayload(&v14[v46], 1, 1, v47);
        v48 = &v14[v44[16]];
        *(v48 + 4) = 0;
        *v48 = 0u;
        *(v48 + 1) = 0u;
        sub_266A72578(v108);
        *(v14 + 5) = v37;
        *(v14 + 11) = 0;
        *(v14 + 12) = 0;
        *(v14 + 13) = v37;
        *(v14 + 56) = 0;
        v14[114] = 1;
        *&v14[v44[12]] = v37;
        *&v14[v44[13]] = v37;
        OUTLINED_FUNCTION_24_3(v44[14]);
        OUTLINED_FUNCTION_24_3(v44[17]);
        OUTLINED_FUNCTION_24_3(v44[18]);
        v14[v44[19]] = 0;
        v14[v44[20]] = 0;
        v14[v44[21]] = 0;
        v14[v44[22]] = 0;
        OUTLINED_FUNCTION_24_3(v44[23]);
        v49 = &v14[v44[24]];
        *v49 = 0;
        v49[8] = v50;
        v51 = &v14[v44[25]];
        *v51 = 0;
        v51[8] = v50;
        OUTLINED_FUNCTION_24_3(v44[26]);
        v103[0] = v41;
        v53 = *(v41 + 16);
        v52 = *(v41 + 24);
        v25 = (v53 + 1);
        if (v53 >= v52 >> 1)
        {
          OUTLINED_FUNCTION_14(v52);
          OUTLINED_FUNCTION_33();
          sub_266A98B68();
          v41 = v103[0];
        }

        *(v41 + 16) = v25;
        v54 = *(v99 + 80);
        OUTLINED_FUNCTION_21_4();
        sub_266A7977C(v14, v41 + v55 + *(v56 + 72) * v53);
        if (v100 == v40)
        {
          break;
        }

        ++v40;
        v37 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }

    v57 = 0;
    v58 = *(v41 + 16);
    v94 = v96 + 48;
    v95 = v58;
    v59 = MEMORY[0x277D84F90];
    v93 = v41;
LABEL_27:
    v60 = v57;
    if (v57 == v95)
    {

      v108[0] = v96;
      sub_266A7FAB0(v59);

      sub_266A94794(v108);

      sub_266A94558();

      goto LABEL_100;
    }

    if (v57 >= *(v41 + 16))
    {
      goto LABEL_103;
    }

    v61 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v62 = v41;
    v63 = *(v99 + 72);
    v100 = v59;
    v101 = (v60 + 1);
    sub_266A6E9E4(v62 + v61 + v63 * v60, v12);
    v64 = 0;
    v25 = *(v96 + 16);
    v98 = v61;
    v65 = v94 + v61;
    while (1)
    {
      while (1)
      {
        do
        {
          if (v64 == v25)
          {
            sub_266A7977C(v12, v97);
            v59 = v100;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v106 = v59;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v88 = *(v59 + 16);
              sub_266A98B68();
              v59 = v106;
            }

            v90 = *(v59 + 16);
            v89 = *(v59 + 24);
            v25 = (v90 + 1);
            if (v90 >= v89 >> 1)
            {
              OUTLINED_FUNCTION_14(v89);
              OUTLINED_FUNCTION_33();
              sub_266A98B68();
              v59 = v106;
            }

            *(v59 + 16) = v25;
            sub_266A7977C(v97, v59 + v98 + v90 * v63);
            v41 = v93;
            v57 = v101;
            goto LABEL_27;
          }

          v66 = v64++;
          sub_266A6FFD8((v12 + 48), &v105);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
        }

        while (!swift_dynamicCast());
        memcpy(v107, v108, sizeof(v107));
        sub_266A6FFD8(v65 + v66 * v63, &v104);
        if (swift_dynamicCast())
        {
          break;
        }

LABEL_91:
        sub_266A72578(v107);
      }

      memcpy(v102, v103, sizeof(v102));
      v67 = v107[1];
      if (v107[1])
      {
        v68 = v102[1];
        if (v102[1])
        {
          v69 = v107[0];
          v70 = v102[0];
          goto LABEL_42;
        }
      }

      v67 = v107[14];
      if (v107[14])
      {
        v68 = v102[14];
        if (v102[14])
        {
          v69 = v107[13];
          v70 = v102[13];
          goto LABEL_42;
        }
      }

      v67 = v107[16];
      if (v107[16])
      {
        v68 = v102[16];
        if (v102[16])
        {
          v69 = v107[15];
          v70 = v102[15];
LABEL_42:
          if (v69 == v70 && v67 == v68)
          {
            goto LABEL_97;
          }

          goto LABEL_46;
        }
      }

      v73 = *(v107[12] + 16);
      if (v73 == *(v102[12] + 16))
      {
        if (v73 && v107[12] != v102[12])
        {
          v74 = (v107[12] + 40);
          v75 = (v102[12] + 40);
          do
          {
            v76 = *(v74 - 1) == *(v75 - 1) && *v74 == *v75;
            if (!v76 && (sub_266ABE1C4() & 1) == 0)
            {
              goto LABEL_87;
            }

            v74 += 2;
            v75 += 2;
          }

          while (--v73);
        }

        v77 = v107[10];
        v78 = v107[11];
        v79 = v102[10];
        v80 = v102[11];
        if (v107[9])
        {
          if (!v102[9])
          {
            goto LABEL_87;
          }

          if (v107[8] != v102[8] || v107[9] != v102[9])
          {
            v92 = v102[11];
            v82 = sub_266ABE1C4();
            v80 = v92;
            if ((v82 & 1) == 0)
            {
              goto LABEL_87;
            }
          }
        }

        else if (v102[9])
        {
          goto LABEL_87;
        }

        v83 = v77 == v79 && v78 == v80;
        if (!v83 && (sub_266ABE1C4() & 1) == 0)
        {
          goto LABEL_87;
        }

        if (v107[3])
        {
          if (!v102[3])
          {
            goto LABEL_87;
          }

          v84 = v107[2] == v102[2] && v107[3] == v102[3];
          if (!v84 && (sub_266ABE1C4() & 1) == 0)
          {
            goto LABEL_87;
          }
        }

        else if (v102[3])
        {
          goto LABEL_87;
        }

        v85 = v102[7];
        if (v107[7])
        {
          if (!v102[7])
          {
            sub_266A72578(v102);
            goto LABEL_91;
          }

          if (v107[6] == v102[6] && v107[7] == v102[7])
          {
LABEL_97:
            sub_266A72578(v102);
            sub_266A72578(v107);
LABEL_98:
            sub_266A6A63C(v12);
            v41 = v93;
            v59 = v100;
            v57 = v101;
            goto LABEL_27;
          }

LABEL_46:
          v72 = sub_266ABE1C4();
          sub_266A72578(v102);
          sub_266A72578(v107);
          if (v72)
          {
            goto LABEL_98;
          }
        }

        else
        {
          sub_266A72578(v102);
          sub_266A72578(v107);
          if (!v85)
          {
            goto LABEL_98;
          }
        }
      }

      else
      {
LABEL_87:
        sub_266A72578(v102);
        sub_266A72578(v107);
      }
    }
  }

  v100 = v18;
  v20 = v18 + 32;
  while (1)
  {
    sub_266A6FFD8(v20, v108);
    v22 = v108[3];
    v21 = v108[4];
    __swift_project_boxed_opaque_existential_1(v108, v108[3]);
    v23 = (*(v21 + 16))(v22, v21);
    v24 = *(v23 + 16);
    v25 = *(v17 + 16);
    if (__OFADD__(v25, v24))
    {
      break;
    }

    v26 = v23;
    if (!swift_isUniquelyReferenced_nonNull_native() || &v25[v24] > *(v17 + 24) >> 1)
    {
      sub_266A986F0();
      v17 = v27;
    }

    if (*(v26 + 16))
    {
      v28 = *(v17 + 16);
      v29 = *(v17 + 24);
      OUTLINED_FUNCTION_19_3();
      if (v31 != v32)
      {
        goto LABEL_105;
      }

      v25 = (v17 + 40 * v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
      swift_arrayInitWithCopy();

      if (v24)
      {
        v33 = *(v17 + 16);
        v32 = __OFADD__(v33, v24);
        v34 = v33 + v24;
        if (v32)
        {
          goto LABEL_106;
        }

        *(v17 + 16) = v34;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_102;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    v20 += 40;
    if (!--v19)
    {
      goto LABEL_15;
    }
  }

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

  __break(1u);
}

BOOL Request.multipleDevicesResponded.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))() + 16);

  return v2 > 1;
}

uint64_t Request.isClosestParticipant(participant:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = *(v5 + 80);
  v7 = OUTLINED_FUNCTION_16_0();
  v9 = v8(v7);
  if ((v9 & 0x100) != 0)
  {
    return 0;
  }

  v10 = v9;
  result = (*(a3 + 32))(a2, a3);
  v12 = result;
  v13 = 0;
  v14 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v14 == v13)
    {

      return 1;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    v16 = sub_266A6FFD8(i, v46);
    v17 = v47;
    v25 = OUTLINED_FUNCTION_27_3(v16, v18, v19, v20, v21, v22, v23, v24, v44, v46[0]);
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v27 = *(v17 + 80);
    v28 = OUTLINED_FUNCTION_18_3();
    v30 = v29(v28);
    if ((v30 & 0x100) != 0 || v10 < v30 || (v38 = v47, v39 = OUTLINED_FUNCTION_27_3(v30, v31, v32, v33, v34, v35, v36, v37, v45, v46[0]), __swift_project_boxed_opaque_existential_1(v39, v40), v41 = *(v38 + 80), v42 = OUTLINED_FUNCTION_18_3(), (v43(v42) & 0x100) != 0))
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      return 0;
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v46);
    ++v13;
  }

  __break(1u);
  return result;
}

void sub_266A96B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_266A94EF0(a3, a2, a3, a4, a5, a6, a7, a8, v21, v22[0], v22[1], v22[2], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, vars0, vars8);
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v10 + 32;
    while (v13 < *(v11 + 16))
    {
      sub_266A6FFD8(v14, v22);
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = (*(v16 + 208))(v15, v16);
      if (v18)
      {
        if (v17 == a1 && v18 == a2)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v22);
LABEL_15:

          return;
        }

        v20 = sub_266ABE1C4();

        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        if (v20)
        {
          goto LABEL_15;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
      }

      ++v13;
      v14 += 40;
      if (v12 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

Swift::Bool __swiftcall Request.hasParticipantId(id:)(Swift::String id)
{
  OUTLINED_FUNCTION_13_3();
  v26 = v1;
  v27 = v2;
  v4 = v3;
  v6 = v5;
  v9 = (*(v7 + 32))(v8, v7);
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v10 + 16))
    {
      sub_266A6FFD8(v13, v23);
      v14 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v15 = *(v14 + 208);
      v16 = OUTLINED_FUNCTION_5_3();
      v18 = v17(v16);
      if (v19)
      {
        if (v18 == v6 && v19 == v4)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v23);
          goto LABEL_15;
        }

        v21 = sub_266ABE1C4();

        LOBYTE(v9) = __swift_destroy_boxed_opaque_existential_1Tm(v23);
        if (v21)
        {
          goto LABEL_15;
        }
      }

      else
      {
        LOBYTE(v9) = __swift_destroy_boxed_opaque_existential_1Tm(v23);
      }

      ++v12;
      v13 += 40;
      if (v11 == v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    OUTLINED_FUNCTION_14_3();
  }

  return v9;
}

uint64_t sub_266A96DE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_266A9D110();
  result = MEMORY[0x26D5E85C0](v2, &type metadata for DeviceModel, v3);
  v5 = 0;
  v10 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 168)
  {
    if (v6 == v5)
    {

      return v10;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + i), sizeof(__dst));
    ++v5;
    sub_266A6E078(__dst, v9);
    sub_266A9BAE4(v8, __dst);
    memcpy(v9, v8, sizeof(v9));
    result = sub_266A72578(v9);
  }

  __break(1u);
  return result;
}

char *sub_266A96EBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_266A988E0(*(a1 + 16), 0);
  v4 = sub_266A9CF04(&v6, v3 + 32, v2, a1);
  sub_266A9D108();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_266A96F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = *(a2 + 112);
  if (v2 == v3)
  {
    if (v2 == 2)
    {
      sub_266A9D098(a1, &v22);
      v5 = v25;
      if (v25)
      {
        v6 = v26;
        __swift_project_boxed_opaque_existential_1(&v22, v25);
        LOBYTE(v5) = (*(v6 + 48))(v5, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      }

      else
      {
        sub_266A6CBB4(&v22, &qword_2800B1CC8, &unk_266AC0FD0);
      }

      sub_266A9D098(a2, &v22);
      v13 = v25;
      if (v25)
      {
        v14 = v26;
        __swift_project_boxed_opaque_existential_1(&v22, v25);
        v15 = (*(v14 + 48))(v13, v14);
        __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      }

      else
      {
        sub_266A6CBB4(&v22, &qword_2800B1CC8, &unk_266AC0FD0);
        v15 = 0;
      }

      v12 = v15 >= v5;
LABEL_21:
      v7 = !v12;
    }

    else
    {
      v8 = *(a1 + 72);
      v9 = *(a1 + 80);
      __swift_project_boxed_opaque_existential_1((a1 + 48), v8);
      (*(v9 + 112))(&v22, v8, v9);
      v10 = v23;
      if (v23)
      {
        v11 = v22;
      }

      else
      {
        v11 = v24;
      }

      v16 = *(a2 + 72);
      v17 = *(a2 + 80);
      __swift_project_boxed_opaque_existential_1((a2 + 48), v16);
      (*(v17 + 112))(&v27, v16, v17);
      v18 = v28;
      if (v28)
      {
        v19 = v27;
      }

      else
      {
        v19 = v29;
      }

      if (v11 == v19 && v10 == v18)
      {
        v7 = 0;
      }

      else
      {
        v7 = sub_266ABE1C4();
      }
    }
  }

  else
  {
    switch(*(a1 + 112))
    {
      case 1:
        if (*(a2 + 112))
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      case 2:
        v12 = v3 >= 2;
        goto LABEL_21;
      case 3:
        if (v3 >= 3)
        {
          goto LABEL_7;
        }

LABEL_12:
        v7 = 1;
        break;
      default:
LABEL_7:
        v7 = 0;
        break;
    }
  }

  return v7 & 1;
}

void Request.userRequestedText.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_3();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v33 = Request.winningParticipants.getter(v31, v29);
  v34 = *(v33 + 16);
  if (v34)
  {
    v72 = v26;
    v35 = v33 + 32;
    v36 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_266A6FFD8(v35, &a10);
      v37 = a13;
      v38 = a14;
      v39 = __swift_project_boxed_opaque_existential_1(&a10, a13);
      v40 = (*(v38 + 112))(v37, v38);
      if (v41)
      {
        v42 = v40;
        OUTLINED_FUNCTION_25_1();
        if (v43)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&a10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = v36[2];
            OUTLINED_FUNCTION_21_0();
            sub_266A6CFCC();
            v36 = v48;
          }

          v45 = v36[2];
          v44 = v36[3];
          if (v45 >= v44 >> 1)
          {
            OUTLINED_FUNCTION_14(v44);
            sub_266A6CFCC();
            v36 = v49;
          }

          v36[2] = v45 + 1;
          v46 = &v36[2 * v45];
          v46[4] = v42;
          v46[5] = v39;
          goto LABEL_12;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&a10);
LABEL_12:
      v35 += 40;
      if (!--v34)
      {

        v26 = v72;
        goto LABEL_15;
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_15:
  if (v36[2])
  {
    v50 = v36[4];
    v51 = v36[5];

    goto LABEL_33;
  }

  v52 = (*(v30 + 32))(v32, v30);
  v53 = *(v52 + 16);
  if (!v53)
  {

    v55 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v54 = v52 + 32;
  v55 = MEMORY[0x277D84F90];
  do
  {
    sub_266A6FFD8(v54, &a10);
    v56 = a14;
    __swift_project_boxed_opaque_existential_1(&a10, a13);
    v57 = *(v56 + 112);
    v58 = OUTLINED_FUNCTION_16_0();
    v60 = v59(v58);
    if (!v61)
    {
      goto LABEL_27;
    }

    v62 = v60;
    OUTLINED_FUNCTION_25_1();
    if (!v63)
    {

LABEL_27:
      __swift_destroy_boxed_opaque_existential_1Tm(&a10);
      goto LABEL_28;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&a10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = v55[2];
      OUTLINED_FUNCTION_21_0();
      sub_266A6CFCC();
      v55 = v68;
    }

    v65 = v55[2];
    v64 = v55[3];
    if (v65 >= v64 >> 1)
    {
      OUTLINED_FUNCTION_14(v64);
      sub_266A6CFCC();
      v55 = v69;
    }

    v55[2] = v65 + 1;
    v66 = &v55[2 * v65];
    v66[4] = v62;
    v66[5] = v26;
LABEL_28:
    v54 += 40;
    --v53;
  }

  while (v53);

LABEL_31:
  if (v55[2])
  {
    v70 = v55[4];
    v71 = v55[5];
  }

LABEL_33:

  OUTLINED_FUNCTION_14_3();
}

uint64_t RequestModel.id.getter()
{
  v11[0] = *v0;

  sub_266A9483C(v11);
  v1 = *(v11[0] + 16);
  if (v1)
  {
    v2 = v11[0] + 32;
    do
    {
      sub_266A6FFD8(v2, v11);
      v3 = v11[4];
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      v4 = *(v3 + 8);
      v5 = OUTLINED_FUNCTION_5_3();
      v7 = v6(v5);
      v9 = v8;

      MEMORY[0x26D5E83C0](v7, v9);

      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t sub_266A97738(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {

    v13 = 1;
  }

  else
  {
    v12 = sub_266ABE1C4();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

uint64_t RequestModel.arbitrations.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

BOOL sub_266A979B8()
{
  sub_266ABDFD4();
  OUTLINED_FUNCTION_28_2();

  return v0 != 0;
}

BOOL sub_266A97A3C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266A979B8();
  *a2 = result;
  return result;
}

void sub_266A97A70(uint64_t a1@<X8>)
{
  strcpy(a1, "arbitrations");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL sub_266A97AB4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_266A979B8();
  *a1 = result;
  return result;
}

uint64_t sub_266A97AEC(uint64_t a1)
{
  v2 = sub_266A9C6EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A97B28(uint64_t a1)
{
  v2 = sub_266A9C6EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestModel.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2260, &qword_266AC32B8);
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v18 - v9;
  v11 = sub_266A95214(*v1);
  if (v11)
  {
    v12 = v11;
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    v15 = OUTLINED_FUNCTION_11_4();
    __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_266A9C6EC();
    sub_266ABE2C4();
    v18[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2248, &qword_266AC32B0);
    sub_266A9C794(&qword_2800B2268, sub_266A9C80C);
    sub_266ABE154();
    (*(v6 + 8))(v10, v3);
  }

  else
  {
    sub_266A829DC();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t static RequestModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_266A95214(*a1);
  v4 = sub_266A95214(v2);
  if (v3)
  {
    if (v4)
    {
      v5 = sub_266A839A8(v3, v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t RequestModel.hash(into:)()
{
  result = sub_266A95214(*v0);
  if (result)
  {
    v2 = OUTLINED_FUNCTION_28_2();
    sub_266A9C670(v2, v0);
  }

  return result;
}

uint64_t sub_266A98018()
{
  v1 = *v0;
  sub_266ABE244();
  v2 = sub_266A95214(v1);
  if (v2)
  {
    sub_266A9C670(v4, v2);
  }

  return sub_266ABE2A4();
}

void sub_266A980BC()
{
  OUTLINED_FUNCTION_12_4();
  if (v5)
  {
    OUTLINED_FUNCTION_2_5();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_8_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF0, &qword_266AC6360);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_29_3((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || v0 + 32 + 8 * v2 <= (v9 + 32))
    {
      memmove((v9 + 32), (v0 + 32), 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD8, &unk_266AC1300);
    swift_arrayInitWithCopy();
  }
}

void sub_266A981C8()
{
  OUTLINED_FUNCTION_12_4();
  if (v3)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22E0, &unk_266AC3570);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_266A982D4()
{
  OUTLINED_FUNCTION_12_4();
  if (v5)
  {
    OUTLINED_FUNCTION_2_5();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_8_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22B0, &qword_266AC3530);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_29_3((v10 - 32) / 72);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[72 * v2] <= v11)
    {
      memmove(v11, v12, 72 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_266A983C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD0, &unk_266AC6340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[9 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_266A98500()
{
  OUTLINED_FUNCTION_12_4();
  if (v3)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_266A987E4(v7, v4);
  v9 = *(*(type metadata accessor for ParticipantModel() - 8) + 80);
  OUTLINED_FUNCTION_21_4();
  if (v1)
  {
    sub_266A98964(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_266A985D0()
{
  OUTLINED_FUNCTION_12_4();
  if (v3)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2308, &qword_266AC3590);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 48);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v7] <= v11)
    {
      memmove(v11, v12, 48 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_266A986F0()
{
  OUTLINED_FUNCTION_34_1();
  if (v7)
  {
    OUTLINED_FUNCTION_2_5();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_7_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v13 = OUTLINED_FUNCTION_40_1();
    v14 = _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_31_2(v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v13 != v0 || &v0[40 * v11 + 32] <= v13 + 32)
    {
      v16 = OUTLINED_FUNCTION_11_4();
      memmove(v16, v17, v18);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
  }
}

size_t sub_266A987E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD8, &unk_266AC0FE0);
  v4 = *(type metadata accessor for ParticipantModel() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_266A988E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22D0, &qword_266AC3558);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 168);
  return v4;
}

uint64_t sub_266A98964(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for ParticipantModel(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for ParticipantModel();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_266A98A38(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_266A986F0();
    *v1 = v6;
  }
}

uint64_t sub_266A98AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

void sub_266A98B68()
{
  v1 = *v0;
  sub_266A98D08();
  *v0 = v2;
}

char *sub_266A98B88(char *a1, int64_t a2, char a3)
{
  result = sub_266A98E9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266A98BA8()
{
  v1 = *v0;
  sub_266A6DC64();
  *v0 = v2;
}

void sub_266A98BE8()
{
  v1 = *v0;
  sub_266A6DC64();
  *v0 = v2;
}

void sub_266A98C28()
{
  v1 = *v0;
  sub_266A6DC64();
  *v0 = v2;
}

void sub_266A98C68()
{
  v1 = *v0;
  sub_266A6DC64();
  *v0 = v2;
}

char *sub_266A98CA8(char *a1, int64_t a2, char a3)
{
  result = sub_266A98FFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266A98CC8(char *a1, int64_t a2, char a3)
{
  result = sub_266A99104(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266A98CE8(char *a1, int64_t a2, char a3)
{
  result = sub_266A99218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266A98D08()
{
  OUTLINED_FUNCTION_12_4();
  if (v3)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD8, &unk_266AC0FE0);
  v9 = *(type metadata accessor for ParticipantModel() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = _swift_stdlib_malloc_size(v12);
  if (!v10)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 - v11 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_29_3((v13 - v11) / v10);
LABEL_18:
  v15 = *(*(type metadata accessor for ParticipantModel() - 8) + 80);
  OUTLINED_FUNCTION_21_4();
  if (v1)
  {
    sub_266A98964(v0 + v16, v7, v12 + v16);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_266A98E9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22B0, &qword_266AC3530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266A98FFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22A8, &qword_266AC3528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266A99104(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22A0, &qword_266AC3520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[160 * v8] <= v12)
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266A99218(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2298, &qword_266AC3518);
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
    if (v10 != a4 || &v13[96 * v8] <= v12)
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

uint64_t sub_266A9932C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_266ABE184();
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
        type metadata accessor for ParticipantModel();
        v6 = sub_266ABDC74();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ParticipantModel() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_266A99B8C(v8, v9, a1, v4);
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
    return sub_266A99560(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_266A9945C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_266ABE184();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2320, &unk_266AC35A8);
        v6 = sub_266ABDC74();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_266A9A998(v7, v8, a1, v4);
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
    return sub_266A999CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_266A99560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ParticipantModel();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v66 = &v47 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v47 - v17;
  v49 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v56 = -v20;
    v57 = v19;
    v22 = a1 - a3;
    v48 = v20;
    v23 = v19 + v20 * a3;
    v54 = v8;
    v55 = v12;
    while (2)
    {
      v52 = v21;
      v53 = a3;
      v50 = v23;
      v51 = v22;
      v24 = v66;
      do
      {
        sub_266A6E9E4(v23, v18);
        sub_266A6E9E4(v21, v24);
        v25 = v18[112];
        v26 = *(v24 + 112);
        if (v25 != v26)
        {
          switch(v18[112])
          {
            case 1:
              v30 = v26 == 0;
              goto LABEL_32;
            case 2:
              v30 = v26 < 2;
              goto LABEL_32;
            case 3:
              sub_266A6A63C(v24);
              result = sub_266A6A63C(v18);
              if (v26 >= 3)
              {
                goto LABEL_36;
              }

              goto LABEL_33;
            default:
              sub_266A6A63C(v24);
              result = sub_266A6A63C(v18);
              goto LABEL_36;
          }
        }

        if (v25 == 2)
        {
          sub_266A9D098(v18, &v58);
          v27 = v61;
          if (v61)
          {
            v28 = v62;
            __swift_project_boxed_opaque_existential_1(&v58, v61);
            v29 = (*(v28 + 48))(v27, v28);
            v24 = v66;
            LOBYTE(v27) = v29;
            __swift_destroy_boxed_opaque_existential_1Tm(&v58);
          }

          else
          {
            sub_266A6CBB4(&v58, &qword_2800B1CC8, &unk_266AC0FD0);
          }

          sub_266A9D098(v24, &v58);
          v35 = v61;
          if (v61)
          {
            v36 = v62;
            __swift_project_boxed_opaque_existential_1(&v58, v61);
            v37 = *(v36 + 48);
            v38 = v36;
            v12 = v55;
            v39 = v37(v35, v38);
            __swift_destroy_boxed_opaque_existential_1Tm(&v58);
          }

          else
          {
            sub_266A6CBB4(&v58, &qword_2800B1CC8, &unk_266AC0FD0);
            v39 = 0;
          }

          v30 = v39 < v27;
        }

        else
        {
          v31 = *(v18 + 9);
          v32 = *(v18 + 10);
          __swift_project_boxed_opaque_existential_1(v18 + 6, v31);
          (*(v32 + 112))(&v58, v31, v32);
          v33 = v59;
          if (v59)
          {
            v34 = v58;
          }

          else
          {
            v34 = v60;
          }

          v40 = v66;

          v41 = v40[9];
          v42 = v40[10];
          __swift_project_boxed_opaque_existential_1(v40 + 6, v41);
          (*(v42 + 112))(&v63, v41, v42);
          v43 = v64;
          if (v64)
          {
            v44 = v63;
          }

          else
          {
            v44 = v65;
          }

          v45 = v34 == v44 && v33 == v43;
          v30 = v45 ? 0 : sub_266ABE1C4();
          v12 = v55;
        }

        v24 = v66;
LABEL_32:
        sub_266A6A63C(v24);
        result = sub_266A6A63C(v18);
        if ((v30 & 1) == 0)
        {
          break;
        }

LABEL_33:
        if (!v57)
        {
          __break(1u);
          return result;
        }

        sub_266A7977C(v23, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_266A7977C(v12, v21);
        v21 += v56;
        v23 += v56;
      }

      while (!__CFADD__(v22++, 1));
LABEL_36:
      a3 = v53 + 1;
      v21 = v52 + v48;
      v22 = v51 - 1;
      v23 = v50 + v48;
      if (v53 + 1 != v49)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_266A999CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v28 = a3;
      v20 = v6;
      v21 = v5;
      do
      {
        sub_266A6FFD8(v5, &v25);
        sub_266A6FFD8(v5 - 40, v22);
        v7 = v26;
        v8 = v27;
        __swift_project_boxed_opaque_existential_1(&v25, v26);
        v9 = (*(v8 + 8))(v7, v8);
        v11 = v10;
        v13 = v23;
        v12 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        if (v9 == (*(v12 + 8))(v13, v12) && v11 == v14)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
        }

        else
        {
          v16 = sub_266ABE1C4();

          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
          if (v16)
          {
            break;
          }
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        sub_266A6DBC4(v5, &v25);
        v17 = *(v5 - 24);
        *v5 = *(v5 - 40);
        *(v5 + 16) = v17;
        *(v5 + 32) = *(v5 - 8);
        result = sub_266A6DBC4(&v25, v5 - 40);
        v5 -= 40;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v28 + 1;
      v5 = v21 + 40;
      v6 = v20 - 1;
      if (v28 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_266A99B8C(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v162 = a1;
  v6 = type metadata accessor for ParticipantModel();
  v172 = *(v6 - 8);
  v7 = *(v172 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v166 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v188 = &v158 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v158 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v158 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v158 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v175 = (&v158 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v160 = &v158 - v24;
  MEMORY[0x28223BE20](v23);
  v159 = &v158 - v25;
  v173 = a3;
  if (a3[1] < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_161:
    v188 = *v162;
    if (!v188)
    {
      goto LABEL_204;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v174;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_163;
    }

    goto LABEL_198;
  }

  v26 = a3[1];
  v158 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v176 = v6;
  v177 = v17;
  v178 = v14;
  v170 = v20;
  while (1)
  {
    v29 = v27++;
    v163 = v29;
    if (v27 < v26)
    {
      v169 = v26;
      v30 = *v173;
      v31 = *(v172 + 72);
      v171 = v27;
      v32 = v29;
      v33 = v30 + v31 * v27;
      v34 = v159;
      sub_266A6E9E4(v33, v159);
      v35 = v30 + v31 * v32;
      v36 = v160;
      sub_266A6E9E4(v35, v160);
      v37 = v174;
      LODWORD(v179) = sub_266A96F4C(v34, v36);
      if (v37)
      {
        sub_266A6A63C(v36);
        sub_266A6A63C(v34);
LABEL_173:

        return;
      }

      v174 = 0;
      v161 = v28;
      sub_266A6A63C(v36);
      sub_266A6A63C(v34);
      v38 = (v163 + 2);
      v39 = v30 + v31 * (v163 + 2);
      v40 = v171;
      v41 = v169;
      while (1)
      {
        v28 = v38;
        if (v40 + 1 >= v41)
        {
          break;
        }

        v42 = v40;
        v43 = v175;
        sub_266A6E9E4(v39, v175);
        sub_266A6E9E4(v33, v20);
        v44 = *(v43 + 112);
        v45 = v20[112];
        if (v44 == v45)
        {
          if (v44 == 2)
          {
            sub_266A9D098(v175, &v180);
            v46 = v183;
            if (v183)
            {
              v47 = v184;
              __swift_project_boxed_opaque_existential_1(&v180, v183);
              v48 = *(v47 + 48);
              v49 = v47;
              v20 = v170;
              LOBYTE(v46) = v48(v46, v49);
              __swift_destroy_boxed_opaque_existential_1Tm(&v180);
            }

            else
            {
              sub_266A6CBB4(&v180, &qword_2800B1CC8, &unk_266AC0FD0);
            }

            sub_266A9D098(v20, &v180);
            v55 = v183;
            if (v183)
            {
              v56 = v184;
              __swift_project_boxed_opaque_existential_1(&v180, v183);
              v57 = *(v56 + 48);
              v58 = v56;
              v14 = v178;
              v59 = v57(v55, v58);
              __swift_destroy_boxed_opaque_existential_1Tm(&v180);
            }

            else
            {
              sub_266A6CBB4(&v180, &qword_2800B1CC8, &unk_266AC0FD0);
              v59 = 0;
            }

            v50 = v59 < v46;
          }

          else
          {
            v51 = v175[9];
            v52 = v175[10];
            __swift_project_boxed_opaque_existential_1(v175 + 6, v51);
            (*(v52 + 112))(&v180, v51, v52);
            v53 = v181;
            if (v181)
            {
              v171 = v180;
            }

            else
            {
              v171 = v182;
            }

            v61 = *(v170 + 9);
            v60 = *(v170 + 10);
            __swift_project_boxed_opaque_existential_1(v170 + 6, v61);
            (*(v60 + 112))(&v185, v61, v60);
            v62 = v186;
            if (v186)
            {
              v63 = v185;
            }

            else
            {
              v63 = v187;
            }

            if (v171 == v63 && v53 == v62)
            {
              v50 = 0;
            }

            else
            {
              v50 = sub_266ABE1C4();
            }

            v14 = v178;
          }

          v41 = v169;
          v20 = v170;
        }

        else
        {
          v50 = 0;
          switch(v44)
          {
            case 1:
              v50 = v45 == 0;
              break;
            case 2:
              v54 = v45 >= 2;
              goto LABEL_17;
            case 3:
              v54 = v45 >= 3;
LABEL_17:
              v50 = !v54;
              break;
            default:
              break;
          }
        }

        sub_266A6A63C(v20);
        sub_266A6A63C(v175);
        v39 += v31;
        v33 += v31;
        v40 = v42 + 1;
        v38 = v28 + 1;
        if ((v179 ^ v50))
        {
          goto LABEL_40;
        }
      }

      v40 = v41;
LABEL_40:
      v171 = v40;
      if (v179)
      {
        v27 = v171;
        v29 = v163;
        if (v171 < v163)
        {
          goto LABEL_197;
        }

        if (v163 >= v171)
        {
          v28 = v161;
          v17 = v177;
          goto LABEL_61;
        }

        if (v41 >= v28)
        {
          v65 = v28;
        }

        else
        {
          v65 = v41;
        }

        v66 = v31 * (v65 - 1);
        v67 = v31 * v65;
        v68 = v171;
        v69 = v163;
        v70 = v163 * v31;
        do
        {
          if (v69 != --v68)
          {
            v71 = *v173;
            if (!*v173)
            {
              goto LABEL_202;
            }

            sub_266A7977C(v71 + v70, v166);
            if (v70 < v66 || v71 + v70 >= v71 + v67)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v66)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_266A7977C(v166, v71 + v66);
            v14 = v178;
          }

          ++v69;
          v66 -= v31;
          v67 -= v31;
          v70 += v31;
        }

        while (v69 < v68);
      }

      v28 = v161;
      v17 = v177;
      v27 = v171;
      v29 = v163;
    }

LABEL_61:
    v73 = v173[1];
    if (v27 < v73)
    {
      if (__OFSUB__(v27, v29))
      {
        goto LABEL_194;
      }

      if (v27 - v29 < v158)
      {
        break;
      }
    }

LABEL_108:
    if (v27 < v29)
    {
      goto LABEL_193;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v147 = *(v28 + 2);
      sub_266A981C8();
      v28 = v148;
    }

    v104 = *(v28 + 2);
    v105 = v104 + 1;
    if (v104 >= *(v28 + 3) >> 1)
    {
      sub_266A981C8();
      v28 = v149;
    }

    *(v28 + 2) = v105;
    v106 = v28 + 32;
    v107 = &v28[16 * v104 + 32];
    *v107 = v163;
    *(v107 + 1) = v27;
    v179 = *v162;
    if (!v179)
    {
      goto LABEL_203;
    }

    if (v104)
    {
      while (1)
      {
        v108 = v105 - 1;
        v109 = &v106[16 * v105 - 16];
        v110 = &v28[16 * v105];
        if (v105 >= 4)
        {
          break;
        }

        if (v105 == 3)
        {
          v111 = *(v28 + 4);
          v112 = *(v28 + 5);
          v121 = __OFSUB__(v112, v111);
          v113 = v112 - v111;
          v114 = v121;
LABEL_128:
          if (v114)
          {
            goto LABEL_180;
          }

          v126 = *v110;
          v125 = *(v110 + 1);
          v127 = __OFSUB__(v125, v126);
          v128 = v125 - v126;
          v129 = v127;
          if (v127)
          {
            goto LABEL_183;
          }

          v130 = *(v109 + 1);
          v131 = v130 - *v109;
          if (__OFSUB__(v130, *v109))
          {
            goto LABEL_186;
          }

          if (__OFADD__(v128, v131))
          {
            goto LABEL_188;
          }

          if (v128 + v131 >= v113)
          {
            if (v113 < v131)
            {
              v108 = v105 - 2;
            }

            goto LABEL_150;
          }

          goto LABEL_143;
        }

        if (v105 < 2)
        {
          goto LABEL_182;
        }

        v133 = *v110;
        v132 = *(v110 + 1);
        v121 = __OFSUB__(v132, v133);
        v128 = v132 - v133;
        v129 = v121;
LABEL_143:
        if (v129)
        {
          goto LABEL_185;
        }

        v135 = *v109;
        v134 = *(v109 + 1);
        v121 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v121)
        {
          goto LABEL_187;
        }

        if (v136 < v128)
        {
          goto LABEL_157;
        }

LABEL_150:
        if (v108 - 1 >= v105)
        {
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        if (!*v173)
        {
          goto LABEL_200;
        }

        v140 = v28;
        v141 = &v106[16 * v108 - 16];
        v28 = *v141;
        v142 = &v106[16 * v108];
        v143 = *(v142 + 1);
        v144 = v174;
        sub_266A9B18C(*v173 + *(v172 + 72) * *v141, *v173 + *(v172 + 72) * *v142, *v173 + *(v172 + 72) * v143, v179);
        v174 = v144;
        if (v144)
        {
          goto LABEL_173;
        }

        if (v143 < v28)
        {
          goto LABEL_175;
        }

        v145 = *(v140 + 2);
        if (v108 > v145)
        {
          goto LABEL_176;
        }

        *v141 = v28;
        *(v141 + 1) = v143;
        if (v108 >= v145)
        {
          goto LABEL_177;
        }

        v105 = v145 - 1;
        sub_266AB36DC(v142 + 16, v145 - 1 - v108, &v106[16 * v108]);
        v28 = v140;
        *(v140 + 2) = v145 - 1;
        v146 = v145 > 2;
        v14 = v178;
        if (!v146)
        {
          goto LABEL_157;
        }
      }

      v115 = &v106[16 * v105];
      v116 = *(v115 - 8);
      v117 = *(v115 - 7);
      v121 = __OFSUB__(v117, v116);
      v118 = v117 - v116;
      if (v121)
      {
        goto LABEL_178;
      }

      v120 = *(v115 - 6);
      v119 = *(v115 - 5);
      v121 = __OFSUB__(v119, v120);
      v113 = v119 - v120;
      v114 = v121;
      if (v121)
      {
        goto LABEL_179;
      }

      v122 = *(v110 + 1);
      v123 = v122 - *v110;
      if (__OFSUB__(v122, *v110))
      {
        goto LABEL_181;
      }

      v121 = __OFADD__(v113, v123);
      v124 = v113 + v123;
      if (v121)
      {
        goto LABEL_184;
      }

      if (v124 >= v118)
      {
        v138 = *v109;
        v137 = *(v109 + 1);
        v121 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v121)
        {
          goto LABEL_192;
        }

        if (v113 < v139)
        {
          v108 = v105 - 2;
        }

        goto LABEL_150;
      }

      goto LABEL_128;
    }

LABEL_157:
    v26 = v173[1];
    v17 = v177;
    v20 = v170;
    if (v27 >= v26)
    {
      goto LABEL_161;
    }
  }

  v74 = v29 + v158;
  if (__OFADD__(v29, v158))
  {
    goto LABEL_195;
  }

  if (v74 >= v73)
  {
    v74 = v173[1];
  }

  if (v74 < v29)
  {
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    v28 = sub_266AB36C4(v28);
LABEL_163:
    v151 = v28 + 16;
    v152 = *(v28 + 2);
    while (v152 >= 2)
    {
      if (!*v173)
      {
        goto LABEL_201;
      }

      v153 = v28;
      v28 += 16 * v152;
      v154 = *v28;
      v155 = &v151[2 * v152];
      v156 = *(v155 + 1);
      sub_266A9B18C(*v173 + *(v172 + 72) * *v28, *v173 + *(v172 + 72) * *v155, *v173 + *(v172 + 72) * v156, v188);
      if (v27)
      {
        break;
      }

      if (v156 < v154)
      {
        goto LABEL_189;
      }

      if (v152 - 2 >= *v151)
      {
        goto LABEL_190;
      }

      *v28 = v154;
      *(v28 + 1) = v156;
      v157 = *v151 - v152;
      if (*v151 < v152)
      {
        goto LABEL_191;
      }

      v152 = *v151 - 1;
      sub_266AB36DC(v155 + 16, v157, v155);
      *v151 = v152;
      v28 = v153;
    }

    goto LABEL_173;
  }

  if (v27 == v74)
  {
    goto LABEL_108;
  }

  v161 = v28;
  v75 = *(v172 + 72);
  v76 = *v173 + v75 * (v27 - 1);
  v77 = -v75;
  v78 = v29 - v27;
  v179 = *v173;
  v164 = v75;
  v79 = v179 + v27 * v75;
  v165 = v74;
LABEL_70:
  v171 = v27;
  v167 = v79;
  v168 = v78;
  v169 = v76;
  v80 = v78;
  while (1)
  {
    sub_266A6E9E4(v79, v17);
    sub_266A6E9E4(v76, v14);
    v81 = v17[112];
    v82 = v14[112];
    if (v81 != v82)
    {
      switch(v17[112])
      {
        case 1:
          v85 = v82 == 0;
          goto LABEL_101;
        case 2:
          v91 = v82 >= 2;
          goto LABEL_90;
        case 3:
          sub_266A6A63C(v14);
          sub_266A6A63C(v17);
          if (v82 >= 3)
          {
            goto LABEL_105;
          }

          goto LABEL_102;
        default:
          sub_266A6A63C(v14);
          sub_266A6A63C(v17);
          goto LABEL_105;
      }
    }

    if (v81 == 2)
    {
      sub_266A9D098(v17, &v180);
      v83 = v183;
      if (v183)
      {
        v84 = v184;
        __swift_project_boxed_opaque_existential_1(&v180, v183);
        LOBYTE(v83) = (*(v84 + 48))(v83, v84);
        __swift_destroy_boxed_opaque_existential_1Tm(&v180);
      }

      else
      {
        sub_266A6CBB4(&v180, &qword_2800B1CC8, &unk_266AC0FD0);
      }

      sub_266A9D098(v14, &v180);
      v92 = v183;
      if (v183)
      {
        v93 = v184;
        __swift_project_boxed_opaque_existential_1(&v180, v183);
        v94 = *(v93 + 48);
        v95 = v93;
        v14 = v178;
        v96 = v94(v92, v95);
        __swift_destroy_boxed_opaque_existential_1Tm(&v180);
      }

      else
      {
        sub_266A6CBB4(&v180, &qword_2800B1CC8, &unk_266AC0FD0);
        v96 = 0;
      }

      v17 = v177;
      v91 = v96 >= v83;
LABEL_90:
      v85 = !v91;
    }

    else
    {
      v86 = v17;
      v87 = *(v17 + 9);
      v88 = *(v17 + 10);
      __swift_project_boxed_opaque_existential_1(v86 + 6, v87);
      (*(v88 + 112))(&v180, v87, v88);
      v89 = v181;
      if (v181)
      {
        v90 = v180;
      }

      else
      {
        v90 = v182;
      }

      v97 = v14;
      v98 = *(v14 + 9);
      v99 = *(v97 + 10);
      __swift_project_boxed_opaque_existential_1(v97 + 6, v98);
      (*(v99 + 112))(&v185, v98, v99);
      v100 = v186;
      if (v186)
      {
        v101 = v185;
      }

      else
      {
        v101 = v187;
      }

      if (v90 == v101 && v89 == v100)
      {
        v85 = 0;
      }

      else
      {
        v85 = sub_266ABE1C4();
      }

      v14 = v178;

      v17 = v177;
    }

LABEL_101:
    sub_266A6A63C(v14);
    sub_266A6A63C(v17);
    if ((v85 & 1) == 0)
    {
LABEL_105:
      v27 = v171 + 1;
      v76 = v169 + v164;
      v78 = v168 - 1;
      v79 = v167 + v164;
      if (v171 + 1 == v165)
      {
        v27 = v165;
        v28 = v161;
        v29 = v163;
        goto LABEL_108;
      }

      goto LABEL_70;
    }

LABEL_102:
    if (!v179)
    {
      break;
    }

    v103 = v188;
    sub_266A7977C(v79, v188);
    swift_arrayInitWithTakeFrontToBack();
    sub_266A7977C(v103, v76);
    v76 += v77;
    v79 += v77;
    v54 = __CFADD__(v80++, 1);
    if (v54)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
}

void sub_266A9A998(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5;
      v8 = (v5 + 1);
      v111 = v5;
      if ((v5 + 1) < v4)
      {
        v9 = *a3;
        sub_266A6FFD8(*a3 + 40 * v8, &v122);
        sub_266A6FFD8(v9 + 40 * v7, v119);
        v10 = v125;
        LODWORD(v117) = sub_266A97738(&v122, v119);
        v125 = v10;
        if (v10)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v119);
          __swift_destroy_boxed_opaque_existential_1Tm(&v122);
LABEL_114:

          return;
        }

        v108 = v6;
        __swift_destroy_boxed_opaque_existential_1Tm(v119);
        __swift_destroy_boxed_opaque_existential_1Tm(&v122);
        v114 = 40 * v7;
        v11 = v9 + 40 * v7 + 80;
        v12 = (v7 + 2);
        while (1)
        {
          v13 = v12;
          if (v8 + 1 >= v4)
          {
            break;
          }

          v14 = v8;
          sub_266A6FFD8(v11, &v122);
          sub_266A6FFD8(v11 - 40, v119);
          v15 = v123;
          v16 = v124;
          __swift_project_boxed_opaque_existential_1(&v122, v123);
          v17 = (*(v16 + 8))(v15, v16);
          v19 = v18;
          v21 = v120;
          v20 = v121;
          __swift_project_boxed_opaque_existential_1(v119, v120);
          if (v17 == (*(v20 + 8))(v21, v20) && v19 == v22)
          {
            v24 = 0;
          }

          else
          {
            v24 = sub_266ABE1C4();
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v119);
          __swift_destroy_boxed_opaque_existential_1Tm(&v122);
          v11 += 40;
          v8 = v14 + 1;
          v12 = v13 + 1;
          if (((v117 ^ v24) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v8 = v4;
LABEL_16:
        if (v117)
        {
          v25 = v111;
          v6 = v108;
          if (v8 < v111)
          {
            goto LABEL_139;
          }

          if (v111 >= v8)
          {
            v7 = v111;
          }

          else
          {
            if (v4 >= v13)
            {
              v26 = v13;
            }

            else
            {
              v26 = v4;
            }

            v27 = 40 * v26 - 40;
            v28 = v8;
            v29 = v114;
            do
            {
              if (v25 != --v28)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_144;
                }

                v31 = v8;
                v32 = v30 + v29;
                v33 = v30 + v27;
                sub_266A6DBC4((v30 + v29), &v122);
                v34 = *(v33 + 32);
                v35 = *(v33 + 16);
                *v32 = *v33;
                *(v32 + 16) = v35;
                *(v32 + 32) = v34;
                sub_266A6DBC4(&v122, v33);
                v8 = v31;
              }

              ++v25;
              v27 -= 40;
              v29 += 40;
            }

            while (v25 < v28);
            v7 = v111;
          }
        }

        else
        {
          v7 = v111;
          v6 = v108;
        }
      }

      v36 = a3[1];
      if (v8 < v36)
      {
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_136;
        }

        if (v8 - v7 < a4)
        {
          v37 = &v7[a4];
          if (__OFADD__(v7, a4))
          {
            goto LABEL_137;
          }

          if (v37 >= v36)
          {
            v37 = a3[1];
          }

          if (v37 >= v7)
          {
            if (v8 == v37)
            {
              goto LABEL_52;
            }

            v109 = v6;
            v38 = *a3;
            v39 = *a3 + 40 * v8;
            v40 = &v7[-v8];
            v112 = v37;
LABEL_39:
            v115 = v39;
            v117 = v8;
            v113 = v40;
            while (1)
            {
              sub_266A6FFD8(v39, &v122);
              sub_266A6FFD8(v39 - 40, v119);
              v41 = v123;
              v42 = v124;
              __swift_project_boxed_opaque_existential_1(&v122, v123);
              v43 = (*(v42 + 8))(v41, v42);
              v45 = v44;
              v46 = v120;
              v47 = v121;
              __swift_project_boxed_opaque_existential_1(v119, v120);
              if (v43 == (*(v47 + 8))(v46, v47) && v45 == v48)
              {

                __swift_destroy_boxed_opaque_existential_1Tm(v119);
                __swift_destroy_boxed_opaque_existential_1Tm(&v122);
              }

              else
              {
                v50 = sub_266ABE1C4();

                __swift_destroy_boxed_opaque_existential_1Tm(v119);
                __swift_destroy_boxed_opaque_existential_1Tm(&v122);
                if (v50)
                {
                  goto LABEL_50;
                }
              }

              if (!v38)
              {
                break;
              }

              sub_266A6DBC4(v39, &v122);
              v51 = *(v39 - 24);
              *v39 = *(v39 - 40);
              *(v39 + 16) = v51;
              *(v39 + 32) = *(v39 - 8);
              sub_266A6DBC4(&v122, v39 - 40);
              v39 -= 40;
              if (__CFADD__(v40++, 1))
              {
LABEL_50:
                v8 = (v117 + 1);
                v39 = v115 + 40;
                v40 = v113 - 1;
                if (v117 + 1 == v112)
                {
                  v8 = v112;
                  v6 = v109;
                  v7 = v111;
                  goto LABEL_52;
                }

                goto LABEL_39;
              }
            }

            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          v6 = sub_266AB36C4(v6);
LABEL_106:
          v98 = v6;
          v99 = (v6 + 16);
          for (i = *(v6 + 16); ; *v99 = i)
          {
            v6 = i - 2;
            if (i < 2)
            {
              break;
            }

            if (!*a3)
            {
              goto LABEL_143;
            }

            v101 = (v98 + 16 * i);
            v102 = *v101;
            v103 = &v99[2 * i];
            v104 = *(v103 + 1);
            v105 = v125;
            sub_266A9B640((*a3 + 40 * *v101), (*a3 + 40 * *v103), *a3 + 40 * v104, v117);
            v125 = v105;
            if (v105)
            {
              break;
            }

            if (v104 < v102)
            {
              goto LABEL_131;
            }

            if (v6 >= *v99)
            {
              goto LABEL_132;
            }

            *v101 = v102;
            v101[1] = v104;
            v106 = *v99 - i;
            if (*v99 < i)
            {
              goto LABEL_133;
            }

            i = *v99 - 1;
            sub_266AB36DC(v103 + 16, v106, v103);
          }

          goto LABEL_114;
        }
      }

LABEL_52:
      if (v8 < v7)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = *(v6 + 16);
        sub_266A981C8();
        v6 = v96;
      }

      v53 = *(v6 + 16);
      v54 = v53 + 1;
      v117 = v8;
      if (v53 >= *(v6 + 24) >> 1)
      {
        sub_266A981C8();
        v6 = v97;
      }

      *(v6 + 16) = v54;
      v55 = v6 + 32;
      v56 = (v6 + 32 + 16 * v53);
      *v56 = v111;
      v56[1] = v117;
      v116 = *a1;
      if (!*a1)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      if (v53)
      {
        break;
      }

LABEL_101:
      v5 = v117;
      v4 = a3[1];
      if (v117 >= v4)
      {
        goto LABEL_104;
      }
    }

    while (1)
    {
      v57 = v54 - 1;
      v58 = (v55 + 16 * (v54 - 1));
      v59 = (v6 + 16 * v54);
      if (v54 >= 4)
      {
        break;
      }

      if (v54 == 3)
      {
        v60 = *(v6 + 32);
        v61 = *(v6 + 40);
        v70 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        v63 = v70;
LABEL_72:
        if (v63)
        {
          goto LABEL_122;
        }

        v75 = *v59;
        v74 = v59[1];
        v76 = __OFSUB__(v74, v75);
        v77 = v74 - v75;
        v78 = v76;
        if (v76)
        {
          goto LABEL_125;
        }

        v79 = v58[1];
        v80 = v79 - *v58;
        if (__OFSUB__(v79, *v58))
        {
          goto LABEL_128;
        }

        if (__OFADD__(v77, v80))
        {
          goto LABEL_130;
        }

        if (v77 + v80 >= v62)
        {
          if (v62 < v80)
          {
            v57 = v54 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_87;
      }

      if (v54 < 2)
      {
        goto LABEL_124;
      }

      v82 = *v59;
      v81 = v59[1];
      v70 = __OFSUB__(v81, v82);
      v77 = v81 - v82;
      v78 = v70;
LABEL_87:
      if (v78)
      {
        goto LABEL_127;
      }

      v84 = *v58;
      v83 = v58[1];
      v70 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v70)
      {
        goto LABEL_129;
      }

      if (v85 < v77)
      {
        goto LABEL_101;
      }

LABEL_94:
      if (v57 - 1 >= v54)
      {
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
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
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      if (!*a3)
      {
        goto LABEL_142;
      }

      v89 = v6;
      v90 = (v55 + 16 * (v57 - 1));
      v91 = *v90;
      v92 = v55 + 16 * v57;
      v6 = *(v92 + 8);
      v93 = v125;
      sub_266A9B640((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v6, v116);
      v125 = v93;
      if (v93)
      {
        goto LABEL_114;
      }

      if (v6 < v91)
      {
        goto LABEL_117;
      }

      v94 = *(v89 + 16);
      if (v57 > v94)
      {
        goto LABEL_118;
      }

      *v90 = v91;
      v90[1] = v6;
      if (v57 >= v94)
      {
        goto LABEL_119;
      }

      v54 = v94 - 1;
      sub_266AB36DC((v92 + 16), v94 - 1 - v57, (v55 + 16 * v57));
      v6 = v89;
      *(v89 + 16) = v94 - 1;
      if (v94 <= 2)
      {
        goto LABEL_101;
      }
    }

    v64 = v55 + 16 * v54;
    v65 = *(v64 - 64);
    v66 = *(v64 - 56);
    v70 = __OFSUB__(v66, v65);
    v67 = v66 - v65;
    if (v70)
    {
      goto LABEL_120;
    }

    v69 = *(v64 - 48);
    v68 = *(v64 - 40);
    v70 = __OFSUB__(v68, v69);
    v62 = v68 - v69;
    v63 = v70;
    if (v70)
    {
      goto LABEL_121;
    }

    v71 = v59[1];
    v72 = v71 - *v59;
    if (__OFSUB__(v71, *v59))
    {
      goto LABEL_123;
    }

    v70 = __OFADD__(v62, v72);
    v73 = v62 + v72;
    if (v70)
    {
      goto LABEL_126;
    }

    if (v73 >= v67)
    {
      v87 = *v58;
      v86 = v58[1];
      v70 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v70)
      {
        goto LABEL_134;
      }

      if (v62 < v88)
      {
        v57 = v54 - 2;
      }

      goto LABEL_94;
    }

    goto LABEL_72;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_104:
  v117 = *a1;
  if (*a1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_106;
    }

    goto LABEL_140;
  }

LABEL_146:
  __break(1u);
}

uint64_t sub_266A9B18C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v66 = a3;
  v68 = type metadata accessor for ParticipantModel();
  v9 = *(*(v68 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v68);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v57 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v57 - v15;
  result = MEMORY[0x28223BE20](v14);
  v20 = &v57 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  v23 = a2 - a1;
  v24 = a2 - a1 == 0x8000000000000000 && v22 == -1;
  if (v24)
  {
    goto LABEL_65;
  }

  v25 = v66 - a2;
  if (v66 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_66;
  }

  v27 = v23 / v22;
  v71 = a1;
  v70 = a4;
  v28 = v25 / v22;
  if (v23 / v22 >= v25 / v22)
  {
    v67 = v5;
    v63 = v13;
    v64 = v18;
    v65 = a1;
    sub_266A98964(a2, v25 / v22, a4);
    v35 = a4 + v28 * v22;
    v36 = -v22;
    v37 = v35;
    v38 = a4;
    v60 = -v22;
    v61 = a4;
LABEL_38:
    v39 = a2 + v36;
    v40 = v66;
    v58 = v37;
    v41 = v37;
    v62 = a2 + v36;
    while (1)
    {
      if (v35 <= v38)
      {
        v71 = a2;
        v69 = v41;
        goto LABEL_63;
      }

      if (a2 <= v65)
      {
        v71 = a2;
        v69 = v58;
        goto LABEL_63;
      }

      v42 = v40;
      v59 = v41;
      v43 = a2;
      v44 = v35;
      v45 = v35 + v36;
      v46 = v63;
      sub_266A6E9E4(v35 + v36, v63);
      v47 = v64;
      sub_266A6E9E4(v39, v64);
      v48 = v67;
      v49 = sub_266A96F4C(v46, v47);
      if (v48)
      {
        break;
      }

      v50 = v49;
      v51 = v42 + v36;
      sub_266A6A63C(v47);
      sub_266A6A63C(v46);
      v67 = 0;
      if (v50)
      {
        v54 = v42 < v43 || v51 >= v43;
        v66 = v42 + v36;
        if (v54)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v59;
          v36 = v60;
          v38 = v61;
          v35 = v44;
        }

        else
        {
          v36 = v60;
          v37 = v59;
          v24 = v42 == v43;
          v38 = v61;
          v55 = v62;
          a2 = v62;
          v35 = v44;
          if (!v24)
          {
            v56 = v59;
            swift_arrayInitWithTakeBackToFront();
            a2 = v55;
            v37 = v56;
          }
        }

        goto LABEL_38;
      }

      v52 = v42 < v44 || v51 >= v44;
      a2 = v43;
      if (v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        v40 = v42 + v36;
        v35 = v45;
        v41 = v45;
        v36 = v60;
        v38 = v61;
        v39 = v62;
      }

      else
      {
        v41 = v45;
        v24 = v44 == v42;
        v40 = v42 + v36;
        v35 = v45;
        v36 = v60;
        v38 = v61;
        v53 = v51;
        v39 = v62;
        if (!v24)
        {
          swift_arrayInitWithTakeBackToFront();
          v40 = v53;
          v35 = v45;
          v41 = v45;
        }
      }
    }

    sub_266A6A63C(v47);
    sub_266A6A63C(v46);
    v71 = v43;
    v69 = v59;
  }

  else
  {
    sub_266A98964(a1, v23 / v22, a4);
    v67 = a4 + v27 * v22;
    v69 = v67;
    while (a4 < v67 && a2 < v66)
    {
      sub_266A6E9E4(a2, v20);
      v30 = a4;
      sub_266A6E9E4(a4, v16);
      v31 = sub_266A96F4C(v20, v16);
      if (v5)
      {
        sub_266A6A63C(v16);
        sub_266A6A63C(v20);
        break;
      }

      v32 = v31;
      sub_266A6A63C(v16);
      sub_266A6A63C(v20);
      if (v32)
      {
        if (a1 < a2 || a1 >= a2 + v22)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v22;
      }

      else
      {
        a4 += v22;
        if (a1 < v30 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v30)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v70 = a4;
      }

      a1 += v22;
      v71 = a1;
    }
  }

LABEL_63:
  sub_266A9BA04(&v71, &v70, &v69);
  return 1;
}

uint64_t sub_266A9B640(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 40;
  v9 = (a3 - __dst) / 40;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[40 * v8] <= a4)
    {
      memmove(a4, __src, 40 * v8);
    }

    v11 = &v4[40 * v8];
    v60 = v5;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      sub_266A6FFD8(v6, v57);
      sub_266A6FFD8(v4, v54);
      v13 = v58;
      v14 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v15 = (*(v14 + 8))(v13, v14);
      v17 = v16;
      v18 = v55;
      v19 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      if (v15 == (*(v19 + 8))(v18, v19) && v17 == v20)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
      }

      else
      {
        v22 = sub_266ABE1C4();

        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        if (v22)
        {
          v23 = v4;
          v24 = v7 == v4;
          v4 += 40;
          goto LABEL_20;
        }
      }

      v23 = v6;
      v24 = v7 == v6;
      v6 += 40;
LABEL_20:
      v5 = v60;
      if (!v24)
      {
        v25 = *v23;
        v26 = *(v23 + 1);
        *(v7 + 4) = *(v23 + 4);
        *v7 = v25;
        *(v7 + 1) = v26;
      }

      v7 += 40;
    }
  }

  if (a4 != __dst || &__dst[40 * v9] <= a4)
  {
    memmove(a4, __dst, 40 * v9);
  }

  v28 = &v4[40 * v9];
  v52 = v7;
LABEL_29:
  v29 = (v6 - 40);
  v30 = v5 - 40;
  v31 = (v28 - 40);
  v60 = v6;
  for (i = v6 - 40; ; v29 = i)
  {
    v11 = (v31 + 40);
    if (v31 + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    v33 = v30;
    v34 = v4;
    sub_266A6FFD8(v31, v57);
    sub_266A6FFD8(v29, v54);
    v35 = v58;
    v36 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v37 = (*(v36 + 8))(v35, v36);
    v39 = v38;
    v41 = v55;
    v40 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    if (v37 == (*(v40 + 8))(v41, v40) && v39 == v42)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_266ABE1C4();
    }

    v5 = v33;

    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    v4 = v34;
    v6 = v60;
    if ((v44 & 1) == 0)
    {
      v28 = (v31 + 40);
      v7 = v52;
      v6 = i;
      if ((v5 + 40) != v60)
      {
        v47 = *i;
        v48 = *(i + 1);
        *(v5 + 32) = *(i + 4);
        *v5 = v47;
        *(v5 + 16) = v48;
        v6 = i;
      }

      goto LABEL_29;
    }

    v7 = v52;
    if (v11 != (v5 + 40))
    {
      v45 = *v31;
      v46 = *(v31 + 16);
      *(v5 + 32) = *(v31 + 32);
      *v5 = v45;
      *(v5 + 16) = v46;
    }

    v30 = v5 - 40;
    v31 -= 40;
  }

LABEL_48:
  v49 = (v11 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v49])
  {
    memmove(v6, v4, 40 * v49);
  }

  return 1;
}

uint64_t sub_266A9BA04(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ParticipantModel();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

BOOL sub_266A9BAE4(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = a2[13];
  v7 = a2[14];
  memcpy(__dst, a2, sizeof(__dst));
  v8 = *v2;
  v9 = *(*v2 + 40);
  sub_266ABE244();
  sub_266ABE264();
  if (v7)
  {
    sub_266ABDB04();
  }

  if (a2[1])
  {
    v10 = *a2;
    sub_266ABE264();
    sub_266ABDB04();
  }

  else
  {
    sub_266ABE264();
  }

  v11 = sub_266ABE2A4();
  v12 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v8 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v16 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      memcpy(v25, __dst, 0xA8uLL);
      __src[0] = *v3;
      sub_266A6E078(v25, v23);
      sub_266A9C014(v25, v13, isUniquelyReferenced_nonNull_native);
      *v3 = __src[0];
      memcpy(a1, __dst, 0xA8uLL);
      return v14 == 0;
    }

    v15 = *(v8 + 48) + 168 * v13;
    memcpy(v23, v15, sizeof(v23));
    memcpy(__src, v15, sizeof(__src));
    sub_266A6E078(v23, v21);
    LOBYTE(v15) = static DeviceModel.== infix(_:_:)(__src, __dst);
    memcpy(v25, __src, 0xA8uLL);
    sub_266A72578(v25);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  memcpy(v21, __dst, sizeof(v21));
  sub_266A72578(v21);
  v18 = (*(v8 + 48) + 168 * v13);
  memcpy(__src, v18, sizeof(__src));
  memcpy(a1, v18, 0xA8uLL);
  sub_266A6E078(__src, v20);
  return v14 == 0;
}

uint64_t sub_266A9BD0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2330, &qword_266AC35B8);
  result = sub_266ABDE74();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_33:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_266AB3D70(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 168 * (v14 | (v7 << 6));
    v18 = *(v17 + 8);
    v34 = *v17;
    memcpy(__dst, (v17 + 16), sizeof(__dst));
    v20 = *(v17 + 104);
    v19 = *(v17 + 112);
    v35 = *(v17 + 120);
    v36 = *(v17 + 136);
    v37 = *(v17 + 152);
    v21 = *(v6 + 40);
    sub_266ABE244();
    sub_266ABE264();
    if (v19)
    {
      sub_266ABDB04();
    }

    sub_266ABE264();
    if (v18)
    {
      sub_266ABDB04();
    }

    result = sub_266ABE2A4();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v6 + 48) + 168 * v25;
    *v30 = v34;
    *(v30 + 8) = v18;
    result = memcpy((v30 + 16), __dst, 0x58uLL);
    *(v30 + 104) = v20;
    *(v30 + 112) = v19;
    *(v30 + 120) = v35;
    *(v30 + 136) = v36;
    *(v30 + 152) = v37;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_27;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_266A9C014(uint64_t *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_266A9BD0C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_266A9C3B0(v8 + 1);
LABEL_10:
      v15 = __src[13];
      v16 = __src[14];
      v17 = *v4;
      v18 = *(*v4 + 40);
      sub_266ABE244();
      sub_266ABE264();
      if (v16)
      {
        sub_266ABDB04();
      }

      if (__src[1])
      {
        v19 = *__src;
        sub_266ABE264();
        sub_266ABDB04();
      }

      else
      {
        sub_266ABE264();
      }

      v20 = sub_266ABE2A4();
      v21 = ~(-1 << *(v17 + 32));
      while (1)
      {
        a2 = v20 & v21;
        if (((*(v17 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v22 = *(v17 + 48) + 168 * a2;
        memcpy(v24, v22, sizeof(v24));
        memcpy(v23, v22, sizeof(v23));
        sub_266A6E078(v24, v25);
        LOBYTE(v22) = static DeviceModel.== infix(_:_:)(v23, __dst);
        memcpy(v25, v23, sizeof(v25));
        sub_266A72578(v25);
        if (v22)
        {
          goto LABEL_20;
        }

        v20 = a2 + 1;
      }
    }

    sub_266A9C228();
  }

LABEL_7:
  v10 = *v4;
  *(v10 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v10 + 48) + 168 * a2), __dst, 0xA8uLL);
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_20:
    result = sub_266ABE1E4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_266A9C228()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2330, &qword_266AC35B8);
  v2 = *v0;
  v3 = sub_266ABDE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_266A6E078(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 168 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0xA8uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0xA8uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_266A9C3B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2330, &qword_266AC35B8);
  result = sub_266ABDE74();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        memcpy(__dst, (*(v3 + 48) + 168 * (v13 | (v7 << 6))), 0xA8uLL);
        v16 = *(v6 + 40);
        sub_266ABE244();
        if (__dst[14])
        {
          sub_266ABE264();
          sub_266A6E078(__dst, v26);
          sub_266ABDB04();
        }

        else
        {
          sub_266ABE264();
          sub_266A6E078(__dst, v26);
        }

        if (__dst[1])
        {
          sub_266ABE264();
          sub_266ABDB04();
        }

        else
        {
          sub_266ABE264();
        }

        result = sub_266ABE2A4();
        v17 = -1 << *(v6 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        result = memcpy((*(v6 + 48) + 168 * v20), __dst, 0xA8uLL);
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_29;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v25;
          goto LABEL_33;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_33:
    *v2 = v6;
  }

  return result;
}

void sub_266A9C670(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_6(a1, a2);
  if (v2)
  {
    v5 = v4 + 32;
    do
    {
      sub_266A841B0(v5, v7);
      sub_266A95358();
      if (v6)
      {
        sub_266A9CB98(v3, v6);
      }

      sub_266A8420C(v7);
      v5 += 72;
      --v2;
    }

    while (v2);
  }
}

unint64_t sub_266A9C6EC()
{
  result = qword_2800B2240;
  if (!qword_2800B2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2240);
  }

  return result;
}

unint64_t sub_266A9C740()
{
  result = qword_2800B2258;
  if (!qword_2800B2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2258);
  }

  return result;
}

uint64_t sub_266A9C794(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2248, &qword_266AC32B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266A9C80C()
{
  result = qword_2800B2270;
  if (!qword_2800B2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2270);
  }

  return result;
}

unint64_t sub_266A9C864()
{
  result = qword_2800B2278;
  if (!qword_2800B2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2278);
  }

  return result;
}

uint64_t sub_266A9C958(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_266A9C998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}