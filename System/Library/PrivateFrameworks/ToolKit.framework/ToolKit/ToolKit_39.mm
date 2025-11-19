uint64_t sub_1C8FEED60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312690, &qword_1C9066A70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoPluginModelData(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoDisplayRepresentation(0) + 36);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312690, &qword_1C9066A70);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31D150, type metadata accessor for ToolKitProtoPluginModelData);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoPluginModelData);
}

void static ToolKitProtoDisplayRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v6 = v5;
  v105 = type metadata accessor for ToolKitProtoPluginModelData(0);
  v7 = OUTLINED_FUNCTION_13_1(v105);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v102 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312690, &qword_1C9066A70);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_369_0(v15);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C760, &qword_1C90AC0F8);
  OUTLINED_FUNCTION_13_1(v104);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_16_5();
  v109 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(v19);
  v20 = OUTLINED_FUNCTION_13_1(v109);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_51_15();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A8, &unk_1C9074CA0);
  OUTLINED_FUNCTION_9(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_314_2(v27);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C768, &qword_1C90AC100);
  OUTLINED_FUNCTION_13_1(v108);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_134_3(v31);
  v112 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  v32 = OUTLINED_FUNCTION_13_1(v112);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312698, &qword_1C9066A78);
  OUTLINED_FUNCTION_9(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_120_7(v40, v100);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C770, &qword_1C90AC108);
  OUTLINED_FUNCTION_13_1(v111);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15_0();
  v44 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  v45 = OUTLINED_FUNCTION_13_1(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_15();
  v50 = v49 - v48;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A0, &unk_1C9066A80);
  OUTLINED_FUNCTION_9(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_72();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C778, &qword_1C90AC110);
  OUTLINED_FUNCTION_13_1(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_142();
  v59 = *v6 == *v4 && v6[1] == v4[1];
  if (!v59 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_37;
  }

  v101 = v2;
  v60 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v61 = *(v60 + 24);
  v62 = *(v55 + 48);
  v106 = v60;
  v107 = v6;
  sub_1C8D63FCC();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v0);
  if (v59)
  {
    OUTLINED_FUNCTION_54_15(v0 + v62);
    if (v59)
    {
      sub_1C8D16D78(v0, &qword_1EC3126A0, &unk_1C9066A80);
      goto LABEL_16;
    }

LABEL_14:
    v64 = &qword_1EC31C778;
    v65 = &qword_1C90AC110;
    v66 = v0;
LABEL_36:
    sub_1C8D16D78(v66, v64, v65);
    goto LABEL_37;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v0 + v62);
  if (v63)
  {
    OUTLINED_FUNCTION_313_2();
    goto LABEL_14;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_288();
  static ToolKitProtoDisplayRepresentation.Subtitle.== infix(_:_:)();
  v68 = v67;
  sub_1C8CD20B4(v50, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  v69 = OUTLINED_FUNCTION_119();
  sub_1C8CD20B4(v69, v70);
  sub_1C8D16D78(v0, &qword_1EC3126A0, &unk_1C9066A80);
  if ((v68 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_16:
  v71 = v106[7];
  v72 = *(v111 + 48);
  OUTLINED_FUNCTION_193_5();
  OUTLINED_FUNCTION_202_5();
  v73 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_65_13(v73, v74);
  if (v59)
  {
    OUTLINED_FUNCTION_34_17(v1 + v72);
    if (v59)
    {
      sub_1C8D16D78(v1, &qword_1EC312698, &qword_1C9066A78);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v1 + v72);
  if (v75)
  {
    OUTLINED_FUNCTION_313_2();
LABEL_24:
    v64 = &qword_1EC31C770;
    v65 = &qword_1C90AC108;
    v66 = v1;
    goto LABEL_36;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_100();
  static ToolKitProtoDisplayRepresentation.AltText.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v76 = OUTLINED_FUNCTION_93();
  sub_1C8CD20B4(v76, v77);
  sub_1C8D16D78(v1, &qword_1EC312698, &qword_1C9066A78);
  if ((&qword_1C9066A78 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  v78 = v106[8];
  v79 = *(v108 + 48);
  v80 = v110;
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_65_13(v110, 1);
  if (v59)
  {
    OUTLINED_FUNCTION_34_17(v110 + v79);
    if (v59)
    {
      sub_1C8D16D78(v110, &qword_1EC3126A8, &unk_1C9074CA0);
      goto LABEL_40;
    }

LABEL_34:
    v64 = &qword_1EC31C768;
    v65 = &qword_1C90AC100;
LABEL_35:
    v66 = v80;
    goto LABEL_36;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v110 + v79);
  if (v81)
  {
    OUTLINED_FUNCTION_313_2();
    goto LABEL_34;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_100();
  static ToolKitProtoDisplayRepresentation.Image.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v83 = OUTLINED_FUNCTION_93();
  sub_1C8CD20B4(v83, v84);
  sub_1C8D16D78(v110, &qword_1EC3126A8, &unk_1C9074CA0);
  if ((&unk_1C9074CA0 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_40:
  sub_1C8CEB10C(v107[2], v4[2]);
  if ((v85 & 1) == 0)
  {
    goto LABEL_37;
  }

  v86 = v106[9];
  v87 = *(v104 + 48);
  v80 = v101;
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_65_13(v101, 1);
  if (v59)
  {
    OUTLINED_FUNCTION_34_17(v101 + v87);
    if (v59)
    {
      sub_1C8D16D78(v101, &qword_1EC312690, &qword_1C9066A70);
LABEL_46:
      v88 = v106[10];
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v89, v90);
      v82 = sub_1C9063EAC();
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v101 + v87);
  if (v91)
  {
    OUTLINED_FUNCTION_313_2();
LABEL_50:
    v64 = &qword_1EC31C760;
    v65 = &qword_1C90AC0F8;
    goto LABEL_35;
  }

  sub_1C900BE74();
  if ((MEMORY[0x1CCA7F9A0](*v103, v103[1], *v102, v102[1]) & 1) == 0 || (v103[2] == v102[2] ? (v92 = v103[3] == v102[3]) : (v92 = 0), !v92 && (sub_1C9064C2C() & 1) == 0))
  {
    sub_1C8CD20B4(v102, type metadata accessor for ToolKitProtoPluginModelData);
    v98 = OUTLINED_FUNCTION_93();
    sub_1C8CD20B4(v98, v99);
    v64 = &qword_1EC312690;
    v65 = &qword_1C9066A70;
    v66 = v101;
    goto LABEL_36;
  }

  v93 = *(v105 + 24);
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v94, v95);
  OUTLINED_FUNCTION_256_1();
  LOBYTE(v93) = OUTLINED_FUNCTION_358_1();
  sub_1C8CD20B4(v102, type metadata accessor for ToolKitProtoPluginModelData);
  v96 = OUTLINED_FUNCTION_119();
  sub_1C8CD20B4(v96, v97);
  sub_1C8D16D78(v101, &qword_1EC312690, &qword_1C9066A70);
  if (v93)
  {
    goto LABEL_46;
  }

LABEL_37:
  v82 = 0;
LABEL_38:
  OUTLINED_FUNCTION_50_0(v82);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FEF8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D370, type metadata accessor for ToolKitProtoDisplayRepresentation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FEF94C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FEF9BC()
{
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);

  return sub_1C9063ABC();
}

void sub_1C8FEFB2C()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_152_5();
  v2 = *v0;
  v3 = v0[1];
  v5 = v4;
  switch(v3 >> 62)
  {
    case 1uLL:
      v6 = v2;
      v7 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);
LABEL_6:
      if (v6 != v7)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_23_29();
      sub_1C9063B3C();
      if (!v1)
      {
LABEL_8:
        v8 = *(v5(0) + 20);
        OUTLINED_FUNCTION_13_23();
      }

      OUTLINED_FUNCTION_341_2();
      return;
  }
}

uint64_t sub_1C8FEFC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D368, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FEFCD4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FEFD44()
{
  sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FEFE14()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BE10);
  __swift_project_value_buffer(v0, qword_1EC31BE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lazy";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "static";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoDisplayRepresentation.DisplayValue.decodeMessage<A>(decoder:)()
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
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FF063C(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FF0138(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FF00D0();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8FF0138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D828, &qword_1C90BBC18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0) + 20);
  v32 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312728, &qword_1C9066AE0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  v25 = v36;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v34;
  sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
  v30 = v31;
  v29 = v32;
  sub_1C8D16D78(v32 + v31, &qword_1EC312728, &qword_1C9066AE0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

uint64_t sub_1C8FF063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D850, &qword_1C90BBC38);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31 - v23;
  __swift_storeEnumTagSinglePayload(&v31 - v23, 1, 1, v5);
  v31 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0) + 20);
  v32 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v34 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312728, &qword_1C9066AE0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D850, &qword_1C90BBC38);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D1A0, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);
  v25 = v36;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D850, &qword_1C90BBC38);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D850, &qword_1C90BBC38);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D850, &qword_1C90BBC38);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v34;
  sub_1C8D16D78(v24, &qword_1EC31D850, &qword_1C90BBC38);
  v30 = v31;
  v29 = v32;
  sub_1C8D16D78(v32 + v31, &qword_1EC312728, &qword_1C9066AE0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29 + v30, 0, 1, v28);
}

void ToolKitProtoDisplayRepresentation.DisplayValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_4_36();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_251();
  if (!*v0 || (v22 = *v0, sub_1C8DC0524(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
  {
    v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0);
    v8 = *(v7 + 20);
    sub_1C8D63FCC();
    v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
    v10 = OUTLINED_FUNCTION_19_1();
    if (__swift_getEnumTagSinglePayload(v10, v11, v9) == 1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_245();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = OUTLINED_FUNCTION_2_55();
      sub_1C8FF0E90(v12, v13, v14, v15);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_2_55();
      sub_1C8FF0C7C(v16, v17, v18, v19);
    }

    OUTLINED_FUNCTION_255_2();
    sub_1C8CD20B4(v2, v20);
    if (!v1)
    {
LABEL_8:
      v21 = *(v7 + 24);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FF0C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0) + 20);
  sub_1C8D63FCC();
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC312728, &qword_1C9066AE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF0E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0) + 20);
  sub_1C8D63FCC();
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC312728, &qword_1C9066AE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D1A0, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoDisplayRepresentation.DisplayValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind(v2);
  v4 = OUTLINED_FUNCTION_39_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C790, &qword_1C90AC118);
  OUTLINED_FUNCTION_44_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_154_5();
  if (!v16)
  {
    goto LABEL_12;
  }

  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue(0);
  OUTLINED_FUNCTION_155_4(v15);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v16)
  {
    OUTLINED_FUNCTION_24_28();
    if (v16)
    {
      sub_1C8D16D78(v0, &qword_1EC312728, &qword_1C9066AE0);
LABEL_15:
      OUTLINED_FUNCTION_261_1();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v25, v26);
      v18 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v16)
  {
    OUTLINED_FUNCTION_255_2();
    sub_1C8CD20B4(v1, v17);
LABEL_11:
    sub_1C8D16D78(v0, &qword_1EC31C790, &qword_1C90AC118);
    goto LABEL_12;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoDisplayRepresentation.ToolKitProtoDisplayValueKind.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v21, v22);
  v23 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v23, v24);
  sub_1C8D16D78(v0, &qword_1EC312728, &qword_1C9066AE0);
  if (v20)
  {
    goto LABEL_15;
  }

LABEL_12:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v18);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FF1338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D360, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF13B8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC312768, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF1428()
{
  sub_1C8CD1B00(&qword_1EC312768, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF14A8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BE28);
  __swift_project_value_buffer(v0, qword_1EC31BE28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DisplayValueEnumImage";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DisplayValueEnumSubtitle";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DisplayValueEnumAltText";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF16F4()
{
  if (qword_1EC311F98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BE00;
  v2 = *algn_1EC31BE08;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC31BE40 = v1;
  *algn_1EC31BE48 = v2;
  return result;
}

void ToolKitProtoDisplayRepresentation.DisplayValue.Static.decodeMessage<A>(decoder:)()
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

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8FF18E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312720, &unk_1C9074CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = sub_1C90637AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312720, &unk_1C9074CB0);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_1C8CD1B00(&qword_1EC31D848, MEMORY[0x1E69AAB10]);
  sub_1C9063BCC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1C8FF1B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D358, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF1BEC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D1A0, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF1C5C()
{
  sub_1C8CD1B00(&qword_1EC31D1A0, type metadata accessor for ToolKitProtoDisplayRepresentation.DisplayValue.Static);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF1D24()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BE78);
  __swift_project_value_buffer(v0, qword_1EC31BE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF1F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126C8, &qword_1C9066AA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D828, &qword_1C90BBC18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3126C8, &qword_1C9066AA0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3126C8, &qword_1C9066AA0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FF245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126C8, &qword_1C9066AA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D840, &qword_1C90BBC30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3126C8, &qword_1C9066AA0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D840, &qword_1C90BBC30);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA64218, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D840, &qword_1C90BBC30);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D840, &qword_1C90BBC30);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D840, &qword_1C90BBC30);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D840, &qword_1C90BBC30);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3126C8, &qword_1C9066AA0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoDisplayRepresentation.Subtitle.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v1 = OUTLINED_FUNCTION_245();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_45_21();
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  OUTLINED_FUNCTION_20_31(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_124();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_3_4();
    sub_1C8FF2C34(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3_4();
    sub_1C8FF2A2C(v13, v14, v15, v16);
  }

  v17 = OUTLINED_FUNCTION_273();
  sub_1C8CD20B4(v17, v18);
  if (!v0)
  {
LABEL_6:
    v19 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
    OUTLINED_FUNCTION_52_17(v19);
  }

  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FF2A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126C8, &qword_1C9066AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3126C8, &qword_1C9066AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF2C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126C8, &qword_1C9066AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3126C8, &qword_1C9066AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA64218, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoDisplayRepresentation.Subtitle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_24_2();
  v2 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(v1);
  v3 = OUTLINED_FUNCTION_39_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v6 = OUTLINED_FUNCTION_124();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C7A8, &qword_1C90AC120);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_20(v16);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_16_31();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC3126C8, &qword_1C9066AA0);
LABEL_12:
      v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
      OUTLINED_FUNCTION_63_10(v25);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v26, v27);
      v18 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v17)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C7A8, &qword_1C90AC120);
    goto LABEL_10;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v21, v22);
  v23 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v23, v24);
  sub_1C8D16D78(v0, &qword_1EC3126C8, &qword_1C9066AA0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v18);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FF30B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D350, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF3138(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA641E0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF31A8()
{
  sub_1C8CD1B00(qword_1EDA641E0, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF3228()
{
  if (qword_1EC311FC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BE68;
  v2 = unk_1EC31BE70;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC31BE90 = v1;
  *algn_1EC31BE98 = v2;
  return result;
}

uint64_t sub_1C8FF33D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D348, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF3458(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64218, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF34C8()
{
  sub_1C8CD1B00(qword_1EDA64218, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF358C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BEC8);
  __swift_project_value_buffer(v0, qword_1EC31BEC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF37CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126E0, &qword_1C9066AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D828, &qword_1C90BBC18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3126E0, &qword_1C9066AB0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3126E0, &qword_1C9066AB0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FF3CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126E0, &qword_1C9066AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D838, &qword_1C90BBC28);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3126E0, &qword_1C9066AB0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D838, &qword_1C90BBC28);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC312740, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D838, &qword_1C90BBC28);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D838, &qword_1C90BBC28);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D838, &qword_1C90BBC28);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D838, &qword_1C90BBC28);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3126E0, &qword_1C9066AB0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoDisplayRepresentation.AltText.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v1 = OUTLINED_FUNCTION_245();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_45_21();
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  OUTLINED_FUNCTION_20_31(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_124();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_3_4();
    sub_1C8FF449C(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3_4();
    sub_1C8FF4294(v13, v14, v15, v16);
  }

  v17 = OUTLINED_FUNCTION_273();
  sub_1C8CD20B4(v17, v18);
  if (!v0)
  {
LABEL_6:
    v19 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
    OUTLINED_FUNCTION_52_17(v19);
  }

  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FF4294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126E0, &qword_1C9066AB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3126E0, &qword_1C9066AB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF449C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126E0, &qword_1C9066AB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3126E0, &qword_1C9066AB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC312740, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoDisplayRepresentation.AltText.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_24_2();
  v2 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(v1);
  v3 = OUTLINED_FUNCTION_39_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v6 = OUTLINED_FUNCTION_124();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C7C0, &qword_1C90AC128);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_20(v16);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_16_31();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC3126E0, &qword_1C9066AB0);
