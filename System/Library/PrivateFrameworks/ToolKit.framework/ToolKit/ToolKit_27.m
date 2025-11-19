void ToolKitProtoChangeset.Provenance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8EBBA94(v3, v4, v5, v6);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8EBBF8C(v7, v8, v9, v10);
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8EBC484();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8EBBA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B8, &qword_1C909DFA8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3129F0, &qword_1C9068DD0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8ECA430(v16, type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC3191B8, &qword_1C909DFA8);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8ECA390(qword_1EDA61128, type metadata accessor for ToolKitProtoLaunchServicesSnapshot);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC3191B8, &qword_1C909DFA8);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC3191B8, &qword_1C909DFA8);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC3191B8, &qword_1C909DFA8);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC3191B8, &qword_1C909DFA8);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3129F0, &qword_1C9068DD0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8EBBF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoLinkSnapshot(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191C0, &qword_1C909DFB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3129F0, &qword_1C9068DD0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC3191C0, &qword_1C909DFB0);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8ECA430(v16, type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind);
    }
  }

  sub_1C8ECA390(&qword_1EC319028, type metadata accessor for ToolKitProtoLinkSnapshot);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC3191C0, &qword_1C909DFB0);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC3191C0, &qword_1C909DFB0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC3191C0, &qword_1C909DFB0);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC3191C0, &qword_1C909DFB0);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3129F0, &qword_1C9068DD0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void sub_1C8EBC484()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_223();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_48_13();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_69_8();
  OUTLINED_FUNCTION_60_10(v13);
  OUTLINED_FUNCTION_16_23();
  sub_1C8ECA390(v14, v15);
  OUTLINED_FUNCTION_54_8();
  if (v1 || (OUTLINED_FUNCTION_52_12(), sub_1C8ECA488(), OUTLINED_FUNCTION_62_9(), v2 == 1))
  {
    sub_1C8D16D78(v3, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  else
  {
    OUTLINED_FUNCTION_73_5();
    v16 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
    OUTLINED_FUNCTION_59_12(v16);
    if (&qword_1C909DFA0 != 1)
    {
      sub_1C90638EC();
    }

    sub_1C8D16D78(v3, &qword_1EC3191B0, &qword_1C909DFA0);
    sub_1C8D16D78(v0, &qword_1EC3129F0, &qword_1C9068DD0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_71_7();
  }

  OUTLINED_FUNCTION_198();
}

uint64_t ToolKitProtoChangeset.Provenance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_30_20();
  v7 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    OUTLINED_FUNCTION_124();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v22 = OUTLINED_FUNCTION_3_4();
        sub_1C8EBC9BC(v22, v23, v24, v25);
        goto LABEL_11;
      case 2u:
        v14 = OUTLINED_FUNCTION_3_4();
        result = sub_1C8EBCBC4(v14, v15, v16, v17);
        goto LABEL_8;
      case 3u:
        v18 = OUTLINED_FUNCTION_3_4();
        result = sub_1C8EBCDEC(v18, v19, v20, v21);
LABEL_8:
        if (!v1)
        {
          break;
        }

        return result;
      default:
        v10 = OUTLINED_FUNCTION_3_4();
        sub_1C8EBC7B8(v10, v11, v12, v13);
LABEL_11:
        OUTLINED_FUNCTION_36_15();
        result = sub_1C8ECA430(v2, v26);
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  v8 = v0 + *(type metadata accessor for ToolKitProtoChangeset.Provenance(0) + 20);
  OUTLINED_FUNCTION_22_0();
  return sub_1C90637CC();
}

uint64_t sub_1C8EBC7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3129F0, &qword_1C9068DD0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA61128, type metadata accessor for ToolKitProtoLaunchServicesSnapshot);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoLaunchServicesSnapshot);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EBC9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoLinkSnapshot(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3129F0, &qword_1C9068DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(&qword_1EC319028, type metadata accessor for ToolKitProtoLinkSnapshot);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoLinkSnapshot);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EBCBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v16 - v11;
  sub_1C8ECA488();
  v13 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v12, &qword_1EC3129F0, &qword_1C9068DD0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8ECA430(v12, type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind);
    if (EnumCaseMultiPayload == 2)
    {
      sub_1C906372C();
      sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EBCDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F0, &qword_1C9068DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v16 - v11;
  sub_1C8ECA488();
  v13 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v12, &qword_1EC3129F0, &qword_1C9068DD0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8ECA430(v12, type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind);
    if (EnumCaseMultiPayload == 3)
    {
      sub_1C906372C();
      sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

void static ToolKitProtoChangeset.Provenance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = OUTLINED_FUNCTION_24_2();
  v4 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(v3);
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_23();
  v8 = OUTLINED_FUNCTION_124();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_73();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129F8, &qword_1C9068DD8);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_22(v18);
  OUTLINED_FUNCTION_47_13();
  OUTLINED_FUNCTION_14_2(v0);
  if (v19)
  {
    OUTLINED_FUNCTION_14_2(v0 + v2);
    if (v19)
    {
      sub_1C8D16D78(v0, &qword_1EC3129F0, &qword_1C9068DD0);
LABEL_12:
      v24 = type metadata accessor for ToolKitProtoChangeset.Provenance(0);
      OUTLINED_FUNCTION_63_10(v24);
      OUTLINED_FUNCTION_0_64();
      sub_1C8ECA390(v25, v26);
      v21 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_14_2(v0 + v2);
  if (v19)
  {
    OUTLINED_FUNCTION_36_15();
    sub_1C8ECA430(v1, v20);
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC3129F8, &qword_1C9068DD8);
    goto LABEL_10;
  }

  sub_1C8ECA3D8();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoChangeset.ToolKitProtoProvenanceKind.== infix(_:_:)();
  OUTLINED_FUNCTION_61_11();
  v22 = OUTLINED_FUNCTION_125();
  sub_1C8ECA430(v22, v23);
  sub_1C8D16D78(v0, &qword_1EC3129F0, &qword_1C9068DD0);
  if (&qword_1EC3129F0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v21);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8EBD290(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319120, type metadata accessor for ToolKitProtoChangeset.Provenance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EBD310(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA62338, type metadata accessor for ToolKitProtoChangeset.Provenance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EBD380()
{
  sub_1C8ECA390(qword_1EDA62338, type metadata accessor for ToolKitProtoChangeset.Provenance);

  return sub_1C9063ABC();
}

void sub_1C8EBD424(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  OUTLINED_FUNCTION_68_6();
  *a4 = v7;
  *a5 = v8;
}

uint64_t sub_1C8EBD4A0(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return v5;
}

uint64_t sub_1C8EBD4F4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318E40);
  __swift_project_value_buffer(v0, qword_1EC318E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "updated";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "removed";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "provenance";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoChangeset.Partial.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8EBD798();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C90639CC();
    }
  }

  return result;
}

uint64_t sub_1C8EBD798()
{
  type metadata accessor for ToolKitProtoChangeset.Provenance(0);
  sub_1C8ECA390(qword_1EDA62338, type metadata accessor for ToolKitProtoChangeset.Provenance);
  return sub_1C9063A3C();
}

uint64_t ToolKitProtoChangeset.Partial.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*(*v1 + 16) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B6C(), (v0 = v2) == 0))
  {
    if (!*(*(v3 + 8) + 16) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B6C(), (v0 = v2) == 0))
    {
      if (!*(*(v3 + 16) + 16) || (type metadata accessor for ToolKitProtoChangeset.Provenance(0), sub_1C8ECA390(qword_1EDA62338, type metadata accessor for ToolKitProtoChangeset.Provenance), result = sub_1C9063BBC(), !v0))
      {
        v5 = *(type metadata accessor for ToolKitProtoChangeset.Partial(0) + 28);
        return OUTLINED_FUNCTION_13_23();
      }
    }
  }

  return result;
}