LABEL_12:
      v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
      OUTLINED_FUNCTION_63_10(v25);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v26, v27);
      v18 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v17)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C7C0, &qword_1C90AC128);
    goto LABEL_10;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v21, v22);
  v23 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v23, v24);
  sub_1C8D16D78(v0, &qword_1EC3126E0, &qword_1C9066AB0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v18);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FF4920(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D340, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF49A0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC3126F8, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF4A10()
{
  sub_1C8CD1B00(&qword_1EC3126F8, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF4A90()
{
  if (qword_1EC311FE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BEB8;
  v2 = unk_1EC31BEC0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC31BEE0 = v1;
  *algn_1EC31BEE8 = v2;
  return result;
}

uint64_t sub_1C8FF4B70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v9, a2);
  v10 = OUTLINED_FUNCTION_148();
  __swift_project_value_buffer(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C906A950;
  v16 = v15 + v14 + v12[14];
  *(v15 + v14) = a3;
  *v16 = a4;
  *(v16 + 8) = a5;
  *(v16 + 16) = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v18 = sub_1C9063BDC();
  OUTLINED_FUNCTION_13_1(v18);
  (*(v19 + 104))(v16, v17);
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF4D10()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_29_18();
      v0();
    }
  }

  return result;
}

void sub_1C8FF4D94()
{
  OUTLINED_FUNCTION_340_2();
  v2 = v1;
  OUTLINED_FUNCTION_1_6();
  if (!v3 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
  {
    v4 = *(v2(0) + 20);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FF4E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D338, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF4EEC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC312740, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF4F5C()
{
  sub_1C8CD1B00(&qword_1EC312740, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return sub_1C9063ABC();
}

void sub_1C8FF4FFC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8FF5064()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BF18);
  __swift_project_value_buffer(v0, qword_1EC31BF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF52A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126B0, &qword_1C9066A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D828, &qword_1C90BBC18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3126B0, &qword_1C9066A90);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D828, &qword_1C90BBC18);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D828, &qword_1C90BBC18);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3126B0, &qword_1C9066A90);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FF579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126B0, &qword_1C9066A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D830, &qword_1C90BBC20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3126B0, &qword_1C9066A90);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D830, &qword_1C90BBC20);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA64300, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D830, &qword_1C90BBC20);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D830, &qword_1C90BBC20);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D830, &qword_1C90BBC20);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D830, &qword_1C90BBC20);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3126B0, &qword_1C9066A90);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoDisplayRepresentation.Image.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v1 = OUTLINED_FUNCTION_245();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_45_21();
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  OUTLINED_FUNCTION_20_31(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_124();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_3_4();
    sub_1C8FF5F74(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3_4();
    sub_1C8FF5D6C(v13, v14, v15, v16);
  }

  v17 = OUTLINED_FUNCTION_273();
  sub_1C8CD20B4(v17, v18);
  if (!v0)
  {
LABEL_6:
    v19 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
    OUTLINED_FUNCTION_52_17(v19);
  }

  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FF5D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126B0, &qword_1C9066A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3126B0, &qword_1C9066A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D170, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF5F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126B0, &qword_1C9066A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3126B0, &qword_1C9066A90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA64300, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoDisplayRepresentation.Image.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_24_2();
  v2 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(v1);
  v3 = OUTLINED_FUNCTION_39_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v6 = OUTLINED_FUNCTION_124();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C7D8, &qword_1C90AC130);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_20(v16);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_16_31();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC3126B0, &qword_1C9066A90);
LABEL_12:
      v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
      OUTLINED_FUNCTION_63_10(v25);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v26, v27);
      v18 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v17)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C7D8, &qword_1C90AC130);
    goto LABEL_10;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v21, v22);
  v23 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v23, v24);
  sub_1C8D16D78(v0, &qword_1EC3126B0, &qword_1C9066A90);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v18);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FF63F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D330, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF6478(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA642C8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF64E8()
{
  sub_1C8CD1B00(qword_1EDA642C8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF6568()
{
  if (qword_1EC312000 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BF08;
  v2 = unk_1EC31BF10;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC31BF30 = v1;
  *algn_1EC31BF38 = v2;
  return result;
}

uint64_t sub_1C8FF662C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BF40);
  __swift_project_value_buffer(v0, qword_1EC31BF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "file";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoDisplayRepresentation.Image.Static.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_6_44();
        sub_1C8F7677C();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FF6928(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_6_44();
        sub_1C8F768E8();
        break;
    }
  }
}

uint64_t sub_1C8FF6928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312708, &qword_1C9066AC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D820, &qword_1C90BBC10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312708, &qword_1C9066AC8);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D820, &qword_1C90BBC10);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA64340, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D820, &qword_1C90BBC10);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D820, &qword_1C90BBC10);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D820, &qword_1C90BBC10);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D820, &qword_1C90BBC10);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312708, &qword_1C9066AC8);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoDisplayRepresentation.Image.Static.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v2 = OUTLINED_FUNCTION_245();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45_21();
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  OUTLINED_FUNCTION_20_31(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_124();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v12 = OUTLINED_FUNCTION_3_4();
        sub_1C8FF7078(v12, v13, v14, v15);
        OUTLINED_FUNCTION_80_7();
        sub_1C8CD20B4(v1, v16);
        if (v0)
        {
          goto LABEL_11;
        }

        goto LABEL_3;
      }

      OUTLINED_FUNCTION_80_7();
      sub_1C8CD20B4(v1, v18);
      OUTLINED_FUNCTION_3_4();
      sub_1C8FF7280();
    }

    else
    {
      OUTLINED_FUNCTION_80_7();
      sub_1C8CD20B4(v1, v17);
      OUTLINED_FUNCTION_3_4();
      sub_1C8FF6F20();
    }

    if (v0)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  OUTLINED_FUNCTION_52_17(v10);
LABEL_11:
  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FF6F20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312708, &qword_1C9066AC8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC312708, &qword_1C9066AC8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = *v3;
      v5 = v3[1];
      sub_1C9063B3C();
      return sub_1C8CE7B78(v6, v5);
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF7078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312708, &qword_1C9066AC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC312708, &qword_1C9066AC8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA64340, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF7280()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312708, &qword_1C9066AC8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC312708, &qword_1C9066AC8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_1C9063B8C();
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FF745C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D328, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF74DC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64300, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF754C()
{
  sub_1C8CD1B00(qword_1EDA64300, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF75CC()
{
  if (qword_1EC312010 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BF30;
  v2 = *algn_1EC31BF38;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6C6F626D79532ELL, 0xE700000000000000);

  qword_1EC31BF58 = v1;
  unk_1EC31BF60 = v2;
  return result;
}

uint64_t sub_1C8FF7690()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BF68);
  __swift_project_value_buffer(v0, qword_1EC31BF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tintColorData";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "configurationData";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.decodeMessage<A>(decoder:)()
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

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C906396C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v1 || (OUTLINED_FUNCTION_23_29(), result = sub_1C9063B8C(), !v0))
  {
    v3 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8FF79C0(v3);
    if (!v0)
    {
      v4 = OUTLINED_FUNCTION_2_55();
      sub_1C8FF7A54(v4);
      v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
      return OUTLINED_FUNCTION_53_15(v5);
    }
  }

  return result;
}

uint64_t sub_1C8FF79C0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 16);
    sub_1C8CE9144(v2, v1);
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v2, v1);
  }

  return result;
}

uint64_t sub_1C8FF7A54(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 32);
    sub_1C8CE9144(v2, v1);
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v2, v1);
  }

  return result;
}

uint64_t sub_1C8FF7B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D320, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF7BF0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64340, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF7C60()
{
  sub_1C8CD1B00(qword_1EDA64340, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF7CEC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BF80);
  __swift_project_value_buffer(v0, qword_1EC31BF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "direction";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoCoercionDefinition.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8FF7FB8();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8FF7F50();
    }
  }

  return result;
}

uint64_t sub_1C8FF7FB8()
{
  v0 = *(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

void ToolKitProtoCoercionDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (*v0 != 1 || (sub_1C8DC04D0(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
  {
    v2 = OUTLINED_FUNCTION_2_55();
    sub_1C8FF8100(v2, v3, v4, v5);
    if (!v1)
    {
      v6 = *(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 24);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8FF8100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

void static ToolKitProtoCoercionDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoTypeInstance(v2);
  v4 = OUTLINED_FUNCTION_39_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_44_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_154_5();
  if (!v16)
  {
    goto LABEL_12;
  }

  v15 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  OUTLINED_FUNCTION_155_4(v15);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v16)
  {
    OUTLINED_FUNCTION_24_28();
    if (v16)
    {
      sub_1C8D16D78(v0, &qword_1EC312A58, &unk_1C9074CC0);
LABEL_15:
      OUTLINED_FUNCTION_261_1();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v26, v27);
      v18 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v16)
  {
    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v1, v17);
LABEL_11:
    sub_1C8D16D78(v0, &qword_1EC312A60, &unk_1C9068E40);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_48_16();
  sub_1C900BE74();
  v19 = OUTLINED_FUNCTION_398();
  v21 = static ToolKitProtoTypeInstance.== infix(_:_:)(v19, v20);
  v22 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v22, v23);
  v24 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v24, v25);
  sub_1C8D16D78(v0, &qword_1EC312A58, &unk_1C9074CC0);
  if (v21)
  {
    goto LABEL_15;
  }

LABEL_12:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v18);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FF8574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D318, type metadata accessor for ToolKitProtoCoercionDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF85F4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA64AC8, type metadata accessor for ToolKitProtoCoercionDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF8664()
{
  sub_1C8CD1B00(&qword_1EDA64AC8, type metadata accessor for ToolKitProtoCoercionDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF86E4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BF98);
  __swift_project_value_buffer(v0, qword_1EC31BF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoercionDirectionImport";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoercionDirectionExport";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF89B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D310, type metadata accessor for ToolKitProtoTriggerDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF8A38(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D208, type metadata accessor for ToolKitProtoTriggerDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF8AA8()
{
  sub_1C8CD1B00(&qword_1EC31D208, type metadata accessor for ToolKitProtoTriggerDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF8B24()
{
  result = MEMORY[0x1CCA81A90](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_1EC31BFC8 = 0xD000000000000019;
  unk_1EC31BFD0 = 0x80000001C90CD740;
  return result;
}

uint64_t sub_1C8FF8BB4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BFD8);
  __swift_project_value_buffer(v0, qword_1EC31BFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
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
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameters";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "outputType";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "requirements";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "flags";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTriggerDefinition.Version1.decodeMessage<A>(decoder:)()
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
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C9063A0C();
        break;
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 4:
        OUTLINED_FUNCTION_17_34();
        sub_1C8FF9044();
        break;
      case 5:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FF9090();
        break;
      case 6:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FDB440();
        break;
      case 7:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FF9144();
        break;
      default:
        continue;
    }
  }
}

void sub_1C8FF9044()
{
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_31_22();
  v1(v0);
  OUTLINED_FUNCTION_178_4();
  OUTLINED_FUNCTION_84_6();
  sub_1C9063A3C();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8FF9090()
{
  v0 = *(type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0) + 40);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

void ToolKitProtoTriggerDefinition.Version1.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_23_29(), sub_1C9063B8C(), !v0))
  {
    v3 = v1[2];
    v4 = v1[3];
    OUTLINED_FUNCTION_36_21();
    if (!v5 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
    {
      v6 = OUTLINED_FUNCTION_2_55();
      sub_1C8CE3964(v6);
      if (!v0)
      {
        if (*(v1[4] + 16))
        {
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
          OUTLINED_FUNCTION_74_5();
          sub_1C8CD1B00(v7, v8);
          OUTLINED_FUNCTION_227_0();
          OUTLINED_FUNCTION_29_23();
          sub_1C9063BBC();
        }

        v9 = OUTLINED_FUNCTION_2_55();
        sub_1C8FF932C(v9, v10, v11, v12);
        OUTLINED_FUNCTION_366_1();
        if (v13)
        {
          type metadata accessor for ToolKitProtoRuntimeRequirement(0);
          OUTLINED_FUNCTION_71_9();
          sub_1C8CD1B00(v14, v15);
          OUTLINED_FUNCTION_227_0();
          OUTLINED_FUNCTION_29_23();
          sub_1C9063BBC();
        }

        if (*(v1[6] + 16))
        {
          sub_1C8DC047C();
          OUTLINED_FUNCTION_29_23();
          sub_1C9063AEC();
        }

        v16 = *(type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0) + 44);
        OUTLINED_FUNCTION_13_23();
      }
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FF932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0) + 40);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

void static ToolKitProtoTriggerDefinition.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_24_2();
  v6 = type metadata accessor for ToolKitProtoTypeInstance(v5);
  v7 = OUTLINED_FUNCTION_39_19(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_23();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_73();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_44_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_41_19();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_123_6();
  v23 = v20 && v21 == v22;
  if (!v23 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_34;
  }

  v24 = v1[8];
  v25 = v0[8];
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_34;
    }

    v26 = v1[7] == v0[7] && v24 == v25;
    if (!v26 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v25)
  {
LABEL_34:
    v47 = 0;
    goto LABEL_35;
  }

  v27 = v1[4];
  v28 = v0[4];
  sub_1C8CED650();
  if ((v29 & 1) == 0)
  {
    goto LABEL_34;
  }

  v48 = type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
  v30 = *(v48 + 40);
  v31 = *(v4 + 48);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v20)
  {
    OUTLINED_FUNCTION_24_28();
    if (v20)
    {
      sub_1C8D16D78(v2, &qword_1EC312A58, &unk_1C9074CC0);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v32)
  {
    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v3, v33);
LABEL_29:
    sub_1C8D16D78(v2, &qword_1EC312A60, &unk_1C9068E40);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_48_16();
  sub_1C900BE74();
  v34 = OUTLINED_FUNCTION_398();
  v36 = static ToolKitProtoTypeInstance.== infix(_:_:)(v34, v35);
  v37 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v37, v38);
  v39 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v39, v40);
  sub_1C8D16D78(v2, &qword_1EC312A58, &unk_1C9074CC0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  v41 = v1[5];
  v42 = v0[5];
  sub_1C8CED86C();
  if ((v43 & 1) == 0 || (sub_1C8D076F4(v1[6], v0[6]) & 1) == 0)
  {
    goto LABEL_34;
  }

  v44 = *(v48 + 44);
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v45, v46);
  v47 = OUTLINED_FUNCTION_12_28();
LABEL_35:
  OUTLINED_FUNCTION_50_0(v47);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FF9828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D308, type metadata accessor for ToolKitProtoTriggerDefinition.Version1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FF98A8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C850, type metadata accessor for ToolKitProtoTriggerDefinition.Version1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FF9918()
{
  sub_1C8CD1B00(&qword_1EC31C850, type metadata accessor for ToolKitProtoTriggerDefinition.Version1);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FF9998()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BFF0);
  __swift_project_value_buffer(v0, qword_1EC31BFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FlagUnspecified";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FlagIsAllowedToRunAutomatically";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FlagRequiresNotification";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "FlagIsUserInitiated";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF9C38()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C008);
  __swift_project_value_buffer(v0, qword_1EC31C008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FF9E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142F0, &qword_1C9074F30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3142F0, &qword_1C9074F30);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValueResolvableKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3142F0, &qword_1C9074F30);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FFA370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142F0, &qword_1C9074F30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D818, &qword_1C90BBC08);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3142F0, &qword_1C9074F30);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D818, &qword_1C90BBC08);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValueResolvableKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31C960, type metadata accessor for ToolKitProtoTypedValue.ID);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D818, &qword_1C90BBC08);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D818, &qword_1C90BBC08);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D818, &qword_1C90BBC08);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D818, &qword_1C90BBC08);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3142F0, &qword_1C9074F30);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoTypedValueResolvable.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v1 = OUTLINED_FUNCTION_245();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_45_21();
  v7 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  OUTLINED_FUNCTION_20_31(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_124();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_3_4();
    sub_1C8FFAB48(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3_4();
    sub_1C8FFA940(v13, v14, v15, v16);
  }

  v17 = OUTLINED_FUNCTION_273();
  sub_1C8CD20B4(v17, v18);
  if (!v0)
  {
LABEL_6:
    v19 = type metadata accessor for ToolKitProtoTypedValueResolvable(0);
    OUTLINED_FUNCTION_52_17(v19);
  }

  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FFA940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142F0, &qword_1C9074F30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3142F0, &qword_1C9074F30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValueResolvableKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FFAB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142F0, &qword_1C9074F30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3142F0, &qword_1C9074F30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31C960, type metadata accessor for ToolKitProtoTypedValue.ID);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.ID);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValueResolvableKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoTypedValueResolvable.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_24_2();
  v2 = type metadata accessor for ToolKitProtoTypedValueResolvableKind(v1);
  v3 = OUTLINED_FUNCTION_39_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v6 = OUTLINED_FUNCTION_124();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C810, &qword_1C90AC138);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_20(v16);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_16_31();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC3142F0, &qword_1C9074F30);
LABEL_12:
      v25 = type metadata accessor for ToolKitProtoTypedValueResolvable(0);
      OUTLINED_FUNCTION_63_10(v25);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v26, v27);
      v18 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v17)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C810, &qword_1C90AC138);
    goto LABEL_10;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoTypedValueResolvableKind.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v21, v22);
  v23 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v23, v24);
  sub_1C8D16D78(v0, &qword_1EC3142F0, &qword_1C9074F30);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v18);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FFAFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D300, type metadata accessor for ToolKitProtoTypedValueResolvable);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFB068(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC314308, type metadata accessor for ToolKitProtoTypedValueResolvable);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFB0D8()
{
  sub_1C8CD1B00(&qword_1EC314308, type metadata accessor for ToolKitProtoTypedValueResolvable);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFB164()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C020);
  __swift_project_value_buffer(v0, qword_1EC31C020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toolIdentifier";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "target";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameterValues";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "options";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoToolInvocation.decodeMessage<A>(decoder:)()
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
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FFB4CC();
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FFB580();
        break;
      case 5:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FFB678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FFB4CC()
{
  v0 = *(type metadata accessor for ToolKitProtoToolInvocation(0) + 28);
  type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  sub_1C8CD1B00(qword_1EDA64538, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FFB580()
{
  sub_1C90637BC();
  type metadata accessor for ToolKitProtoTypedValueResolvable(0);
  sub_1C8CD1B00(&qword_1EC314308, type metadata accessor for ToolKitProtoTypedValueResolvable);
  sub_1C8CD1B00(&qword_1EC31C818, type metadata accessor for ToolKitProtoTypedValueResolvable);
  return sub_1C90638CC();
}

uint64_t sub_1C8FFB678()
{
  v0 = *(type metadata accessor for ToolKitProtoToolInvocation(0) + 32);
  type metadata accessor for ToolKitProtoToolInvocationOptions(0);
  sub_1C8CD1B00(&qword_1EC31D258, type metadata accessor for ToolKitProtoToolInvocationOptions);
  return sub_1C9063A4C();
}

void ToolKitProtoToolInvocation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_17_5();
  v1 = OUTLINED_FUNCTION_7_48();
  sub_1C8CE2D4C(v1);
  if (!v0)
  {
    v2 = OUTLINED_FUNCTION_2_55();
    sub_1C8CE38D0(v2);
    v3 = OUTLINED_FUNCTION_2_55();
    sub_1C8FFB86C(v3, v4, v5, v6);
    OUTLINED_FUNCTION_271_1();
    if (v7)
    {
      sub_1C90637BC();
      type metadata accessor for ToolKitProtoTypedValueResolvable(0);
      sub_1C8CD1B00(&qword_1EC314308, type metadata accessor for ToolKitProtoTypedValueResolvable);
      sub_1C8CD1B00(&qword_1EC31C818, type metadata accessor for ToolKitProtoTypedValueResolvable);
      OUTLINED_FUNCTION_146_6();
      sub_1C9063ADC();
    }

    v8 = OUTLINED_FUNCTION_2_55();
    sub_1C8FFBA40(v8, v9, v10, v11);
    v12 = *(type metadata accessor for ToolKitProtoToolInvocation(0) + 36);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C8FFB86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoToolInvocation(0) + 28);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC3142B8, &qword_1C90730B8);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA64538, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoContainerDefinition.Device);
}

uint64_t sub_1C8FFBA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B0, &unk_1C9074D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoToolInvocationOptions(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoToolInvocation(0) + 32);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC3142B0, &unk_1C9074D80);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31D258, type metadata accessor for ToolKitProtoToolInvocationOptions);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoToolInvocationOptions);
}

void static ToolKitProtoToolInvocation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v6 = OUTLINED_FUNCTION_24_2();
  v7 = type metadata accessor for ToolKitProtoToolInvocationOptions(v6);
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B0, &unk_1C9074D80);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  v85 = v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C820, &qword_1C90AC140);
  OUTLINED_FUNCTION_13_1(v86);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_35();
  v20 = type metadata accessor for ToolKitProtoContainerDefinition.Device(v19);
  v21 = OUTLINED_FUNCTION_44_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_51_15();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  OUTLINED_FUNCTION_9(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v81 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C738, &qword_1C90AC0F0);
  OUTLINED_FUNCTION_13_1(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_110();
  v34 = v0[2];
  if (v1[2])
  {
    if (!v34)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_201_2();
    v37 = v37 && v35 == v36;
    if (!v37 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v34)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_373_0();
  if (v39)
  {
    if (!v38)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_275_2();
    v42 = v37 && v40 == v41;
    if (!v42 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v38)
  {
    goto LABEL_42;
  }

  v83 = v7;
  v84 = v3;
  v81 = v2;
  v82 = type metadata accessor for ToolKitProtoToolInvocation(0);
  v43 = *(v82 + 28);
  v44 = *(v30 + 48);
  OUTLINED_FUNCTION_52_1();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_52_1();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_185_6();
  OUTLINED_FUNCTION_108_2(v45, v46, v47);
  if (v37)
  {
    OUTLINED_FUNCTION_185_6();
    OUTLINED_FUNCTION_108_2(v48, v49, v50);
    if (v37)
    {
      sub_1C8D16D78(v5, &qword_1EC3142B8, &qword_1C90730B8);
      goto LABEL_30;
    }

LABEL_27:
    v56 = &qword_1EC31C738;
    v57 = &qword_1C90AC0F0;
    v58 = v5;
LABEL_28:
    sub_1C8D16D78(v58, v56, v57);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_207_2();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_185_6();
  OUTLINED_FUNCTION_108_2(v51, v52, v53);
  if (v54)
  {
    OUTLINED_FUNCTION_259_2();
    sub_1C8CD20B4(v29, v55);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_258_3();
  sub_1C900BE74();
  v59 = static ToolKitProtoContainerDefinition.Device.== infix(_:_:)(v29, v4);
  sub_1C8CD20B4(v4, &qword_1C90730B8);
  v60 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v60, v61);
  sub_1C8D16D78(v5, &qword_1EC3142B8, &qword_1C90730B8);
  if ((v59 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_30:
  sub_1C8F565D4(*v1, *v0);
  if ((v62 & 1) == 0)
  {
    goto LABEL_42;
  }

  v63 = v82;
  v64 = *(v82 + 32);
  v65 = *(v86 + 48);
  v66 = v84;
  sub_1C8D63FCC();
  sub_1C8D63FCC();
  v67 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_108_2(v67, v68, v83);
  if (!v37)
  {
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_54_15(v66 + v65);
    if (!v69)
    {
      sub_1C900BE74();
      OUTLINED_FUNCTION_49();
      v72 = static ToolKitProtoToolInvocationOptions.== infix(_:_:)();
      v73 = OUTLINED_FUNCTION_100();
      sub_1C8CD20B4(v73, v74);
      v75 = OUTLINED_FUNCTION_347();
      sub_1C8CD20B4(v75, v76);
      sub_1C8D16D78(v66, &qword_1EC3142B0, &unk_1C9074D80);
      if (v72)
      {
        goto LABEL_41;
      }

LABEL_42:
      v80 = 0;
      goto LABEL_43;
    }

    v70 = OUTLINED_FUNCTION_273();
    sub_1C8CD20B4(v70, v71);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_54_15(v66 + v65);
  if (!v37)
  {
LABEL_39:
    v56 = &qword_1EC31C820;
    v57 = &qword_1C90AC140;
    v58 = v66;
    goto LABEL_28;
  }

  sub_1C8D16D78(v66, &qword_1EC3142B0, &unk_1C9074D80);
LABEL_41:
  v77 = *(v63 + 36);
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v78, v79);
  v80 = OUTLINED_FUNCTION_12_28();
LABEL_43:
  OUTLINED_FUNCTION_50_0(v80);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FFC178(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2F8, type metadata accessor for ToolKitProtoToolInvocation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFC1F8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC317A10, type metadata accessor for ToolKitProtoToolInvocation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFC268()
{
  sub_1C8CD1B00(&qword_1EC317A10, type metadata accessor for ToolKitProtoToolInvocation);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFC2F4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C038);
  __swift_project_value_buffer(v0, qword_1EC31C038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "interactionMode";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locale";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "requestIdentifier";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "interfaceIdiom";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "shortcutOutput";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoToolInvocationOptions.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_5_39();
        sub_1C8FFC65C();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FFC6C4();
        break;
      case 5:
        OUTLINED_FUNCTION_22_0();
        sub_1C906390C();
        break;
      default:
        continue;
    }
  }
}

char *ToolKitProtoToolInvocationOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_83_8();
  v1 = OUTLINED_FUNCTION_22_33();
  result = sub_1C8FFC7C4(v1);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2CE8(v3);
    v4 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2D84(v4);
    v5 = OUTLINED_FUNCTION_3_4();
    sub_1C8FFC840(v5);
    v6 = OUTLINED_FUNCTION_3_4();
    sub_1C8FFC8BC(v6);
    v7 = *(type metadata accessor for ToolKitProtoToolInvocationOptions(0) + 36);
    return OUTLINED_FUNCTION_69_10();
  }

  return result;
}

char *sub_1C8FFC7C4(char *result)
{
  if (*result != 5)
  {
    v1 = *result;
    sub_1C8DC0428();
    return sub_1C9063B1C();
  }

  return result;
}

uint64_t sub_1C8FFC840(uint64_t result)
{
  if (*(result + 40) != 11)
  {
    v1 = *(result + 40);
    sub_1C8DC03D4();
    return sub_1C9063B1C();
  }

  return result;
}

uint64_t sub_1C8FFC8BC(uint64_t result)
{
  if (*(result + 41) != 2)
  {
    return sub_1C9063B0C();
  }

  return result;
}

uint64_t static ToolKitProtoToolInvocationOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v3 = *v2;
  v5 = *v4;
  if (v3 == 5)
  {
    if (v5 != 5)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  v6 = *(v0 + 16);
  if (*(v1 + 16))
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_201_2();
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_373_0();
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_275_2();
    v14 = v9 && v12 == v13;
    if (!v14 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(v1 + 40);
  v16 = *(v0 + 40);
  if (v15 == 11)
  {
    if (v16 != 11)
    {
      return 0;
    }
  }

  else if (v15 != v16)
  {
    return 0;
  }

  v17 = *(v1 + 41);
  v18 = *(v0 + 41);
  if (v17 == 2)
  {
    if (v18 == 2)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    return 0;
  }

LABEL_33:
  v20 = *(type metadata accessor for ToolKitProtoToolInvocationOptions(0) + 36);
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v21, v22);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8FFCAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2F0, type metadata accessor for ToolKitProtoToolInvocationOptions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFCB60(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D258, type metadata accessor for ToolKitProtoToolInvocationOptions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFCBD0()
{
  sub_1C8CD1B00(&qword_1EC31D258, type metadata accessor for ToolKitProtoToolInvocationOptions);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFCC50()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C050);
  __swift_project_value_buffer(v0, qword_1EC31C050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "InteractionModeUnspecified";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "InteractionModeDisplayForward";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "InteractionModeDisplayOnly";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "InteractionModeVoiceOnly";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "InteractionModeVoiceForward";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FFCF18()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C068);
  __swift_project_value_buffer(v0, qword_1EC31C068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C90ABEE0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 0;
  *v4 = "InterfaceIdiomUnspecified";
  *(v4 + 8) = 25;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 1;
  *v8 = "InterfaceIdiomCarPlay";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "InterfaceIdiomEyesFree";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "InterfaceIdiomHomePod";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "InterfaceIdiomMac";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "InterfaceIdiomAirPods";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "InterfaceIdiomPhone";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "InterfaceIdiomPad";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "InterfaceIdiomWatch";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "InterfaceIdiomTv";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "InterfaceIdiomVision";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FFD35C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_95_0();
  __swift_project_value_buffer(v4, v5);
  return sub_1C9063BFC();
}

uint64_t sub_1C8FFD44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2E8, type metadata accessor for ToolKitProtoToolDefinitionClosure);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFD4CC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D280, type metadata accessor for ToolKitProtoToolDefinitionClosure);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFD53C()
{
  sub_1C8CD1B00(&qword_1EC31D280, type metadata accessor for ToolKitProtoToolDefinitionClosure);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFD5B8()
{
  result = MEMORY[0x1CCA81A90](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_1EC31C098 = 0xD00000000000001DLL;
  unk_1EC31C0A0 = 0x80000001C90CD7C0;
  return result;
}

uint64_t sub_1C8FFD648()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C0A8);
  __swift_project_value_buffer(v0, qword_1EC31C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolDefinition";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeDefinitions";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoToolDefinitionClosure.Version1.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BF94();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8FFD8F8();
    }
  }
}

uint64_t sub_1C8FFD8F8()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0) + 20);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_1C8CD1B00(qword_1EDA60EE0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  return sub_1C9063A4C();
}

void ToolKitProtoToolDefinitionClosure.Version1.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  v1 = OUTLINED_FUNCTION_7_48();
  sub_1C8FFDA50(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_271_1();
    if (v5)
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
      OUTLINED_FUNCTION_245_1();
      sub_1C8CD1B00(v6, v7);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v8 = *(type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0) + 24);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FFDA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314838, &qword_1C9074F40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314838, &qword_1C9074F40);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA60EE0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