uint64_t static ToolKitProtoChangeset.Partial.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  sub_1C8CEB10C(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1C8CEB10C(*(v1 + 8), *(v0 + 8));
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  sub_1C8CF0A10();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for ToolKitProtoChangeset.Partial(0) + 28);
  sub_1C90637EC();
  OUTLINED_FUNCTION_0_64();
  sub_1C8ECA390(v10, v11);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t (*sub_1C8EBDA3C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C8EBDA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319118, type metadata accessor for ToolKitProtoChangeset.Partial);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EBDB10(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA62300, type metadata accessor for ToolKitProtoChangeset.Partial);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EBDB80()
{
  sub_1C8ECA390(qword_1EDA62300, type metadata accessor for ToolKitProtoChangeset.Partial);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EBDC18()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318E58);
  __swift_project_value_buffer(v0, qword_1EC318E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C909C3C0;
  v4 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v34 + v3 + v2 + v1[14];
  *(v34 + v3 + v2) = 2;
  *v8 = "requestedChangeset";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v7();
  v9 = (v34 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "manual";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v34 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "firstUnlock";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v34 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "schedulerBooted";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v34 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "appProtectionStateChanged";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v7();
  v17 = (v34 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "appIntentsDatabaseChanged";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  v19 = (v34 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "launchServicesDatabaseChanged";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v7();
  v21 = (v34 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "languagesChanged";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v7();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "siriLanguagesChanged";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v7();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "shortcutsAppLaunched";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "deferredFull";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v7();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "deferredDelta";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "testing";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v7();
  return sub_1C9063BEC();
}

void ToolKitProtoIndexingReason.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 2:
        OUTLINED_FUNCTION_38_17();
        v5 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC04DC(v5, v6, v7, v8, v9);
        break;
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8EBE284();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8EBE33C(v3, v4);
        break;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
        OUTLINED_FUNCTION_5_39();
        sub_1C8EBE544();
        break;
      case 14:
        v10 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC0FE4(v10, v11, v12, v13, 1, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8EBE33C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = sub_1C906373C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
  sub_1C906392C();
  if (v2)
  {
    return sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v19 = a2;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
  sub_1C8D16D78(v7, &qword_1EC3191B0, &qword_1C909DFA0);
  if (EnumTagSinglePayload == 1)
  {
    return sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v13 = v19;
  if (*(v19 + 32) != 255)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  v15 = *(v13 + 16);
  v16 = *(v13 + 24);
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v17 = *(v13 + 32);
  *(v13 + 32) = 2;
  return sub_1C8D7CAD4(v15, v16, v17);
}

void sub_1C8EBE544()
{
  OUTLINED_FUNCTION_196();
  v22 = v2;
  OUTLINED_FUNCTION_223();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = sub_1C906373C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  OUTLINED_FUNCTION_16_23();
  sub_1C8ECA390(v13, v14);
  sub_1C906392C();
  if (v1 || (sub_1C8ECA488(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12), v16 = OUTLINED_FUNCTION_52_12(), sub_1C8D16D78(v16, v17, v18), EnumTagSinglePayload == 1))
  {
    sub_1C8D16D78(v11, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  else
  {
    if (*(v0 + 32) != 255)
    {
      OUTLINED_FUNCTION_125();
      sub_1C90638EC();
    }

    sub_1C8D16D78(v11, &qword_1EC3191B0, &qword_1C909DFA0);
    v19 = *(v0 + 16);
    v20 = *(v0 + 24);
    *(v0 + 16) = v22;
    v21 = *(v0 + 32);
    *(v0 + 32) = 2;
    sub_1C8D7CAD4(v19, v20, v21);
  }

  OUTLINED_FUNCTION_198();
}

void ToolKitProtoIndexingReason.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
  {
    OUTLINED_FUNCTION_38_17();
    OUTLINED_FUNCTION_2_55();
    sub_1C8EC0618();
    if (!v0)
    {
      v3 = *(v1 + 32);
      if (*(v1 + 32))
      {
        if (v3 == 1)
        {
          v5 = OUTLINED_FUNCTION_2_55();
          sub_1C8EBF660(v5);
        }

        else if (v3 != 255)
        {
          switch(*(v1 + 16))
          {
            case 1:
              v13 = OUTLINED_FUNCTION_2_55();
              sub_1C8EBEA00(v13);
              break;
            case 2:
              v10 = OUTLINED_FUNCTION_2_55();
              sub_1C8EBEB60(v10);
              break;
            case 3:
              v11 = OUTLINED_FUNCTION_2_55();
              sub_1C8EBECC0(v11);
              break;
            case 4:
              v8 = OUTLINED_FUNCTION_2_55();
              sub_1C8EBEE20(v8);
              break;
            case 5:
              v14 = OUTLINED_FUNCTION_2_55();
              sub_1C8EBEF80(v14);
              break;
            case 6:
              v15 = OUTLINED_FUNCTION_2_55();
              sub_1C8EBF0E0(v15);
              break;
            case 7:
              v12 = OUTLINED_FUNCTION_2_55();
              sub_1C8EBF240(v12);
              break;
            case 8:
              v16 = OUTLINED_FUNCTION_2_55();
              sub_1C8EBF3A0(v16);
              break;
            case 9:
              v9 = OUTLINED_FUNCTION_2_55();
              sub_1C8EBF500(v9);
              break;
            default:
              v4 = OUTLINED_FUNCTION_2_55();
              sub_1C8EBE8A4(v4);
              break;
          }
        }
      }

      else
      {
        v6 = OUTLINED_FUNCTION_2_55();
        sub_1C8EBE868(v6);
      }

      v7 = *(type metadata accessor for ToolKitProtoIndexingReason(0) + 28);
      OUTLINED_FUNCTION_13_23();
    }
  }
}

uint64_t sub_1C8EBE868(uint64_t result)
{
  if (*(result + 32))
  {
    __break(1u);
  }

  else
  {
    v1 = *(result + 16);
    return sub_1C9063B0C();
  }

  return result;
}

void sub_1C8EBE8A4(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 2 && *(a1 + 16) == 0)
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8EBEA00(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 2 && (!*(a1 + 24) ? (v7 = *(a1 + 16) == 1) : (v7 = 0), v7))
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8EBEB60(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 2 && (!*(a1 + 24) ? (v7 = *(a1 + 16) == 2) : (v7 = 0), v7))
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8EBECC0(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 2 && (!*(a1 + 24) ? (v7 = *(a1 + 16) == 3) : (v7 = 0), v7))
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8EBEE20(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 2 && (!*(a1 + 24) ? (v7 = *(a1 + 16) == 4) : (v7 = 0), v7))
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8EBEF80(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 2 && (!*(a1 + 24) ? (v7 = *(a1 + 16) == 5) : (v7 = 0), v7))
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8EBF0E0(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 2 && (!*(a1 + 24) ? (v7 = *(a1 + 16) == 6) : (v7 = 0), v7))
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8EBF240(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 2 && (!*(a1 + 24) ? (v7 = *(a1 + 16) == 7) : (v7 = 0), v7))
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8EBF3A0(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 2 && (!*(a1 + 24) ? (v7 = *(a1 + 16) == 8) : (v7 = 0), v7))
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8EBF500(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 2 && (!*(a1 + 24) ? (v7 = *(a1 + 16) == 9) : (v7 = 0), v7))
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C8EBF660(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v3 = result + 16;
    v1 = *(result + 16);
    v2 = *(v3 + 8);
    return sub_1C9063B8C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static ToolKitProtoIndexingReason.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoChangeset(v2);
  v4 = OUTLINED_FUNCTION_13_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318FA8, &qword_1C909C478);
  OUTLINED_FUNCTION_13_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - v17;
  v19 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v19 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_21;
  }

  v83 = type metadata accessor for ToolKitProtoIndexingReason(0);
  v20 = *(v83 + 24);
  v21 = *(v13 + 48);
  OUTLINED_FUNCTION_44_18();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_44_18();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v22, v23, v24) == 1)
  {
    OUTLINED_FUNCTION_66_10();
    if (__swift_getEnumTagSinglePayload(v25, v26, v27) == 1)
    {
      sub_1C8D16D78(v18, &qword_1EC3141E0, &unk_1C90729F0);
      goto LABEL_13;
    }

LABEL_11:
    sub_1C8D16D78(v18, &qword_1EC318FA8, &qword_1C909C478);
    goto LABEL_21;
  }

  sub_1C8ECA488();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v28, v29, v30) == 1)
  {
    OUTLINED_FUNCTION_35_16();
    sub_1C8ECA430(v12, v31);
    goto LABEL_11;
  }

  sub_1C8ECA3D8();
  static ToolKitProtoChangeset.== infix(_:_:)();
  v33 = v32;
  v34 = OUTLINED_FUNCTION_287();
  sub_1C8ECA430(v34, v35);
  v36 = OUTLINED_FUNCTION_203();
  sub_1C8ECA430(v36, v37);
  sub_1C8D16D78(v18, &qword_1EC3141E0, &unk_1C90729F0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  v38 = *(v1 + 24);
  v39 = *(v1 + 32);
  v41 = *(v0 + 16);
  v40 = *(v0 + 24);
  v42 = *(v0 + 32);
  if (v39 == 255)
  {
    v56 = OUTLINED_FUNCTION_112();
    sub_1C8D78DBC(v56, v57, 255);
    if (v42 == 255)
    {
      sub_1C8D78DBC(v41, v40, 255);
      v77 = OUTLINED_FUNCTION_112();
      sub_1C8D7CAD4(v77, v78, 255);
LABEL_24:
      v79 = *(v83 + 28);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_64();
      sub_1C8ECA390(v80, v81);
      v76 = OUTLINED_FUNCTION_12_28();
      goto LABEL_22;
    }

    v58 = OUTLINED_FUNCTION_53_10();
    sub_1C8D78DBC(v58, v59, v60);
    goto LABEL_20;
  }

  v87 = *(v1 + 16);
  v88 = v38;
  v89 = v39;
  if (v42 == 255)
  {
    v61 = OUTLINED_FUNCTION_21_19();
    sub_1C8D78DBC(v61, v62, v63);
    sub_1C8D78DBC(v41, v40, 255);
    v64 = OUTLINED_FUNCTION_21_19();
    sub_1C8D78DBC(v64, v65, v66);
    v67 = OUTLINED_FUNCTION_21_19();
    sub_1C8D7CAE8(v67, v68, v69);
LABEL_20:
    v70 = OUTLINED_FUNCTION_21_19();
    sub_1C8D7CAD4(v70, v71, v72);
    v73 = OUTLINED_FUNCTION_53_10();
    sub_1C8D7CAD4(v73, v74, v75);
    goto LABEL_21;
  }

  v84 = v41;
  v85 = v40;
  v86 = v42;
  v43 = OUTLINED_FUNCTION_21_19();
  sub_1C8D78DBC(v43, v44, v45);
  v46 = OUTLINED_FUNCTION_53_10();
  sub_1C8D78DBC(v46, v47, v48);
  v49 = OUTLINED_FUNCTION_21_19();
  sub_1C8D78DBC(v49, v50, v51);
  v52 = static ToolKitProtoTriggerKind.== infix(_:_:)(&v87, &v84);
  sub_1C8D7CAE8(v84, v85, v86);
  sub_1C8D7CAE8(v87, v88, v89);
  v53 = OUTLINED_FUNCTION_21_19();
  sub_1C8D7CAD4(v53, v54, v55);
  if (v52)
  {
    goto LABEL_24;
  }

LABEL_21:
  v76 = 0;
LABEL_22:
  OUTLINED_FUNCTION_50_0(v76);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8EBFADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319110, type metadata accessor for ToolKitProtoIndexingReason);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EBFB5C(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA61AF8, type metadata accessor for ToolKitProtoIndexingReason);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EBFBCC()
{
  sub_1C8ECA390(qword_1EDA61AF8, type metadata accessor for ToolKitProtoIndexingReason);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EBFC64()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318E70);
  __swift_project_value_buffer(v0, qword_1EC318E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reasonIds";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8EBFE78()
{
  OUTLINED_FUNCTION_57_1();
  while (1)
  {
    OUTLINED_FUNCTION_125();
    result = sub_1C90638DC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_29_18();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_29_18();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t ToolKitProtoIndexingRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B6C(), !v0))
    {
      v4 = *(type metadata accessor for ToolKitProtoIndexingRequest(0) + 24);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t static ToolKitProtoIndexingRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_6_33(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  sub_1C8CEB10C(*(v3 + 16), *(v2 + 16));
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for ToolKitProtoIndexingRequest(0);
  OUTLINED_FUNCTION_64_7(v8);
  OUTLINED_FUNCTION_0_64();
  sub_1C8ECA390(v9, v10);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8EC00A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319108, type metadata accessor for ToolKitProtoIndexingRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC0124(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EDA61820, type metadata accessor for ToolKitProtoIndexingRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC0194()
{
  sub_1C8ECA390(&qword_1EDA61820, type metadata accessor for ToolKitProtoIndexingRequest);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC022C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318E88);
  __swift_project_value_buffer(v0, qword_1EC318E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resolvedChangeset";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "decisionMetadata";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoIndexingPolicyResolution.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639CC();
        break;
      case 2:
        OUTLINED_FUNCTION_40_16();
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC04DC(v3, v4, v5, v6, v7);
        break;
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8EC04DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 24);
  type metadata accessor for ToolKitProtoChangeset(0);
  OUTLINED_FUNCTION_39_15();
  sub_1C8ECA390(v6, v7);
  return sub_1C9063A4C();
}

void ToolKitProtoIndexingPolicyResolution.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
  {
    OUTLINED_FUNCTION_40_16();
    OUTLINED_FUNCTION_2_55();
    sub_1C8EC0618();
    if (!v0)
    {
      if (*(*(v1 + 16) + 16))
      {
        OUTLINED_FUNCTION_17_25();
        sub_1C9063B6C();
      }

      v3 = *(type metadata accessor for ToolKitProtoIndexingPolicyResolution(0) + 28);
      OUTLINED_FUNCTION_13_23();
    }
  }
}

void sub_1C8EC0618()
{
  OUTLINED_FUNCTION_196();
  v1 = v0;
  v22[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for ToolKitProtoChangeset(0);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v16 = *(v1(0) + 24);
  sub_1C8ECA488();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v17, v18, v19) == 1)
  {
    sub_1C8D16D78(v8, &qword_1EC3141E0, &unk_1C90729F0);
  }

  else
  {
    sub_1C8ECA3D8();
    OUTLINED_FUNCTION_39_15();
    sub_1C8ECA390(v20, v21);
    sub_1C9063BCC();
    sub_1C8ECA430(v15, type metadata accessor for ToolKitProtoChangeset);
  }

  OUTLINED_FUNCTION_198();
}

void static ToolKitProtoIndexingPolicyResolution.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_24_2();
  v5 = type metadata accessor for ToolKitProtoChangeset(v4);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_23();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318FA8, &qword_1C909C478);
  OUTLINED_FUNCTION_13_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = *v1 == *v0 && v1[1] == v0[1];
  if (!v19 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(0);
  v20 = *(v34 + 24);
  v21 = *(v13 + 48);
  OUTLINED_FUNCTION_44_18();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_44_18();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_14_2(v18);
  if (v19)
  {
    OUTLINED_FUNCTION_14_2(&v18[v21]);
    if (v19)
    {
      sub_1C8D16D78(v18, &qword_1EC3141E0, &unk_1C90729F0);
      goto LABEL_16;
    }

LABEL_14:
    sub_1C8D16D78(v18, &qword_1EC318FA8, &qword_1C909C478);
LABEL_18:
    v32 = 0;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_14_2(&v18[v21]);
  if (v22)
  {
    OUTLINED_FUNCTION_35_16();
    sub_1C8ECA430(v3, v23);
    goto LABEL_14;
  }

  sub_1C8ECA3D8();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoChangeset.== infix(_:_:)();
  v25 = v24;
  sub_1C8ECA430(v2, type metadata accessor for ToolKitProtoChangeset);
  v26 = OUTLINED_FUNCTION_125();
  sub_1C8ECA430(v26, v27);
  sub_1C8D16D78(v18, &qword_1EC3141E0, &unk_1C90729F0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  sub_1C8CEB10C(v1[2], v0[2]);
  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = *(v34 + 28);
  sub_1C90637EC();
  OUTLINED_FUNCTION_0_64();
  sub_1C8ECA390(v30, v31);
  v32 = OUTLINED_FUNCTION_12_28();
LABEL_19:
  OUTLINED_FUNCTION_50_0(v32);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8EC0AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC319100, type metadata accessor for ToolKitProtoIndexingPolicyResolution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC0B64(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA63ED0, type metadata accessor for ToolKitProtoIndexingPolicyResolution);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC0BD4()
{
  sub_1C8ECA390(qword_1EDA63ED0, type metadata accessor for ToolKitProtoIndexingPolicyResolution);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC0C6C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318EA0);
  __swift_project_value_buffer(v0, qword_1EC318EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tool";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "success";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "failure";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoIndexingEvent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 2:
        v5 = OUTLINED_FUNCTION_5_39();
        v10 = 0;
        goto LABEL_10;
      case 3:
        v5 = OUTLINED_FUNCTION_5_39();
        v10 = 1;
LABEL_10:
        sub_1C8EC0FE4(v5, v6, v7, v8, v10, v9);
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC10B8(v11, v12);
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC12B4(v3, v4);
        break;
      default:
        continue;
    }
  }
}

void sub_1C8EC0FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1C90639FC();
  if (v6)
  {
  }

  else if (v13)
  {
    if (*(a2 + 32) == 255)
    {
      v10 = 255;
    }

    else
    {
      sub_1C90638EC();
      v10 = *(a2 + 32);
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = v13;
    *(a2 + 32) = a5;
    a6(v11, v12, v10);
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C8EC10B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = sub_1C906373C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
  sub_1C906392C();
  if (v2)
  {
    return sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v18 = a2;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
  sub_1C8D16D78(v7, &qword_1EC3191B0, &qword_1C909DFA0);
  if (EnumTagSinglePayload == 1)
  {
    return sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v13 = v18;
  if (*(v18 + 48) != 1)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  v15 = *(v13 + 40);
  v16 = *(v13 + 48);
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  return sub_1C8CE5490(v15, v16);
}

uint64_t sub_1C8EC12B4(uint64_t a1, uint64_t a2)
{
  result = sub_1C90639FC();
  if (v2)
  {
  }

  if (v7)
  {
    if (*(a2 + 48) == 1)
    {
      v5 = 1;
    }

    else
    {
      sub_1C90638EC();
      v5 = *(a2 + 48);
    }

    v6 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a2 + 48) = v7;
    return sub_1C8CE5490(v6, v5);
  }

  return result;
}

void ToolKitProtoIndexingEvent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
  {
    if (*(v1 + 32) == 255)
    {
      goto LABEL_12;
    }

    v3 = OUTLINED_FUNCTION_2_55();
    if (v4)
    {
      sub_1C8EC1478(v3);
    }

    else
    {
      sub_1C8EC142C(v3);
    }

    if (!v0)
    {
LABEL_12:
      if (*(v1 + 48) == 1)
      {
        goto LABEL_13;
      }

      v5 = OUTLINED_FUNCTION_2_55();
      if (v6)
      {
        sub_1C8EC1610(v5);
      }

      else
      {
        sub_1C8EC14C4(v5);
      }

      if (!v0)
      {
LABEL_13:
        v7 = *(type metadata accessor for ToolKitProtoIndexingEvent(0) + 28);
        OUTLINED_FUNCTION_13_23();
      }
    }
  }
}

uint64_t sub_1C8EC142C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 16);
    v2 = *(result + 24);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8EC1478(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 16);
    v2 = *(result + 24);
    return sub_1C9063B8C();
  }

  return result;
}

void sub_1C8EC14C4(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48))
  {
    __break(1u);
  }

  else
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1C8EC1610(uint64_t result)
{
  if (*(result + 48) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v1 = *(result + 40);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t static ToolKitProtoIndexingEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_6_33(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 32);
  if (v8 != 255)
  {
    v75 = *(v3 + 16);
    v76 = v7;
    v77 = v8;
    if (v11 != 255)
    {
      v72 = v10;
      v73 = v9;
      v74 = v11 & 1;
      v12 = OUTLINED_FUNCTION_25_17();
      sub_1C8D6E118(v12, v13, v14);
      v15 = OUTLINED_FUNCTION_203();
      sub_1C8D6E118(v15, v16, v11);
      v17 = OUTLINED_FUNCTION_25_17();
      sub_1C8D6E118(v17, v18, v19);
      v20 = static ToolKitProtoIndexingEventContents.== infix(_:_:)(&v75, &v72);
      OUTLINED_FUNCTION_265();
      OUTLINED_FUNCTION_265();
      v21 = OUTLINED_FUNCTION_25_17();
      sub_1C8D93F28(v21, v22, v23);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    v28 = OUTLINED_FUNCTION_25_17();
    sub_1C8D6E118(v28, v29, v30);
    v31 = OUTLINED_FUNCTION_203();
    sub_1C8D6E118(v31, v32, 255);
    v33 = OUTLINED_FUNCTION_25_17();
    sub_1C8D6E118(v33, v34, v35);
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_265();
LABEL_13:
    v36 = OUTLINED_FUNCTION_25_17();
    sub_1C8D93F28(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_203();
    sub_1C8D93F28(v39, v40, v11);
    return 0;
  }

  v24 = OUTLINED_FUNCTION_100();
  sub_1C8D6E118(v24, v25, 255);
  if (v11 != 255)
  {
    v26 = OUTLINED_FUNCTION_203();
    sub_1C8D6E118(v26, v27, v11);
    goto LABEL_13;
  }

  v41 = OUTLINED_FUNCTION_203();
  sub_1C8D6E118(v41, v42, 255);
  v43 = OUTLINED_FUNCTION_100();
  sub_1C8D93F28(v43, v44, 255);
LABEL_15:
  v45 = *(v3 + 40);
  v46 = *(v3 + 48);
  v47 = *(v2 + 40);
  v48 = *(v2 + 48);
  if (v46 == 1)
  {
    sub_1C8CE5404(*(v3 + 40), 1);
    if (v48 == 1)
    {
      sub_1C8CE5404(v47, 1);
      sub_1C8CE5490(v45, 1);
LABEL_25:
      v69 = *(type metadata accessor for ToolKitProtoIndexingEvent(0) + 28);
      sub_1C90637EC();
      OUTLINED_FUNCTION_0_64();
      sub_1C8ECA390(v70, v71);
      return OUTLINED_FUNCTION_12_28() & 1;
    }

    v53 = OUTLINED_FUNCTION_211();
    sub_1C8CE5404(v53, v54);
    goto LABEL_21;
  }

  v75 = *(v3 + 40);
  v76 = v46;
  if (v48 == 1)
  {
    v49 = OUTLINED_FUNCTION_249();
    sub_1C8CE5404(v49, v50);
    sub_1C8CE5404(v47, 1);
    v51 = OUTLINED_FUNCTION_249();
    sub_1C8CE5404(v51, v52);

LABEL_21:
    v55 = OUTLINED_FUNCTION_249();
    sub_1C8CE5490(v55, v56);
    v57 = OUTLINED_FUNCTION_211();
    sub_1C8CE5490(v57, v58);
    return 0;
  }

  v72 = v47;
  v73 = v48;
  v60 = OUTLINED_FUNCTION_249();
  sub_1C8CE5404(v60, v61);
  v62 = OUTLINED_FUNCTION_211();
  sub_1C8CE5404(v62, v63);
  v64 = OUTLINED_FUNCTION_249();
  sub_1C8CE5404(v64, v65);
  v66 = static ToolKitProtoIndexingEventType.== infix(_:_:)(&v75, &v72);

  v67 = OUTLINED_FUNCTION_249();
  sub_1C8CE5490(v67, v68);
  if (v66)
  {
    goto LABEL_25;
  }

  return 0;
}

uint64_t sub_1C8EC1970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190F8, type metadata accessor for ToolKitProtoIndexingEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC19F0(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC1A60()
{
  sub_1C8ECA390(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC1AF8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318EB8);
  __swift_project_value_buffer(v0, qword_1EC318EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "updated";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "skipped";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "failed";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoIndexingResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC1DFC(v7, v8);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC1FF8(v3, v4);
        break;
      case 4:
        v5 = OUTLINED_FUNCTION_5_39();
        sub_1C8EC21FC(v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8EC1DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = sub_1C906373C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
  sub_1C906392C();
  if (v2)
  {
    return sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v18 = a2;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
  sub_1C8D16D78(v7, &qword_1EC3191B0, &qword_1C909DFA0);
  if (EnumTagSinglePayload == 1)
  {
    return sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v13 = v18;
  if (*(v18 + 24) != 2)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  v15 = *(v13 + 16);
  v16 = *(v13 + 24);
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  return sub_1C8D93ECC(v15, v16);
}

uint64_t sub_1C8EC1FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = sub_1C906373C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
  sub_1C906392C();
  if (v2)
  {
    return sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v18 = a2;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
  sub_1C8D16D78(v7, &qword_1EC3191B0, &qword_1C909DFA0);
  if (EnumTagSinglePayload == 1)
  {
    return sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  v13 = v18;
  if (*(v18 + 24) != 2)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v10, &qword_1EC3191B0, &qword_1C909DFA0);
  v15 = *(v13 + 16);
  v16 = *(v13 + 24);
  *(v13 + 16) = xmmword_1C90747F0;
  return sub_1C8D93ECC(v15, v16);
}

uint64_t sub_1C8EC21FC(uint64_t a1, uint64_t a2)
{
  result = sub_1C90639FC();
  if (v2)
  {
  }

  if (v7)
  {
    if (*(a2 + 24) == 2)
    {
      v5 = 2;
    }

    else
    {
      sub_1C90638EC();
      v5 = *(a2 + 24);
    }

    v6 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a2 + 24) = v7;
    return sub_1C8D93ECC(v6, v5);
  }

  return result;
}

void ToolKitProtoIndexingResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
  {
    if (*(v1 + 24) == 2)
    {
      goto LABEL_10;
    }

    v3 = OUTLINED_FUNCTION_2_55();
    if (v4 == 1)
    {
      sub_1C8EC24A8(v3);
    }

    else if (v4)
    {
      sub_1C8EC25F8(v3);
    }

    else
    {
      sub_1C8EC235C(v3);
    }

    if (!v0)
    {
LABEL_10:
      v5 = *(type metadata accessor for ToolKitProtoIndexingResponse(0) + 24);
      OUTLINED_FUNCTION_13_23();
    }
  }
}

void sub_1C8EC235C(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    __break(1u);
  }

  else
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }
}

void sub_1C8EC24A8(uint64_t a1)
{
  v2 = sub_1C906373C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24) == 1)
  {
    sub_1C906372C();
    sub_1C8ECA390(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
    sub_1C9063B1C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C8EC25F8(uint64_t result)
{
  if (*(result + 24) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v1 = *(result + 16);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t static ToolKitProtoIndexingResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_6_33(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  if (v8 != 2)
  {
    v38 = *(v3 + 16);
    v39 = v8;
    if (v10 != 2)
    {
      v36 = v9;
      v37 = v10;
      v24 = OUTLINED_FUNCTION_249();
      sub_1C8EC8E20(v24, v25);
      v26 = OUTLINED_FUNCTION_211();
      sub_1C8EC8E20(v26, v27);
      v28 = OUTLINED_FUNCTION_249();
      sub_1C8EC8E20(v28, v29);
      v30 = static ToolKitProtoIndexingResponseKind.== infix(_:_:)(&v38, &v36);
      sub_1C8D93EDC(v36, v37);
      sub_1C8D93EDC(v38, v39);
      v31 = OUTLINED_FUNCTION_249();
      sub_1C8D93ECC(v31, v32);
      if (v30)
      {
        goto LABEL_15;
      }

      return 0;
    }

    v11 = OUTLINED_FUNCTION_249();
    sub_1C8EC8E20(v11, v12);
    sub_1C8EC8E20(v9, 2uLL);
    v13 = OUTLINED_FUNCTION_249();
    sub_1C8EC8E20(v13, v14);
    v15 = OUTLINED_FUNCTION_249();
    sub_1C8D93EDC(v15, v16);
LABEL_12:
    v19 = OUTLINED_FUNCTION_249();
    sub_1C8D93ECC(v19, v20);
    v21 = OUTLINED_FUNCTION_211();
    sub_1C8D93ECC(v21, v22);
    return 0;
  }

  sub_1C8EC8E20(*(v3 + 16), 2uLL);
  if (v10 != 2)
  {
    v17 = OUTLINED_FUNCTION_211();
    sub_1C8EC8E20(v17, v18);
    goto LABEL_12;
  }

  sub_1C8EC8E20(v9, 2uLL);
  sub_1C8D93ECC(v7, 2uLL);
LABEL_15:
  v33 = type metadata accessor for ToolKitProtoIndexingResponse(0);
  OUTLINED_FUNCTION_64_7(v33);
  OUTLINED_FUNCTION_0_64();
  sub_1C8ECA390(v34, v35);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8EC2844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190F0, type metadata accessor for ToolKitProtoIndexingResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC28C4(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC2934()
{
  sub_1C8ECA390(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC2AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190E8, type metadata accessor for ToolKitProtoWALOperationStart);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC2B70(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EDA616C0, type metadata accessor for ToolKitProtoWALOperationStart);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC2BE0()
{
  sub_1C8ECA390(&qword_1EDA616C0, type metadata accessor for ToolKitProtoWALOperationStart);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC2C78()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318EE8);
  __swift_project_value_buffer(v0, qword_1EC318EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "operationId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "busy";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalFrames";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "checkpointedFrames";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "error";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoWALOperationEnd.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C906390C();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_22_0();
        sub_1C906398C();
        break;
      case 5:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      default:
        continue;
    }
  }
}

uint64_t ToolKitProtoWALOperationEnd.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v1 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
  {
    v3 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8EC306C(v3);
    if (!v0)
    {
      v4 = OUTLINED_FUNCTION_2_55();
      sub_1C8EC30A8(v4);
      v5 = OUTLINED_FUNCTION_2_55();
      sub_1C8EC30E0(v5);
      v6 = OUTLINED_FUNCTION_2_55();
      sub_1C8EC3118(v6);
      v7 = *(type metadata accessor for ToolKitProtoWALOperationEnd(0) + 36);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t sub_1C8EC306C(uint64_t result)
{
  if (*(result + 16) != 2)
  {
    return sub_1C9063B0C();
  }

  return result;
}

uint64_t sub_1C8EC30A8(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = *(result + 20);
    return sub_1C9063B4C();
  }

  return result;
}

uint64_t sub_1C8EC30E0(uint64_t result)
{
  if ((*(result + 32) & 1) == 0)
  {
    v1 = *(result + 28);
    return sub_1C9063B4C();
  }

  return result;
}

uint64_t sub_1C8EC3118(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = *(result + 40);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t static ToolKitProtoWALOperationEnd.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_6_33(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16);
  v8 = *(v2 + 16);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = *(v2 + 24);
  if (*(v3 + 24))
  {
    if (!*(v2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(v3 + 20) != *(v2 + 20))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v2 + 32);
  if (*(v3 + 32))
  {
    if (!*(v2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(v3 + 28) != *(v2 + 28))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(v3 + 48);
  v12 = *(v2 + 48);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *(v3 + 40) == *(v2 + 40) && v11 == v12;
    if (!v13 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }

LABEL_30:
    v14 = *(type metadata accessor for ToolKitProtoWALOperationEnd(0) + 36);
    sub_1C90637EC();
    OUTLINED_FUNCTION_0_64();
    sub_1C8ECA390(v15, v16);
    return OUTLINED_FUNCTION_12_28() & 1;
  }

  if (!v12)
  {
    goto LABEL_30;
  }

  return 0;
}

uint64_t (*sub_1C8EC3300(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_1C8EC3354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190E0, type metadata accessor for ToolKitProtoWALOperationEnd);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC33D4(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA617E0, type metadata accessor for ToolKitProtoWALOperationEnd);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC3444()
{
  sub_1C8ECA390(qword_1EDA617E0, type metadata accessor for ToolKitProtoWALOperationEnd);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC3518()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t sub_1C8EC3590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_1_6();
  if (!v6 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v4))
  {
    v8 = *(a4(0) + 20);
    return OUTLINED_FUNCTION_13_23();
  }

  return result;
}

uint64_t sub_1C8EC3618(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_6_33(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v7 = a3(0);
  OUTLINED_FUNCTION_63_10(v7);
  OUTLINED_FUNCTION_0_64();
  sub_1C8ECA390(v8, v9);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8EC372C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190D8, type metadata accessor for ToolKitProtoVacuumOperationStart);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC37AC(uint64_t a1)
{
  v2 = sub_1C8ECA390(&qword_1EDA61308, type metadata accessor for ToolKitProtoVacuumOperationStart);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC381C()
{
  sub_1C8ECA390(&qword_1EDA61308, type metadata accessor for ToolKitProtoVacuumOperationStart);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC38B4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318F18);
  __swift_project_value_buffer(v0, qword_1EC318F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operationId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8EC3ACC()
{
  OUTLINED_FUNCTION_57_1();
  while (1)
  {
    OUTLINED_FUNCTION_125();
    result = sub_1C90638DC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_29_18();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_29_18();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t ToolKitProtoVacuumOperationEnd.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v1 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
  {
    v3 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8EC3BB4(v3);
    if (!v0)
    {
      v4 = *(type metadata accessor for ToolKitProtoVacuumOperationEnd(0) + 24);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t sub_1C8EC3BB4(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 16);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t static ToolKitProtoVacuumOperationEnd.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_6_33(a1, a2);
  v6 = v6 && v4 == v5;
  if (v6 || (sub_1C9064C2C() & 1) != 0)
  {
    v7 = *(v3 + 24);
    v8 = *(v2 + 24);
    if (v7)
    {
      if (v8)
      {
        v9 = *(v3 + 16) == *(v2 + 16) && v7 == v8;
        if (v9 || (sub_1C9064C2C() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v8)
    {
LABEL_13:
      v10 = type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
      OUTLINED_FUNCTION_64_7(v10);
      OUTLINED_FUNCTION_0_64();
      sub_1C8ECA390(v11, v12);
      return OUTLINED_FUNCTION_12_28() & 1;
    }
  }

  return 0;
}

uint64_t sub_1C8EC3D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190D0, type metadata accessor for ToolKitProtoVacuumOperationEnd);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC3DC8(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA61400, type metadata accessor for ToolKitProtoVacuumOperationEnd);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC3E38()
{
  sub_1C8ECA390(qword_1EDA61400, type metadata accessor for ToolKitProtoVacuumOperationEnd);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC3ED0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC318F30);
  __swift_project_value_buffer(v0, qword_1EC318F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C460;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "reason";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "policyResolution";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "indexingEvent";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "response";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "walOperationStart";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "walOperationEnd";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "vacuumOperationStart";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "vacuumOperationEnd";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoIndexingLogEntry.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC4364(v3, v4, v5, v6);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC485C(v23, v24, v25, v26);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC4D54(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC524C(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC5744(v7, v8, v9, v10);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC5C3C(v27, v28, v29, v30);
        break;
      case 7:
        v31 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC6134(v31, v32, v33, v34);
        break;
      case 9:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC662C(v19, v20, v21, v22);
        break;
      case 10:
        v35 = OUTLINED_FUNCTION_8_32();
        sub_1C8EC6B24(v35, v36, v37, v38);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8EC4364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoIndexingReason(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319168, &qword_1C909DF58);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8ECA430(v16, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC319168, &qword_1C909DF58);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8ECA390(qword_1EDA61AF8, type metadata accessor for ToolKitProtoIndexingReason);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC319168, &qword_1C909DF58);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC319168, &qword_1C909DF58);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC319168, &qword_1C909DF58);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC319168, &qword_1C909DF58);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8EC485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoIndexingRequest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319170, &qword_1C909DF60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC319170, &qword_1C909DF60);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8ECA430(v16, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(&qword_1EDA61820, type metadata accessor for ToolKitProtoIndexingRequest);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC319170, &qword_1C909DF60);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC319170, &qword_1C909DF60);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC319170, &qword_1C909DF60);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC319170, &qword_1C909DF60);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8EC4D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319178, &qword_1C909DF68);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v24, &qword_1EC319178, &qword_1C909DF68);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8ECA430(v16, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(qword_1EDA63ED0, type metadata accessor for ToolKitProtoIndexingPolicyResolution);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC319178, &qword_1C909DF68);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC319178, &qword_1C909DF68);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC319178, &qword_1C909DF68);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC319178, &qword_1C909DF68);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8EC524C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoIndexingEvent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319180, &qword_1C909DF70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v24, &qword_1EC319180, &qword_1C909DF70);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8ECA430(v16, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC319180, &qword_1C909DF70);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC319180, &qword_1C909DF70);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC319180, &qword_1C909DF70);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC319180, &qword_1C909DF70);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8EC5744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoIndexingResponse(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319188, &qword_1C909DF78);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v24, &qword_1EC319188, &qword_1C909DF78);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8ECA430(v16, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC319188, &qword_1C909DF78);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC319188, &qword_1C909DF78);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC319188, &qword_1C909DF78);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC319188, &qword_1C909DF78);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8EC5C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoWALOperationStart(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319190, &qword_1C909DF80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v24, &qword_1EC319190, &qword_1C909DF80);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8ECA430(v16, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(&qword_1EDA616C0, type metadata accessor for ToolKitProtoWALOperationStart);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC319190, &qword_1C909DF80);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC319190, &qword_1C909DF80);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC319190, &qword_1C909DF80);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC319190, &qword_1C909DF80);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8EC6134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoWALOperationEnd(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319198, &qword_1C909DF88);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8D16D78(v24, &qword_1EC319198, &qword_1C909DF88);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8ECA430(v16, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(qword_1EDA617E0, type metadata accessor for ToolKitProtoWALOperationEnd);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC319198, &qword_1C909DF88);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC319198, &qword_1C909DF88);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC319198, &qword_1C909DF88);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC319198, &qword_1C909DF88);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8EC662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoVacuumOperationStart(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191A0, &qword_1C909DF90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8D16D78(v24, &qword_1EC3191A0, &qword_1C909DF90);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8ECA430(v16, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(&qword_1EDA61308, type metadata accessor for ToolKitProtoVacuumOperationStart);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC3191A0, &qword_1C909DF90);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC3191A0, &qword_1C909DF90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC3191A0, &qword_1C909DF90);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC3191A0, &qword_1C909DF90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8EC6B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191A8, &qword_1C909DF98);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8ECA488();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    sub_1C8ECA3D8();
    sub_1C8ECA3D8();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8D16D78(v24, &qword_1EC3191A8, &qword_1C909DF98);
      sub_1C8ECA3D8();
      sub_1C8ECA3D8();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8ECA430(v16, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
    }
  }

  sub_1C8ECA390(qword_1EDA61400, type metadata accessor for ToolKitProtoVacuumOperationEnd);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC3191A8, &qword_1C909DF98);
  }

  sub_1C8ECA488();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC3191A8, &qword_1C909DF98);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC3191A8, &qword_1C909DF98);
  }

  sub_1C8ECA3D8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC3191A8, &qword_1C909DF98);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3141D8, &qword_1C909DFF0);
  sub_1C8ECA3D8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t ToolKitProtoIndexingLogEntry.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_30_20();
  v7 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    OUTLINED_FUNCTION_124();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v28 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC73B8(v28, v29, v30, v31);
        goto LABEL_11;
      case 2u:
        v16 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC75C0(v16, v17, v18, v19);
        goto LABEL_11;
      case 3u:
        v20 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC77C8(v20, v21, v22, v23);
        goto LABEL_11;
      case 4u:
        v12 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC79D0(v12, v13, v14, v15);
        goto LABEL_11;
      case 5u:
        v32 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC7BD8(v32, v33, v34, v35);
        goto LABEL_11;
      case 6u:
        v36 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC7DE0(v36, v37, v38, v39);
        goto LABEL_11;
      case 7u:
        v24 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC7FE8(v24, v25, v26, v27);
        goto LABEL_11;
      case 8u:
        v43 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC81F0(v43, v44, v45, v46);
        if (v1)
        {
          OUTLINED_FUNCTION_9_28();
          return sub_1C8ECA430(v2, v47);
        }

        OUTLINED_FUNCTION_9_28();
        sub_1C8ECA430(v2, v48);
        break;
      default:
        v8 = OUTLINED_FUNCTION_3_4();
        sub_1C8EC71B4(v8, v9, v10, v11);
LABEL_11:
        OUTLINED_FUNCTION_9_28();
        result = sub_1C8ECA430(v2, v40);
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  v42 = v0 + *(type metadata accessor for ToolKitProtoIndexingLogEntry(0) + 20);
  OUTLINED_FUNCTION_22_0();
  return sub_1C90637CC();
}

uint64_t sub_1C8EC71B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoIndexingReason(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA61AF8, type metadata accessor for ToolKitProtoIndexingReason);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoIndexingReason);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC73B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoIndexingRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(&qword_1EDA61820, type metadata accessor for ToolKitProtoIndexingRequest);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoIndexingRequest);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC75C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA63ED0, type metadata accessor for ToolKitProtoIndexingPolicyResolution);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoIndexingPolicyResolution);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC77C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoIndexingEvent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(&qword_1EC3146F0, type metadata accessor for ToolKitProtoIndexingEvent);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoIndexingEvent);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC79D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoIndexingResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA61708, type metadata accessor for ToolKitProtoIndexingResponse);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoIndexingResponse);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC7BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoWALOperationStart(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(&qword_1EDA616C0, type metadata accessor for ToolKitProtoWALOperationStart);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoWALOperationStart);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC7DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoWALOperationEnd(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA617E0, type metadata accessor for ToolKitProtoWALOperationEnd);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoWALOperationEnd);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC7FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoVacuumOperationStart(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(&qword_1EDA61308, type metadata accessor for ToolKitProtoVacuumOperationStart);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoVacuumOperationStart);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8EC81F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141D8, &qword_1C909DFF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8ECA488();
  v12 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3141D8, &qword_1C909DFF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8ECA3D8();
      sub_1C8ECA390(qword_1EDA61400, type metadata accessor for ToolKitProtoVacuumOperationEnd);
      sub_1C9063BCC();
      return sub_1C8ECA430(v11, type metadata accessor for ToolKitProtoVacuumOperationEnd);
    }

    result = sub_1C8ECA430(v7, type metadata accessor for ToolKitProtoIndexingLogEntryKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoIndexingLogEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = OUTLINED_FUNCTION_24_2();
  v4 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(v3);
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_23();
  v8 = OUTLINED_FUNCTION_124();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_73();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318FF8, &qword_1C909C480);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_22(v18);
  OUTLINED_FUNCTION_47_13();
  OUTLINED_FUNCTION_14_2(v0);
  if (v19)
  {
    OUTLINED_FUNCTION_14_2(v0 + v2);
    if (v19)
    {
      sub_1C8D16D78(v0, &qword_1EC3141D8, &qword_1C909DFF0);
LABEL_12:
      v26 = type metadata accessor for ToolKitProtoIndexingLogEntry(0);
      OUTLINED_FUNCTION_63_10(v26);
      OUTLINED_FUNCTION_0_64();
      sub_1C8ECA390(v27, v28);
      v21 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8ECA488();
  OUTLINED_FUNCTION_14_2(v0 + v2);
  if (v19)
  {
    OUTLINED_FUNCTION_9_28();
    sub_1C8ECA430(v1, v20);
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC318FF8, &qword_1C909C480);
    goto LABEL_10;
  }

  sub_1C8ECA3D8();
  v22 = OUTLINED_FUNCTION_398();
  static ToolKitProtoIndexingLogEntryKind.== infix(_:_:)(v22, v23);
  OUTLINED_FUNCTION_61_11();
  v24 = OUTLINED_FUNCTION_125();
  sub_1C8ECA430(v24, v25);
  sub_1C8D16D78(v0, &qword_1EC3141D8, &qword_1C909DFF0);
  if (&qword_1EC3141D8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v21);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8EC8690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190C8, type metadata accessor for ToolKitProtoIndexingLogEntry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC8710(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA64C68, type metadata accessor for ToolKitProtoIndexingLogEntry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC8780()
{
  sub_1C8ECA390(qword_1EDA64C68, type metadata accessor for ToolKitProtoIndexingLogEntry);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC8830(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C906A950;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v14 = sub_1C9063BDC();
  OUTLINED_FUNCTION_13_1(v14);
  (*(v15 + 104))(v12, v13);
  return sub_1C9063BEC();
}

uint64_t sub_1C8EC89B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C9063C0C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t ToolKitProtoToolDatabaseOpaqueValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C906394C();
    }
  }

  return result;
}

uint64_t ToolKitProtoToolDatabaseOpaqueValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B2C(), !v1))
  {
    v3 = *(type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue(0) + 20);
    return OUTLINED_FUNCTION_13_23();
  }

  return result;
}