void static ToolKitProtoToolDefinitionClosure.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_143();
  v3 = type metadata accessor for ToolKitProtoToolDefinition.Version1(v2);
  v4 = OUTLINED_FUNCTION_13_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = OUTLINED_FUNCTION_245();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C840, &qword_1C90AC148);
  OUTLINED_FUNCTION_184_6(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_35();
  v28 = type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(v17);
  OUTLINED_FUNCTION_348_2(v28);
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_78_4(v0 + v1);
    if (v18)
    {
      sub_1C8D16D78(v0, &qword_1EC314838, &qword_1C9074F40);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C840, &qword_1C90AC148);
LABEL_13:
    v27 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_177_5();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0 + v1);
  if (v18)
  {
    v19 = OUTLINED_FUNCTION_273();
    sub_1C8CD20B4(v19, v20);
    goto LABEL_9;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_347();
  static ToolKitProtoToolDefinition.Version1.== infix(_:_:)();
  v21 = OUTLINED_FUNCTION_196_6();
  sub_1C8CD20B4(v21, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v22 = OUTLINED_FUNCTION_203();
  sub_1C8CD20B4(v22, v23);
  sub_1C8D16D78(v0, &qword_1EC314838, &qword_1C9074F40);
  if ((&qword_1EC314838 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_333_2();
  sub_1C8CECF90();
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_357_1(v28);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v25, v26);
  v27 = OUTLINED_FUNCTION_169_5();
LABEL_14:
  OUTLINED_FUNCTION_50_0(v27);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FFDEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2E0, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFDF70(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D290, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFDFE0()
{
  sub_1C8CD1B00(&qword_1EC31D290, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFE078()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C0C0);
  __swift_project_value_buffer(v0, qword_1EC31C0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tools";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "types";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "visibleTools";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "triggers";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoToolboxDump.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_340_2();
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
        OUTLINED_FUNCTION_5_39();
        sub_1C8FFE4F4();
        break;
      case 2:
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6BF94();
        break;
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6BFE0();
        break;
      case 4:
        OUTLINED_FUNCTION_17_34();
        sub_1C8FC6684();
        break;
      case 5:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6C148();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FFE4F4()
{
  v0 = *(type metadata accessor for ToolKitProtoToolboxDump(0) + 32);
  type metadata accessor for ToolKitProtoToolboxDump.Metadata(0);
  sub_1C8CD1B00(&qword_1EC31D2C0, type metadata accessor for ToolKitProtoToolboxDump.Metadata);
  return sub_1C9063A4C();
}

void ToolKitProtoToolboxDump.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  v1 = OUTLINED_FUNCTION_7_48();
  sub_1C8FFE75C(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_271_1();
    if (v5)
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
      OUTLINED_FUNCTION_242_3();
      sub_1C8CD1B00(v6, v7);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    OUTLINED_FUNCTION_347_2();
    if (v8)
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
      OUTLINED_FUNCTION_245_1();
      sub_1C8CD1B00(v9, v10);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    OUTLINED_FUNCTION_346_2();
    if (v11)
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
      OUTLINED_FUNCTION_242_3();
      sub_1C8CD1B00(v12, v13);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    OUTLINED_FUNCTION_367_0();
    if (v14)
    {
      type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
      sub_1C8CD1B00(&qword_1EC31C850, type metadata accessor for ToolKitProtoTriggerDefinition.Version1);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v15 = *(type metadata accessor for ToolKitProtoToolboxDump(0) + 36);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FFE75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314840, &qword_1C9074F48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoToolboxDump.Metadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoToolboxDump(0) + 32);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314840, &qword_1C9074F48);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31D2C0, type metadata accessor for ToolKitProtoToolboxDump.Metadata);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoToolboxDump.Metadata);
}

void static ToolKitProtoToolboxDump.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_143();
  v7 = type metadata accessor for ToolKitProtoToolboxDump.Metadata(v6);
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v13 = (v12 - v11);
  v14 = OUTLINED_FUNCTION_245();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_9(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C858, &qword_1C90AC150);
  OUTLINED_FUNCTION_184_6(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_35();
  v58 = type metadata accessor for ToolKitProtoToolboxDump(v24);
  v25 = *(v58 + 32);
  v26 = *(v3 + 56);
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_191(v1);
  if (!v27)
  {
    OUTLINED_FUNCTION_177_5();
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_191(v1 + v26);
    if (!v27)
    {
      sub_1C900BE74();
      v32 = *v2 == *v13 && v2[1] == v13[1];
      if (v32 || (sub_1C9064C2C() & 1) != 0)
      {
        v33 = v2[2] == v13[2] && v2[3] == v13[3];
        if (v33 || (sub_1C9064C2C() & 1) != 0)
        {
          v34 = *(v7 + 24);
          sub_1C90637EC();
          OUTLINED_FUNCTION_1_76();
          sub_1C8CD1B00(v35, v36);
          v37 = OUTLINED_FUNCTION_386_0();
          sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoToolboxDump.Metadata);
          v38 = OUTLINED_FUNCTION_124();
          sub_1C8CD20B4(v38, v39);
          sub_1C8D16D78(v1, &qword_1EC314840, &qword_1C9074F48);
          if (v37)
          {
            goto LABEL_22;
          }

LABEL_27:
          v55 = 0;
          goto LABEL_28;
        }
      }

      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoToolboxDump.Metadata);
      v56 = OUTLINED_FUNCTION_274_0();
      sub_1C8CD20B4(v56, v57);
      v30 = &qword_1EC314840;
      v31 = &qword_1C9074F48;
LABEL_10:
      sub_1C8D16D78(v1, v30, v31);
      goto LABEL_27;
    }

    v28 = OUTLINED_FUNCTION_273();
    sub_1C8CD20B4(v28, v29);
LABEL_9:
    v30 = &qword_1EC31C858;
    v31 = &qword_1C90AC150;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_191(v1 + v26);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_1C8D16D78(v1, &qword_1EC314840, &qword_1C9074F48);
LABEL_22:
  v40 = *v0;
  v41 = *v5;
  sub_1C8CF03D0();
  if ((v42 & 1) == 0)
  {
    goto LABEL_27;
  }

  v43 = v0[1];
  v44 = v5[1];
  sub_1C8CECF90();
  if ((v45 & 1) == 0)
  {
    goto LABEL_27;
  }

  v46 = v0[2];
  v47 = v5[2];
  sub_1C8CF03D0();
  if ((v48 & 1) == 0)
  {
    goto LABEL_27;
  }

  v49 = v0[3];
  v50 = v5[3];
  sub_1C8CF0424();
  if ((v51 & 1) == 0)
  {
    goto LABEL_27;
  }

  v52 = *(v58 + 36);
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v53, v54);
  OUTLINED_FUNCTION_256_1();
  v55 = OUTLINED_FUNCTION_358_1();
LABEL_28:
  OUTLINED_FUNCTION_50_0(v55);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FFED2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2D8, type metadata accessor for ToolKitProtoToolboxDump);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFEDAC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D2A8, type metadata accessor for ToolKitProtoToolboxDump);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFEE1C()
{
  sub_1C8CD1B00(&qword_1EC31D2A8, type metadata accessor for ToolKitProtoToolboxDump);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FFEE9C()
{
  result = MEMORY[0x1CCA81A90](0x7461646174654D2ELL, 0xE900000000000061);
  qword_1EC31C0D8 = 0xD000000000000013;
  unk_1EC31C0E0 = 0x80000001C90CD7E0;
  return result;
}

uint64_t sub_1C8FFEF2C(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return OUTLINED_FUNCTION_95_0();
}

uint64_t sub_1C8FFEF7C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31C0E8);
  __swift_project_value_buffer(v0, qword_1EC31C0E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "build";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "os";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FFF178@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1C8FFF218()
{
  OUTLINED_FUNCTION_89_1();
  while (1)
  {
    OUTLINED_FUNCTION_203();
    result = sub_1C90638DC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_278_3();
      v0();
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_177_5();
      v2(v5);
    }
  }

  return result;
}

void sub_1C8FFF2BC()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_6();
  if (!v4 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    OUTLINED_FUNCTION_36_21();
    if (!v7 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v0))
    {
      v8 = *(v3(0) + 24);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FFF3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D2D0, type metadata accessor for ToolKitProtoToolboxDump.Metadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FFF450(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D2C0, type metadata accessor for ToolKitProtoToolboxDump.Metadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FFF4C0()
{
  sub_1C8CD1B00(&qword_1EC31D2C0, type metadata accessor for ToolKitProtoToolboxDump.Metadata);

  return sub_1C9063ABC();
}

unint64_t sub_1C8FFF544()
{
  result = qword_1EDA68128;
  if (!qword_1EDA68128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA68128);
  }

  return result;
}

unint64_t sub_1C8FFF7E0()
{
  result = qword_1EDA64D10;
  if (!qword_1EDA64D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64D10);
  }

  return result;
}

unint64_t sub_1C900049C()
{
  result = qword_1EDA64E28;
  if (!qword_1EDA64E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64E28);
  }

  return result;
}

unint64_t sub_1C9000738()
{
  result = qword_1EDA65038;
  if (!qword_1EDA65038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA65038);
  }

  return result;
}

unint64_t sub_1C90011B4()
{
  result = qword_1EC31C990;
  if (!qword_1EC31C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31C990);
  }

  return result;
}

unint64_t sub_1C9001690()
{
  result = qword_1EC31C9F8;
  if (!qword_1EC31C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31C9F8);
  }

  return result;
}

unint64_t sub_1C900180C()
{
  result = qword_1EC31CA18;
  if (!qword_1EC31CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CA18);
  }

  return result;
}

unint64_t sub_1C9001AA8()
{
  result = qword_1EC31CA50;
  if (!qword_1EC31CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CA50);
  }

  return result;
}

unint64_t sub_1C90021C4()
{
  result = qword_1EC31CAE8;
  if (!qword_1EC31CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CAE8);
  }

  return result;
}

unint64_t sub_1C9002460()
{
  result = qword_1EC31CB20;
  if (!qword_1EC31CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CB20);
  }

  return result;
}

unint64_t sub_1C90024BC()
{
  result = qword_1EC31CB28;
  if (!qword_1EC31CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CB28);
  }

  return result;
}

unint64_t sub_1C9002518()
{
  result = qword_1EC31CB30;
  if (!qword_1EC31CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CB30);
  }

  return result;
}

unint64_t sub_1C9002574()
{
  result = qword_1EC31CB38;
  if (!qword_1EC31CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CB38);
  }

  return result;
}

unint64_t sub_1C9003E90()
{
  result = qword_1EDA64908;
  if (!qword_1EDA64908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64908);
  }

  return result;
}

unint64_t sub_1C9003EEC()
{
  result = qword_1EDA615B8;
  if (!qword_1EDA615B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA615B8);
  }

  return result;
}

unint64_t sub_1C9004A88()
{
  result = qword_1EDA64A18;
  if (!qword_1EDA64A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64A18);
  }

  return result;
}

unint64_t sub_1C9004AE4()
{
  result = qword_1EDA64A38;
  if (!qword_1EDA64A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64A38);
  }

  return result;
}

unint64_t sub_1C9004B40()
{
  result = qword_1EDA615D8;
  if (!qword_1EDA615D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA615D8);
  }

  return result;
}

unint64_t sub_1C90056DC()
{
  result = qword_1EC31CDE0;
  if (!qword_1EC31CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CDE0);
  }

  return result;
}

unint64_t sub_1C90064B8()
{
  result = qword_1EC31CEA8;
  if (!qword_1EC31CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31CEA8);
  }

  return result;
}

unint64_t sub_1C9006874()
{
  result = qword_1EDA67C90;
  if (!qword_1EDA67C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA67C90);
  }

  return result;
}

unint64_t sub_1C9006B10()
{
  result = qword_1EDA64790;
  if (!qword_1EDA64790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64790);
  }

  return result;
}

unint64_t sub_1C90088AC()
{
  result = qword_1EDA63CC8;
  if (!qword_1EDA63CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63CC8);
  }

  return result;
}

unint64_t sub_1C9008908()
{
  result = qword_1EDA60FC0;
  if (!qword_1EDA60FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60FC0);
  }

  return result;
}

unint64_t sub_1C9008964()
{
  result = qword_1EDA60FE0;
  if (!qword_1EDA60FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60FE0);
  }

  return result;
}

unint64_t sub_1C90089C0()
{
  result = qword_1EDA63C78;
  if (!qword_1EDA63C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63C78);
  }

  return result;
}

unint64_t sub_1C9008B3C()
{
  result = qword_1EDA60F90;
  if (!qword_1EDA60F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60F90);
  }

  return result;
}

unint64_t sub_1C9009918()
{
  result = qword_1EDA66D80;
  if (!qword_1EDA66D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66D80);
  }

  return result;
}

unint64_t sub_1C9009DF4()
{
  result = qword_1EDA61B50;
  if (!qword_1EDA61B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA61B50);
  }

  return result;
}

unint64_t sub_1C900A090()
{
  result = qword_1EDA61340;
  if (!qword_1EDA61340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA61340);
  }

  return result;
}

unint64_t sub_1C900A0EC()
{
  result = qword_1EDA64510;
  if (!qword_1EDA64510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64510);
  }

  return result;
}

unint64_t sub_1C900A808()
{
  result = qword_1EC31D190;
  if (!qword_1EC31D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31D190);
  }

  return result;
}

unint64_t sub_1C900B284()
{
  result = qword_1EDA64AD0;
  if (!qword_1EDA64AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA64AD0);
  }

  return result;
}

unint64_t sub_1C900B520()
{
  result = qword_1EC31D228;
  if (!qword_1EC31D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31D228);
  }

  return result;
}

unint64_t sub_1C900B8DC()
{
  result = qword_1EC31D268;
  if (!qword_1EC31D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31D268);
  }

  return result;
}

unint64_t sub_1C900B938()
{
  result = qword_1EC31D270;
  if (!qword_1EC31D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31D270);
  }

  return result;
}

unint64_t sub_1C900BE10()
{
  result = qword_1EC31DB10;
  if (!qword_1EC31DB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC31DB08, &qword_1C90BBEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DB10);
  }

  return result;
}

uint64_t sub_1C900BE74()
{
  v1 = OUTLINED_FUNCTION_24_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_94();
  v7(v6);
  return v0;
}