uint64_t sub_1C8EC8B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_223();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  OUTLINED_FUNCTION_63_10(v8);
  OUTLINED_FUNCTION_0_64();
  sub_1C8ECA390(v9, v10);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8EC8C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8ECA390(&qword_1EC3190C0, type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8EC8CDC(uint64_t a1)
{
  v2 = sub_1C8ECA390(qword_1EDA66BC8, type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8EC8D4C()
{
  sub_1C8ECA390(qword_1EDA66BC8, type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8EC8DC8()
{
  sub_1C9064D7C();
  sub_1C9063E7C();
  return sub_1C9064DBC();
}

uint64_t sub_1C8EC8E20(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1C8D6E194(a1, a2);
  }

  return a1;
}

uint64_t sub_1C8ECA390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8ECA3D8()
{
  v2 = OUTLINED_FUNCTION_24_2();
  v4 = v3(v2);
  OUTLINED_FUNCTION_13_1(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C8ECA430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8ECA488()
{
  OUTLINED_FUNCTION_223();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_13_1(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_23_22(uint64_t a1)
{
  v2 = *(a1 + 56);

  return sub_1C8ECA488();
}

uint64_t OUTLINED_FUNCTION_61_11()
{

  return sub_1C8ECA430(v0, v1);
}

void OUTLINED_FUNCTION_68_6()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t ToolKitProtoLaunchServicesSnapshot.init(stateByBundleIdentifier:version:)()
{
  OUTLINED_FUNCTION_31_17();
  v2 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(0);
  OUTLINED_FUNCTION_45_17(v1 + v3, v5, v6, v4);
  v7 = v1 + *(v2 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = v0;
  return sub_1C8D7300C();
}

uint64_t sub_1C8ECA750()
{
  v5 = OUTLINED_FUNCTION_14_30();
  v7 = v4 + *(v6(v5) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  return result;
}

uint64_t ToolKitProtoChangeset.Partial.init(updated:removed:provenance:)()
{
  OUTLINED_FUNCTION_83_3();
  v4 = v3 + *(type metadata accessor for ToolKitProtoChangeset.Partial(0) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v0;
  return result;
}

uint64_t sub_1C8ECA870()
{
  OUTLINED_FUNCTION_83_3();
  v5 = v3 + *(v4(0) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v0;
  return result;
}

uint64_t ToolKitProtoIndexingPolicyResolution.init(requestID:resolvedChangeset:decisionMetadata:)()
{
  v4 = OUTLINED_FUNCTION_14_30();
  v5 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(v4);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for ToolKitProtoChangeset(0);
  OUTLINED_FUNCTION_45_17(v3 + v6, v8, v9, v7);
  v10 = v3 + *(v5 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  result = sub_1C8D7300C();
  v3[2] = v0;
  return result;
}

uint64_t ToolKitProtoWALOperationEnd.init(operationID:busy:totalFrames:checkpointedFrames:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = a8 + *(type metadata accessor for ToolKitProtoWALOperationEnd(0) + 36);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 20) = a4;
  *(a8 + 24) = BYTE4(a4) & 1;
  *(a8 + 28) = a5;
  *(a8 + 32) = BYTE4(a5) & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_1C8ECAA9C()
{
  OUTLINED_FUNCTION_31_17();
  v4 = v2 + *(v3(0) + 20);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

uint64_t ToolKitProtoVacuumOperationEnd.init(operationID:error:)()
{
  v5 = OUTLINED_FUNCTION_14_30();
  v6 = v4 + *(type metadata accessor for ToolKitProtoVacuumOperationEnd(v5) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  return result;
}

uint64_t sub_1C8ECAB80@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v5 = a3 + *(a2(0) + 20);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t ToolKitProtoLaunchServicesSnapshot.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v1);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(0);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = v0 + *(v2 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State(0);
  result = sub_1C9063E2C();
  *v0 = result;
  return result;
}

uint64_t ToolKitProtoLaunchServicesSnapshot.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8ECACF8()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_220_0(v2);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_60_4();

  return v7(v6);
}

uint64_t sub_1C8ECAD78()
{
  v0 = OUTLINED_FUNCTION_258();
  v2 = v1(v0);
  OUTLINED_FUNCTION_220_0(v2);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_168_2();

  return v7(v6);
}

uint64_t ToolKitProtoLaunchServicesSnapshot.State.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoLaunchServicesSnapshot.Version.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoLinkSnapshot.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = v0 + *(type metadata accessor for ToolKitProtoLinkSnapshot(v1) + 20);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  type metadata accessor for ToolKitProtoLinkSnapshot.State(0);
  result = sub_1C9063E2C();
  *v0 = result;
  return result;
}

uint64_t ToolKitProtoLinkSnapshot.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoLinkSnapshot(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

double sub_1C8ECAF94()
{
  v1 = OUTLINED_FUNCTION_61_0();
  v3 = v0 + *(v2(v1) + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  result = 0.0;
  *(v0 + 16) = xmmword_1C9074C90;
  return result;
}

uint64_t ToolKitProtoLinkSnapshot.State.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoLinkSnapshot.State(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8ECB0AC()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_60_4();

  return v7(v6);
}

uint64_t sub_1C8ECB130()
{
  v0 = OUTLINED_FUNCTION_258();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_168_2();

  return v7(v6);
}

uint64_t ToolKitProtoChangeset.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoChangeset(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8ECB20C()
{
  v2 = OUTLINED_FUNCTION_47_5();
  v4 = v3(v2);
  OUTLINED_FUNCTION_45_17(v1, v5, v6, v4);
  v7 = v1 + *(v0(0) + 20);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t ToolKitProtoChangeset.Provenance.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoChangeset.Provenance(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoChangeset.Partial.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = v0 + *(type metadata accessor for ToolKitProtoChangeset.Partial(v1) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v4 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v4;
  v0[2] = v4;
  return result;
}

uint64_t ToolKitProtoChangeset.Partial.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoChangeset.Partial(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoIndexingReason.init()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_50_13(a1);
  *(a1 + 32) = v2;
  v3 = type metadata accessor for ToolKitProtoIndexingReason(0);
  v4 = OUTLINED_FUNCTION_220_0(v3);
  v5 = type metadata accessor for ToolKitProtoChangeset(v4);
  OUTLINED_FUNCTION_53_5(v5);
  v6 = a1 + *(v3 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t sub_1C8ECB448()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = *(v1(v0) + 28);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_60_4();

  return v7(v6);
}

uint64_t sub_1C8ECB4CC()
{
  v0 = OUTLINED_FUNCTION_258();
  v2 = *(v1(v0) + 28);
  v3 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_168_2();

  return v7(v6);
}

uint64_t ToolKitProtoIndexingReason.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoIndexingReason(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8ECB59C()
{
  v2 = OUTLINED_FUNCTION_47_5();
  v4 = v1 + *(v3(v2) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = v0;
  return result;
}

uint64_t ToolKitProtoIndexingRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoIndexingRequest(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoIndexingPolicyResolution.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(v1);
  v3 = OUTLINED_FUNCTION_220_0(v2);
  v4 = type metadata accessor for ToolKitProtoChangeset(v3);
  OUTLINED_FUNCTION_53_5(v4);
  v5 = v0 + *(v2 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t ToolKitProtoIndexingPolicyResolution.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoIndexingPolicyResolution(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoIndexingEvent.init()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_50_13(a1);
  *(a1 + 32) = v2;
  *(a1 + 40) = xmmword_1C90747F0;
  v3 = a1 + *(type metadata accessor for ToolKitProtoIndexingEvent(0) + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoIndexingEvent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoIndexingEvent(v0) + 28);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoIndexingResponse.init()(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_1C907C320;
  v1 = a1 + *(type metadata accessor for ToolKitProtoIndexingResponse(0) + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoIndexingResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoIndexingResponse(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoWALOperationStart.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoWALOperationStart(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoWALOperationEnd.init()(uint64_t a1@<X8>)
{
  *(a1 + 16) = 2;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 1;
  v2 = type metadata accessor for ToolKitProtoWALOperationEnd(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = a1 + *(v2 + 36);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoWALOperationEnd.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoWALOperationEnd(v0) + 36);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_60_4();

  return v6(v5);
}

uint64_t ToolKitProtoWALOperationEnd.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoWALOperationEnd(v0) + 36);
  v2 = sub_1C90637EC();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_168_2();

  return v6(v5);
}

uint64_t ToolKitProtoWALOperationEnd.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoWALOperationEnd(v0) + 36);
  return OUTLINED_FUNCTION_104();
}

void sub_1C8ECBAD0()
{
  v1 = OUTLINED_FUNCTION_61_0();
  v3 = v0 + *(v2(v1) + 20);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoVacuumOperationStart.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoVacuumOperationStart(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

void ToolKitProtoVacuumOperationEnd.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for ToolKitProtoVacuumOperationEnd(v1);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v3 = v0 + *(v2 + 24);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  OUTLINED_FUNCTION_145_0();
}

uint64_t ToolKitProtoVacuumOperationEnd.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoVacuumOperationEnd(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoIndexingLogEntry.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoIndexingLogEntry(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoToolDatabaseOpaqueValue.init()()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = v0 + *(type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue(v1) + 20);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ToolKitProtoToolDatabaseOpaqueValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoToolDatabaseOpaqueValue(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoLaunchServicesSnapshot.version.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v0) + 20);
  return sub_1C8D63FCC();
}

uint64_t ToolKitProtoLaunchServicesSnapshot.version.setter()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v0) + 20);
  return sub_1C8D7300C();
}

uint64_t ToolKitProtoLaunchServicesSnapshot.version.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoLaunchServicesSnapshot(v0) + 20);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoLinkSnapshot.State.containerID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoLinkSnapshot.State.containerID.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitProtoLinkSnapshot.State.installIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v3, v4);
  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoLinkSnapshot.State.installIdentifier.setter()
{
  OUTLINED_FUNCTION_127_0();
  result = sub_1C8CE7B78(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static ToolKitProtoChangeset.ToolKitProtoProvenanceKind.== infix(_:_:)()
{
  v33 = type metadata accessor for ToolKitProtoLinkSnapshot(0);
  v0 = OUTLINED_FUNCTION_13_1(v33);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_15();
  v5 = (v4 - v3);
  v6 = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(0);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = type metadata accessor for ToolKitProtoChangeset.ToolKitProtoProvenanceKind(0);
  v11 = OUTLINED_FUNCTION_13_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129E8, &qword_1C909DFE0);
  v18 = OUTLINED_FUNCTION_9(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v32 - v21;
  v24 = *(v23 + 56);
  sub_1C8ECC8A8();
  sub_1C8ECC8A8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_21_20();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_295() != 1)
      {
        goto LABEL_12;
      }

      sub_1C8ECC4DC();
      v26 = *v15;
      v27 = *v5;
      sub_1C8F56D1C();
      if (v28)
      {
        v29 = *(v33 + 20);
        sub_1C90637EC();
        sub_1C8D99190();
        if (OUTLINED_FUNCTION_226_0())
        {
          OUTLINED_FUNCTION_22_26();
          sub_1C8ECC488();
          OUTLINED_FUNCTION_59_13();
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_22_26();
      sub_1C8ECC488();
      OUTLINED_FUNCTION_59_13();
      OUTLINED_FUNCTION_7_35();
      goto LABEL_14;
    case 2u:
      if (OUTLINED_FUNCTION_295() != 2)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    case 3u:
      if (OUTLINED_FUNCTION_295() != 3)
      {
        goto LABEL_13;
      }

LABEL_7:
      OUTLINED_FUNCTION_7_35();
      v25 = 1;
      break;
    default:
      OUTLINED_FUNCTION_21_20();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_295())
      {
LABEL_12:
        sub_1C8ECC488();
LABEL_13:
        sub_1C8D16D78(v22, &qword_1EC3129E8, &qword_1C909DFE0);
LABEL_14:
        v25 = 0;
      }

      else
      {
        sub_1C8ECC4DC();
        static ToolKitProtoLaunchServicesSnapshot.== infix(_:_:)();
        v25 = v31;
        sub_1C8ECC488();
        sub_1C8ECC488();
        OUTLINED_FUNCTION_7_35();
      }

      break;
  }

  return v25 & 1;
}

uint64_t sub_1C8ECC488()
{
  v1 = OUTLINED_FUNCTION_258();
  v3 = v2(v1);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C8ECC4DC()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t ToolKitProtoChangeset.Partial.updated.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ToolKitProtoChangeset.Partial.removed.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ToolKitProtoChangeset.Partial.provenance.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t static ToolKitProtoChangesetKind.== infix(_:_:)()
{
  v0 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
  v1 = OUTLINED_FUNCTION_13_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v6 = (v5 - v4);
  v7 = type metadata accessor for ToolKitProtoChangesetKind(0);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191D0, &qword_1C909DFE8);
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v21 = *(v20 + 56);
  sub_1C8ECC8A8();
  sub_1C8ECC8A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 2, v0);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      if (OUTLINED_FUNCTION_48_14() != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      OUTLINED_FUNCTION_26_15();
      return 1;
    }

    if (OUTLINED_FUNCTION_48_14() == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C8ECC8A8();
    if (!OUTLINED_FUNCTION_48_14())
    {
      sub_1C8ECC4DC();
      sub_1C8CEB10C(*v13, *v6);
      if ((v24 & 1) == 0 || (sub_1C8CEB10C(v13[1], v6[1]), (v25 & 1) == 0) || (v26 = v13[2], v27 = v6[2], sub_1C8CF0A10(), (v28 & 1) == 0) || (v29 = *(v0 + 28), sub_1C90637EC(), sub_1C8D99190(), (OUTLINED_FUNCTION_226_0() & 1) == 0))
      {
        OUTLINED_FUNCTION_25_18();
        sub_1C8ECC488();
        OUTLINED_FUNCTION_59_13();
        OUTLINED_FUNCTION_26_15();
        return 0;
      }

      OUTLINED_FUNCTION_25_18();
      sub_1C8ECC488();
      OUTLINED_FUNCTION_59_13();
      goto LABEL_8;
    }

    sub_1C8ECC488();
  }

LABEL_9:
  sub_1C8D16D78(v19, &qword_1EC3191D0, &qword_1C909DFE8);
  return 0;
}

uint64_t sub_1C8ECC8A8()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t ToolKitProtoIndexingReason.requestedChangeset.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoIndexingReason(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t ToolKitProtoIndexingReason.init(id:requestedChangeset:)()
{
  OUTLINED_FUNCTION_83_3();
  OUTLINED_FUNCTION_50_13(v3);
  *(v2 + 32) = v4;
  v5 = type metadata accessor for ToolKitProtoIndexingReason(0);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for ToolKitProtoChangeset(0);
  OUTLINED_FUNCTION_45_17(v2 + v6, v8, v9, v7);
  v10 = v2 + *(v5 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  *(v2 + 8) = v0;
  return sub_1C8D7300C();
}

uint64_t static ToolKitProtoTriggerKind.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v18 = OUTLINED_FUNCTION_94();
      sub_1C8D7CAE8(v18, v19, 0);
      v20 = OUTLINED_FUNCTION_249();
      sub_1C8D7CAE8(v20, v21, 0);
      v22 = v4 ^ v2 ^ 1;
      return v22 & 1;
    }

LABEL_19:
    v29 = OUTLINED_FUNCTION_249();
    sub_1C8D78DD0(v29, v30, v6);
    v31 = OUTLINED_FUNCTION_94();
    sub_1C8D7CAE8(v31, v32, v3);
    v33 = OUTLINED_FUNCTION_249();
    sub_1C8D7CAE8(v33, v34, v6);
    v22 = 0;
    return v22 & 1;
  }

  if (v3 != 1)
  {
    v23 = *a1;
    switch(v2)
    {
      case 1:
        if (v6 != 2 || v4 != 1 || v5 != 0)
        {
          goto LABEL_19;
        }

        v66 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v66, v67, 2);
        v22 = 1;
        v41 = 1;
        v42 = 0;
        v43 = 2;
        goto LABEL_22;
      case 2:
        if (v6 != 2 || v4 != 2 || v5 != 0)
        {
          goto LABEL_19;
        }

        v54 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v54, v55, 2);
        v27 = 2;
        break;
      case 3:
        if (v6 != 2 || v4 != 3 || v5 != 0)
        {
          goto LABEL_19;
        }

        v58 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v58, v59, 2);
        v27 = 3;
        break;
      case 4:
        if (v6 != 2 || v4 != 4 || v5 != 0)
        {
          goto LABEL_19;
        }

        v46 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v46, v47, 2);
        v27 = 4;
        break;
      case 5:
        if (v6 != 2 || v4 != 5 || v5 != 0)
        {
          goto LABEL_19;
        }

        v70 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v70, v71, 2);
        v27 = 5;
        break;
      case 6:
        if (v6 != 2 || v4 != 6 || v5 != 0)
        {
          goto LABEL_19;
        }

        v74 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v74, v75, 2);
        v27 = 6;
        break;
      case 7:
        if (v6 != 2 || v4 != 7 || v5 != 0)
        {
          goto LABEL_19;
        }

        v62 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v62, v63, 2);
        v27 = 7;
        break;
      case 8:
        if (v6 != 2 || v4 != 8 || v5 != 0)
        {
          goto LABEL_19;
        }

        v78 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v78, v79, 2);
        v27 = 8;
        break;
      case 9:
        if (v6 != 2 || v4 != 9 || v5 != 0)
        {
          goto LABEL_19;
        }

        v50 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v50, v51, 2);
        v27 = 9;
        break;
      default:
        if (v6 != 2 || (v5 | v4) != 0)
        {
          goto LABEL_19;
        }

        v25 = OUTLINED_FUNCTION_94();
        sub_1C8D7CAE8(v25, v26, 2);
        v27 = 0;
        break;
    }

    sub_1C8D7CAE8(v27, 0, 2);
    v22 = 1;
    return v22 & 1;
  }

  if (v6 != 1)
  {
    v28 = a1[1];

    goto LABEL_19;
  }

  if (v2 != v4 || a1[1] != v5)
  {
    OUTLINED_FUNCTION_94();
    v8 = sub_1C9064C2C();
    v9 = OUTLINED_FUNCTION_249();
    sub_1C8D78DD0(v9, v10, 1);
    v11 = OUTLINED_FUNCTION_94();
    sub_1C8D78DD0(v11, v12, 1);
    v13 = OUTLINED_FUNCTION_94();
    sub_1C8D7CAE8(v13, v14, 1);
    v15 = OUTLINED_FUNCTION_249();
    sub_1C8D7CAE8(v15, v16, 1);
    return v8 & 1;
  }

  v22 = 1;
  v35 = OUTLINED_FUNCTION_94();
  sub_1C8D78DD0(v35, v36, 1);
  v37 = OUTLINED_FUNCTION_94();
  sub_1C8D78DD0(v37, v38, 1);
  v39 = OUTLINED_FUNCTION_94();
  sub_1C8D7CAE8(v39, v40, 1);
  v41 = OUTLINED_FUNCTION_94();
  v43 = 1;
LABEL_22:
  sub_1C8D7CAE8(v41, v42, v43);
  return v22 & 1;
}

uint64_t sub_1C8ECCDD8()
{
  v0 = OUTLINED_FUNCTION_61_0();
  v2 = *(v1(v0) + 24);
  return sub_1C8D63FCC();
}

uint64_t sub_1C8ECCE38()
{
  v0 = OUTLINED_FUNCTION_258();
  v2 = *(v1(v0) + 24);
  return sub_1C8D7300C();
}

uint64_t ToolKitProtoIndexingPolicyResolution.resolvedChangeset.modify()
{
  v0 = OUTLINED_FUNCTION_258();
  v1 = *(type metadata accessor for ToolKitProtoIndexingPolicyResolution(v0) + 24);
  return OUTLINED_FUNCTION_104();
}

uint64_t sub_1C8ECCEF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  *a2 = *(v2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = *(v2 + 32);
  return a1();
}

uint64_t sub_1C8ECCF2C(uint64_t *a1, uint64_t (*a2)(void, void, void))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  result = a2(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  return result;
}

uint64_t ToolKitProtoIndexingEvent.indexingEventType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C8CE5404(v2, v3);
}

uint64_t ToolKitProtoIndexingEvent.indexingEventType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C8CE5490(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t ToolKitProtoIndexingEvent.init(requestID:)()
{
  OUTLINED_FUNCTION_31_17();
  OUTLINED_FUNCTION_50_13(v3);
  *(v2 + 32) = v4;
  *(v2 + 40) = xmmword_1C90747F0;
  v5 = v2 + *(type metadata accessor for ToolKitProtoIndexingEvent(0) + 28);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  *(v2 + 8) = v0;
  return result;
}

uint64_t static ToolKitProtoIndexingEventContents.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v9 = sub_1C9064C2C();
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_16_24();
        OUTLINED_FUNCTION_16_24();
        OUTLINED_FUNCTION_265();
        OUTLINED_FUNCTION_100();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_16_24();
      OUTLINED_FUNCTION_16_24();
      OUTLINED_FUNCTION_265();
      OUTLINED_FUNCTION_265();
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_16_24();
    OUTLINED_FUNCTION_16_24();
    OUTLINED_FUNCTION_265();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_265();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v10 = 1;
    OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_265();
    OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_265();
    return v10;
  }

  v8 = *a1;
  v9 = sub_1C9064C2C();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_100();
LABEL_16:
  OUTLINED_FUNCTION_265();
  return v9 & 1;
}

uint64_t static ToolKitProtoIndexingEventType.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C9064C2C();
}

uint64_t ToolKitProtoIndexingResponse.indexingResponseKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C8EC8E20(v2, v3);
}

uint64_t ToolKitProtoIndexingResponse.indexingResponseKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C8D93ECC(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t ToolKitProtoIndexingResponse.init(requestID:)()
{
  OUTLINED_FUNCTION_31_17();
  *(v2 + 16) = xmmword_1C907C320;
  v3 = v2 + *(type metadata accessor for ToolKitProtoIndexingResponse(0) + 24);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v2 = v1;
  *(v2 + 8) = v0;
  return result;
}

uint64_t static ToolKitProtoIndexingResponseKind.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1C8D93EDC(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1C8D93EDC(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v17 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v19 = sub_1C9064C2C();
      v20 = OUTLINED_FUNCTION_181();
      sub_1C8D6E194(v20, v21);
      v22 = OUTLINED_FUNCTION_145();
      sub_1C8D6E194(v22, v23);
      v24 = OUTLINED_FUNCTION_145();
      sub_1C8D93EDC(v24, v25);
      v26 = OUTLINED_FUNCTION_181();
      sub_1C8D93EDC(v26, v27);
      return v19 & 1;
    }

    sub_1C8D6E194(v17, v3);
    v29 = OUTLINED_FUNCTION_145();
    sub_1C8D6E194(v29, v30);
    v31 = OUTLINED_FUNCTION_145();
    sub_1C8D93EDC(v31, v32);
    v7 = OUTLINED_FUNCTION_145();
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    v9 = OUTLINED_FUNCTION_181();
    sub_1C8D6E194(v9, v10);
    v11 = OUTLINED_FUNCTION_145();
    sub_1C8D6E194(v11, v12);
    v13 = OUTLINED_FUNCTION_145();
    sub_1C8D93EDC(v13, v14);
    v15 = OUTLINED_FUNCTION_181();
    sub_1C8D93EDC(v15, v16);
    return 0;
  }

  v6 = 1;
  sub_1C8D93EDC(*a1, 1uLL);
  sub_1C8D93EDC(v4, 1uLL);
  return v6;
}

uint64_t ToolKitProtoWALOperationEnd.totalFrames.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitProtoWALOperationEnd.checkpointedFrames.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t ToolKitProtoWALOperationEnd.error.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoWALOperationEnd.error.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ToolKitProtoVacuumOperationEnd.error.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolKitProtoVacuumOperationEnd.error.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static ToolKitProtoIndexingLogEntryKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v121 = a1;
  v122 = a2;
  v2 = type metadata accessor for ToolKitProtoVacuumOperationEnd(0);
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_0();
  v116 = v6;
  v7 = OUTLINED_FUNCTION_111();
  v109 = type metadata accessor for ToolKitProtoVacuumOperationStart(v7);
  v8 = OUTLINED_FUNCTION_13_1(v109);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_0();
  v117 = v11;
  v12 = OUTLINED_FUNCTION_111();
  v13 = type metadata accessor for ToolKitProtoWALOperationEnd(v12);
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_0();
  v114 = v17;
  v18 = OUTLINED_FUNCTION_111();
  v108 = type metadata accessor for ToolKitProtoWALOperationStart(v18);
  v19 = OUTLINED_FUNCTION_13_1(v108);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_0();
  v115 = v22;
  v23 = OUTLINED_FUNCTION_111();
  v24 = type metadata accessor for ToolKitProtoIndexingResponse(v23);
  v25 = OUTLINED_FUNCTION_9(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_0();
  v113 = v28;
  v29 = OUTLINED_FUNCTION_111();
  v30 = type metadata accessor for ToolKitProtoIndexingEvent(v29);
  v31 = OUTLINED_FUNCTION_9(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7_0();
  v111 = v34;
  v35 = OUTLINED_FUNCTION_111();
  v36 = type metadata accessor for ToolKitProtoIndexingPolicyResolution(v35);
  v37 = OUTLINED_FUNCTION_9(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_7_0();
  v110 = v40;
  v41 = OUTLINED_FUNCTION_111();
  v106 = type metadata accessor for ToolKitProtoIndexingRequest(v41);
  v42 = OUTLINED_FUNCTION_13_1(v106);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_7_0();
  v112 = v45;
  v46 = OUTLINED_FUNCTION_111();
  v47 = type metadata accessor for ToolKitProtoIndexingReason(v46);
  v48 = OUTLINED_FUNCTION_9(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_7_0();
  v107 = v51;
  v52 = OUTLINED_FUNCTION_111();
  v53 = type metadata accessor for ToolKitProtoIndexingLogEntryKind(v52);
  v54 = OUTLINED_FUNCTION_13_1(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v118 = (&v105 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v58);
  v120 = &v105 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v62 = (&v105 - v61);
  MEMORY[0x1EEE9AC00](v63);
  v119 = &v105 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = (&v105 - v66);
  MEMORY[0x1EEE9AC00](v68);
  v70 = (&v105 - v69);
  MEMORY[0x1EEE9AC00](v71);
  MEMORY[0x1EEE9AC00](v72);
  v74 = (&v105 - v73);
  MEMORY[0x1EEE9AC00](v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191D8, &qword_1C909DFF8);
  v77 = OUTLINED_FUNCTION_9(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v105 - v80;
  v83 = *(v82 + 56);
  sub_1C8ECC8A8();
  sub_1C8ECC8A8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 1)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      v92 = v112;
      sub_1C8ECC4DC();
      v93 = *v74 == *v92 && v74[1] == v92[1];
      if (v93 || (sub_1C9064C2C() & 1) != 0)
      {
        sub_1C8CEB10C(v74[2], v92[2]);
        if (v94)
        {
          v95 = *(v106 + 24);
          sub_1C90637EC();
          sub_1C8D99190();
          if (sub_1C9063EAC())
          {
            OUTLINED_FUNCTION_24_23();
            sub_1C8ECC488();
            goto LABEL_35;
          }
        }
      }

      OUTLINED_FUNCTION_24_23();
      sub_1C8ECC488();
      goto LABEL_48;
    case 2u:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 2)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      sub_1C8ECC4DC();
      OUTLINED_FUNCTION_145();
      static ToolKitProtoIndexingPolicyResolution.== infix(_:_:)();
      v85 = v86;
      sub_1C8ECC488();
      OUTLINED_FUNCTION_94();
      goto LABEL_45;
    case 3u:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 3)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      v87 = v111;
      sub_1C8ECC4DC();
      v85 = static ToolKitProtoIndexingEvent.== infix(_:_:)(v70, v87);
      sub_1C8ECC488();
      goto LABEL_45;
    case 4u:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 4)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      v84 = v113;
      sub_1C8ECC4DC();
      v85 = static ToolKitProtoIndexingResponse.== infix(_:_:)(v67, v84);
      sub_1C8ECC488();
      goto LABEL_45;
    case 5u:
      OUTLINED_FUNCTION_0_65();
      v96 = v119;
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 5)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      v97 = v115;
      sub_1C8ECC4DC();
      v98 = *v96 == *v97 && v96[1] == v97[1];
      if (v98 || (sub_1C9064C2C() & 1) != 0)
      {
        v99 = *(v108 + 20);
        sub_1C90637EC();
        sub_1C8D99190();
        if (OUTLINED_FUNCTION_57_10())
        {
          goto LABEL_34;
        }
      }

      goto LABEL_47;
    case 6u:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 6)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      v100 = v114;
      sub_1C8ECC4DC();
      v85 = static ToolKitProtoWALOperationEnd.== infix(_:_:)(v62, v100);
      sub_1C8ECC488();
      goto LABEL_45;
    case 7u:
      OUTLINED_FUNCTION_0_65();
      v88 = v120;
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 7)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      v89 = v117;
      sub_1C8ECC4DC();
      v90 = *v88 == *v89 && v88[1] == v89[1];
      if (v90 || (sub_1C9064C2C() & 1) != 0)
      {
        v91 = *(v109 + 20);
        sub_1C90637EC();
        sub_1C8D99190();
        if (OUTLINED_FUNCTION_57_10())
        {
LABEL_34:
          sub_1C8ECC488();
LABEL_35:
          sub_1C8ECC488();
          OUTLINED_FUNCTION_8_33();
          v85 = 1;
          return v85 & 1;
        }
      }

LABEL_47:
      sub_1C8ECC488();
LABEL_48:
      sub_1C8ECC488();
      OUTLINED_FUNCTION_8_33();
      goto LABEL_41;
    case 8u:
      OUTLINED_FUNCTION_0_65();
      v101 = v118;
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14() != 8)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_16();
      v102 = v116;
      sub_1C8ECC4DC();
      v85 = static ToolKitProtoVacuumOperationEnd.== infix(_:_:)(v101, v102);
      goto LABEL_44;
    default:
      OUTLINED_FUNCTION_0_65();
      sub_1C8ECC8A8();
      if (OUTLINED_FUNCTION_41_14())
      {
LABEL_40:
        sub_1C8ECC488();
        sub_1C8D16D78(v81, &qword_1EC3191D8, &qword_1C909DFF8);
LABEL_41:
        v85 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_32_16();
        sub_1C8ECC4DC();
        static ToolKitProtoIndexingReason.== infix(_:_:)();
        v85 = v103;
LABEL_44:
        sub_1C8ECC488();
LABEL_45:
        sub_1C8ECC488();
        OUTLINED_FUNCTION_8_33();
      }

      return v85 & 1;
  }
}

void sub_1C8ECE114()
{
  sub_1C8ECE320(319, &qword_1EDA60588, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.State);
  if (v0 <= 0x3F)
  {
    sub_1C8ECE48C(319, &qword_1EDA64080, type metadata accessor for ToolKitProtoLaunchServicesSnapshot.Version, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C90637EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8ECE280()
{
  sub_1C8ECE320(319, &qword_1EDA60590, type metadata accessor for ToolKitProtoLinkSnapshot.State);
  if (v0 <= 0x3F)
  {
    sub_1C90637EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8ECE320(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C9063E5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C8ECE3AC()
{
  result = sub_1C90637EC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_62();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_44_6();
  }

  return result;
}

void sub_1C8ECE48C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C8ECE560()
{
  result = type metadata accessor for ToolKitProtoLaunchServicesSnapshot(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoLinkSnapshot(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C8ECE5FC()
{
  sub_1C8ECF5B4(319, &qword_1EDA6E550, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8ECE48C(319, &qword_1EDA60550, type metadata accessor for ToolKitProtoChangeset.Provenance, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C90637EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8ECE714()
{
  v0 = type metadata accessor for ToolKitProtoChangeset.Partial(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1C8ECE7BC()
{
  OUTLINED_FUNCTION_40_17();
  sub_1C8ECF5B4(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1C8ECE48C(319, &qword_1EDA65EE0, type metadata accessor for ToolKitProtoChangeset, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      sub_1C90637EC();
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_62();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_44_6();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7ToolKit0aB16ProtoTriggerKindO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t __swift_get_extra_inhabitant_index_89Tm()
{
  OUTLINED_FUNCTION_43_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_21_0(*(v1 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
  OUTLINED_FUNCTION_179(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 24);
  }

  else
  {
    sub_1C90637EC();
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_108_1(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_90Tm()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3141E0, &unk_1C90729F0);
    OUTLINED_FUNCTION_179(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      sub_1C90637EC();
      v7 = *(v3 + 28);
    }

    v8 = OUTLINED_FUNCTION_37_1(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_1C8ECEAF4()
{
  sub_1C8ECF5B4(319, qword_1EDA611D0, &type metadata for ToolKitProtoIndexingEventContents, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C8ECF5B4(319, qword_1EDA616C8, &type metadata for ToolKitProtoIndexingEventType, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C90637EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8ECEC64()
{
  OUTLINED_FUNCTION_40_17();
  sub_1C8ECF5B4(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1C90637EC();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_62();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_44_6();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7ToolKit0aB25ProtoIndexingResponseKindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8ECED08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8ECED5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1C8ECEE18()
{
  sub_1C8ECF5B4(319, &qword_1EDA66730, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C8ECF5B4(319, &unk_1EDA60448, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C8ECF5B4(319, &qword_1EDA6E558, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C90637EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_159Tm()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_137_0();
  v4 = OUTLINED_FUNCTION_108_1(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

uint64_t sub_1C8ECEFD8()
{
  result = sub_1C90637EC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_62();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_44_6();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_10Tm()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  v4 = OUTLINED_FUNCTION_108_1(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_11Tm()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v2 = OUTLINED_FUNCTION_37_1(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t __swift_get_extra_inhabitant_index_46Tm()
{
  OUTLINED_FUNCTION_116_1();
  v2 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = OUTLINED_FUNCTION_179(v5);
  if (*(v7 + 84) == v0)
  {
    v8 = v6;
    v9 = v2;
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_137_0();
    v9 = v2 + v10;
  }

  return __swift_getEnumTagSinglePayload(v9, v0, v8);
}

uint64_t __swift_store_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = OUTLINED_FUNCTION_179(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = a1;
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_138_1();
    v13 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v13, a2, a2, v12);
}

uint64_t sub_1C8ECF308()
{
  OUTLINED_FUNCTION_40_17();
  result = v0(319);
  if (v2 <= 0x3F)
  {
    result = sub_1C90637EC();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_62();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_44_6();
    }
  }

  return result;
}

uint64_t sub_1C8ECF388()
{
  result = type metadata accessor for ToolKitProtoIndexingReason(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoIndexingRequest(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoIndexingPolicyResolution(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoIndexingEvent(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoIndexingResponse(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoWALOperationStart(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoWALOperationEnd(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoVacuumOperationStart(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ToolKitProtoVacuumOperationEnd(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
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

uint64_t __swift_get_extra_inhabitant_index_28Tm()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_21_0(*v0);
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_137_0();
  v4 = OUTLINED_FUNCTION_108_1(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_29Tm()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_138_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1C8ECF5B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_57_10()
{

  return sub_1C9063EAC();
}

uint64_t sub_1C8ECF6C0(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v4 = *(v1 + 16);
  v7 = *(v1 + 24);
  type metadata accessor for ToolDatabase.Accessor();
  swift_allocObject();
  v5 = sub_1C903A588(v4, &v7);

  a1(&v8, v5);

  if (!v2)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1C8ECF770(void (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  v6 = *(v1 + 24);
  type metadata accessor for ToolDatabase.Accessor();
  swift_allocObject();
  v4 = sub_1C903A588(v3, &v6);

  a1(v4);
}

void sub_1C8ECF8B0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void (*a5)(id *__return_ptr, uint64_t), uint64_t a6)
{
  v7 = v6;
  v29[1] = a6;
  v30 = a5;
  v12 = sub_1C90626DC();
  v29[0] = *(v12 - 8);
  v13 = *(v29[0] + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - v17;
  type metadata accessor for ToolDatabase.Savepoint();
  v31[3] = type metadata accessor for ToolDatabase.Transaction();
  v31[4] = &protocol witness table for ToolDatabase.Transaction;
  v31[0] = a4;
  v19 = *(a1 + 16);
  v32 = a4[25];

  v20 = v19;
  v21 = v7;
  v22 = sub_1C8E79A60(a2, a3, v31, v20, &v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  if (!v21)
  {
    v23 = v29[0];
    v30(v31, v22);
    ToolDatabase.Savepoint.commit()();
    v25 = v24;
    if (v24)
    {
      v31[0] = v24;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
      if (swift_dynamicCast())
      {

        (*(v23 + 32))(v15, v18, v12);
        sub_1C8D11CA4();
        sub_1C8ED3B50(&qword_1EC312ED8, MEMORY[0x1E699FE10]);
        swift_allocError();
        (*(v23 + 16))(v28, v15, v12);
        swift_willThrow();

        (*(v23 + 8))(v15, v12);
      }

      else
      {

        ToolDatabase.Savepoint.rollBack()();
        if (v27)
        {
        }

        else
        {
          swift_willThrow();
        }
      }
    }

    else
    {
    }
  }
}

void sub_1C8ECFBE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, void (*a5)(id *__return_ptr, uint64_t)@<X4>, uint64_t a6@<X5>, id *a7@<X8>)
{
  v8 = v7;
  v34 = a6;
  v35 = a5;
  v33 = a7;
  v13 = sub_1C90626DC();
  v32 = *(v13 - 8);
  v14 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  type metadata accessor for ToolDatabase.Savepoint();
  v36[3] = type metadata accessor for ToolDatabase.Transaction();
  v36[4] = &protocol witness table for ToolDatabase.Transaction;
  v36[0] = a4;
  v20 = *(a1 + 16);
  v37 = a4[25];

  v21 = v20;
  v22 = v8;
  v23 = sub_1C8E79A60(a2, a3, v36, v21, &v37);
  __swift_destroy_boxed_opaque_existential_1(v36);
  if (!v22)
  {
    v24 = v32;
    v25 = v33;
    v35(v36, v23);
    ToolDatabase.Savepoint.commit()();
    v27 = v26;
    if (v26)
    {

      v36[0] = v26;
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
      if (swift_dynamicCast())
      {

        (*(v24 + 32))(v16, v19, v13);
        sub_1C8D11CA4();
        sub_1C8ED3B50(&qword_1EC312ED8, MEMORY[0x1E699FE10]);
        swift_allocError();
        (*(v24 + 16))(v30, v16, v13);
        swift_willThrow();

        (*(v24 + 8))(v16, v13);
      }

      else
      {

        ToolDatabase.Savepoint.rollBack()();
        if (v29)
        {
        }

        else
        {
          swift_willThrow();
        }
      }
    }

    else
    {

      *v25 = v36[0];
    }
  }
}

void ToolDatabase.Accessor.insert(tool:locale:source:localizationUsage:)(void *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = *a4;
  v10 = MEMORY[0x1CCA82A80]();
  sub_1C8ED00B8(v4, a2, v9, a1, v7, v8, &v11, &v12);
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_1C8ED00B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, Swift::Int64 a6@<X5>, void *a7@<X6>, Swift::Int64 *a8@<X8>)
{
  v180 = a7;
  v165 = a5;
  v166 = a6;
  v168 = a4;
  v164 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v144 - v14);
  v16 = sub_1C90620BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v175) = 0;
  sub_1C8EDAD68(a2, &v175, v20);
  LOBYTE(v175) = a3 & 1;
  v21 = sub_1C8EDB288(v20, &v175);
  sub_1C8ED101C();
  if (v8)
  {
    (*(v17 + 8))(v20, v16);

    *v180 = v8;
  }

  else
  {
    v161 = v15;
    v162 = v16;
    v163 = v17;
    v23 = v168;
    memcpy(__dst, v168 + 24, 0x61uLL);
    memcpy(v178, v168 + 24, 0x61uLL);
    sub_1C8CC1340(__dst, &v175);
    ToolDatabase.Accessor.insert(container:locale:)(v178, v20);
    v158 = v24;
    v160 = v20;
    memcpy(v177, v178, 0x61uLL);
    sub_1C8CC15FC(v177);
    v25 = v23[38];
    if (v25)
    {
      *&v175 = v23[37];
      *(&v175 + 1) = v25;
      memcpy(v176, v23 + 39, 0x51uLL);
      ToolDatabase.Accessor.insert(container:locale:)(&v175, v160);
      v157 = v26;
      v167 = a1;
    }

    else
    {
      v167 = a1;
      v157 = 0;
    }

    v27 = *v23;
    v155 = v23[1];
    v156 = v27;
    LOBYTE(v171[0]) = *(v23 + 32);
    *&v174[0] = v23[7];
    v28 = type metadata accessor for ToolDefinition(0);
    sub_1C8DFBCF4(v23 + v28[16], v161, &qword_1EC3144B8, &qword_1C90839E0);
    v29 = (v23 + v28[19]);
    v30 = v29[1];
    v159 = v21;
    v153 = v29;
    if (v30)
    {
      v31 = v29[3];
      v154 = v29[2];
    }

    else
    {
      v154 = 0;
      v31 = 0;
    }

    v32 = v166;
    LODWORD(v166) = v25 == 0;
    v33 = v28[20];
    v173[0] = *(v23 + v28[21]);
    v34 = *(v23 + v33);
    v170[0] = *(v23 + v28[22]);
    *&v175 = v165;
    *(&v175 + 1) = v32;

    ActionProvider.rawValue.getter();
    v172[0] = *(v23 + v28[25]);
    deprecationMessage = v34;
    v35 = v161;
    v36 = v167;
    ToolDatabase.Accessor.addTool(localId:toolType:sourceContainerId:attributionContainerId:outputTypeInstance:customIcon:deprecationReplacementId:flags:requirements:authenticationPolicy:sourceActionProvider:visibilityFlags:)(v156, v155, v171, v158, v157, v166, v174, v161, v154, v31, v173, deprecationMessage, v170, v37, v38, v172, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155);
    v166 = v39;
    v167 = v36;

    sub_1C8D16D78(v35, &qword_1EC3144B8, &qword_1C90839E0);

    v40 = 0;
    v161 = v28;
    v41 = *(v23 + v28[26]);
    v42 = *(v41 + 16);
    v43 = (v41 + 40);
    while (v42 != v40)
    {
      if (v40 >= *(v41 + 16))
      {
        __break(1u);
LABEL_81:
        v135 = v164;
        result = (*(v163 + 8))(v42, v162);
        *v135 = v166;
        return result;
      }

      v44 = *(v43 - 1);
      v45 = *v43;

      v46._countAndFlagsBits = v44;
      v46._object = v45;
      ToolDatabase.Accessor.addLinkActionIdentifier(toolId:identifier:)(v166, v46);
      v48 = v47;
      if (v47)
      {
LABEL_18:
        (*(v163 + 8))(v160, v162);

LABEL_19:

LABEL_20:
        *v180 = v48;
        return result;
      }

      ++v40;
      v43 += 2;
    }

    v49 = 0;
    v50 = *(v168 + v161[23]);
    v165 = *(v50 + 16);
    v51 = (v50 + 32);
    v52 = v166;
    while (v165 != v49)
    {
      if (v49 >= *(v50 + 16))
      {
        __break(1u);
        goto LABEL_83;
      }

      v53 = *v51;
      v54 = v51[1];
      v55 = v51[2];
      *&v176[25] = *(v51 + 41);
      *v176 = v54;
      *&v176[16] = v55;
      v175 = v53;
      v174[0] = *v51;
      v174[1] = v51[1];
      v174[2] = v51[2];
      *(&v174[2] + 9) = *(v51 + 41);
      sub_1C8D0717C(&v175, v173);
      ToolDatabase.Accessor.addSystemToolProtocol(toolId:systemToolProtocol:)(v52, v174);
      ++v49;
      sub_1C8D071D8(&v175);
      v51 += 4;
    }

    *&v175 = v168[7];
    TypeInstance.typeIdentifiers.getter();
    v57 = v56;
    v58 = v56 + 56;
    v59 = 1 << *(v56 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v56 + 56);
    v62 = (v59 + 63) >> 6;

    for (i = 0; v61; i = v64)
    {
      v64 = i;
LABEL_28:
      *&v174[0] = *(*(v57 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v61)))));

      ToolDatabase.Accessor.addToolOutputType(toolId:typeIdentifier:)(v166, v174);
      v61 &= v61 - 1;
    }

    while (1)
    {
      v64 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v64 >= v62)
      {

        v65 = *(v159 + 16);
        if (!v65)
        {
LABEL_41:
          v86 = v168[6];
          *&v175 = v168[5];

          sub_1C8D37D04(v87);
          v155 = (v175 + 32);
          v156 = v175;

          v88 = 0;
          while (1)
          {
            v89 = v156[2];
            if (v88 == v89)
            {
              break;
            }

            if (v88 >= v89)
            {
              goto LABEL_85;
            }

            memcpy(v174, &v155[17 * v88], 0x88uLL);
            memmove(&v175, &v155[17 * v88], 0x88uLL);
            v90 = *&v176[40];
            v173[17] = *&v176[40];
            sub_1C8D07294(v174, v173);
            TypeInstance.typeIdentifiers.getter();
            v92 = 0;
            v93 = 1 << *(v91 + 32);
            v94 = (v93 + 63) >> 6;
            v95 = 56;
            if (!v94)
            {
              goto LABEL_90;
            }

            while (1)
            {
              v96 = *(v91 + v95);
              if (v96)
              {
                break;
              }

              v95 += 8;
              v92 -= 64;
              if (!--v94)
              {
                goto LABEL_90;
              }
            }

            v97 = __clz(__rbit64(v96));
            if (v97 - v93 == v92)
            {
              goto LABEL_90;
            }

            if (-v92 < 0)
            {
              goto LABEL_86;
            }

            v98 = v97 - v92;
            if (v98 >= v93)
            {
              goto LABEL_86;
            }

            if (((*(v91 + v95) >> v97) & 1) == 0)
            {
              goto LABEL_87;
            }

            v158 = *(*(v91 + 48) + 8 * v98);

            v99 = v175;
            v171[13] = v90;
            memcpy(v172, v168 + 24, 0x61uLL);
            memcpy(v171, v168 + 24, 0x61uLL);
            memset(v170, 0, 97);

            sub_1C8CC1340(v172, v169);
            TypeInstance.asSourced(from:attribution:)(v171, v169);
            memcpy(v173, v171, 0x61uLL);
            sub_1C8CC15FC(v173);

            v171[0] = *&v176[32];
            ToolDatabase.Accessor.addParameter(toolId:key:typeInstance:sortOrder:relationships:flags:)(v166, v99._countAndFlagsBits, v99._object, v169, v88, *&v176[48], v171);
            v157 = v88 + 1;

            v100 = sub_1C906206C();
            v102 = v101;
            v103 = *&v176[64];
            if (*&v176[64])
            {
              v104 = *&v176[80];
              v105 = *&v176[72];
              v165 = *&v176[56];
            }

            else
            {
              v165 = 0;
              v105 = 0;
              v104 = 0;
            }

            deprecationMessageb.value.falseString._countAndFlagsBits = v105;
            deprecationMessageb.value.falseString._object = v104;
            deprecationMessageb.value.trueString._object = v103;
            deprecationMessageb.value.trueString._countAndFlagsBits = v165;
            v106._countAndFlagsBits = v100;
            v106._object = v102;
            ToolDatabase.Accessor.addParameterLocalization(toolId:key:locale:name:description:BOOLeanLocalization:)(v166, v99, v106, *v176, *&v176[16], deprecationMessageb);
            v48 = v107;
            if (v107)
            {

              sub_1C8D16E14(v165, v103);

LABEL_69:
              sub_1C8D072F0(&v175);
              swift_bridgeObjectRelease_n();
              result = (*(v163 + 8))(v160, v162);
              goto LABEL_20;
            }

            sub_1C8D16E14(v165, v103);
            v108._rawValue = *(v168 + v161[27]);
            if (v108._rawValue)
            {

              ToolDatabase.Accessor.addSampleInvocations(toolId:parameterKey:sampleInvocations:)(v166, v99, v108);
              v48 = v109;
              v110 = v157;
              if (v109)
              {

                goto LABEL_69;
              }

              sub_1C8D072F0(&v175);
              v88 = v110;
            }

            else
            {

              sub_1C8D072F0(&v175);
              v88 = v157;
            }
          }

          swift_bridgeObjectRelease_n();
          v111 = 0;
          v112 = *(v168 + v161[17]);
          v165 = *(v112 + 16);
          v113 = (v112 + 40);
          while (v165 != v111)
          {
            if (v111 >= *(v112 + 16))
            {
              goto LABEL_88;
            }

            v115 = *(v113 - 1);
            v114 = *v113;
            v116 = sub_1C906206C();
            v118 = v117;

            v119._countAndFlagsBits = v116;
            v119._object = v118;
            v120._countAndFlagsBits = v115;
            v120._object = v114;
            ToolDatabase.Accessor.addCategory(toolId:locale:category:)(v166, v119, v120);
            v48 = v121;
            if (v121)
            {
              goto LABEL_18;
            }

            ++v111;
            v113 += 2;
          }

          v122 = 0;
          v123 = *(v168 + v161[18]);
          v165 = *(v123 + 16);
          for (j = (v123 + 40); ; j += 2)
          {
            v42 = v160;
            if (v165 == v122)
            {
              break;
            }

            if (v122 >= *(v123 + 16))
            {
              goto LABEL_89;
            }

            v126 = *(j - 1);
            v125 = *j;
            v127 = sub_1C906206C();
            v129 = v128;

            v130._countAndFlagsBits = v127;
            v130._object = v129;
            v131._countAndFlagsBits = v126;
            v131._object = v125;
            ToolDatabase.Accessor.addSearchKeyword(toolId:locale:keyword:order:)(v166, v130, v131, v122);
            v48 = v132;
            if (v132)
            {
              (*(v163 + 8))(v160, v162);
              goto LABEL_61;
            }

            ++v122;
          }

          v133._rawValue = *(v168 + v161[27]);
          if (v133._rawValue)
          {
            ToolDatabase.Accessor.addSampleInvocations(toolId:parameterKey:sampleInvocations:)(v166, 0, v133);
            v48 = v134;
            if (v134)
            {
              result = (*(v163 + 8))(v42, v162);
              goto LABEL_20;
            }
          }

          goto LABEL_81;
        }

        v66 = 0;
        v67 = v168[3];
        v165 = v168[2];
        v68 = v168[9];
        v157 = v168[8];
        v158 = v67;
        v156 = v68;
        v69 = v168[51];
        v154 = v168[52];
        v155 = v69;
        v70 = v168[53];
        v151 = v168[54];
        v152 = v70;
        v71 = v168[55];
        v149 = v168[56];
        v150 = v71;
        v72 = v168[57];
        v147 = v168[58];
        v148 = v72;
        v73 = v168[59];
        v145 = v168[60];
        v146 = v73;
        v74 = v153[1];
        v144 = *v153;
        while (v66 < *(v159 + 16))
        {
          v75 = *(v159 + v66 + 32);
          v76 = sub_1C906206C();
          v78 = v77;
          if (v74)
          {

            v79 = v144;
          }

          else
          {
            v79 = 0;
          }

          v80 = 0x79616C70736964;
          if (v75)
          {
            v80 = 0x65676175676E616CLL;
            v81 = 0xED00006C65646F4DLL;
          }

          else
          {
            v81 = 0xE700000000000000;
          }

          deprecationMessagea.value._countAndFlagsBits = v79;
          descriptionRequires.value._object = v145;
          descriptionRequires.value._countAndFlagsBits = v146;
          descriptionNote.value._object = v147;
          descriptionNote.value._countAndFlagsBits = v148;
          descriptionResult.value._object = v149;
          descriptionResult.value._countAndFlagsBits = v150;
          descriptionAttribution.value._object = v151;
          descriptionAttribution.value._countAndFlagsBits = v152;
          v181.value._object = v154;
          localizationUsage._countAndFlagsBits = v80;
          localizationUsage._object = v81;
          deprecationMessagea.value._object = v74;
          v82._countAndFlagsBits = v165;
          v83._countAndFlagsBits = v76;
          v83._object = v78;
          v84.value._countAndFlagsBits = v157;
          v82._object = v158;
          v181.value._countAndFlagsBits = v155;
          v84.value._object = v156;
          ToolDatabase.Accessor.addToolLocalization(toolId:locale:name:outputResultName:descriptionSummary:descriptionAttribution:descriptionResult:descriptionNote:descriptionRequires:deprecationMessage:localizationUsage:)(v166, v83, v82, v84, v181, descriptionAttribution, descriptionResult, descriptionNote, descriptionRequires, deprecationMessagea, localizationUsage);
          v48 = v85;
          if (v85)
          {
            (*(v163 + 8))(v160, v162);

LABEL_61:

            goto LABEL_19;
          }

          ++v66;

          if (v65 == v66)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_84;
      }

      v61 = *(v58 + 8 * v64);
      ++i;
      if (v61)
      {
        goto LABEL_28;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:

    result = sub_1C906491C();
    __break(1u);
  }

  return result;
}

void sub_1C8ED101C()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    v2 = sub_1C8ED29C0();
    if (!v1 && (v2 & 1) == 0 && (sub_1C8ED29C0() & 1) == 0)
    {
      sub_1C8D5D868();
      swift_allocError();
      *v3 = 0;
      *(v3 + 56) = 0;
      *(v3 + 96) = 0;
      swift_willThrow();
    }
  }
}

void ToolDatabase.Accessor.insert(container:locale:)(void *__src, uint64_t a2)
{
  v3 = memcpy(__dst, __src, 0x61uLL);
  v4 = MEMORY[0x1CCA82A80](v3);
  sub_1C8ED116C(a2, __dst, &v5, &v6);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1C8ED116C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v53 = a4;
  v8 = sub_1C90620BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[0] = 0;
  sub_1C8EDAD68(a1, v54, v12);
  sub_1C8ED101C();
  v13 = v4;
  if (!v4)
  {
    v49 = v9;
    v50 = v8;
    v47 = a3;
    v57 = *(a2 + 56);
    v55 = *(a2 + 80);
    v15 = *(&v55 + 1);
    if (*(&v55 + 1))
    {
      v16 = v55;
    }

    else
    {
      v16 = 0;
    }

    if (!*(&v55 + 1))
    {
      v15 = 0xE000000000000000;
    }

    v51 = v15;
    v52 = v16;
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    v20 = *(a2 + 40);
    v19 = *(a2 + 48);
    v21 = *(a2 + 72);
    v48 = *(a2 + 64);
    v56 = *(a2 + 96);
    sub_1C8ED3B98(&v55, v54);
    v58.value._object = v21;
    v22._countAndFlagsBits = v17;
    v22._object = v18;
    v23.value._countAndFlagsBits = v20;
    v23.value._object = v19;
    v24.value._countAndFlagsBits = v52;
    v24.value._object = v51;
    v58.value._countAndFlagsBits = v48;
    v25 = ToolDatabase.Accessor.addContainerMetadata(containerId:bundleVersion:containerType:deviceId:teamId:origin:)(v22, v23, &v57, v24, v58, &v56);
    v13 = v26;
    if (v26)
    {
      v28 = v49;
      v27 = v50;
    }

    else
    {
      v29 = v25;

      v30 = sub_1C906206C();
      v32 = v31;
      v33._countAndFlagsBits = v30;
      v33._object = v32;
      ToolDatabase.Accessor.addContainerMetadataLocalization(containerId:locale:name:)(v29, v33, *a2);
      v13 = v34;
      v28 = v49;
      v27 = v50;
      if (!v34)
      {
        v52 = v29;

        v35 = 0;
        v36 = *(a2 + 16);
        v51 = *(v36 + 16);
        for (i = (v36 + 40); ; i += 2)
        {
          if (v51 == v35)
          {
            result = (*(v49 + 8))(v12, v50);
            *v53 = v52;
            return result;
          }

          v38 = *(i - 1);
          v39 = *i;
          v40 = sub_1C906206C();
          v42 = v41;

          v43._countAndFlagsBits = v40;
          v43._object = v42;
          v44._countAndFlagsBits = v38;
          v44._object = v39;
          ToolDatabase.Accessor.addContainerMetadataSynonym(containerId:locale:synonym:order:)(v52, v43, v44, v35);
          v13 = v45;
          if (v45)
          {
            break;
          }

          ++v35;
        }

        (*(v49 + 8))(v12, v50);

        goto LABEL_12;
      }
    }

    (*(v28 + 8))(v12, v27);
LABEL_12:

    a3 = v47;
    goto LABEL_13;
  }

  result = (*(v9 + 8))(v12, v8);
LABEL_13:
  *a3 = v13;
  return result;
}

void ToolDatabase.Accessor.insert(type:sourceContainer:locale:localizationUsage:)(void *__src@<X0>, uint64_t a2@<X2>, unsigned __int8 *a3@<X3>, void *a4@<X8>)
{
  memcpy(__dst, __src, 0x61uLL);
  v8 = OUTLINED_FUNCTION_8_34(v11);
  v9 = *a3;
  v10 = MEMORY[0x1CCA82A80](v8);
  sub_1C8ED151C(v4, a2, v9, v11, __dst, &v13, a4);
  objc_autoreleasePoolPop(v10);
}

void sub_1C8ED151C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v215 = a6;
  v211 = a5;
  LODWORD(v214) = a3;
  v194 = a7;
  v11 = *a4;
  v209 = *(a4 + 1);
  v210 = v11;
  v12 = *(a4 + 4);
  v205 = *(a4 + 5);
  v206 = v12;
  v13 = *(a4 + 6);
  v203 = *(a4 + 7);
  v204 = v13;
  v14 = *(a4 + 4);
  v207 = *(a4 + 5);
  v208 = v14;
  LODWORD(v202) = a4[96];
  v15 = sub_1C9063C4C();
  v16 = *(v15 - 8);
  v192 = v15;
  v193 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v191 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v212 = &v171 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v201 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v200 = &v171 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v199 = &v171 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v198 = &v171 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v197 = &v171 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v196 = (&v171 - v34);
  v195 = type metadata accessor for EnumerationCaseDefinition(0);
  v190 = *(v195 - 8);
  v35 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v213 = (&v171 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_1C90620BC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v171 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v171 - v43;
  LOBYTE(v222[0]) = 0;
  sub_1C8EDAD68(a2, v222, &v171 - v43);
  LOBYTE(v222[0]) = v214 & 1;
  v45 = sub_1C8EDB288(v44, v222);
  sub_1C8ED101C();
  if (v7)
  {
    (*(v38 + 8))(v44, v37);

    *v215 = v7;
  }

  else
  {
    v186 = v41;
    v187 = v38;
    v214 = v44;
    v188 = v45;
    v189 = v37;
    memcpy(v222, a4, 0x61uLL);
    ToolDatabase.Accessor.fetchContainerRecordId(_:)(v222, v46, v47, v48, v49, v50, v51, v52, v171, v172, v173, v174, v175, v176, v177._rawValue, v178, v179, v180, v181, v182);
    v53 = v189;
    if (v54)
    {

      v55 = v203 & 7;
      v56 = v202 & 3 | 0x80;
      sub_1C8D5D868();
      v57 = swift_allocError();
      v58 = v209;
      *v59 = v210;
      *(v59 + 16) = v58;
      v60 = v205;
      *(v59 + 32) = v206;
      *(v59 + 40) = v60;
      *(v59 + 48) = v204;
      *(v59 + 56) = v55;
      v61 = v207;
      *(v59 + 64) = v208;
      *(v59 + 80) = v61;
      *(v59 + 96) = v56;
      swift_willThrow();
      sub_1C8CC1340(a4, v222);
      (*(v187 + 8))(v214, v53);
      *v215 = v57;
    }

    else
    {
      v62 = a1;
      v63 = v211;
      memcpy(v222, v211, 0x61uLL);
      ToolDatabase.Accessor.addType(_:sourceContainerId:)();
      v66 = v63[96];
      v67 = v63;
      if (v66 == 3)
      {
        v68 = *(v63 + 24);
        v223[0] = *(v63 + 8);
        v223[1] = v68;
        v223[2] = *(v63 + 40);
        v224 = *(v63 + 7);
        v69 = *(v63 + 24);
        v219 = *(v63 + 8);
        v220 = v69;
        v221[0] = *(v63 + 40);
        *&v221[1] = *(v63 + 7);
        sub_1C8D90D54(v63, v222);
        sub_1C8D3A7FC(v223, v222);
        ToolDatabase.Accessor.addPredicateTemplates(_:typeId:)();
        v70 = v194;
        sub_1C8D90DB0(v67);
        v222[0] = v219;
        v222[1] = v220;
        v222[2] = v221[0];
        *&v222[3] = *&v221[1];
        sub_1C8D3ABC4(v222);

LABEL_11:
        (*(v187 + 8))(v214, v53);
        memcpy(v222, v67, 0x61uLL);
        v76 = v70;
LABEL_12:
        TypeDefinition.typeIdentifier.getter(v76);
      }

      else
      {
        v72 = *(v63 + 3);
        v71 = *(v63 + 4);
        v73 = (v63 + 24);
        v74 = *(v63 + 6);
        v178 = *(v63 + 5);
        v176 = v72;
        v177._rawValue = v74;
        v175 = *(v63 + 7);
        v70 = v194;
        *&v209 = v65;
        v75 = v213;
        switch(v66)
        {
          case 1:
            *&v208 = v64;
            v77 = v175;
            v172 = v73;
            v173 = v176;
            v176 = v71;
            rawValue = v177._rawValue;
            v175 = v178;
            v177._rawValue = v77;
            v178 = rawValue;
            goto LABEL_16;
          case 2:
            *&v208 = v64;
            v172 = v73;
            v173 = v178;
            v79 = *(v211 + 9);
            v178 = *(v211 + 8);
            v176 = v177._rawValue;
            v177._rawValue = v79;
            goto LABEL_16;
          case 3:
            goto LABEL_79;
          case 4:
            *&v208 = v64;
            v80 = *(v211 + 2);
            v172 = v73;
            v173 = v80;
            v175 = v71;
LABEL_16:
            v179 = 0;
            v81 = v188;
            v182 = (v187 + 8);
            v174 = *(v188 + 16);
            v82 = v214;
            *&v207 = v62;
            v83 = v186;
            break;
          default:

            v67 = v211;
            goto LABEL_11;
        }

        while (1)
        {
LABEL_17:
          if (v179 == v174)
          {

            v141 = MEMORY[0x1E69E7CC0];
            v142 = v172;
            switch(v211[96])
            {
              case 1:
                v142 = (v211 + 64);
                goto LABEL_54;
              case 2:
LABEL_54:
                v141 = *v142;

                break;
              default:
                break;
            }

            v143 = 0;
            v144 = *(v141 + 16);
            for (i = 32; ; i += 64)
            {
              v146 = v209;
              if (v144 == v143)
              {
                break;
              }

              if (v143 >= *(v141 + 16))
              {
                goto LABEL_77;
              }

              v147 = *(v141 + i);
              v148 = *(v141 + i + 16);
              v149 = *(v141 + i + 32);
              *(&v222[2] + 9) = *(v141 + i + 41);
              v222[1] = v148;
              v222[2] = v149;
              v222[0] = v147;
              v150 = *(v141 + i + 16);
              v219 = *(v141 + i);
              v220 = v150;
              v221[0] = *(v141 + i + 32);
              *(v221 + 9) = *(v141 + i + 41);
              sub_1C8D070A4(v222, &v216);
              ToolDatabase.Accessor.addSystemTypeProtocol(typeId:systemTypeProtocol:)();
              ++v143;
              sub_1C8D07100(v222);
            }

            if (v211[96] == 1)
            {
              v151 = *(v211 + 9);
            }

            else
            {
              v151 = MEMORY[0x1E69E7CC0];
            }

            v152 = v192;
            v153 = 0;
            v154 = *(v151 + 16);
            v205 = v151 + 32;
            v206 = v154;
            v212 = v193 + 8;
            v213 = (v193 + 16);
            v204 = v151;
            v155 = v193;
            while (1)
            {
LABEL_64:
              if (v153 == v206)
              {
                (*v182)(v214, v189);

                memcpy(v222, v211, 0x61uLL);
                v76 = v194;
                goto LABEL_12;
              }

              if (v153 >= *(v151 + 16))
              {
                goto LABEL_79;
              }

              v156 = v205 + 16 * v153;
              v157 = *(v156 + 8);
              *&v222[0] = *v156;
              BYTE8(v222[0]) = v157;
              *&v210 = *&v222[0];

              ToolDatabase.Accessor.addTypeCoercion(typeId:coercionDefinition:)(v208, v146, v222);
              ++v153;
              if (v157)
              {
                break;
              }

              v146 = v209;
            }

            v203 = v153;
            *&v222[0] = v210;
            BYTE8(v222[0]) = v157;
            CoercionDefinition.wrappedUTTypes.getter();
            v159 = v158;
            v160 = 0;
            v161 = *(v158 + 16);
            while (1)
            {
              v146 = v209;
              if (v161 == v160)
              {

                v153 = v203;
                v151 = v204;
                goto LABEL_64;
              }

              if (v160 >= *(v159 + 16))
              {
                goto LABEL_78;
              }

              v162 = v191;
              (*(v155 + 16))(v191, v159 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v160, v152);
              v163 = sub_1C9063C1C();
              v164 = v152;
              v166 = v165;
              (*(v155 + 8))(v162, v164);
              v167._countAndFlagsBits = v208;
              v167._object = v209;
              v168._countAndFlagsBits = v163;
              v168._object = v166;
              ToolDatabase.Accessor.addUTTypeCoercion(typeId:coercionIdentifier:)(v167, v168);
              v89 = v169;
              if (v169)
              {
                break;
              }

              ++v160;
              v152 = v192;
            }

LABEL_50:

            (*v182)(v214, v189);
LABEL_6:
            *v215 = v89;
            return;
          }

          if (v179 >= *(v81 + 16))
          {
            break;
          }

          v227._countAndFlagsBits = sub_1C906206C();
          v227._object = v84;
          v85._countAndFlagsBits = v208;
          v85._object = v209;
          v86._countAndFlagsBits = v173;
          v87.value._countAndFlagsBits = v175;
          v86._object = v176;
          v87.value._object = v178;
          ToolDatabase.Accessor.addTypeDisplayRepresentation(typeId:name:numericFormat:synonyms:locale:)(v85, v86, v87, v177, v227);
          v89 = v88;
          if (v88)
          {

            (*v182)(v82, v189);
            goto LABEL_6;
          }

          ++v179;

          v90 = *(v211 + 1);
          v91 = v211[96];
          if (v91 == 2)
          {
            v226 = *(v211 + 1);
            v81 = v188;
            v108 = v189;
            if (*(v90 + 16))
            {
              v184 = *(v90 + 16);
              v109 = (v90 + ((*(v190 + 80) + 32) & ~*(v190 + 80)));
              v110 = v190;
              sub_1C8D90D54(v211, v222);
              sub_1C8DFBCF4(&v226, v222, &qword_1EC317DE8, &qword_1C9090C08);
              v180 = *(v110 + 72);
              while (1)
              {
                v206 = 0;
                v183 = v109;
                sub_1C8ED3A88(v109, v75, type metadata accessor for EnumerationCaseDefinition);
                _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
                v203 = sub_1C906206C();
                v205 = v111;
                v181 = *v182;
                v181(v83, v108);
                v112 = v75[1];
                v202 = *v75;
                v187 = v112;
                v113 = v196;
                *&v210 = *(v195 + 20);
                sub_1C8DFBCF4(v75 + v210, v196, &qword_1EC312788, &unk_1C906A3A0);
                v114 = type metadata accessor for DisplayRepresentation(0);
                if (__swift_getEnumTagSinglePayload(v113, 1, v114) == 1)
                {
                  sub_1C8D16D78(v113, &qword_1EC312788, &unk_1C906A3A0);
                  v185 = 0;
                  v115 = 0;
                }

                else
                {
                  v115 = v113[1];
                  v185 = *v113;

                  sub_1C8ED3AF8(v113, type metadata accessor for DisplayRepresentation);
                }

                v116 = v199;
                v117 = v75 + v210;
                v118 = v197;
                sub_1C8DFBCF4(v117, v197, &qword_1EC312788, &unk_1C906A3A0);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v118, 1, v114);
                v204 = v115;
                if (EnumTagSinglePayload == 1)
                {
                  sub_1C8D16D78(v118, &qword_1EC312788, &unk_1C906A3A0);
                  v120 = 0;
                  v121 = 0;
                  v122 = -1;
                }

                else
                {
                  v123 = v118;
                  v120 = *(v118 + 16);
                  v121 = *(v118 + 24);
                  v122 = *(v123 + 32);
                  sub_1C8CD3AA0(v120, v121, v122);
                  sub_1C8ED3AF8(v123, type metadata accessor for DisplayRepresentation);
                }

                *&v219 = v120;
                *(&v219 + 1) = v121;
                LOBYTE(v220) = v122;
                v124 = v198;
                sub_1C8DFBCF4(v213 + v210, v198, &qword_1EC312788, &unk_1C906A3A0);
                if (__swift_getEnumTagSinglePayload(v124, 1, v114) == 1)
                {
                  sub_1C8D16D78(v124, &qword_1EC312788, &unk_1C906A3A0);
                  v125 = 0;
                  v126 = 0;
                  v127 = -1;
                }

                else
                {
                  v125 = *(v124 + 40);
                  v126 = *(v124 + 48);
                  v127 = *(v124 + 56);
                  sub_1C8CD3AA0(v125, v126, v127);
                  sub_1C8ED3AF8(v124, type metadata accessor for DisplayRepresentation);
                }

                v216 = v125;
                v217 = v126;
                v218 = v127;
                v128 = v213;
                sub_1C8DFBCF4(v213 + v210, v116, &qword_1EC312788, &unk_1C906A3A0);
                if (__swift_getEnumTagSinglePayload(v116, 1, v114) == 1)
                {
                  sub_1C8D16D78(v116, &qword_1EC312788, &unk_1C906A3A0);
                  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
                  __swift_storeEnumTagSinglePayload(v212, 1, 1, v129);
                }

                else
                {
                  sub_1C8DFBCF4(v116 + v114[7], v212, &qword_1EC312528, &unk_1C9066960);
                  sub_1C8ED3AF8(v116, type metadata accessor for DisplayRepresentation);
                }

                v130 = v200;
                sub_1C8DFBCF4(v128 + v210, v200, &qword_1EC312788, &unk_1C906A3A0);
                if (__swift_getEnumTagSinglePayload(v130, 1, v114) == 1)
                {
                  sub_1C8D16D78(v130, &qword_1EC312788, &unk_1C906A3A0);
                  v131 = 0;
                  v132 = 0;
                  v133 = 0;
                  v134 = 0;
                }

                else
                {
                  v135 = (v130 + v114[8]);
                  v131 = *v135;
                  v132 = v135[1];
                  v133 = v135[2];
                  v134 = v135[3];
                  sub_1C8CE9E30(*v135, v132, v133, v134);
                  sub_1C8ED3AF8(v130, type metadata accessor for DisplayRepresentation);
                }

                v136 = v205;
                *&v222[0] = v131;
                *(&v222[0] + 1) = v132;
                *&v222[1] = v133;
                *(&v222[1] + 1) = v134;
                v137 = v201;
                sub_1C8DFBCF4(v213 + v210, v201, &qword_1EC312788, &unk_1C906A3A0);
                if (__swift_getEnumTagSinglePayload(v137, 1, v114) == 1)
                {
                  sub_1C8D16D78(v137, &qword_1EC312788, &unk_1C906A3A0);
                  v138 = MEMORY[0x1E69E7CC0];
                }

                else
                {
                  v138 = *(v137 + v114[9]);

                  sub_1C8ED3AF8(v137, type metadata accessor for DisplayRepresentation);
                }

                v139 = v206;
                v140 = v212;
                v83 = v186;
                ToolDatabase.Accessor.addEnumerationCase(typeId:locale:id:title:subtitle:altText:image:snippetPluginModel:synonyms:)(v208, v209, v203, v136, v202, v187, v185, v204, &v219, &v216, v212, v222, v138, v170, v171, v172, v173, v174, v175, v176, v177._rawValue, v178, v179, v180, v181);
                v89 = v139;
                if (v139)
                {
                  break;
                }

                sub_1C8CF6A1C(*&v222[0], *(&v222[0] + 1), *&v222[1], *(&v222[1] + 1));
                sub_1C8D16D78(v140, &qword_1EC312528, &unk_1C9066960);
                sub_1C8CE08AC(v216, v217, v218);
                sub_1C8CE08AC(v219, *(&v219 + 1), v220);
                v75 = v213;
                sub_1C8ED3AF8(v213, type metadata accessor for EnumerationCaseDefinition);
                v109 = v180 + v183;
                --v184;
                v108 = v189;
                if (!v184)
                {
                  sub_1C8D90DB0(v211);
                  sub_1C8D16D78(&v226, &qword_1EC317DE8, &qword_1C9090C08);
                  v81 = v188;
                  v82 = v214;
                  goto LABEL_17;
                }
              }

              sub_1C8D16D78(&v226, &qword_1EC317DE8, &qword_1C9090C08);

              sub_1C8D90DB0(v211);
              sub_1C8CF6A1C(*&v222[0], *(&v222[0] + 1), *&v222[1], *(&v222[1] + 1));
              sub_1C8D16D78(v140, &qword_1EC312528, &unk_1C9066960);
              sub_1C8CE08AC(v216, v217, v218);
              sub_1C8CE08AC(v219, *(&v219 + 1), v220);
              v181(v214, v189);
              sub_1C8ED3AF8(v213, type metadata accessor for EnumerationCaseDefinition);
              goto LABEL_6;
            }
          }

          else
          {
            v81 = v188;
            if (v91 == 1)
            {
              v225[0] = *(v211 + 1);
              v92 = *(v90 + 16);
              sub_1C8D90D54(v211, v222);
              sub_1C8DFBCF4(v225, v222, &qword_1EC316C58, &unk_1C909F350);
              v93 = (v90 + 64);
              v94 = v209;
              if (v92)
              {
                while (1)
                {
                  v96 = *(v93 - 4);
                  v95 = *(v93 - 3);
                  v97 = *(v93 - 2);
                  v98 = *(v93 - 1);
                  v204 = v92;
                  v205 = v97;
                  *&v222[0] = *v93;
                  v206 = *&v222[0];
                  swift_retain_n();

                  *&v210 = v98;

                  v99 = v208;
                  v100 = v94;
                  ToolDatabase.Accessor.addEntityProperty(typeId:id:typeInstance:)();

                  v203 = 0;
                  v101._countAndFlagsBits = sub_1C906206C();
                  v103 = v102;
                  v104._countAndFlagsBits = v99;
                  v104._object = v100;
                  v105._countAndFlagsBits = v96;
                  v105._object = v95;
                  v101._object = v103;
                  v106._countAndFlagsBits = v205;
                  v106._object = v210;
                  ToolDatabase.Accessor.addEntityPropertyLocalization(typeId:propertyId:locale:displayName:)(v104, v105, v101, v106);
                  v89 = v107;
                  if (v107)
                  {
                    break;
                  }

                  v93 += 5;
                  v92 = v204 - 1;
                  v75 = v213;
                  v82 = v214;
                  v94 = v209;
                  v83 = v186;
                  if (v204 == 1)
                  {
                    goto LABEL_25;
                  }
                }

                sub_1C8D16D78(v225, &qword_1EC316C58, &unk_1C909F350);

                sub_1C8D90DB0(v211);

                goto LABEL_50;
              }

LABEL_25:
              sub_1C8D16D78(v225, &qword_1EC316C58, &unk_1C909F350);
              sub_1C8D90DB0(v211);
              v81 = v188;
            }
          }
        }

        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
      }
    }
  }
}

uint64_t sub_1C8ED29C0()
{
  error[1] = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    goto LABEL_11;
  }

  v1 = v0;
  error[0] = 0;
  v2 = sub_1C9063EBC();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, error);

  v4 = 2;
  if (v3)
  {
    if (swift_dynamicCast())
    {
      v4 = v10;
    }

    else
    {
      v4 = 2;
    }
  }

  v5 = error[0];
  if (!error[0])
  {

    if (v4 != 2 && (v4 & 1) != 0)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  type metadata accessor for CFError(0);
  sub_1C8ED3B50(&qword_1EC3191E0, type metadata accessor for CFError);
  swift_allocError();
  *v6 = v5;
  swift_willThrow();

LABEL_12:
  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

uint64_t ToolDatabase.insert(tool:locale:source:session:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v4 = *a4;
  v6 = *a3;
  return sub_1C8ECF818();
}

void sub_1C8ED2BA4(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9[0] = a3;
  v9[1] = a4;
  v8 = 0;
  ToolDatabase.Accessor.insert(tool:locale:source:localizationUsage:)(a1, a2, v9, &v8);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t ToolDatabase.insert(container:locale:session:)()
{
  OUTLINED_FUNCTION_4_37();
  memcpy(__dst, v1, sizeof(__dst));
  v2 = *v0;
  return sub_1C8ECF818();
}

void sub_1C8ED2CA0(void *__src@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  ToolDatabase.Accessor.insert(container:locale:)(__src, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t ToolDatabase.insert(type:sourceContainer:session:)()
{
  OUTLINED_FUNCTION_4_37();
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v6, v1, sizeof(v6));
  v3 = *v0;
  return sub_1C8ECF864();
}

uint64_t sub_1C8ED2D8C@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = sub_1C90620BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  v11 = 0;
  ToolDatabase.Accessor.insert(type:sourceContainer:locale:localizationUsage:)(a1, v8, &v11, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t ToolDatabase.insert(tool:locale:source:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v27 = a2;
  v25 = a1;
  v6 = sub_1C90620BC();
  v24 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = type metadata accessor for ToolDefinition(0);
  v10 = OUTLINED_FUNCTION_46(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  v17 = a3[1];
  v26 = v16;
  sub_1C8ED3A88(v25, v15, type metadata accessor for ToolDefinition);
  (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v6);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = (v14 + *(v7 + 80) + v18) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  sub_1C8ED3620(v15, v20 + v18);
  (*(v7 + 32))(v20 + v19, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v26;
  *v21 = v26;
  v21[1] = v17;

  sub_1C8ED3770(v22, v17);
  sub_1C8ECFF34();
}

uint64_t sub_1C8ED30E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  *&v9 = a5;
  *(&v9 + 1) = a6;
  v8 = v6;
  return ToolDatabase.insert(tool:locale:source:session:)(a3, a4, &v9, &v8);
}

uint64_t ToolDatabase.insert(container:locale:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C90620BC();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_34(__src);
  (*(v7 + 16))(&v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v10 = (*(v7 + 80) + 121) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  memcpy((v11 + 24), __src, 0x61uLL);
  (*(v7 + 32))(v11 + v10, &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);

  sub_1C8CC1340(__src, v13);
  sub_1C8ECFF34();
}

uint64_t ToolDatabase.insert(type:sourceContainer:)(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_8_34(v7);
  memcpy(__dst, a2, 0x61uLL);
  v4 = swift_allocObject();
  v4[2] = v2;
  OUTLINED_FUNCTION_8_34(v4 + 3);
  memcpy(v4 + 16, a2, 0x61uLL);

  sub_1C8D90D54(v7, v6);
  sub_1C8CC1340(__dst, v6);
  sub_1C8ECFF8C();
}

uint64_t ToolDatabase.insert(tool:)(uint64_t a1)
{
  v3 = sub_1C90620BC();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_42();
  v10 = xmmword_1C907C300;
  ToolDatabase.insert(tool:locale:source:)(a1, v1, &v10);
  v7 = OUTLINED_FUNCTION_7_36();
  return v8(v7);
}

uint64_t ToolDatabase.insert(container:)(uint64_t a1)
{
  v3 = sub_1C90620BC();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_42();
  ToolDatabase.insert(container:locale:)(a1, v1);
  v7 = OUTLINED_FUNCTION_7_36();
  return v8(v7);
}

uint64_t sub_1C8ED3574@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C8ECFFE4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C8ED3620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDefinition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8ED3684()
{
  v1 = OUTLINED_FUNCTION_5_40();
  v2 = type metadata accessor for ToolDefinition(v1);
  OUTLINED_FUNCTION_46(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1C90620BC();
  OUTLINED_FUNCTION_46(v7);
  v10 = *(v0 + 16);
  v11 = (v0 + ((*(v9 + 64) + ((v4 + v6 + *(v8 + 80)) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = OUTLINED_FUNCTION_6_34();
  return sub_1C8ED30E8(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C8ED3770(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_1C8ED3784()
{
  OUTLINED_FUNCTION_5_40();
  v1 = *(*(sub_1C90620BC() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_6_34();
  return sub_1C8ED329C(v3);
}

uint64_t sub_1C8ED37F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  switch(a13)
  {
    case 1:

      goto LABEL_8;
    case 2:

      goto LABEL_10;
    case 3:

      sub_1C8D16E14(a4, a5);
      sub_1C8CD0FB0(a8);
      goto LABEL_10;
    case 4:

LABEL_8:

LABEL_10:

      break;
    case 5:

      break;
    default:
      return result;
  }

  return result;
}

void sub_1C8ED39F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE **a4@<X3>, void (*a5)(id *__return_ptr, uint64_t)@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1C8ECF8B0(a1, a2, a3, *a4, a5, a6);
  if (!v7)
  {
    *a7 = v9;
  }
}

uint64_t sub_1C8ED3A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8ED3AE8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1C8CE7B78(a1, a2);
  }
}

uint64_t sub_1C8ED3AF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8ED3B50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8ED3C38(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8ED3C98()
{
  result = qword_1EDA60A40;
  if (!qword_1EDA60A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A40);
  }

  return result;
}

uint64_t static AssistantTypeSchemaDefinition.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x69uLL);
  memcpy(v104, a2, 0x69uLL);
  memcpy(v105, __src, 0x69uLL);
  v4 = memcpy(v106, a2, sizeof(v106));
  if (__dst[104])
  {
    if (v104[104])
    {
      memcpy(v88, __src, sizeof(v88));
      v12 = memcpy(v87, a2, sizeof(v87));
      v20 = OUTLINED_FUNCTION_5_41(v12, v13, v14, v15, v16, v17, v18, v19, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], v104[0]);
      v28 = OUTLINED_FUNCTION_6_35(v20, v21, v22, v23, v24, v25, v26, v27, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, __dst[0]);
      v36 = OUTLINED_FUNCTION_6_35(v28, v29, v30, v31, v32, v33, v34, v35, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, __dst[0]);
      OUTLINED_FUNCTION_5_41(v36, v37, v38, v39, v40, v41, v42, v43, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], v104[0]);
      v44 = static AssistantEnumerationSchemaDefinition.== infix(_:_:)(v88, v87);
LABEL_7:
      v53 = v44;
      sub_1C8ED3EA4(v105);
      sub_1C8ED3F0C(v104);
      sub_1C8ED3F0C(__dst);
      return v53 & 1;
    }
  }

  else if ((v104[104] & 1) == 0)
  {
    memcpy(v88, __src, sizeof(v88));
    v54 = memcpy(v87, a2, sizeof(v87));
    v62 = OUTLINED_FUNCTION_5_41(v54, v55, v56, v57, v58, v59, v60, v61, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], v104[0]);
    v70 = OUTLINED_FUNCTION_6_35(v62, v63, v64, v65, v66, v67, v68, v69, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, __dst[0]);
    v78 = OUTLINED_FUNCTION_6_35(v70, v71, v72, v73, v74, v75, v76, v77, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, __dst[0]);
    OUTLINED_FUNCTION_5_41(v78, v79, v80, v81, v82, v83, v84, v85, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], v104[0]);
    v44 = static AssistantEntitySchemaDefinition.== infix(_:_:)(v88, v87);
    goto LABEL_7;
  }

  v45 = OUTLINED_FUNCTION_6_35(v4, v5, v6, v7, v8, v9, v10, v11, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, __dst[0]);
  OUTLINED_FUNCTION_5_41(v45, v46, v47, v48, v49, v50, v51, v52, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6], v87[7], v87[8], v87[9], v87[10], v87[11], v87[12], v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], v104[0]);
  sub_1C8ED3EA4(v105);
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_1C8ED3EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191E8, &qword_1C909E7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8ED3F3C(uint64_t a1)
{
  v2 = sub_1C8ED4384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8ED3F78(uint64_t a1)
{
  v2 = sub_1C8ED4384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8ED3FB4(uint64_t a1)
{
  v2 = sub_1C8ED4480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8ED3FF0(uint64_t a1)
{
  v2 = sub_1C8ED4480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8ED402C(uint64_t a1)
{
  v2 = sub_1C8ED43D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8ED4068(uint64_t a1)
{
  v2 = sub_1C8ED43D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssistantTypeSchemaDefinition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191F0, &qword_1C909E7C8);
  v4 = OUTLINED_FUNCTION_11(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191F8, &qword_1C909E7D0);
  v12 = OUTLINED_FUNCTION_11(v11);
  v32 = v13;
  v33 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319200, &qword_1C909E7D8);
  OUTLINED_FUNCTION_11(v36);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v37 = v1;
  v26 = v1[104];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8ED4384();
  sub_1C9064E1C();
  if (v26)
  {
    __dst[0] = 1;
    sub_1C8ED43D8();
    OUTLINED_FUNCTION_8_35();
    memcpy(__dst, v37, sizeof(__dst));
    sub_1C8ED442C();
    v28 = v35;
    sub_1C9064B8C();
    (*(v34 + 8))(v10, v28);
  }

  else
  {
    __dst[0] = 0;
    sub_1C8ED4480();
    OUTLINED_FUNCTION_8_35();
    memcpy(__dst, v37, sizeof(__dst));
    sub_1C8ED44D4();
    v29 = v33;
    sub_1C9064B8C();
    (*(v32 + 8))(v18, v29);
  }

  return (*(v20 + 8))(v25, a1);
}

unint64_t sub_1C8ED4384()
{
  result = qword_1EC319208;
  if (!qword_1EC319208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319208);
  }

  return result;
}

unint64_t sub_1C8ED43D8()
{
  result = qword_1EC319210;
  if (!qword_1EC319210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319210);
  }

  return result;
}

unint64_t sub_1C8ED442C()
{
  result = qword_1EC319218;
  if (!qword_1EC319218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319218);
  }

  return result;
}

unint64_t sub_1C8ED4480()
{
  result = qword_1EC319220;
  if (!qword_1EC319220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319220);
  }

  return result;
}

unint64_t sub_1C8ED44D4()
{
  result = qword_1EC319228;
  if (!qword_1EC319228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319228);
  }

  return result;
}

uint64_t AssistantTypeSchemaDefinition.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[7];
  v13 = v9;
  v14 = v1[9];
  v10 = v1[11];
  v12 = v1[10];
  v15 = v1[8];
  v16 = v1[12];
  if (v1[13])
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9063FBC();
    MEMORY[0x1CCA82830](v5);
    MEMORY[0x1CCA82830](v6);
    MEMORY[0x1CCA82830](v8);
    sub_1C9063FBC();
    sub_1C8D0225C();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    sub_1C9063FBC();
    MEMORY[0x1CCA82830](v5);
    MEMORY[0x1CCA82830](v6);
    MEMORY[0x1CCA82830](v8);
    sub_1C9063FBC();
    sub_1C8D02D7C(a1, v13);
  }

  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v10)
  {
    sub_1C9063FBC();
  }

  return sub_1C8CC1590(a1, v16);
}

uint64_t AssistantTypeSchemaDefinition.hashValue.getter()
{
  sub_1C9064D7C();
  AssistantTypeSchemaDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t AssistantTypeSchemaDefinition.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319230, &qword_1C909E7E0);
  OUTLINED_FUNCTION_11(v55);
  v54 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319238, &qword_1C909E7E8);
  OUTLINED_FUNCTION_11(v7);
  v53 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319240, &unk_1C909E7F0);
  OUTLINED_FUNCTION_11(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v51 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1C8ED4384();
  v24 = v58;
  sub_1C9064DEC();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v51[1] = v13;
  v52 = v16;
  v25 = v56;
  v58 = v21;
  v26 = sub_1C9064A9C();
  result = sub_1C8CB8914(v26, 0);
  if (v29 == v30 >> 1)
  {
    goto LABEL_7;
  }

  if (v29 >= (v30 >> 1))
  {
    __break(1u);
    return result;
  }

  v64 = *(v28 + v29);
  sub_1C8CB891C(v29 + 1);
  v32 = v31;
  v34 = v33;
  swift_unknownObjectRelease();
  if (v32 != v34 >> 1)
  {
LABEL_7:
    v37 = sub_1C90647DC();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v39 = &type metadata for AssistantTypeSchemaDefinition;
    v41 = v58;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v41, v14);
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  if (v64)
  {
    __src[0] = 1;
    sub_1C8ED43D8();
    OUTLINED_FUNCTION_4_38();
    v35 = v25;
    sub_1C8ED4D00();
    v36 = v55;
    sub_1C9064A6C();
    OUTLINED_FUNCTION_3_43(&v62);
    swift_unknownObjectRelease();
    v42 = OUTLINED_FUNCTION_7_37();
    v43(v42, v36);
    v44 = OUTLINED_FUNCTION_1_58();
    v45(v44);
    memcpy(__dst, __src, sizeof(__dst));
    v46 = 1;
    v63 = 1;
    v25 = v35;
  }

  else
  {
    __src[0] = 0;
    sub_1C8ED4480();
    OUTLINED_FUNCTION_4_38();
    sub_1C8ED4D54();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_3_43(v61);
    swift_unknownObjectRelease();
    v47 = OUTLINED_FUNCTION_7_37();
    v48(v47, v7);
    v49 = OUTLINED_FUNCTION_1_58();
    v50(v49);
    memcpy(__dst, __src, sizeof(__dst));
    v46 = 0;
    v63 = 0;
  }

  memcpy(v25, __dst, 0x68uLL);
  v25[104] = v46;
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1C8ED4CC0()
{
  sub_1C9064D7C();
  AssistantTypeSchemaDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

unint64_t sub_1C8ED4D00()
{
  result = qword_1EC319248;
  if (!qword_1EC319248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319248);
  }

  return result;
}

unint64_t sub_1C8ED4D54()
{
  result = qword_1EC319250;
  if (!qword_1EC319250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319250);
  }

  return result;
}

unint64_t sub_1C8ED4DAC()
{
  result = qword_1EC319258;
  if (!qword_1EC319258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319258);
  }

  return result;
}

uint64_t sub_1C8ED4E00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 105))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 104);
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

uint64_t sub_1C8ED4E40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssistantTypeSchemaDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8ED4FA8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8ED5058()
{
  result = qword_1EC319260;
  if (!qword_1EC319260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319260);
  }

  return result;
}

unint64_t sub_1C8ED50B0()
{
  result = qword_1EC319268;
  if (!qword_1EC319268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319268);
  }

  return result;
}

unint64_t sub_1C8ED5108()
{
  result = qword_1EC319270;
  if (!qword_1EC319270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319270);
  }

  return result;
}

unint64_t sub_1C8ED5160()
{
  result = qword_1EC319278;
  if (!qword_1EC319278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319278);
  }

  return result;
}

unint64_t sub_1C8ED51B8()
{
  result = qword_1EC319280;
  if (!qword_1EC319280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319280);
  }

  return result;
}

unint64_t sub_1C8ED5210()
{
  result = qword_1EC319288;
  if (!qword_1EC319288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319288);
  }

  return result;
}

unint64_t sub_1C8ED5268()
{
  result = qword_1EC319290;
  if (!qword_1EC319290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319290);
  }

  return result;
}

unint64_t sub_1C8ED52C0()
{
  result = qword_1EC319298;
  if (!qword_1EC319298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319298);
  }

  return result;
}

unint64_t sub_1C8ED5318()
{
  result = qword_1EC3192A0;
  if (!qword_1EC3192A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3192A0);
  }

  return result;
}

uint64_t sub_1C8ED5370@<X0>(void (*a1)(char *, uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v5 = type metadata accessor for FetchedTool();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319358, &qword_1C909EDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  sub_1C8EE3DD8(v2, &v16 - v11, &qword_1EC319358, &qword_1C909EDB0);
  v13 = 1;
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) != 1)
  {
    sub_1C8EE4050(v12, v8);
    v17(v8, &v18);
    result = sub_1C8EE3FF4(v8, type metadata accessor for FetchedTool);
    if (v3)
    {
      return result;
    }

    v13 = 0;
  }

  v15 = type metadata accessor for ToolDefinition(0);
  return __swift_storeEnumTagSinglePayload(a2, v13, 1, v15);
}

uint64_t sub_1C8ED5580(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = 32;
  v14 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    memcpy(__dst, (a3 + v9), 0x61uLL);
    memcpy(__src, (a3 + v9), 0x61uLL);
    sub_1C8D90D54(__dst, v15);
    v10 = v5(__src);
    if (v3)
    {
      memcpy(v15, __src, 0x61uLL);
      sub_1C8D90DB0(v15);

LABEL_14:

      return v8;
    }

    if (v10)
    {
      memcpy(v15, __src, 0x61uLL);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = *(v8 + 16);
        sub_1C8D09BE4();
        v8 = v18;
      }

      v13 = *(v8 + 16);
      if (v13 >= *(v8 + 24) >> 1)
      {
        sub_1C8D09BE4();
        v8 = v18;
      }

      *(v8 + 16) = v13 + 1;
      result = memcpy((v8 + 104 * v13 + 32), v15, 0x61uLL);
      v5 = v14;
    }

    else
    {
      memcpy(v15, __src, 0x61uLL);
      result = sub_1C8D90DB0(v15);
    }

    v9 += 104;
    ++v6;
  }

  __break(1u);
  return result;
}

void sub_1C8ED5730()
{
  OUTLINED_FUNCTION_196();
  v23 = v2;
  v28 = v3;
  v5 = v4;
  v27 = v6;
  v8 = v7(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_12();
  v24 = v11;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_233_0();
  v13 = 0;
  v14 = *(v5 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v14 == v13)
    {

LABEL_14:
      OUTLINED_FUNCTION_198();
      return;
    }

    if (v13 >= *(v5 + 16))
    {
      break;
    }

    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = *(v9 + 72);
    sub_1C8EE3F9C(v5 + v15 + v16 * v13, v1);
    v17 = v27(v1);
    if (v0)
    {
      sub_1C8EE3FF4(v1, v28);

      goto LABEL_14;
    }

    if (v17)
    {
      sub_1C8EE4050(v1, v24);
      v18 = v25;
      v29 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23(0, *(v25 + 16) + 1, 1);
        v18 = v25;
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v26 = v20 + 1;
        v22 = *(v18 + 16);
        v23(v19 > 1, v20 + 1, 1);
        v21 = v26;
        v20 = v22;
        v18 = v29;
      }

      ++v13;
      *(v18 + 16) = v21;
      v25 = v18;
      sub_1C8EE4050(v24, v18 + v15 + v20 * v16);
    }

    else
    {
      sub_1C8EE3FF4(v1, v28);
      ++v13;
    }
  }

  __break(1u);
}

void ToolDatabase.Accessor.containers(matching:scope:locale:)()
{
  OUTLINED_FUNCTION_196();
  v34 = v2;
  v3 = OUTLINED_FUNCTION_58_9();
  v4 = OUTLINED_FUNCTION_11(v3);
  v32 = v5;
  v33 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v31 = v8;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v16 = v1[4];
  v17 = v1[5];
  v29 = *v0;
  v30 = v12;
  v18 = *(v0 + 8);
  OUTLINED_FUNCTION_77_5();
  sub_1C8EDAD68(v34, v19, v11);
  v37 = v12;
  v38 = v13;
  v39 = v14;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  v35 = v29;
  v20 = v32;
  v36 = v18;
  v21 = *(v32 + 16);
  v22 = v31;
  v34 = v11;
  v23 = v11;
  v24 = v33;
  v21(v31, v23);
  Request = type metadata accessor for ContainerDefinitionQueryRequest();
  OUTLINED_FUNCTION_171(Request);

  v26 = OUTLINED_FUNCTION_70_4();
  sub_1C8EE4790(v26, v27, v22);
  sub_1C8EDDC74();
  OUTLINED_FUNCTION_53_11();
  (*(v20 + 8))(v34, v24);

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_198();
}