uint64_t sub_1C900BEC8()
{
  v1 = OUTLINED_FUNCTION_24_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_94();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_52_17(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_1C90637CC();
}

uint64_t OUTLINED_FUNCTION_53_15(uint64_t a1)
{
  v3 = v1 + *(a1 + 28);

  return sub_1C90637CC();
}

uint64_t OUTLINED_FUNCTION_56_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_99_8()
{
  sub_1C8D04F90(v1, v0);
  sub_1C8D04F90(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_105_5@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_127_4()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_128_4()
{

  return sub_1C8CD20B4(v0, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t OUTLINED_FUNCTION_166_4()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_169_5()
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_171_6()
{

  return sub_1C906392C();
}

uint64_t OUTLINED_FUNCTION_178_4()
{

  return sub_1C8CD1B00(v1, v0);
}

uint64_t OUTLINED_FUNCTION_189_6(uint64_t result)
{
  v2 = *(result + 20);
  v3 = *(*(v1 - 112) + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_194_6()
{
  v2 = *(v0 - 96);

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_195_3()
{
  v2 = *(v0 - 72);

  return sub_1C9063BCC();
}

uint64_t OUTLINED_FUNCTION_205_4()
{

  return sub_1C9063EAC();
}

void OUTLINED_FUNCTION_211_3()
{

  sub_1C8FFF2BC();
}

uint64_t OUTLINED_FUNCTION_217_1(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v15 - 134) = v13;
  *(v15 - 133) = a8;
  *(v15 - 132) = a7;
  *(v15 - 131) = a6;
  *(v15 - 130) = v8;
  *(v15 - 129) = a5;
  *(v15 - 128) = a4;
  *(v15 - 127) = a2;
  *(v15 - 126) = v14;
  *(v15 - 125) = a1;
  *(v15 - 124) = v12;
  *(v15 - 123) = v11;
  *(v15 - 122) = v10;
  *(v15 - 121) = v9;

  return memcmp((v15 - 120), (v15 - 134), a3);
}

uint64_t OUTLINED_FUNCTION_221_3()
{
  sub_1C8D04F90(v2, v1);
  sub_1C8D04F90(v0, v3);
  return v2;
}

uint64_t OUTLINED_FUNCTION_261_1()
{
  v2 = *(*(v0 - 88) + 24);

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_265_2()
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_267_2()
{

  return sub_1C8CD20B4(v0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t OUTLINED_FUNCTION_268_2()
{

  return sub_1C8CD20B4(v0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t OUTLINED_FUNCTION_272_1()
{
  result = *(v1 + 16);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_275_2()
{
  result = *(v1 + 24);
  v3 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_276_2(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(result + 24);
  v4 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_279_2()
{
  v4 = *(v0 + 56);
  *(v3 - 88) = v2;
  return v2 + v1;
}

uint64_t OUTLINED_FUNCTION_280_2()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_290_2()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_292_2()
{

  return sub_1C8CD20B4(v1, v0);
}

void OUTLINED_FUNCTION_295_1()
{
  *(v3 - 114) = v1;
  *(v3 - 113) = HIBYTE(v0);
  *(v3 - 112) = v2;
}

uint64_t OUTLINED_FUNCTION_303_2()
{
  v2 = *(*(v0 - 88) + 28);

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_311_1()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_312_1()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_313_2()
{

  return sub_1C8CD20B4(v1, v0);
}

void OUTLINED_FUNCTION_315_1(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v3 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v7 = *v5;
  v6 = v5[1];
}

void OUTLINED_FUNCTION_318_1()
{
  v2 = *(v1 + 24);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = HIDWORD(*(v1 + 16));
}

uint64_t OUTLINED_FUNCTION_321_2()
{
  v3 = *(v2 - 216);
  v4 = (*(v3 + 48) + 16 * v0);
  v6 = *v4;
  v5 = v4[1];
  return *(v3 + 56) + *(v1 + 72) * v0;
}

uint64_t OUTLINED_FUNCTION_326_1()
{
  v2 = *(v0 - 120);

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_327_1(uint64_t a1)
{
  v2 = *(a1 + 28);

  return sub_1C90637EC();
}

uint64_t *OUTLINED_FUNCTION_330_2(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_331_1()
{
  result = *(v1 + 64);
  v3 = *(v0 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_334_2()
{
  result = **(v1 - 88);
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_335_1()
{

  return sub_1C8CD20B4(v1, v0);
}

void OUTLINED_FUNCTION_342_2()
{

  sub_1C8FF4D94();
}

uint64_t OUTLINED_FUNCTION_343_2()
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_348_2(uint64_t result)
{
  v2 = *(result + 20);
  v3 = *(v1 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_359_1()
{

  return sub_1C8CD20B4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_360_1()
{
  v2 = *(v0 - 128);

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_361_1()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_362_1()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_365_1()
{

  return sub_1C8D63FCC();
}

void OUTLINED_FUNCTION_368_0()
{
  v1 = *(v0 - 96);
  v2 = *(*(v0 - 104) + 24);
  v3 = *(*(v0 - 128) + 48);
}

uint64_t OUTLINED_FUNCTION_375_0()
{
  v2 = *(v1 - 88);
  result = *v2;
  v4 = v2[1];
  v5 = *v0;
  v6 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_385_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C8DC8514(v9, a9, 1);
}

uint64_t OUTLINED_FUNCTION_386_0()
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_387_0()
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_389_0()
{
  v2 = *(v0 + 28);

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_390_0()
{
  v2 = *(v0 + 24);

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_391_0()
{

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_393_0()
{

  return sub_1C8D63FCC();
}

uint64_t ToolDatabase.Environment.debugDescription.getter()
{
  if (*v0)
  {
    result = 7170419;
  }

  else
  {
    result = 1685025392;
  }

  *v0;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.insertPrimitiveTypes()()
{
  ToolDatabase.environment.getter(__dst);
  if (__dst[0] == 1)
  {
    if (qword_1EC3120B8 != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      memcpy(__dst, &qword_1EC31DB48, 0x61uLL);
      memcpy(v6, &qword_1EC31DB48, 0x61uLL);
      ToolDatabase.insert(container:)(v6);
      if (v0)
      {
        break;
      }

      v1 = static TypeIdentifier.PrimitiveTypeIdentifier.allCases.getter();
      v2 = 0;
      v3 = v1[2];
      while (1)
      {
        if (v3 == v2)
        {

          return;
        }

        if (v2 >= v1[2])
        {
          break;
        }

        v6[0] = *(v1 + v2 + 32);
        v6[96] = 0;
        memcpy(v5, __dst, 0x61uLL);
        ToolDatabase.insert(type:sourceContainer:)(v6, v5);
        ++v2;
      }

      __break(1u);
LABEL_12:
      OUTLINED_FUNCTION_4_57();
      swift_once();
    }
  }

  else
  {
    sub_1C8D5D868();
    swift_allocError();
    *v4 = 0;
    *(v4 + 56) = 0;
    *(v4 + 96) = 0;
    swift_willThrow();
  }
}

uint64_t ToolDatabase.environment.getter@<X0>(char *a1@<X8>)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80) - 8) + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  sub_1C8CBA654(v1 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_file, &v11 - v5);
  v7 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C900E730(v6);
    v9 = 0;
  }

  else
  {
    v9 = v6[*(v7 + 20)];
    OUTLINED_FUNCTION_5_53();
    result = sub_1C8CBA8BC(v6, v10);
  }

  *a1 = v9;
  return result;
}

double sub_1C900D534()
{
  qword_1EC31DB48 = 0x776F6C666B726F57;
  unk_1EC31DB50 = 0xEB0000000074694BLL;
  qword_1EC31DB68 = 0x80000001C90CA220;
  unk_1EC31DB70 = 0xD000000000000011;
  qword_1EC31DB78 = 0x80000001C90D0760;
  byte_1EC31DB80 = 4;
  result = 0.0;
  xmmword_1EC31DB88 = 0u;
  unk_1EC31DB98 = 0u;
  byte_1EC31DBA8 = 1;
  qword_1EC31DB58 = MEMORY[0x1E69E7CC0];
  unk_1EC31DB60 = 0xD000000000000015;
  return result;
}

uint64_t static ToolDatabase.workflowKitContainer.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC3120B8 != -1)
  {
    OUTLINED_FUNCTION_4_57();
    swift_once();
  }

  memcpy(__dst, &qword_1EC31DB48, 0x61uLL);
  memcpy(a1, &qword_1EC31DB48, 0x61uLL);
  return sub_1C8CC1340(__dst, &v3);
}

void static ToolDatabase.Environment.current.getter(_BYTE *a1@<X8>)
{
  v44 = a1;
  v45[4] = *MEMORY[0x1E69E9840];
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80) - 8) + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v43 - v3;
  v5 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v43 = v10 - v9;
  v11 = sub_1C9061EBC();
  v12 = OUTLINED_FUNCTION_11(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v20 = type metadata accessor for ToolDatabase.Pager(0);
  v21 = OUTLINED_FUNCTION_13_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v26 = v25 - v24;
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_3_58();
    swift_once();
  }

  v27 = __swift_project_value_buffer(v11, qword_1EDA6D910);
  swift_beginAccess();
  v28 = *(v14 + 16);
  v28(v19, v27, v11);
  if ((sub_1C9061D8C() & 1) == 0)
  {
    __break(1u);
  }

  v28(v26, v19, v11);
  *(v26 + *(v20 + 20)) = 63;
  *(v26 + *(v20 + 24)) = 1;
  v29 = [objc_opt_self() defaultManager];
  v30 = sub_1C9061DDC();
  v45[0] = 0;
  v31 = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:v45];

  if (v31)
  {
    v32 = *(v14 + 8);
    v33 = v45[0];
    v32(v19, v11);
    sub_1C8CBAA48();
    OUTLINED_FUNCTION_0_81();
    sub_1C8CBA8BC(v26, v37);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
    if (EnumTagSinglePayload != 1)
    {
      v41 = v43;
      sub_1C900E798(v4, v43);
      v39 = *(v41 + *(v5 + 20));
      OUTLINED_FUNCTION_5_53();
      sub_1C8CBA8BC(v41, v42);
      goto LABEL_10;
    }

    sub_1C900E730(v4);
  }

  else
  {
    v34 = v45[0];
    v35 = sub_1C9061D7C();

    swift_willThrow();
    (*(v14 + 8))(v19, v11);
    OUTLINED_FUNCTION_0_81();
    sub_1C8CBA8BC(v26, v36);
  }

  v39 = 0;
LABEL_10:
  *v44 = v39;
  v40 = *MEMORY[0x1E69E9840];
}

uint64_t static ToolDatabase.Environment.activate(environment:)(char *a1)
{
  v30[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9061EBC();
  v3 = OUTLINED_FUNCTION_11(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = type metadata accessor for ToolDatabase.Pager(0);
  v12 = OUTLINED_FUNCTION_13_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  v18 = *a1;
  if (qword_1EDA6D908 != -1)
  {
    OUTLINED_FUNCTION_3_58();
    swift_once();
  }

  v19 = __swift_project_value_buffer(v2, qword_1EDA6D910);
  swift_beginAccess();
  v20 = *(v5 + 16);
  v20(v10, v19, v2);
  if ((sub_1C9061D8C() & 1) == 0)
  {
    __break(1u);
  }

  v20(v17, v10, v2);
  *(v17 + *(v11 + 20)) = 63;
  *(v17 + *(v11 + 24)) = 1;
  v21 = [objc_opt_self() defaultManager];
  v22 = sub_1C9061DDC();
  v30[0] = 0;
  v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v30];

  if (v23)
  {
    v24 = *(v5 + 8);
    v25 = v30[0];
    v24(v10, v2);
    LOBYTE(v30[0]) = v18;
    ToolDatabase.Pager.switchActiveEnvironment(to:)(v30);
  }

  else
  {
    v26 = v30[0];
    sub_1C9061D7C();

    swift_willThrow();
    (*(v5 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_0_81();
  result = sub_1C8CBA8BC(v17, v27);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C900DC8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616C756D6973 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C900DD64(char a1)
{
  if (a1)
  {
    return 0x6974616C756D6973;
  }

  else
  {
    return 0x69746375646F7270;
  }
}

uint64_t sub_1C900DDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C900DC8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C900DDC8(uint64_t a1)
{
  v2 = sub_1C900E7FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C900DE04(uint64_t a1)
{
  v2 = sub_1C900E7FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C900DE40(uint64_t a1)
{
  v2 = sub_1C900E8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C900DE7C(uint64_t a1)
{
  v2 = sub_1C900E8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C900DEB8(uint64_t a1)
{
  v2 = sub_1C900E850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C900DEF4(uint64_t a1)
{
  v2 = sub_1C900E850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolDatabase.Environment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBB0, &qword_1C90BBF28);
  v4 = OUTLINED_FUNCTION_11(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBB8, &qword_1C90BBF30);
  v11 = OUTLINED_FUNCTION_11(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBC0, &qword_1C90BBF38);
  OUTLINED_FUNCTION_11(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C900E7FC();
  sub_1C9064E1C();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_1C900E850();
    v29 = v33;
    sub_1C9064ACC();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_1C900E8A4();
    sub_1C9064ACC();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

uint64_t ToolDatabase.Environment.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

uint64_t ToolDatabase.Environment.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBE0, &qword_1C90BBF40);
  OUTLINED_FUNCTION_11(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBE8, &qword_1C90BBF48);
  OUTLINED_FUNCTION_11(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DBF0, &unk_1C90BBF50);
  OUTLINED_FUNCTION_11(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C900E7FC();
  v24 = v53;
  sub_1C9064DEC();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = v9;
  v47 = v15;
  v53 = a1;
  v25 = v52;
  v26 = sub_1C9064A9C();
  result = sub_1C8CB8914(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = result;
LABEL_9:
    v40 = sub_1C90647DC();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v42 = &type metadata for ToolDatabase.Environment;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    a1 = v53;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_1C8CB891C(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
      v52 = v32;
      goto LABEL_9;
    }

    v54 = v31;
    if (v31)
    {
      v56 = 1;
      sub_1C900E850();
      v37 = v8;
      OUTLINED_FUNCTION_191_0();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v49 + 8))(v37, v25);
    }

    else
    {
      v55 = 0;
      sub_1C900E8A4();
      v44 = v47;
      OUTLINED_FUNCTION_191_0();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v48 + 8))(v44, v46);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v54;
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  return result;
}

void sub_1C900E704()
{
  sub_1C903A7D8();
  if (!v0)
  {
    sub_1C8E5DF24();
  }
}

uint64_t sub_1C900E730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C900E798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C900E7FC()
{
  result = qword_1EC31DBC8;
  if (!qword_1EC31DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DBC8);
  }

  return result;
}

unint64_t sub_1C900E850()
{
  result = qword_1EC31DBD0;
  if (!qword_1EC31DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DBD0);
  }

  return result;
}

unint64_t sub_1C900E8A4()
{
  result = qword_1EC31DBD8;
  if (!qword_1EC31DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DBD8);
  }

  return result;
}

unint64_t sub_1C900E900()
{
  result = qword_1EC31DBF8;
  if (!qword_1EC31DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DBF8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit0A8DatabaseC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 96) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C900E980(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56) >> 3;
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

double sub_1C900E9C8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 97) = 1;
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
      *(a1 + 48) = 0;
      *(a1 + 56) = 8 * -a2;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C900EA4C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 96) & 3 | (a2 << 6);
    *(result + 56) &= 7uLL;
    *(result + 96) = v2;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0;
    *(result + 96) = -64;
  }

  return result;
}

_BYTE *sub_1C900EAB0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C900EBB0()
{
  result = qword_1EC31DC00;
  if (!qword_1EC31DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC00);
  }

  return result;
}

unint64_t sub_1C900EC08()
{
  result = qword_1EC31DC08;
  if (!qword_1EC31DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC08);
  }

  return result;
}

unint64_t sub_1C900EC60()
{
  result = qword_1EC31DC10;
  if (!qword_1EC31DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC10);
  }

  return result;
}

unint64_t sub_1C900ECB8()
{
  result = qword_1EC31DC18;
  if (!qword_1EC31DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC18);
  }

  return result;
}

unint64_t sub_1C900ED10()
{
  result = qword_1EC31DC20;
  if (!qword_1EC31DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC20);
  }

  return result;
}

unint64_t sub_1C900ED68()
{
  result = qword_1EC31DC28;
  if (!qword_1EC31DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC28);
  }

  return result;
}

unint64_t sub_1C900EDC0()
{
  result = qword_1EC31DC30;
  if (!qword_1EC31DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC30);
  }

  return result;
}

uint64_t sub_1C900EE28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C900EEF4(char a1)
{
  if (a1)
  {
    return 0x64496C6F6F74;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1C900EF2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DC70, &qword_1C90BC6A0);
  v7 = OUTLINED_FUNCTION_11(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C900F8A4();
  sub_1C9064E1C();
  v18 = 0;
  sub_1C9064B2C();
  if (!v4)
  {
    v17 = 1;
    sub_1C9064B9C();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_1C900F098(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DC68, &qword_1C90BC698);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C900F8A4();
  sub_1C9064DEC();
  if (!v1)
  {
    v7 = sub_1C9064A0C();
    sub_1C9064A7C();
    v9 = OUTLINED_FUNCTION_0_5();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1C900F254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C900EE28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C900F27C(uint64_t a1)
{
  v2 = sub_1C900F8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C900F2B8(uint64_t a1)
{
  v2 = sub_1C900F8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C900F2F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C900F098(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C900F344@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C900F370();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1C900F370()
{
  if (qword_1EDA62F90 != -1)
  {
    OUTLINED_FUNCTION_1_77();
  }

  v0 = sub_1C9062E6C();
  __swift_project_value_buffer(v0, qword_1EDA6E808);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v2 = v1;

  if (qword_1EDA62F88 != -1)
  {
    OUTLINED_FUNCTION_0_82();
  }

  __swift_project_value_buffer(v0, qword_1EDA6E7F0);
  sub_1C9062E5C();
  sub_1C8E2B4F8();

  return v2;
}

uint64_t sub_1C900F49C()
{
  sub_1C900F7A4();

  return sub_1C9062B4C();
}

uint64_t sub_1C900F590()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1C900F59C();
}

uint64_t sub_1C900F59C()
{
  if (qword_1EDA62F90 != -1)
  {
    OUTLINED_FUNCTION_1_77();
  }

  v0 = sub_1C9062E6C();
  __swift_project_value_buffer(v0, qword_1EDA6E808);
  sub_1C9062E5C();

  sub_1C9062BFC();
  if (qword_1EDA62F88 != -1)
  {
    OUTLINED_FUNCTION_0_82();
  }

  __swift_project_value_buffer(v0, qword_1EDA6E7F0);
  sub_1C9062E5C();
  return sub_1C9062BFC();
}

uint64_t sub_1C900F6D0()
{
  v0 = qword_1EC31DC38;

  return v0;
}

unint64_t sub_1C900F70C()
{
  result = qword_1EC31DC48;
  if (!qword_1EC31DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC48);
  }

  return result;
}

unint64_t sub_1C900F764(void *a1)
{
  a1[1] = sub_1C8EFF63C();
  a1[2] = sub_1C900F7A4();
  a1[3] = sub_1C8EFF5E8();
  result = sub_1C900F7F8();
  a1[4] = result;
  return result;
}

unint64_t sub_1C900F7A4()
{
  result = qword_1EC31DC50;
  if (!qword_1EC31DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC50);
  }

  return result;
}

unint64_t sub_1C900F7F8()
{
  result = qword_1EC31DC58;
  if (!qword_1EC31DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC58);
  }

  return result;
}

unint64_t sub_1C900F850()
{
  result = qword_1EC31DC60;
  if (!qword_1EC31DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC60);
  }

  return result;
}

unint64_t sub_1C900F8A4()
{
  result = qword_1EDA62FA8;
  if (!qword_1EDA62FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FA8);
  }

  return result;
}

uint64_t sub_1C900F918(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_1C900F8A4();
  return sub_1C9062E8C();
}

_BYTE *storeEnumTagSinglePayload for LinkActionIdentifierRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C900FA74()
{
  result = qword_1EC31DC78;
  if (!qword_1EC31DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC78);
  }

  return result;
}

unint64_t sub_1C900FACC()
{
  result = qword_1EDA62F98;
  if (!qword_1EDA62F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F98);
  }

  return result;
}

unint64_t sub_1C900FB24()
{
  result = qword_1EDA62FA0;
  if (!qword_1EDA62FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FA0);
  }

  return result;
}

uint64_t TypeIdentifier.debugDescription.getter()
{
  v1 = *v0;
  switch(*v0 >> 61)
  {
    case 1uLL:
      v30 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
      v31 = OUTLINED_FUNCTION_92_8();
      *(v31 + 16) = xmmword_1C906BAE0;
      *(v31 + 32) = 0x6E69746C697542;
      *(v31 + 40) = 0xE700000000000000;
      sub_1C8D3F120(v30);
      *(v31 + 48) = TypeIdentifier.BuiltInTypeIdentifier.debugDescription.getter();
      *(v31 + 56) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_0_0();
      sub_1C8D28184(v33, &qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_34_18();
      v18 = sub_1C9063E9C();
      sub_1C8D3F130(v30);
      goto LABEL_14;
    case 2uLL:
      v9 = (v1 & 0x1FFFFFFFFFFFFFFFLL);
      v11 = v9[2];
      v10 = v9[3];
      v13 = v9[4];
      v12 = v9[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
      v14 = OUTLINED_FUNCTION_92_8();
      *(v14 + 16) = xmmword_1C906BAE0;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      *(v14 + 48) = v13;
      *(v14 + 56) = v12;

      goto LABEL_5;
    case 3uLL:
      v19 = (v1 & 0x1FFFFFFFFFFFFFFFLL);
      v21 = v19[5];
      v20 = v19[6];
      v23 = v19[12];
      v22 = v19[13];
      v25 = v19[28];
      v24 = v19[29];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1C909C3B0;
      *(v26 + 32) = 0x7475626972747441;
      *(v26 + 40) = 0xEA00000000006465;
      *(v26 + 48) = v21;
      *(v26 + 56) = v20;
      if (v22)
      {
        v27 = v23;
      }

      else
      {
        v27 = 0;
      }

      v28 = 0xE000000000000000;
      if (v22)
      {
        v28 = v22;
      }

      *(v26 + 64) = v27;
      *(v26 + 72) = v28;
      *(v26 + 80) = v25;
      *(v26 + 88) = v24;

      goto LABEL_12;
    case 4uLL:
      v5 = v1 & 0x1FFFFFFFFFFFFFFFLL;
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
      v8 = OUTLINED_FUNCTION_92_8();
      *(v8 + 16) = xmmword_1C906BAE0;
      *(v8 + 32) = 0x656C6261646F43;
      *(v8 + 40) = 0xE700000000000000;
      *(v8 + 48) = v7;
      *(v8 + 56) = v6;
LABEL_5:

      v15 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      OUTLINED_FUNCTION_0_0();
      sub_1C8D28184(v17, &qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_34_18();
      v18 = sub_1C9063E9C();
      goto LABEL_14;
    default:
      v2 = *(v1 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
      v3 = OUTLINED_FUNCTION_92_8();
      *(v3 + 16) = xmmword_1C906BAE0;
      *(v3 + 32) = 0x766974696D697250;
      *(v3 + 40) = 0xE900000000000065;
      *(v3 + 48) = TypeIdentifier.PrimitiveTypeIdentifier.debugDescription.getter();
      *(v3 + 56) = v4;
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_0_0();
      sub_1C8D28184(v29, &qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_34_18();
      v18 = sub_1C9063E9C();
LABEL_14:

      return v18;
  }
}

unint64_t TypeIdentifier.MeasurementUnitType.debugDescription.getter(char a1)
{
  result = 0x6874676E654CLL;
  switch(a1)
  {
    case 1:
      result = 1936941389;
      break;
    case 2:
      result = 0x74617265706D6554;
      break;
    case 3:
      result = 0x656D756C6F56;
      break;
    case 4:
      result = 0x6465657053;
      break;
    case 5:
      result = 0x796772656E45;
      break;
    case 6:
      result = 0x6E6F697461727544;
      break;
    case 7:
      result = 0x6172656C65636341;
      break;
    case 8:
      result = 0x656C676E41;
      break;
    case 9:
      result = 1634038337;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6973726570736944;
      break;
    case 12:
      result = 0x6369727463656C45;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x636E657571657246;
      break;
    case 17:
      result = 0x666645206C657546;
      break;
    case 18:
      result = 0x616E696D756C6C49;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x7265776F50;
      break;
    case 21:
      result = 0x6572757373657250;
      break;
    default:
      return result;
  }

  return result;
}

void *TypeIdentifier.AttributedTypeIdentifier.init(sourceContainer:attributionContainer:typeName:)@<X0>(void *__src@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memcpy(a5, __src, 0x61uLL);
  result = memcpy(a5 + 13, a2, 0x61uLL);
  a5[26] = a3;
  a5[27] = a4;
  return result;
}

uint64_t TypeIdentifier.PrimitiveTypeIdentifier.debugDescription.getter()
{
  result = 1701736270;
  switch(*v0)
  {
    case 0x17:
      return result;
    case 0x18:
      result = 1819242306;
      break;
    case 0x19:
      result = 7630409;
      break;
    case 0x1A:
      result = 0x7265626D754ELL;
      break;
    case 0x1B:
      result = 0x6C616D69636544;
      break;
    case 0x1C:
      result = 0x676E69727453;
      break;
    case 0x1D:
      result = 1702125892;
      break;
    case 0x1E:
      result = 0x706D6F4365746144;
      break;
    case 0x1F:
      result = 5001813;
      break;
    case 0x20:
      result = 0x616E6F6974636944;
      break;
    case 0x21:
      result = 0xD000000000000010;
      break;
    case 0x22:
      result = OUTLINED_FUNCTION_89_2();
      break;
    case 0x23:
      result = 0x4D746E656D796150;
      break;
    case 0x24:
      result = 0x72616D6563616C50;
      break;
    case 0x25:
      result = OUTLINED_FUNCTION_79_10();
      break;
    case 0x26:
      result = 1701603654;
      break;
    case 0x27:
      result = 7368769;
      break;
    case 0x28:
      result = 0x6261686372616553;
      break;
    case 0x29:
      result = 0x6E65727275636552;
      break;
    case 0x2A:
      result = 0x4673746E65746E49;
      break;
    case 0x2B:
      result = 0x74756374726F6853;
      break;
    case 0x2C:
      result = 0x65746E4965746144;
      break;
    case 0x2D:
      result = 0x6E6F697461727544;
      break;
    case 0x2E:
      result = 0xD000000000000014;
      break;
    default:
      strcpy(v4, "Measurement<");
      v2 = TypeIdentifier.MeasurementUnitType.debugDescription.getter(78);
      MEMORY[0x1CCA81A90](v2, v3);

      MEMORY[0x1CCA81A90](62, 0xE100000000000000);
      result = v4[0];
      break;
  }

  return result;
}

void *static TypeIdentifier.PrimitiveTypeIdentifier.allCases.getter()
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1C8D0997C(0, 22, 0);
  v0 = 0;
  v1 = v6;
  v2 = *(v6 + 16);
  do
  {
    v3 = byte_1F489AA40[v0 + 32];
    v7 = v1;
    v4 = *(v1 + 24);
    if (v2 >= v4 >> 1)
    {
      sub_1C8D0997C((v4 > 1), v2 + 1, 1);
      v1 = v7;
    }

    ++v0;
    *(v1 + 16) = v2 + 1;
    *(v1 + v2++ + 32) = v3;
  }

  while (v0 != 22);
  sub_1C8D3784C(v1);
  return &unk_1F489AA78;
}

uint64_t TypeIdentifier.bundleIdentifier.getter()
{
  v1 = *v0;
  switch(*v0 >> 61)
  {
    case 2uLL:
      v6 = v1 & 0x1FFFFFFFFFFFFFFFLL;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      goto LABEL_5;
    case 3uLL:
      v3 = v1 & 0x1FFFFFFFFFFFFFFFLL;
      v4 = *(v3 + 40);
      v5 = *(v3 + 48);
LABEL_5:

      break;
    case 4uLL:
      return OUTLINED_FUNCTION_94();
    default:
      v2 = *MEMORY[0x1E69E0F60];
      sub_1C9063EEC();
      break;
  }

  return OUTLINED_FUNCTION_94();
}

uint64_t TypeIdentifier.AttributedTypeIdentifier.sourceContainer.getter()
{
  OUTLINED_FUNCTION_69_11();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_94();
  memcpy(v3, v4, 0x61uLL);
  return sub_1C8CC1340(v7, &v6);
}

uint64_t TypeIdentifier.AttributedTypeIdentifier.attributionContainer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 104), 0x61uLL);
  memcpy(a1, (v1 + 104), 0x61uLL);
  return sub_1C9018F50(__dst, &v4);
}

uint64_t TypeIdentifier.AttributedTypeIdentifier.typeName.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return OUTLINED_FUNCTION_94();
}

uint64_t static TypeIdentifier.AttributedTypeIdentifier.== infix(_:_:)(char *__src, void *a2)
{
  memcpy(__dst, __src, 0x61uLL);
  memcpy(v34, __src + 104, 0x61uLL);
  v4 = *(__src + 26);
  v5 = *(__src + 27);
  memcpy(v35, a2, 0x61uLL);
  memcpy(v36, a2 + 13, 0x61uLL);
  v6 = a2[26];
  v7 = a2[27];
  memcpy(v28, __src, 0x61uLL);
  memcpy(__srca, a2, 0x61uLL);
  sub_1C8CC1340(__dst, v38);
  sub_1C8CC1340(v35, v38);
  LOBYTE(a2) = static ContainerDefinition.== infix(_:_:)(v28);
  memcpy(v37, __srca, 0x61uLL);
  sub_1C8CC15FC(v37);
  memcpy(v38, v28, 0x61uLL);
  sub_1C8CC15FC(v38);
  if ((a2 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = v34[0];
  v9 = v34[1];
  memcpy(v31, &v34[2], sizeof(v31));
  v10 = v36[0];
  v11 = v36[1];
  v12 = memcpy(v30, &v36[2], sizeof(v30));
  if (v34[1])
  {
    OUTLINED_FUNCTION_91_7(v12, v13, v14, v15, v16, v17, v18, v19, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], *v27, *&v27[8], *&v27[16], *&v27[24], *&v27[32], *&v27[40], *&v27[48], *&v27[56], *&v27[64], *&v27[72], *&v27[80], *&v27[88], *&v27[96], v34[0], v34[1], v28[2]);
    memcpy(__srca, v28, 0x61uLL);
    if (v11)
    {
      memcpy(&v27[16], &v36[2], 0x51uLL);
      *v27 = v10;
      *&v27[8] = v11;
      sub_1C9018F50(v34, v26);
      sub_1C9018F50(v36, v26);
      sub_1C9018F50(v28, v26);
      v20 = static ContainerDefinition.== infix(_:_:)(__srca);
      memcpy(v25, v27, 0x61uLL);
      sub_1C8CC15FC(v25);
      memcpy(v26, __srca, 0x61uLL);
      sub_1C8CC15FC(v26);
      *v27 = v8;
      *&v27[8] = v9;
      memcpy(&v27[16], v31, 0x51uLL);
      sub_1C8D14208(v27, &qword_1EC312EF8, &unk_1C90839D0);
      if (v20)
      {
        goto LABEL_13;
      }

LABEL_10:
      v21 = 0;
      return v21 & 1;
    }

    memcpy(v27, v28, 0x61uLL);
    sub_1C9018F50(v34, v26);
    sub_1C9018F50(v36, v26);
    sub_1C9018F50(v28, v26);
    sub_1C8CC15FC(v27);
LABEL_9:
    v28[0] = v8;
    v28[1] = v9;
    memcpy(&v28[2], v31, 0x51uLL);
    v28[13] = v10;
    v28[14] = v11;
    memcpy(v29, v30, sizeof(v29));
    sub_1C8D14208(v28, &qword_1EC313988, &qword_1C906F410);
    goto LABEL_10;
  }

  if (v36[1])
  {
    sub_1C9018F50(v34, v28);
    sub_1C9018F50(v36, v28);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_91_7(v12, v13, v14, v15, v16, v17, v18, v19, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], *v27, *&v27[8], *&v27[16], *&v27[24], *&v27[32], *&v27[40], *&v27[48], *&v27[56], *&v27[64], *&v27[72], *&v27[80], *&v27[88], *&v27[96], v34[0], 0, v28[2]);
  sub_1C9018F50(v34, __srca);
  sub_1C9018F50(v36, __srca);
  sub_1C8D14208(v28, &qword_1EC312EF8, &unk_1C90839D0);
LABEL_13:
  if (v4 == v6 && v5 == v7)
  {
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_94();
    v21 = sub_1C9064C2C();
  }

  return v21 & 1;
}

uint64_t sub_1C90109D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43656372756F73 && a2 == 0xEF72656E6961746ELL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C90CA2A0 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D614E65707974 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C9010AF4(char a1)
{
  if (!a1)
  {
    return 0x6F43656372756F73;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x656D614E65707974;
}

uint64_t sub_1C9010B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C90109D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9010B8C(uint64_t a1)
{
  v2 = sub_1C9018FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9010BC8(uint64_t a1)
{
  v2 = sub_1C9018FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypeIdentifier.AttributedTypeIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DC80, &qword_1C90BC7C0);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  OUTLINED_FUNCTION_69_11();
  memcpy(v12, v13, v14);
  memcpy(v23, v0 + 13, 0x61uLL);
  v15 = v0[26];
  v17[1] = v0[27];
  v17[2] = v15;
  v16 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8CC1340(v22, v21);
  sub_1C9018FC0();
  sub_1C9064E1C();
  memcpy(v21, v22, 0x61uLL);
  sub_1C8E95790();
  OUTLINED_FUNCTION_85_6();
  sub_1C9064B8C();
  memcpy(v20, v21, 0x61uLL);
  sub_1C8CC15FC(v20);
  if (!v1)
  {
    memcpy(v19, v23, sizeof(v19));
    sub_1C9018F50(v23, v18);
    OUTLINED_FUNCTION_85_6();
    sub_1C9064B0C();
    memcpy(v18, v19, 0x61uLL);
    sub_1C8D14208(v18, &qword_1EC312EF8, &unk_1C90839D0);
    sub_1C9064B2C();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t TypeIdentifier.AttributedTypeIdentifier.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_69_11();
  memcpy(v3, v4, v5);
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[26];
  v9 = v1[27];
  ContainerDefinition.hash(into:)(a1);
  if (v7)
  {
    memcpy(&__src[2], v1 + 15, 0x51uLL);
    __src[0] = v6;
    __src[1] = v7;
    sub_1C9064D9C();
    v12[0] = v6;
    v12[1] = v7;
    memcpy(v13, v1 + 15, sizeof(v13));
    sub_1C8CC1340(v12, __dst);
    ContainerDefinition.hash(into:)(a1);
    memcpy(__dst, __src, 0x61uLL);
    sub_1C8CC15FC(__dst);
  }

  else
  {
    sub_1C9064D9C();
  }

  OUTLINED_FUNCTION_37_21();
  return sub_1C9063FBC();
}

uint64_t TypeIdentifier.AttributedTypeIdentifier.hashValue.getter()
{
  OUTLINED_FUNCTION_69_11();
  memcpy(v1, v2, v3);
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[26];
  v7 = v0[27];
  sub_1C9064D7C();
  ContainerDefinition.hash(into:)(v12);
  if (v5)
  {
    __src[0] = v4;
    __src[1] = v5;
    memcpy(&__src[2], v0 + 15, 0x51uLL);
    memcpy(v9, __src, sizeof(v9));
    sub_1C9064D9C();
    sub_1C8CC1340(__src, __dst);
    ContainerDefinition.hash(into:)(v12);
    memcpy(__dst, v9, 0x61uLL);
    sub_1C8CC15FC(__dst);
  }

  else
  {
    sub_1C9064D9C();
  }

  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void TypeIdentifier.AttributedTypeIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DC90, &qword_1C90BC7C8);
  OUTLINED_FUNCTION_11(v16);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_233();
  v11 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C9018FC0();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1C8E95D4C();
    OUTLINED_FUNCTION_86_8();
    sub_1C9064A6C();
    memcpy(v23, v22, 0x61uLL);
    OUTLINED_FUNCTION_86_8();
    sub_1C90649EC();
    memcpy(&v23[104], v21, 0x61uLL);
    v12 = sub_1C9064A0C();
    v13 = v1;
    v15 = v14;
    (*(v7 + 8))(v13, v16);
    memcpy(v17, v23, 0xD0uLL);
    v17[26] = v12;
    v17[27] = v15;
    memcpy(v5, v17, 0xE0uLL);
    sub_1C8D3EFB8(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v3);
    memcpy(v18, v23, sizeof(v18));
    v19 = v12;
    v20 = v15;
    sub_1C8D3F014(v18);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C901133C()
{
  sub_1C9064D7C();
  TypeIdentifier.AttributedTypeIdentifier.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t static TypeIdentifier.BuiltInTypeIdentifier.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 0uLL:
      if (v3)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0);
      v4 = 0;
      goto LABEL_34;
    case 1uLL:
      if (v3 != 1)
      {
        goto LABEL_36;
      }

      v5 = 1;
      sub_1C8D3F130(1uLL);
      v6 = 1;
      goto LABEL_39;
    case 2uLL:
      if (v3 != 2)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(2uLL);
      v4 = 2;
      goto LABEL_34;
    case 3uLL:
      if (v3 != 3)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(3uLL);
      v4 = 3;
      goto LABEL_34;
    case 4uLL:
      if (v3 != 4)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(4uLL);
      v4 = 4;
      goto LABEL_34;
    case 5uLL:
      if (v3 != 5)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(5uLL);
      v4 = 5;
      goto LABEL_34;
    case 6uLL:
      if (v3 != 6)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(6uLL);
      v4 = 6;
      goto LABEL_34;
    case 7uLL:
      if (v3 != 7)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(7uLL);
      v4 = 7;
      goto LABEL_34;
    case 8uLL:
      if (v3 != 8)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(8uLL);
      v4 = 8;
      goto LABEL_34;
    case 9uLL:
      if (v3 != 9)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(9uLL);
      v4 = 9;
      goto LABEL_34;
    case 0xAuLL:
      if (v3 != 10)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xAuLL);
      v4 = 10;
      goto LABEL_34;
    case 0xBuLL:
      if (v3 != 11)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xBuLL);
      v4 = 11;
      goto LABEL_34;
    case 0xCuLL:
      if (v3 != 12)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xCuLL);
      v4 = 12;
      goto LABEL_34;
    case 0xDuLL:
      if (v3 != 13)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xDuLL);
      v4 = 13;
      goto LABEL_34;
    case 0xEuLL:
      if (v3 != 14)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xEuLL);
      v4 = 14;
      goto LABEL_34;
    case 0xFuLL:
      if (v3 != 15)
      {
        goto LABEL_36;
      }

      sub_1C8D3F130(0xFuLL);
      v4 = 15;
LABEL_34:
      sub_1C8D3F130(v4);
      v5 = 1;
      break;
    default:
      if (v3 >= 0x10)
      {
        v8 = *(v2 + 16);
        v9 = *(v3 + 16);
        v10 = v8;
        sub_1C8D3F120(v3);
        sub_1C8D3F120(v2);
        v5 = static TypeIdentifier.== infix(_:_:)(&v10, &v9);
        sub_1C8D3F130(v2);
        v6 = v3;
LABEL_39:
        sub_1C8D3F130(v6);
      }

      else
      {
LABEL_36:
        sub_1C8D3F120(*a2);
        sub_1C8D3F120(v2);
        sub_1C8D3F130(v2);
        sub_1C8D3F130(v3);
        v5 = 0;
      }

      break;
  }

  return v5 & 1;
}

uint64_t sub_1C90115D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C96C0 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E65707974 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C90116A0(char a1)
{
  if (a1)
  {
    return 0x656D614E65707974;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C90116DC(uint64_t a1)
{
  v2 = sub_1C9019068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9011718(uint64_t a1)
{
  v2 = sub_1C9019068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9011754(uint64_t a1)
{
  v2 = sub_1C9019164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9011790(uint64_t a1)
{
  v2 = sub_1C9019164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C90117CC(uint64_t a1)
{
  v2 = sub_1C9019014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9011808(uint64_t a1)
{
  v2 = sub_1C9019014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9011844(uint64_t a1)
{
  v2 = sub_1C8CA2A24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9011880(uint64_t a1)
{
  v2 = sub_1C8CA2A24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C90118C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C90115D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C90118EC(uint64_t a1)
{
  v2 = sub_1C9019110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9011928(uint64_t a1)
{
  v2 = sub_1C9019110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9011964(uint64_t a1)
{
  v2 = sub_1C8CA0D3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C90119A0(uint64_t a1)
{
  v2 = sub_1C8CA0D3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C90119F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D754E646E756F62 && a2 == 0xEB00000000726562;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x79636E6572727563 && a2 == 0xE800000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701603686 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x61657241656D6F68 && a2 == 0xE800000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x756F52616964656DLL && a2 == 0xEA00000000006574;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x4D746E656D796170 && a2 == 0xED0000646F687465;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x74736163646F70 && a2 == 0xE700000000000000;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7261687365646972 && a2 == 0xEF6E6F6974704F65;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 7237750 && a2 == 0xE300000000000000;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
                                if (v20 || (sub_1C9064C2C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_1C9064C2C();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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

uint64_t sub_1C9011F18(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      return 0x6D754E646E756F62;
    case 2:
      v3 = 0x646E656C6163;
      goto LABEL_10;
    case 3:
      return 0x726F6C6F63;
    case 4:
      return 0x79636E6572727563;
    case 5:
      return 1701603686;
    case 6:
      return 0x61657241656D6F68;
    case 7:
      return 0x756F52616964656DLL;
    case 8:
      return 0x4D746E656D796170;
    case 9:
      return 0x74736163646F70;
    case 10:
      return 0x6E6F73726570;
    case 11:
      v3 = 0x6D6563616C70;
      goto LABEL_10;
    case 12:
      v3 = 0x687365646972;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
      break;
    case 13:
      result = 7237750;
      break;
    case 14:
      result = 0x656E6F5A656D6974;
      break;
    case 15:
      result = 0x7972657571;
      break;
    case 16:
      result = 0x6D6572757361656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C90120F8(uint64_t a1)
{
  v2 = sub_1C9019848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9012134(uint64_t a1)
{
  v2 = sub_1C9019848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012170(uint64_t a1)
{
  v2 = sub_1C90197F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C90121AC(uint64_t a1)
{
  v2 = sub_1C90197F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C90121E8(uint64_t a1)
{
  v2 = sub_1C90197A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9012224(uint64_t a1)
{
  v2 = sub_1C90197A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C90119F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9012290@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9011F10();
  *a1 = result;
  return result;
}

uint64_t sub_1C90122B8(uint64_t a1)
{
  v2 = sub_1C90192B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C90122F4(uint64_t a1)
{
  v2 = sub_1C90192B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012330(uint64_t a1)
{
  v2 = sub_1C901974C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C901236C(uint64_t a1)
{
  v2 = sub_1C901974C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C90123A8(uint64_t a1)
{
  v2 = sub_1C90196F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C90123E4(uint64_t a1)
{
  v2 = sub_1C90196F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012420(uint64_t a1)
{
  v2 = sub_1C90196A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C901245C(uint64_t a1)
{
  v2 = sub_1C90196A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012498(uint64_t a1)
{
  v2 = sub_1C9019650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C90124D4(uint64_t a1)
{
  v2 = sub_1C9019650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012510(uint64_t a1)
{
  v2 = sub_1C9019308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C901254C(uint64_t a1)
{
  v2 = sub_1C9019308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012588(uint64_t a1)
{
  v2 = sub_1C90195FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C90125C4(uint64_t a1)
{
  v2 = sub_1C90195FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012600(uint64_t a1)
{
  v2 = sub_1C90195A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C901263C(uint64_t a1)
{
  v2 = sub_1C90195A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012678(uint64_t a1)
{
  v2 = sub_1C9019500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C90126B4(uint64_t a1)
{
  v2 = sub_1C9019500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C90126F0(uint64_t a1)
{
  v2 = sub_1C90194AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C901272C(uint64_t a1)
{
  v2 = sub_1C90194AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012768(uint64_t a1)
{
  v2 = sub_1C9019554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C90127A4(uint64_t a1)
{
  v2 = sub_1C9019554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C90127E0(uint64_t a1)
{
  v2 = sub_1C901935C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C901281C(uint64_t a1)
{
  v2 = sub_1C901935C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012858(uint64_t a1)
{
  v2 = sub_1C9019458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9012894(uint64_t a1)
{
  v2 = sub_1C9019458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C90128D0(uint64_t a1)
{
  v2 = sub_1C90193B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C901290C(uint64_t a1)
{
  v2 = sub_1C90193B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9012948(uint64_t a1)
{
  v2 = sub_1C9019404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9012984(uint64_t a1)
{
  v2 = sub_1C9019404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypeIdentifier.BuiltInTypeIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v173 = v21;
  v24 = v20;
  v26 = v25;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD18, &qword_1C90BC838);
  OUTLINED_FUNCTION_11(v169);
  v167 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_87_8(v31);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD20, &qword_1C90BC840);
  OUTLINED_FUNCTION_11(v168);
  v166 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_17_35(v36, v155[0]);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD28, &qword_1C90BC848);
  v38 = OUTLINED_FUNCTION_11(v37);
  v162 = v39;
  v163 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_19_32(v43, v155[0]);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD30, &qword_1C90BC850);
  v45 = OUTLINED_FUNCTION_11(v44);
  v159 = v46;
  v160 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_16_32(v50, v155[0]);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD38, &qword_1C90BC858);
  v52 = OUTLINED_FUNCTION_11(v51);
  v157[0] = v53;
  v157[1] = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_33(v57, v155[0]);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD40, &qword_1C90BC860);
  v59 = OUTLINED_FUNCTION_11(v58);
  v155[30] = v60;
  v155[31] = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_34(v64, v155[0]);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD48, &qword_1C90BC868);
  OUTLINED_FUNCTION_4_22(v65, &a17);
  v155[27] = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_21_28(v70, v155[0]);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD50, &qword_1C90BC870);
  OUTLINED_FUNCTION_4_22(v71, &a14);
  v155[24] = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD58, &qword_1C90BC878);
  OUTLINED_FUNCTION_4_22(v77, &a11);
  v155[21] = v78;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD60, &qword_1C90BC880);
  OUTLINED_FUNCTION_4_22(v83, &v174);
  v155[18] = v84;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD68, &qword_1C90BC888);
  OUTLINED_FUNCTION_4_22(v89, &v171);
  v155[15] = v90;
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD70, &qword_1C90BC890);
  OUTLINED_FUNCTION_4_22(v95, &v168);
  v155[12] = v96;
  v98 = *(v97 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD78, &qword_1C90BC898);
  OUTLINED_FUNCTION_4_22(v101, &v165);
  v155[9] = v102;
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v106);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD80, &qword_1C90BC8A0);
  OUTLINED_FUNCTION_4_22(v107, &v162);
  v155[6] = v108;
  v110 = *(v109 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD88, &qword_1C90BC8A8);
  OUTLINED_FUNCTION_4_22(v113, &v159);
  v155[3] = v114;
  v116 = *(v115 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD90, &qword_1C90BC8B0);
  OUTLINED_FUNCTION_11(v119);
  v155[1] = v120;
  v122 = *(v121 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v123);
  v125 = v155 - v124;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DD98, &qword_1C90BC8B8);
  OUTLINED_FUNCTION_11(v126);
  v155[0] = v127;
  v129 = *(v128 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_233();
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDA0, &qword_1C90BC8C0);
  v171 = OUTLINED_FUNCTION_11(v131);
  v172 = v132;
  v134 = *(v133 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v135);
  v137 = v155 - v136;
  v138 = *v24;
  v139 = v26[4];
  OUTLINED_FUNCTION_217(v26, v26[3]);
  sub_1C90192B4();
  v170 = v137;
  sub_1C9064E1C();
  switch(v138)
  {
    case 0:
      LOBYTE(a10) = 0;
      sub_1C9019848();
      OUTLINED_FUNCTION_25_23();
      OUTLINED_FUNCTION_296(&v156);
      v140 = OUTLINED_FUNCTION_114();
      goto LABEL_20;
    case 1:
      LOBYTE(a10) = 1;
      sub_1C90197F4();
      OUTLINED_FUNCTION_25_23();
      OUTLINED_FUNCTION_296(v157);
      v140 = v125;
      v141 = v119;
      goto LABEL_20;
    case 2:
      LOBYTE(a10) = 2;
      sub_1C90197A0();
      v144 = v171;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      v145 = OUTLINED_FUNCTION_23(&v158);
      v146(v145, v155[4]);
      v147 = OUTLINED_FUNCTION_33_18();
      v149 = v144;
      goto LABEL_21;
    case 3:
      LOBYTE(a10) = 3;
      sub_1C901974C();
      OUTLINED_FUNCTION_99(&v160);
      v140 = OUTLINED_FUNCTION_6_26(&v161);
      v143 = &v162;
      goto LABEL_19;
    case 4:
      LOBYTE(a10) = 4;
      sub_1C90196F8();
      OUTLINED_FUNCTION_99(&v163);
      v140 = OUTLINED_FUNCTION_6_26(&v164);
      v143 = &v165;
      goto LABEL_19;
    case 5:
      LOBYTE(a10) = 5;
      sub_1C90196A4();
      OUTLINED_FUNCTION_99(&v166);
      v140 = OUTLINED_FUNCTION_6_26(&v167);
      v143 = &v168;
      goto LABEL_19;
    case 6:
      LOBYTE(a10) = 6;
      sub_1C9019650();
      OUTLINED_FUNCTION_99(&v169);
      v140 = OUTLINED_FUNCTION_6_26(&v170);
      v143 = &v171;
      goto LABEL_19;
    case 7:
      LOBYTE(a10) = 7;
      sub_1C90195FC();
      OUTLINED_FUNCTION_99(&v172);
      v140 = OUTLINED_FUNCTION_6_26(&v173);
      v143 = &v174;
      goto LABEL_19;
    case 8:
      LOBYTE(a10) = 8;
      sub_1C90195A8();
      OUTLINED_FUNCTION_99(&a9);
      v140 = OUTLINED_FUNCTION_6_26(&a10);
      v143 = &a11;
      goto LABEL_19;
    case 9:
      LOBYTE(a10) = 9;
      sub_1C9019554();
      OUTLINED_FUNCTION_99(&a12);
      v140 = OUTLINED_FUNCTION_6_26(&a13);
      v143 = &a14;
      goto LABEL_19;
    case 10:
      LOBYTE(a10) = 10;
      sub_1C9019500();
      OUTLINED_FUNCTION_99(&a15);
      v140 = OUTLINED_FUNCTION_6_26(&a16);
      v143 = &a17;
LABEL_19:
      v141 = *(v143 - 32);
      goto LABEL_20;
    case 11:
      LOBYTE(a10) = 11;
      sub_1C90194AC();
      OUTLINED_FUNCTION_99(&a18);
      goto LABEL_15;
    case 12:
      LOBYTE(a10) = 12;
      sub_1C9019458();
      OUTLINED_FUNCTION_12_38();
      goto LABEL_15;
    case 13:
      LOBYTE(a10) = 13;
      sub_1C9019404();
      OUTLINED_FUNCTION_12_38();
      goto LABEL_15;
    case 14:
      LOBYTE(a10) = 14;
      sub_1C90193B0();
      OUTLINED_FUNCTION_12_38();
LABEL_15:
      v140 = OUTLINED_FUNCTION_30();
      goto LABEL_20;
    case 15:
      LOBYTE(a10) = 16;
      sub_1C9019308();
      OUTLINED_FUNCTION_12_38();
      v140 = OUTLINED_FUNCTION_30();
      v141 = v169;
LABEL_20:
      v142(v140, v141);
      v147 = OUTLINED_FUNCTION_33_18();
      v149 = v137;
LABEL_21:
      v148(v147, v149);
      break;
    default:
      v150 = *(v138 + 16);
      LOBYTE(a10) = 15;
      sub_1C901935C();

      v151 = v164;
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      a10 = v150;
      sub_1C8C9FB9C();
      v152 = v168;
      sub_1C9064B8C();
      (*(v166 + 8))(v151, v152);
      v153 = OUTLINED_FUNCTION_17_3();
      v154(v153);

      break;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t TypeIdentifier.BuiltInTypeIdentifier.hash(into:)(uint64_t a1)
{
  switch(*v1)
  {
    case 0:
      v3 = 0;
      goto LABEL_18;
    case 1:
      v3 = 1;
      goto LABEL_18;
    case 2:
      v3 = 2;
      goto LABEL_18;
    case 3:
      v3 = 3;
      goto LABEL_18;
    case 4:
      v3 = 4;
      goto LABEL_18;
    case 5:
      v3 = 5;
      goto LABEL_18;
    case 6:
      v3 = 6;
      goto LABEL_18;
    case 7:
      v3 = 7;
      goto LABEL_18;
    case 8:
      v3 = 8;
      goto LABEL_18;
    case 9:
      v3 = 9;
      goto LABEL_18;
    case 0xALL:
      v3 = 10;
      goto LABEL_18;
    case 0xBLL:
      v3 = 11;
      goto LABEL_18;
    case 0xCLL:
      v3 = 12;
      goto LABEL_18;
    case 0xDLL:
      v3 = 13;
      goto LABEL_18;
    case 0xELL:
      v3 = 14;
      goto LABEL_18;
    case 0xFLL:
      v3 = 16;
LABEL_18:
      result = MEMORY[0x1CCA82810](v3);
      break;
    default:
      v5 = *(*v1 + 16);
      MEMORY[0x1CCA82810](15);
      result = TypeIdentifier.hash(into:)(a1);
      break;
  }

  return result;
}

uint64_t sub_1C9013764(void (*a1)(void *))
{
  v4[9] = *v1;
  sub_1C9064D7C();
  a1(v4);
  return sub_1C9064DBC();
}

void TypeIdentifier.BuiltInTypeIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_49_19(v25);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDB0, &qword_1C90BC8C8);
  OUTLINED_FUNCTION_11(v279);
  v264 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_87_8(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDB8, &qword_1C90BC8D0);
  v32 = OUTLINED_FUNCTION_11(v31);
  v265 = v33;
  v266 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v278 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDC0, &qword_1C90BC8D8);
  OUTLINED_FUNCTION_4_22(v38, &a17);
  v262 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_17_35(v43, v230);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDC8, &qword_1C90BC8E0);
  OUTLINED_FUNCTION_4_22(v44, &a15);
  v260 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  v275 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDD0, &qword_1C90BC8E8);
  OUTLINED_FUNCTION_4_22(v50, &a13);
  v258 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_97();
  v274 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDD8, &qword_1C90BC8F0);
  OUTLINED_FUNCTION_4_22(v56, &a11);
  v256 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_19_32(v61, v230);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDE0, &qword_1C90BC8F8);
  OUTLINED_FUNCTION_4_22(v62, &a9);
  v254 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_97();
  v272 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDE8, &qword_1C90BC900);
  OUTLINED_FUNCTION_4_22(v68, &v285);
  v252 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_97();
  v271 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDF0, &qword_1C90BC908);
  OUTLINED_FUNCTION_4_22(v74, &v283);
  v250 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_97();
  v283 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDF8, &qword_1C90BC910);
  OUTLINED_FUNCTION_4_22(v80, &v281);
  v248 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_74_6(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE00, &qword_1C90BC918);
  OUTLINED_FUNCTION_4_22(v86, &v279);
  v246 = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_243(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE08, &qword_1C90BC920);
  OUTLINED_FUNCTION_4_22(v92, &v277);
  v244 = v93;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_16_32(v97, v230);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE10, &qword_1C90BC928);
  OUTLINED_FUNCTION_4_22(v98, &v275);
  v242 = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_97();
  v269 = v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE18, &qword_1C90BC930);
  OUTLINED_FUNCTION_4_22(v104, &v273);
  v240 = v105;
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_97();
  v268 = v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE20, &qword_1C90BC938);
  OUTLINED_FUNCTION_4_22(v110, &v271);
  v238 = v111;
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_18_33(v115, v230);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE28, &qword_1C90BC940);
  OUTLINED_FUNCTION_4_22(v116, &v269);
  v236 = v117;
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_233();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE30, &qword_1C90BC948);
  OUTLINED_FUNCTION_11(v121);
  v235 = v122;
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v125);
  v127 = &v230 - v126;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE38, &qword_1C90BC950);
  OUTLINED_FUNCTION_11(v128);
  v130 = v129;
  v132 = *(v131 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_86();
  v134 = v20[3];
  v135 = v20[4];
  v284 = v20;
  OUTLINED_FUNCTION_217(v20, v134);
  sub_1C90192B4();
  v136 = v285;
  sub_1C9064DEC();
  if (!v136)
  {
    v233 = v127;
    v232 = v121;
    v234 = v21;
    v137 = v283;
    v285 = v130;
    v138 = sub_1C9064A9C();
    sub_1C8CB8914(v138, 0);
    if (v140 != v139 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_52_18();
      if (v143 == v144)
      {
        __break(1u);
        return;
      }

      v231 = *(v142 + v141);
      sub_1C8CB891C(v141 + 1);
      v146 = v145;
      v148 = v147;
      swift_unknownObjectRelease();
      if (v146 == v148 >> 1)
      {
        v149 = v279;
        v150 = v280;
        switch(v231)
        {
          case 1:
            OUTLINED_FUNCTION_275();
            sub_1C90197F4();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v202 = OUTLINED_FUNCTION_6_26(&v268);
            v203(v202, v237);
            v204 = OUTLINED_FUNCTION_3_59();
            v205(v204);
            v155 = 1;
            break;
          case 2:
            OUTLINED_FUNCTION_119_1();
            sub_1C90197A0();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v190 = OUTLINED_FUNCTION_6_26(&v270);
            v191(v190, v239);
            v192 = OUTLINED_FUNCTION_3_59();
            v193(v192);
            v155 = 2;
            break;
          case 3:
            OUTLINED_FUNCTION_44_23();
            sub_1C901974C();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v194 = OUTLINED_FUNCTION_6_26(&v272);
            v195(v194, v241);
            v196 = OUTLINED_FUNCTION_3_59();
            v197(v196);
            v155 = 3;
            break;
          case 4:
            OUTLINED_FUNCTION_231_2();
            sub_1C90196F8();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v178 = OUTLINED_FUNCTION_6_26(&v274);
            v179(v178, v243);
            v180 = OUTLINED_FUNCTION_3_59();
            v181(v180);
            v155 = 4;
            break;
          case 5:
            OUTLINED_FUNCTION_219_1();
            sub_1C90196A4();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v206 = OUTLINED_FUNCTION_6_26(&v276);
            v207(v206, v245);
            v208 = OUTLINED_FUNCTION_3_59();
            v209(v208);
            v155 = 5;
            break;
          case 6:
            OUTLINED_FUNCTION_270();
            sub_1C9019650();
            OUTLINED_FUNCTION_11_39();
            swift_unknownObjectRelease();
            v214 = OUTLINED_FUNCTION_6_26(&v278);
            v215(v214, v247);
            v216 = OUTLINED_FUNCTION_3_59();
            v217(v216);
            v155 = 6;
            break;
          case 7:
            OUTLINED_FUNCTION_269();
            sub_1C90195FC();
            OUTLINED_FUNCTION_11_39();
            swift_unknownObjectRelease();
            v198 = OUTLINED_FUNCTION_6_26(&v280);
            v199(v198, v249);
            v200 = OUTLINED_FUNCTION_3_59();
            v201(v200);
            v155 = 7;
            break;
          case 8:
            OUTLINED_FUNCTION_53_16();
            sub_1C90195A8();
            OUTLINED_FUNCTION_11_39();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296(&v282);
            v224(v137, v251);
            v225 = OUTLINED_FUNCTION_3_59();
            v226(v225);
            v155 = 8;
            break;
          case 9:
            OUTLINED_FUNCTION_60_15();
            sub_1C9019554();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v186 = OUTLINED_FUNCTION_6_26(&v284);
            v187(v186, v253);
            v188 = OUTLINED_FUNCTION_3_59();
            v189(v188);
            v155 = 9;
            break;
          case 10:
            OUTLINED_FUNCTION_54_16();
            sub_1C9019500();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v218 = OUTLINED_FUNCTION_6_26(&v286);
            v219(v218, v255);
            v220 = OUTLINED_FUNCTION_3_59();
            v221(v220);
            v155 = 10;
            break;
          case 11:
            OUTLINED_FUNCTION_62_14();
            sub_1C90194AC();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v174 = OUTLINED_FUNCTION_6_26(&a10);
            v175(v174, v257);
            v176 = OUTLINED_FUNCTION_3_59();
            v177(v176);
            v155 = 11;
            break;
          case 12:
            OUTLINED_FUNCTION_61_17();
            sub_1C9019458();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v182 = OUTLINED_FUNCTION_6_26(&a12);
            v183(v182, v259);
            v184 = OUTLINED_FUNCTION_3_59();
            v185(v184);
            v155 = 12;
            break;
          case 13:
            OUTLINED_FUNCTION_56_14();
            sub_1C9019404();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v210 = OUTLINED_FUNCTION_6_26(&a14);
            v211(v210, v261);
            v212 = OUTLINED_FUNCTION_3_59();
            v213(v212);
            v155 = 13;
            break;
          case 14:
            OUTLINED_FUNCTION_63_15();
            sub_1C90193B0();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v170 = OUTLINED_FUNCTION_6_26(&a16);
            v171(v170, v263);
            v172 = OUTLINED_FUNCTION_3_59();
            v173(v172);
            v155 = 14;
            break;
          case 15:
            OUTLINED_FUNCTION_71_10();
            sub_1C901935C();
            OUTLINED_FUNCTION_11_39();
            OUTLINED_FUNCTION_50();
            v155 = swift_allocObject();
            sub_1C8CB892C();
            v222 = v266;
            sub_1C9064A6C();
            v223 = v285;
            swift_unknownObjectRelease();
            v227 = OUTLINED_FUNCTION_184_3();
            v228(v227, v222);
            (*(v223 + 8))(v22, v128);
            break;
          case 16:
            OUTLINED_FUNCTION_59_15();
            sub_1C9019308();
            v166 = v277;
            OUTLINED_FUNCTION_11_39();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296(&a18);
            v167(v166, v149);
            v168 = OUTLINED_FUNCTION_3_59();
            v169(v168);
            v155 = 15;
            break;
          default:
            HIBYTE(a10) = 0;
            sub_1C9019848();
            OUTLINED_FUNCTION_7_49();
            swift_unknownObjectRelease();
            v151 = OUTLINED_FUNCTION_6_26(&v267);
            v152(v151, v232);
            v153 = OUTLINED_FUNCTION_3_59();
            v154(v153);
            v155 = 0;
            break;
        }

        v229 = v284;
        *v150 = v155;
        __swift_destroy_boxed_opaque_existential_1(v229);
        goto LABEL_10;
      }
    }

    sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v157 = v156;
    v158 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v157 = &type metadata for TypeIdentifier.BuiltInTypeIdentifier;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    v159 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_42_13();
    v161 = *(v160 + 104);
    v162 = OUTLINED_FUNCTION_81_9();
    v163(v162);
    swift_willThrow();
    swift_unknownObjectRelease();
    v164 = OUTLINED_FUNCTION_2_71();
    v165(v164);
  }

  __swift_destroy_boxed_opaque_existential_1(v284);
LABEL_10:
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}