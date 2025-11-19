uint64_t sub_1C721E790(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636961736F6DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616369736D696877 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x75747865746E6F63 && a2 == 0xEA00000000006C61)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

uint64_t sub_1C721E940(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x636961736F6DLL;
      break;
    case 2:
      result = 0x686372616573;
      break;
    case 3:
      result = 0x616369736D696877;
      break;
    case 4:
      result = 0x75747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C721E9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C721E790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C721EA04(uint64_t a1)
{
  v2 = sub_1C72246B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EA40(uint64_t a1)
{
  v2 = sub_1C72246B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721EA7C(uint64_t a1)
{
  v2 = sub_1C722470C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EAB8(uint64_t a1)
{
  v2 = sub_1C722470C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721EAF4(uint64_t a1)
{
  v2 = sub_1C7224808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EB30(uint64_t a1)
{
  v2 = sub_1C7224808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721EB6C(uint64_t a1)
{
  v2 = sub_1C722485C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EBA8(uint64_t a1)
{
  v2 = sub_1C722485C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721EBE4(uint64_t a1)
{
  v2 = sub_1C72247B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EC20(uint64_t a1)
{
  v2 = sub_1C72247B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721EC5C(uint64_t a1)
{
  v2 = sub_1C7224760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721EC98(uint64_t a1)
{
  v2 = sub_1C7224760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestion.Source.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219460);
  OUTLINED_FUNCTION_3_0();
  v46 = v5;
  v47 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_36();
  v45 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219468);
  OUTLINED_FUNCTION_3_0();
  v43 = v9;
  v44 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_36();
  v42 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219470);
  OUTLINED_FUNCTION_3_0();
  v40 = v13;
  v41 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_36();
  v39 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219478);
  OUTLINED_FUNCTION_3_0();
  v37 = v17;
  v38 = v16;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_36();
  v36 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219480);
  OUTLINED_FUNCTION_3_0();
  v34 = v21;
  v35 = v20;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v33 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219488);
  OUTLINED_FUNCTION_3_0();
  v27 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_158();
  v29 = *v0;
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C72246B8();
  sub_1C755200C();
  switch(v29)
  {
    case 1:
      sub_1C7224808();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      goto LABEL_7;
    case 2:
      sub_1C72247B4();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      goto LABEL_7;
    case 3:
      sub_1C7224760();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      goto LABEL_7;
    case 4:
      sub_1C722470C();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
LABEL_7:
      v30 = OUTLINED_FUNCTION_7_18();
      v32(v30, v31);
      break;
    default:
      sub_1C722485C();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      (*(v34 + 8))(v24, v35);
      break;
  }

  (*(v27 + 8))(v1, v25);
  OUTLINED_FUNCTION_125();
}

uint64_t _s18PhotosIntelligence16PromptSuggestionV15EngagementStateO9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void PromptSuggestion.Source.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v55 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194A0);
  OUTLINED_FUNCTION_3_0();
  v52 = v6;
  v53 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36();
  v57 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194A8);
  OUTLINED_FUNCTION_3_0();
  v50 = v10;
  v51 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_36();
  v56 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194B0);
  OUTLINED_FUNCTION_3_0();
  v48 = v15;
  v49 = v14;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_36();
  v54 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194B8);
  OUTLINED_FUNCTION_3_0();
  v46 = v19;
  v47 = v18;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_158();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194C0);
  OUTLINED_FUNCTION_3_0();
  v45 = v22;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_61_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194C8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C72246B8();
  sub_1C7551FFC();
  if (v0)
  {
    goto LABEL_8;
  }

  v44 = v21;
  v25 = v56;
  v26 = sub_1C7551C5C();
  sub_1C6FD80E0(v26, 0);
  if (v28 == v29 >> 1)
  {
LABEL_7:
    v34 = sub_1C75518EC();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v36 = &type metadata for PromptSuggestion.Source;
    sub_1C7551B5C();
    OUTLINED_FUNCTION_588();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v37 = OUTLINED_FUNCTION_23_14();
    v38(v37);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_9:
    OUTLINED_FUNCTION_125();
    return;
  }

  if (v28 < (v29 >> 1))
  {
    v43 = *(v27 + v28);
    sub_1C6FD80C8(v28 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      switch(v43)
      {
        case 1:
          sub_1C7224808();
          v25 = v2;
          OUTLINED_FUNCTION_1_45();
          swift_unknownObjectRelease();
          v40 = v46;
          v39 = v47;
          goto LABEL_14;
        case 2:
          sub_1C72247B4();
          v25 = v54;
          OUTLINED_FUNCTION_1_45();
          swift_unknownObjectRelease();
          v40 = v48;
          v39 = v49;
          goto LABEL_14;
        case 3:
          sub_1C7224760();
          OUTLINED_FUNCTION_1_45();
          swift_unknownObjectRelease();
          v39 = v50;
          v40 = v51;
LABEL_14:
          (*(v40 + 8))(v25, v39);
          break;
        case 4:
          sub_1C722470C();
          sub_1C7551B4C();
          swift_unknownObjectRelease();
          (*(v53 + 8))(v57, v52);
          break;
        default:
          sub_1C722485C();
          OUTLINED_FUNCTION_1_45();
          swift_unknownObjectRelease();
          (*(v45 + 8))(v1, v44);
          break;
      }

      v41 = OUTLINED_FUNCTION_23_14();
      v42(v41);
      *v55 = v43;
      __swift_destroy_boxed_opaque_existential_1(v4);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

PhotosIntelligence::PromptSuggestion::ActionType_optional __swiftcall PromptSuggestion.ActionType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

PhotosIntelligence::PromptSuggestion::ContentType sub_1C721FAA4@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = PromptSuggestion.ContentType.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C721FAE4@<X0>(uint64_t *a1@<X8>)
{
  result = PromptSuggestion.ContentType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t PromptSuggestion.MusicProperties.description.getter()
{
  v1 = *v0;
  sub_1C755180C();

  v2 = MEMORY[0x1CCA5D090](v1, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](58, 0xE100000000000000);
  v3 = OUTLINED_FUNCTION_64();
  v4 = MEMORY[0x1CCA5D090](v3);
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  return 0xD000000000000010;
}

PhotosIntelligence::PromptSuggestion::MusicProperties __swiftcall PromptSuggestion.MusicProperties.init(moods:keywords:)(Swift::OpaquePointer moods, Swift::OpaquePointer keywords)
{
  v2->_rawValue = moods._rawValue;
  v2[1]._rawValue = keywords._rawValue;
  result.keywords = keywords;
  result.moods = moods;
  return result;
}

uint64_t static PromptSuggestion.MusicProperties.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1C70020D4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_90();

  return sub_1C70020D4(v2, v3);
}

uint64_t sub_1C721FC50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646F6F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C721FD14(char a1)
{
  if (a1)
  {
    return 0x7364726F7779656BLL;
  }

  else
  {
    return 0x73646F6F6DLL;
  }
}

uint64_t sub_1C721FD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C721FC50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C721FD78(uint64_t a1)
{
  v2 = sub_1C72248B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721FDB4(uint64_t a1)
{
  v2 = sub_1C72248B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestion.MusicProperties.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194D0);
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_61_1();
  v5 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_70(v5, v6);
  v7 = sub_1C72248B0();
  sub_1C75504FC();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  OUTLINED_FUNCTION_30_1();
  sub_1C7224904(v8);
  OUTLINED_FUNCTION_97();
  sub_1C7551D2C();

  if (!v7)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_125();
}

void PromptSuggestion.MusicProperties.hash(into:)()
{
  sub_1C70418D0();
  OUTLINED_FUNCTION_90();

  sub_1C70418D0();
}

uint64_t PromptSuggestion.MusicProperties.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  sub_1C70418D0();
  sub_1C70418D0();
  return sub_1C7551FAC();
}

void PromptSuggestion.MusicProperties.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194E0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_70(v12, v12[3]);
  sub_1C72248B0();
  OUTLINED_FUNCTION_73_12();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_12_0();
    sub_1C7224904(v16);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_52();
    v17 = OUTLINED_FUNCTION_282();
    v18(v17);
    *v14 = a10;
    v14[1] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C72201C0()
{
  sub_1C7551F3C();
  sub_1C70418D0();
  sub_1C70418D0();
  return sub_1C7551FAC();
}

uint64_t PromptSuggestion.promptMetadata.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 168);
  v7[0] = *(v1 + 152);
  v7[1] = v2;
  v4 = *(v1 + 200);
  v8 = *(v1 + 184);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C712A774(v7, &v6, &qword_1EC2194E8);
}

uint64_t PromptSuggestion.generationDate.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = type metadata accessor for PromptSuggestion(v2);
  return sub_1C712A774(v1 + *(v3 + 108), v0, &unk_1EC219230);
}

uint64_t PromptSuggestion.musicProperties.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = (v1 + *(type metadata accessor for PromptSuggestion(v2) + 112));
  v4 = *v3;
  v5 = v3[1];
  *v0 = *v3;
  v0[1] = v5;

  return sub_1C7224968(v4);
}

void PromptSuggestion.init(promptTemplate:attributedPromptText:traits:assetUUIDs:keyAssetUUID:isValid:source:action:content:queryTokens:musicQueryTokens:musicSubstring:promptMetadata:associatedContactName:associatedPlaceName:associatedCityName:locale:embedding:templateHash:generationDate:musicProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char *a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, uint64_t a35, uint64_t a36, uint64_t *a37)
{
  OUTLINED_FUNCTION_33();
  v79 = v37;
  v78 = v38;
  v77 = v39;
  v76 = v40;
  v75 = v41;
  v74 = v42;
  v81 = v43;
  v80 = v44;
  v46 = v45;
  v47 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_14_0();
  v53 = v52 - v51;

  v54 = *a21;
  v55 = *a22;
  v56 = *a23;
  v57 = *a37;
  v82 = a37[1];
  *(v46 + 17) = 0;
  sub_1C754DFEC();
  v58 = sub_1C754DF8C();
  v60 = v59;
  (*(v49 + 8))(v53, v47);
  *v46 = v58;
  *(v46 + 8) = v60;
  *(v46 + 304) = v74;
  *(v46 + 64) = v75;
  v61 = *(v76 + 16);
  *(v46 + 24) = v76;
  *(v46 + 32) = v61;
  *(v46 + 40) = v77;
  *(v46 + 48) = v78;
  *(v46 + 56) = v79;
  *(v46 + 16) = v54;
  *(v46 + 72) = v55;
  *(v46 + 80) = v56;
  *(v46 + 88) = a24;
  *(v46 + 96) = a25;
  v62 = [v74 string];
  v63 = sub_1C755068C();
  v65 = v64;

  *(v46 + 104) = v63;
  *(v46 + 112) = v65;
  *(v46 + 120) = v80;
  *(v46 + 128) = v81;
  if (a27)
  {
    v66 = a26;
  }

  else
  {
    v66 = 0;
  }

  if (a27)
  {
    v67 = a27;
  }

  else
  {
    v67 = 0xE000000000000000;
  }

  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v66, v67);

  OUTLINED_FUNCTION_68_16();
  *(v46 + 136) = v63;
  *(v46 + 144) = v65;
  *(v46 + 288) = a26;
  *(v46 + 296) = a27;
  *(v46 + 200) = v68;
  *(v46 + 216) = a31;
  *(v46 + 232) = a32;
  *(v46 + 248) = a33;
  *(v46 + 264) = a34;
  *(v46 + 280) = a35;
  v69 = type metadata accessor for PromptSuggestion(0);
  v70 = *(v69 + 108);
  v71 = sub_1C754DF6C();
  OUTLINED_FUNCTION_12();
  (*(v72 + 32))(v46 + v70, a36, v71);
  __swift_storeEnumTagSinglePayload(v46 + v70, 0, 1, v71);
  v73 = (v46 + *(v69 + 112));
  *v73 = v57;
  v73[1] = v82;
  OUTLINED_FUNCTION_25_0();
}

id PromptSuggestion.longAttributedPromptText.getter()
{
  if (*(v0 + 296))
  {
    v1 = *(v0 + 304);
    v2 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    sub_1C75504FC();
    v3 = [v2 initWithAttributedString_];
    sub_1C6F65BE8(0, &qword_1EDD0CE30);
    v4 = sub_1C7073450();
    [v3 appendAttributedString_];

    return v3;
  }

  else
  {
    v6 = *(v0 + 304);

    return v6;
  }
}

uint64_t PromptSuggestion.isValidLocale.getter()
{
  v1 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  sub_1C754E11C();
  v10 = sub_1C754E04C();
  v12 = v11;
  (*(v3 + 8))(v7, v1);
  if (v9)
  {
    if (v8 == v10 && v9 == v12)
    {
      v14 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_64();
      v14 = sub_1C7551DBC();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t PromptSuggestion.shortDescription.getter()
{
  v1 = 0xE400000000000000;
  v2 = 1701736270;
  switch(*(v0 + 16))
  {
    case 1:
      v1 = 0xE600000000000000;
      v2 = OUTLINED_FUNCTION_79_0();
      break;
    case 2:
      v1 = 0xE600000000000000;
      v2 = OUTLINED_FUNCTION_81();
      break;
    case 3:
      v1 = 0xE90000000000006CLL;
      v2 = OUTLINED_FUNCTION_46();
      break;
    case 4:
      v1 = 0xEA00000000006C61;
      v2 = OUTLINED_FUNCTION_47_2();
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v2, v1);

  MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](*(v0 + 104), *(v0 + 112));
  v3 = *(v0 + 296);
  if (v3)
  {
    v4 = *(v0 + 288);
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v4, v3);

    MEMORY[0x1CCA5CD70](10535, 0xE200000000000000);
    v5 = 0x20636973756D2820;
    v6 = 0xEB0000000027203ALL;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  MEMORY[0x1CCA5CD70](v5, v6);

  return 91;
}

void PromptSuggestion.description.getter()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v75 - v5;
  sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v82 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v9 = *(v2 + 96);
  v79 = v12 - v11;
  v80 = v10;
  v78 = v6;
  v81 = v2;
  if (v9)
  {
    v90 = 91;
    v91 = 0xE100000000000000;
    v13 = *(v9 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v89 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v15 = 0;
      v16 = (v9 + 32);
      v14 = v89;
      v83 = v9;
      while (v15 < *(v9 + 16))
      {
        memcpy(v88, v16, sizeof(v88));
        memcpy(v87, v16, sizeof(v87));
        sub_1C6FCA6E4(v88, v86);
        QueryToken.description.getter();
        OUTLINED_FUNCTION_40_24(v17, v18);
        OUTLINED_FUNCTION_50_20();
        OUTLINED_FUNCTION_30_25();
        OUTLINED_FUNCTION_93_10();
        sub_1C6FDD548(v88);
        v89 = v14;
        v19 = *(v14 + 16);
        if (v19 >= *(v14 + 24) >> 1)
        {
          OUTLINED_FUNCTION_72_12();
          v14 = v89;
        }

        ++v15;
        *(v14 + 16) = v19 + 1;
        v20 = v14 + 16 * v19;
        *(v20 + 32) = v13;
        *(v20 + 40) = v1;
        v16 += 120;
        v9 = v83;
        if (v13 == v15)
        {
          v2 = v81;
          goto LABEL_9;
        }
      }

      goto LABEL_64;
    }

LABEL_9:
    *v88 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_15_46(&qword_1EDD0CF58);
    OUTLINED_FUNCTION_69_14();

    v21 = OUTLINED_FUNCTION_64();
    MEMORY[0x1CCA5CD70](v21);

    MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
    v76 = v90;
    v77 = v91;
  }

  else
  {
    v76 = 7104878;
    v77 = 0xE300000000000000;
  }

  *v88 = 0;
  *&v88[8] = 0xE000000000000000;
  sub_1C755180C();
  v90 = *v88;
  v91 = *&v88[8];
  MEMORY[0x1CCA5CD70](0xD00000000000003BLL, 0x80000001C75A4DD0);
  MEMORY[0x1CCA5CD70](*v2, *(v2 + 8));
  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A4E10);
  if (!*(v2 + 128))
  {
    OUTLINED_FUNCTION_23_29();
  }

  sub_1C75504FC();
  v22 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v22);

  v23 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v23 | 0x6F72702000000000, 0xED0000203A74706DLL);
  MEMORY[0x1CCA5CD70](*(v2 + 104), *(v2 + 112));
  v24 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v24 | 0x73756D2000000000, 0xEC000000203A6369);
  if (!*(v2 + 296))
  {
    OUTLINED_FUNCTION_23_29();
  }

  sub_1C75504FC();
  v25 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v25);

  OUTLINED_FUNCTION_94_10();
  MEMORY[0x1CCA5CD70](*(v2 + 136), *(v2 + 144));
  v26 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v26 | 0x6172742000000000, 0xED0000203A737469);
  v27 = MEMORY[0x1CCA5D090](*(v2 + 64), MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v27);

  v28 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v28 | 0x2073492000000000, 0xEF203A64696C6176);
  if (*(v2 + 56))
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (*(v2 + 56))
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v29, v30);

  v31 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v31 | 0x7463612000000000, 0xED0000203A6E6F69);
  v32 = 0xE700000000000000;
  v33 = 0x6E776F6E6B6E75;
  switch(*(v2 + 72))
  {
    case 1:
      v32 = 0xE600000000000000;
      v34 = 1769239919;
      goto LABEL_24;
    case 2:
      v32 = 0xE400000000000000;
      v33 = 1885958772;
      break;
    case 3:
      v32 = 0xE800000000000000;
      v33 = 0x676E6970706F6873;
      break;
    case 4:
      v32 = 0xE600000000000000;
      v34 = 1768843620;
LABEL_24:
      v33 = v34 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000;
      break;
    case 5:
      v32 = 0xE400000000000000;
      v33 = 1701670760;
      break;
    case 6:
      v32 = 0xEE00736E6F697461;
      v33 = 0x63696E756D6D6F63;
      break;
    case 7:
      v33 = 0x7373656E746966;
      break;
    default:
      break;
  }

  v35 = 0xED0000203A656372;
  MEMORY[0x1CCA5CD70](v33, v32);

  v36 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v36 | 0x6E6F632000000000, 0xEE00203A746E6574);
  *v88 = *(v2 + 80);
  sub_1C721B350();
  MEMORY[0x1CCA5CD70]();

  OUTLINED_FUNCTION_94_10();
  *v88 = *(v2 + 32);
  v37 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v37);

  v38 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v38 | 0x756F732000000000, 0xED0000203A656372);
  v39 = 0xE400000000000000;
  v40 = 1701736270;
  switch(*(v2 + 16))
  {
    case 1:
      v39 = 0xE600000000000000;
      v40 = OUTLINED_FUNCTION_79_0();
      break;
    case 2:
      v39 = 0xE600000000000000;
      v40 = OUTLINED_FUNCTION_81();
      break;
    case 3:
      v39 = 0xE90000000000006CLL;
      v40 = OUTLINED_FUNCTION_46();
      break;
    case 4:
      v39 = 0xEA00000000006C61;
      v40 = OUTLINED_FUNCTION_47_2();
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v40, v39);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75A4E70);
  v88[0] = *(v2 + 17);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C75A4E90);
  if (*(v2 + 224))
  {
    v35 = *(v2 + 216);
  }

  else
  {
    OUTLINED_FUNCTION_23_29();
  }

  sub_1C75504FC();
  v41 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v41);

  MEMORY[0x1CCA5CD70](0xD00000000000001BLL, 0x80000001C75A4EB0);
  if (*(v2 + 240))
  {
    v35 = *(v2 + 232);
  }

  else
  {
    OUTLINED_FUNCTION_23_29();
  }

  sub_1C75504FC();
  v42 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v42);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75A4ED0);
  v43 = *(v2 + 160);
  if (v43 == 1)
  {
    OUTLINED_FUNCTION_23_29();
  }

  else
  {
    *v88 = *(v2 + 152);
    *&v88[8] = v43;
    v44 = *(v2 + 184);
    *&v88[16] = *(v2 + 168);
    *&v88[32] = v44;
    *&v88[48] = *(v2 + 200);
    TemplatedPromptMetadata.description.getter();
    v1 = v45;
    v87[0] = v46;
    v87[1] = v45;
    v86[0] = 10;
    v86[1] = 0xE100000000000000;
    v84 = 2314;
    v85 = 0xE200000000000000;
    sub_1C6FB5E8C();
    v35 = OUTLINED_FUNCTION_30_25();
  }

  v47 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v47);

  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A4EF0);
  v48 = *(v2 + 88);
  v49 = *(v48 + 16);
  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v89 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v51 = 0;
    v52 = (v48 + 32);
    v50 = v89;
    v83 = v49;
    while (v51 < *(v48 + 16))
    {
      memcpy(v88, v52, sizeof(v88));
      memcpy(v87, v52, sizeof(v87));
      sub_1C6FCA6E4(v88, v86);
      QueryToken.description.getter();
      OUTLINED_FUNCTION_40_24(v53, v54);
      OUTLINED_FUNCTION_50_20();
      OUTLINED_FUNCTION_30_25();
      OUTLINED_FUNCTION_93_10();
      sub_1C6FDD548(v88);
      v89 = v50;
      v55 = *(v50 + 16);
      if (v55 >= *(v50 + 24) >> 1)
      {
        OUTLINED_FUNCTION_72_12();
        v50 = v89;
      }

      ++v51;
      *(v50 + 16) = v55 + 1;
      v56 = v50 + 16 * v55;
      *(v56 + 32) = v35;
      *(v56 + 40) = v1;
      v52 += 120;
      if (v83 == v51)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
    return;
  }

LABEL_50:
  *v88 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  OUTLINED_FUNCTION_15_46(&qword_1EDD0CF58);
  OUTLINED_FUNCTION_69_14();

  v57 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v57);

  MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75A4F10);
  MEMORY[0x1CCA5CD70](v76, v77);

  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A4F30);
  v58 = v80;
  v59 = v81;
  v60 = v79;
  v61 = 7104878;
  if (!*(v81 + 48))
  {
    OUTLINED_FUNCTION_23_29();
  }

  sub_1C75504FC();
  v62 = OUTLINED_FUNCTION_58();
  MEMORY[0x1CCA5CD70](v62);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75A4F50);
  v63 = type metadata accessor for PromptSuggestion(0);
  v64 = (v59 + *(v63 + 112));
  v65 = *v64;
  if (*v64)
  {
    v66 = v64[1];
    *v88 = v65;
    *&v88[8] = v66;
    v67 = PromptSuggestion.MusicProperties.description.getter();
    v69 = v68;
  }

  else
  {
    v69 = 0xE300000000000000;
    v67 = 7104878;
  }

  MEMORY[0x1CCA5CD70](v67, v69);

  v70 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v70 | 0x636F4C2000000000, 0xED0000203A656C61);
  if (*(v59 + 256))
  {
    v61 = *(v59 + 248);
    v71 = *(v59 + 256);
  }

  else
  {
    v71 = 0xE300000000000000;
  }

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v61, v71);

  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A4F70);
  v72 = v78;
  sub_1C712A774(v59 + *(v63 + 108), v78, &unk_1EC219230);
  if (__swift_getEnumTagSinglePayload(v72, 1, v58) == 1)
  {
    sub_1C754DF3C();
    if (__swift_getEnumTagSinglePayload(v72, 1, v58) != 1)
    {
      sub_1C6FD7FC8(v72, &unk_1EC219230);
    }
  }

  else
  {
    (*(v82 + 32))(v60, v72, v58);
  }

  OUTLINED_FUNCTION_4_57();
  sub_1C7224414(v73);
  v74 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v74);

  (*(v82 + 8))(v60, v58);
  OUTLINED_FUNCTION_25_0();
}

uint64_t PromptSuggestion.dictionaryRepresentation()()
{
  v13[4] = *MEMORY[0x1E69E9840];
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_11_42();
  sub_1C7224414(v1);
  OUTLINED_FUNCTION_294();
  sub_1C754D78C();

  if (!v0)
  {
    v3 = objc_opt_self();
    OUTLINED_FUNCTION_294();
    v4 = sub_1C754DDCC();
    v13[0] = 0;
    v5 = [v3 JSONObjectWithData:v4 options:0 error:v13];

    if (v5)
    {
      v6 = v13[0];
      sub_1C75515CC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
      if (swift_dynamicCast())
      {
        v7 = OUTLINED_FUNCTION_294();
        sub_1C6FC1640(v7, v8);
        return v12;
      }

      sub_1C72249A8();
      swift_allocError();
    }

    else
    {
      v9 = v13[0];
      sub_1C754DBEC();
    }

    swift_willThrow();
    v10 = OUTLINED_FUNCTION_294();
    return sub_1C6FC1640(v10, v11);
  }

  return result;
}

uint64_t static PromptSuggestion.createPromptSuggestion(from:)()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1C755048C();
  v10[0] = 0;
  v2 = [v0 dataWithJSONObject:v1 options:0 error:v10];

  v3 = v10[0];
  if (v2)
  {
    v4 = sub_1C754DDEC();
    v6 = v5;

    sub_1C754D73C();
    swift_allocObject();
    sub_1C754D72C();
    type metadata accessor for PromptSuggestion(0);
    OUTLINED_FUNCTION_11_42();
    sub_1C7224414(v7);
    OUTLINED_FUNCTION_84_8();
    sub_1C754D71C();

    return sub_1C6FC1640(v4, v6);
  }

  else
  {
    v9 = v3;
    sub_1C754DBEC();

    return swift_willThrow();
  }
}

uint64_t sub_1C7221AF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D656761676E65 && a2 == 0xEF6574617453746ELL;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465737341706F74 && a2 == 0xED00007344495555;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x756F437465737361 && a2 == 0xEA0000000000746ELL;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746573734179656BLL && a2 == 0xEC00000044495555;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64696C61567369 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x737469617274 && a2 == 0xE600000000000000;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6B6F547972657571 && a2 == 0xEB00000000736E65;
                      if (v15 || (sub_1C7551DBC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000010 && 0x80000001C75A5010 == a2;
                        if (v16 || (sub_1C7551DBC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x655474706D6F7270 && a2 == 0xEA00000000007478;
                          if (v17 || (sub_1C7551DBC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x655474706D6F7270 && a2 == 0xEE006574616C706DLL;
                            if (v18 || (sub_1C7551DBC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6D6F7250676E6F6CLL && a2 == 0xEE00747865547470;
                              if (v19 || (sub_1C7551DBC() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x654D74706D6F7270 && a2 == 0xEE00617461646174;
                                if (v20 || (sub_1C7551DBC() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x80000001C75A4FB0 == a2;
                                  if (v21 || (sub_1C7551DBC() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000012 && 0x80000001C75A4FD0 == a2;
                                    if (v22 || (sub_1C7551DBC() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
                                      if (v23 || (sub_1C7551DBC() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067;
                                        if (v24 || (sub_1C7551DBC() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6574616C706D6574 && a2 == 0xEC00000068736148;
                                          if (v25 || (sub_1C7551DBC() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x627553636973756DLL && a2 == 0xEE00676E69727473;
                                            if (v26 || (sub_1C7551DBC() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000014 && 0x80000001C75A5030 == a2;
                                              if (v27 || (sub_1C7551DBC() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x69746172656E6567 && a2 == 0xEE00657461446E6FLL;
                                                if (v28 || (sub_1C7551DBC() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (a1 == 0x6F7250636973756DLL && a2 == 0xEF73656974726570)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v30 = sub_1C7551DBC();

                                                  if (v30)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 25;
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

uint64_t sub_1C722228C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 0x656D656761676E65;
      break;
    case 3:
      v3 = 1097887604;
      goto LABEL_17;
    case 4:
      result = 0x756F437465737361;
      break;
    case 5:
      v3 = 1098474859;
LABEL_17:
      result = v3 | 0x7465737300000000;
      break;
    case 6:
      result = 0x64696C61567369;
      break;
    case 7:
      result = 0x737469617274;
      break;
    case 8:
      result = 0x6E6F69746361;
      break;
    case 9:
      result = 0x746E65746E6F63;
      break;
    case 10:
      result = 0x6B6F547972657571;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x655474706D6F7270;
      break;
    case 13:
      result = 0x655474706D6F7270;
      break;
    case 14:
      result = 0x6D6F7250676E6F6CLL;
      break;
    case 15:
      result = 0x654D74706D6F7270;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x656C61636F6CLL;
      break;
    case 19:
      result = 0x6E69646465626D65;
      break;
    case 20:
      result = 0x6574616C706D6574;
      break;
    case 21:
      result = 0x627553636973756DLL;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0x69746172656E6567;
      break;
    case 24:
      result = 0x6F7250636973756DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7222590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7221AF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C72225B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C7222284();
  *a1 = result;
  return result;
}

uint64_t sub_1C72225E0(uint64_t a1)
{
  v2 = sub_1C72249FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C722261C(uint64_t a1)
{
  v2 = sub_1C72249FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestion.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2194F8);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_70(v8, v9);
  sub_1C72249FC();
  sub_1C755200C();
  LOBYTE(v29[0]) = 0;
  OUTLINED_FUNCTION_14_41();
  sub_1C7551CCC();
  if (!v1)
  {
    LOBYTE(v29[0]) = *(v0 + 16);
    LOBYTE(v25) = 1;
    sub_1C710EB44();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D2C();
    LOBYTE(v29[0]) = *(v0 + 17);
    LOBYTE(v25) = 2;
    sub_1C7224A50();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D2C();
    *&v29[0] = *(v0 + 24);
    LOBYTE(v25) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_30_1();
    sub_1C7224904(v10);
    OUTLINED_FUNCTION_9_53();
    sub_1C7551D2C();
    LOBYTE(v29[0]) = 4;
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D0C();
    LOBYTE(v29[0]) = 5;
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    LOBYTE(v29[0]) = 6;
    OUTLINED_FUNCTION_16_35();
    sub_1C7551CDC();
    *&v29[0] = *(v0 + 64);
    LOBYTE(v25) = 7;
    OUTLINED_FUNCTION_9_53();
    sub_1C7551D2C();
    LOBYTE(v29[0]) = *(v0 + 72);
    LOBYTE(v25) = 8;
    sub_1C7224AA4();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D2C();
    *&v29[0] = *(v0 + 80);
    LOBYTE(v25) = 9;
    sub_1C7224AF8();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D2C();
    *&v29[0] = *(v0 + 88);
    LOBYTE(v25) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219068);
    sub_1C7224DFC(&qword_1EDD0D068);
    OUTLINED_FUNCTION_9_53();
    sub_1C7551D2C();
    *&v29[0] = *(v0 + 96);
    LOBYTE(v25) = 11;
    OUTLINED_FUNCTION_9_53();
    sub_1C7551CBC();
    LOBYTE(v29[0]) = 12;
    OUTLINED_FUNCTION_14_41();
    sub_1C7551CCC();
    LOBYTE(v29[0]) = 13;
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    v30 = 14;
    OUTLINED_FUNCTION_14_41();
    sub_1C7551CCC();
    v11 = *(v0 + 168);
    v29[0] = *(v0 + 152);
    v29[1] = v11;
    v12 = *(v0 + 200);
    v29[2] = *(v0 + 184);
    v29[3] = v12;
    v13 = *(v0 + 168);
    v25 = *(v0 + 152);
    v26 = v13;
    v14 = *(v0 + 200);
    v27 = *(v0 + 184);
    v28 = v14;
    v24[79] = 15;
    sub_1C712A774(v29, v24, &qword_1EC2194E8);
    sub_1C7224BA0();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_39_24();
    sub_1C6FD7FC8(v24, &qword_1EC2194E8);
    OUTLINED_FUNCTION_55_18(16);
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_55_18(17);
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_55_18(18);
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    v21 = *(v0 + 264);
    v23 = 19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219500);
    OUTLINED_FUNCTION_30_1();
    sub_1C7224BF4(v15);
    OUTLINED_FUNCTION_95_9();
    OUTLINED_FUNCTION_55_18(20);
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_55_18(21);
    OUTLINED_FUNCTION_14_41();
    sub_1C7551C7C();
    v21 = *(v0 + 304);
    v23 = 22;
    sub_1C7224C58();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551D2C();
    v16 = type metadata accessor for PromptSuggestion(0);
    OUTLINED_FUNCTION_55_18(23);
    sub_1C754DF6C();
    OUTLINED_FUNCTION_4_57();
    sub_1C7224414(v17);
    OUTLINED_FUNCTION_95_9();
    v18 = (v0 + *(v16 + 112));
    v19 = v18[1];
    v21 = *v18;
    v22 = v19;
    v23 = 24;
    sub_1C7224968(v21);
    sub_1C7224CAC();
    OUTLINED_FUNCTION_16_35();
    sub_1C7551CBC();
    sub_1C716A74C(v21);
  }

  (*(v4 + 8))(v7, v2);
  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t PromptSuggestion.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

void PromptSuggestion.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v6);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_389();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219510);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_158();
  v29 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  *(v11 - v10 + 17) = 0;
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C72249FC();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    LOBYTE(v31) = 0;
    OUTLINED_FUNCTION_25_24();
    *v12 = sub_1C7551BBC();
    *(v12 + 8) = v13;
    sub_1C710EDA8();
    OUTLINED_FUNCTION_21_36();
    *(v12 + 16) = v31;
    sub_1C7224D00();
    OUTLINED_FUNCTION_21_36();
    *(v12 + 17) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_12_0();
    sub_1C7224904(v14);
    OUTLINED_FUNCTION_41_22();
    OUTLINED_FUNCTION_84_8();
    OUTLINED_FUNCTION_25_24();
    sub_1C7551C1C();
    *(v12 + 24) = v31;
    OUTLINED_FUNCTION_54_20(4);
    OUTLINED_FUNCTION_25_24();
    *(v12 + 32) = sub_1C7551BFC();
    OUTLINED_FUNCTION_54_20(5);
    OUTLINED_FUNCTION_25_24();
    *(v12 + 40) = sub_1C7551B6C();
    *(v12 + 48) = v15;
    OUTLINED_FUNCTION_54_20(6);
    OUTLINED_FUNCTION_25_24();
    *(v12 + 56) = sub_1C7551BCC() & 1;
    OUTLINED_FUNCTION_41_22();
    OUTLINED_FUNCTION_84_8();
    OUTLINED_FUNCTION_25_24();
    sub_1C7551C1C();
    *(v12 + 64) = v31;
    sub_1C7224D54();
    OUTLINED_FUNCTION_21_36();
    *(v12 + 72) = v31;
    sub_1C7224DA8();
    OUTLINED_FUNCTION_21_36();
    *(v12 + 80) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219068);
    sub_1C7224DFC(&unk_1EDD0D060);
    OUTLINED_FUNCTION_41_22();
    OUTLINED_FUNCTION_25_24();
    sub_1C7551C1C();
    *(v12 + 88) = v31;
    OUTLINED_FUNCTION_41_22();
    OUTLINED_FUNCTION_25_24();
    sub_1C7551BAC();
    *(v12 + 96) = v31;
    OUTLINED_FUNCTION_54_20(12);
    OUTLINED_FUNCTION_18_28();
    *(v12 + 104) = sub_1C7551BBC();
    *(v12 + 112) = v16;
    OUTLINED_FUNCTION_54_20(13);
    OUTLINED_FUNCTION_18_28();
    *(v12 + 120) = sub_1C7551B6C();
    *(v12 + 128) = v17;
    OUTLINED_FUNCTION_54_20(14);
    OUTLINED_FUNCTION_18_28();
    *(v12 + 136) = sub_1C7551BBC();
    *(v12 + 144) = v18;
    sub_1C7224EC0();
    OUTLINED_FUNCTION_25_24();
    sub_1C7551BAC();
    OUTLINED_FUNCTION_68_16();
    *(v12 + 200) = v19;
    OUTLINED_FUNCTION_18_28();
    *(v12 + 216) = sub_1C7551B6C();
    *(v12 + 224) = v20;
    OUTLINED_FUNCTION_18_28();
    *(v12 + 232) = sub_1C7551B6C();
    *(v12 + 240) = v21;
    LOBYTE(v30) = 18;
    OUTLINED_FUNCTION_18_28();
    *(v12 + 248) = sub_1C7551B6C();
    *(v12 + 256) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219500);
    OUTLINED_FUNCTION_12_0();
    sub_1C7224BF4(v23);
    OUTLINED_FUNCTION_25_24();
    sub_1C7551BAC();
    *(v12 + 264) = v30;
    OUTLINED_FUNCTION_18_28();
    *(v12 + 272) = sub_1C7551B6C();
    *(v12 + 280) = v24;
    LOBYTE(v30) = 21;
    OUTLINED_FUNCTION_18_28();
    *(v12 + 288) = sub_1C7551B6C();
    *(v12 + 296) = v25;
    sub_1C7224F14();
    OUTLINED_FUNCTION_28_22();
    sub_1C7551C1C();
    *(v12 + 304) = v30;
    sub_1C754DF6C();
    LOBYTE(v30) = 23;
    OUTLINED_FUNCTION_4_57();
    sub_1C7224414(v26);
    sub_1C7551BAC();
    sub_1C6FF51C8(v1, v12 + *(v29 + 108));
    sub_1C7224F68();
    OUTLINED_FUNCTION_28_22();
    sub_1C7551BAC();
    v27 = OUTLINED_FUNCTION_8_48();
    v28(v27);
    *(v12 + *(v29 + 112)) = v30;
    sub_1C71592A8(v12, v5);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C715930C(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7223924@<X0>(uint64_t *a1@<X8>)
{
  result = PromptSuggestion.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1C7223964@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C6F91E60();
  *a1 = result;
  return result;
}

unint64_t sub_1C7223998@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C6F91EA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1C72239C4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C6F91E60();
  *a1 = result;
  return result;
}

uint64_t sub_1C72239F0(uint64_t a1)
{
  v2 = sub_1C7226AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7223A2C(uint64_t a1)
{
  v2 = sub_1C7226AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7223A68()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EC2193A8 = result;
  return result;
}

uint64_t sub_1C7223AE0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2193B0);
  __swift_project_value_buffer(v0, qword_1EC2193B0);
  if (qword_1EC213EE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2193A8;
  return sub_1C754FF2C();
}

uint64_t sub_1C7223B6C(void *a1, void *a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2195F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7226AEC();
  sub_1C755200C();
  v9 = objc_opt_self();
  v25[0] = 0;
  v10 = [v9 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v25];
  v11 = v25[0];
  if (v10)
  {
    v12 = sub_1C754DDEC();
    v14 = v13;

    v25[0] = v12;
    v25[1] = v14;
    sub_1C7226B40();
    sub_1C7551D2C();
    if (!v2)
    {
      (*(v6 + 8))(v8, v5);
      return sub_1C6FC1640(v12, v14);
    }

    sub_1C6FC1640(v12, v14);
  }

  else
  {
    v15 = v11;
    sub_1C754DBEC();

    swift_willThrow();
  }

  if (qword_1EC213EF0 != -1)
  {
    swift_once();
  }

  v16 = sub_1C754FF1C();
  __swift_project_value_buffer(v16, qword_1EC2193B0);
  v17 = a2;
  v18 = sub_1C754FEEC();
  v19 = sub_1C755119C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_1C6F5C000, v18, v19, "Unable to archive and encode attributed string = %@", v20, 0xCu);
    sub_1C6FD7FC8(v21, &qword_1EC215190);
    MEMORY[0x1CCA5F8E0](v21, -1, -1);
    MEMORY[0x1CCA5F8E0](v20, -1, -1);
  }

  swift_willThrow();
  return (*(v6 + 8))(v8, v5);
}

void *sub_1C7223EA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219600);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7226AEC();
  sub_1C7551FFC();
  if (!v1)
  {
    sub_1C7226B94();
    sub_1C7551C1C();
    v8 = v14[0];
    v7 = v14[1];
    v13 = sub_1C6F65BE8(0, &qword_1EDD0CE48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219608);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C755BAA0;
    v12 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
    *(v9 + 32) = v12;
    *(v9 + 40) = sub_1C6F65BE8(0, &qword_1EDD0CDB0);
    *(v9 + 48) = sub_1C6F65BE8(0, &qword_1EDD0CE10);
    sub_1C755120C();
    v13 = v8;

    if (v14[3])
    {
      if (swift_dynamicCast())
      {
        (*(v4 + 8))(v6, v3);
        sub_1C6FC1640(v13, v7);
        v7 = v14[5];
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v7;
      }
    }

    else
    {
      sub_1C6FD7FC8(v14, &qword_1EC219770);
    }

    v11 = v13;
    sub_1C7226BE8();
    swift_allocError();
    swift_willThrow();
    sub_1C6FC1640(v11, v7);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1C7224254()
{
  sub_1C7551F3C();
  sub_1C75513FC();
  return sub_1C7551FAC();
}

void *sub_1C7224298@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C7223EA4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C72242F0()
{
  sub_1C7551F3C();
  sub_1C75513FC();
  return sub_1C7551FAC();
}

unint64_t sub_1C722433C()
{
  result = qword_1EC2193D0;
  if (!qword_1EC2193D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2193D0);
  }

  return result;
}

unint64_t sub_1C7224390(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217988);
    OUTLINED_FUNCTION_11_42();
    sub_1C7224414(v4);
    OUTLINED_FUNCTION_82_11();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7224414(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7224458()
{
  result = qword_1EC2193E8;
  if (!qword_1EC2193E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2193E8);
  }

  return result;
}

unint64_t sub_1C7224514()
{
  result = qword_1EDD0F1A8;
  if (!qword_1EDD0F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F1A8);
  }

  return result;
}

unint64_t sub_1C7224568()
{
  result = qword_1EC219420;
  if (!qword_1EC219420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219420);
  }

  return result;
}

unint64_t sub_1C72245BC()
{
  result = qword_1EC219428;
  if (!qword_1EC219428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219428);
  }

  return result;
}

unint64_t sub_1C7224610()
{
  result = qword_1EC219430;
  if (!qword_1EC219430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219430);
  }

  return result;
}

unint64_t sub_1C7224664()
{
  result = qword_1EDD0F190;
  if (!qword_1EDD0F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F190);
  }

  return result;
}

unint64_t sub_1C72246B8()
{
  result = qword_1EDD0F140;
  if (!qword_1EDD0F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F140);
  }

  return result;
}

unint64_t sub_1C722470C()
{
  result = qword_1EC219490;
  if (!qword_1EC219490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219490);
  }

  return result;
}

unint64_t sub_1C7224760()
{
  result = qword_1EDD0B068;
  if (!qword_1EDD0B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0B068);
  }

  return result;
}

unint64_t sub_1C72247B4()
{
  result = qword_1EDD0F100;
  if (!qword_1EDD0F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F100);
  }

  return result;
}

unint64_t sub_1C7224808()
{
  result = qword_1EDD0F118;
  if (!qword_1EDD0F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F118);
  }

  return result;
}

unint64_t sub_1C722485C()
{
  result = qword_1EC219498;
  if (!qword_1EC219498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219498);
  }

  return result;
}

unint64_t sub_1C72248B0()
{
  result = qword_1EC2194D8;
  if (!qword_1EC2194D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2194D8);
  }

  return result;
}

unint64_t sub_1C7224904(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_82_11();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C7224968(uint64_t result)
{
  if (result)
  {
    sub_1C75504FC();

    return sub_1C75504FC();
  }

  return result;
}

unint64_t sub_1C72249A8()
{
  result = qword_1EC2194F0;
  if (!qword_1EC2194F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2194F0);
  }

  return result;
}

unint64_t sub_1C72249FC()
{
  result = qword_1EDD0F1D0;
  if (!qword_1EDD0F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F1D0);
  }

  return result;
}

unint64_t sub_1C7224A50()
{
  result = qword_1EDD0B078[0];
  if (!qword_1EDD0B078[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0B078);
  }

  return result;
}

unint64_t sub_1C7224AA4()
{
  result = qword_1EDD0B120;
  if (!qword_1EDD0B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0B120);
  }

  return result;
}

unint64_t sub_1C7224AF8()
{
  result = qword_1EDD0B118;
  if (!qword_1EDD0B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0B118);
  }

  return result;
}

unint64_t sub_1C7224B4C()
{
  result = qword_1EDD0F848;
  if (!qword_1EDD0F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F848);
  }

  return result;
}

unint64_t sub_1C7224BA0()
{
  result = qword_1EDD09770;
  if (!qword_1EDD09770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09770);
  }

  return result;
}

unint64_t sub_1C7224BF4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219500);
    OUTLINED_FUNCTION_82_11();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7224C58()
{
  result = qword_1EDD09470;
  if (!qword_1EDD09470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09470);
  }

  return result;
}

unint64_t sub_1C7224CAC()
{
  result = qword_1EC219508;
  if (!qword_1EC219508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219508);
  }

  return result;
}

unint64_t sub_1C7224D00()
{
  result = qword_1EDD0F148;
  if (!qword_1EDD0F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F148);
  }

  return result;
}

unint64_t sub_1C7224D54()
{
  result = qword_1EDD0F1D8;
  if (!qword_1EDD0F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F1D8);
  }

  return result;
}

unint64_t sub_1C7224DA8()
{
  result = qword_1EDD0F1B0;
  if (!qword_1EDD0F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F1B0);
  }

  return result;
}

unint64_t sub_1C7224DFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219068);
    v4();
    OUTLINED_FUNCTION_82_11();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7224E6C()
{
  result = qword_1EDD0F840;
  if (!qword_1EDD0F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F840);
  }

  return result;
}

unint64_t sub_1C7224EC0()
{
  result = qword_1EDD0DDD8[0];
  if (!qword_1EDD0DDD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0DDD8);
  }

  return result;
}

unint64_t sub_1C7224F14()
{
  result = qword_1EDD0DAD0;
  if (!qword_1EDD0DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DAD0);
  }

  return result;
}

unint64_t sub_1C7224F68()
{
  result = qword_1EC219518;
  if (!qword_1EC219518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219518);
  }

  return result;
}

unint64_t sub_1C7224FC0()
{
  result = qword_1EC219520;
  if (!qword_1EC219520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219520);
  }

  return result;
}

unint64_t sub_1C7225018()
{
  result = qword_1EC219528;
  if (!qword_1EC219528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219528);
  }

  return result;
}

unint64_t sub_1C7225070()
{
  result = qword_1EC219530;
  if (!qword_1EC219530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219530);
  }

  return result;
}

unint64_t sub_1C7225154()
{
  result = qword_1EDD0F0C0;
  if (!qword_1EDD0F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F0C0);
  }

  return result;
}

unint64_t sub_1C72251F0()
{
  result = qword_1EC219560;
  if (!qword_1EC219560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219560);
  }

  return result;
}

unint64_t sub_1C7225248()
{
  result = qword_1EDD0F1B8;
  if (!qword_1EDD0F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F1B8);
  }

  return result;
}

unint64_t sub_1C72252A0()
{
  result = qword_1EC219568;
  if (!qword_1EC219568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219568);
  }

  return result;
}

unint64_t sub_1C72252F4()
{
  result = qword_1EC219570;
  if (!qword_1EC219570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219570);
  }

  return result;
}

unint64_t sub_1C722534C()
{
  result = qword_1EC219578;
  if (!qword_1EC219578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219578);
  }

  return result;
}

unint64_t sub_1C72253A4()
{
  result = qword_1EC219580;
  if (!qword_1EC219580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219580);
  }

  return result;
}

uint64_t sub_1C7225450(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_1C72254A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1C7225540(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1C755149C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PromptSuggestion.Composition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestion.Composition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestion.ActionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptSuggestion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C72259D0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_479(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_476(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_477(result, v6);
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
          result = OUTLINED_FUNCTION_478(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C7225B3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_480(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_480(v8);
}

_BYTE *sub_1C7225BC0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_479(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_476(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_477(result, v6);
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
          result = OUTLINED_FUNCTION_478(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C7225C8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_480(-1);
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
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_480(v8);
}

_BYTE *sub_1C7225D10(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_479(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_476(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_477(result, v6);
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
          result = OUTLINED_FUNCTION_478(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C7225DE0()
{
  result = qword_1EC219588;
  if (!qword_1EC219588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219588);
  }

  return result;
}

unint64_t sub_1C7225E38()
{
  result = qword_1EC219590;
  if (!qword_1EC219590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219590);
  }

  return result;
}

unint64_t sub_1C7225E90()
{
  result = qword_1EC219598;
  if (!qword_1EC219598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219598);
  }

  return result;
}

unint64_t sub_1C7225EE8()
{
  result = qword_1EC2195A0;
  if (!qword_1EC2195A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2195A0);
  }

  return result;
}

unint64_t sub_1C7225F40()
{
  result = qword_1EC2195A8;
  if (!qword_1EC2195A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2195A8);
  }

  return result;
}

unint64_t sub_1C7225F98()
{
  result = qword_1EC2195B0;
  if (!qword_1EC2195B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2195B0);
  }

  return result;
}

unint64_t sub_1C7225FF0()
{
  result = qword_1EC2195B8;
  if (!qword_1EC2195B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2195B8);
  }

  return result;
}

unint64_t sub_1C7226048()
{
  result = qword_1EC2195C0;
  if (!qword_1EC2195C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2195C0);
  }

  return result;
}

unint64_t sub_1C72260A0()
{
  result = qword_1EDD0F1C0;
  if (!qword_1EDD0F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F1C0);
  }

  return result;
}

unint64_t sub_1C72260F8()
{
  result = qword_1EDD0F1C8;
  if (!qword_1EDD0F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F1C8);
  }

  return result;
}

unint64_t sub_1C7226150()
{
  result = qword_1EC2195C8;
  if (!qword_1EC2195C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2195C8);
  }

  return result;
}

unint64_t sub_1C72261A8()
{
  result = qword_1EC2195D0;
  if (!qword_1EC2195D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2195D0);
  }

  return result;
}

unint64_t sub_1C7226200()
{
  result = qword_1EDD0F120;
  if (!qword_1EDD0F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F120);
  }

  return result;
}

unint64_t sub_1C7226258()
{
  result = qword_1EDD0F128;
  if (!qword_1EDD0F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F128);
  }

  return result;
}

unint64_t sub_1C72262B0()
{
  result = qword_1EDD0F108;
  if (!qword_1EDD0F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F108);
  }

  return result;
}

unint64_t sub_1C7226308()
{
  result = qword_1EDD0F110;
  if (!qword_1EDD0F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F110);
  }

  return result;
}

unint64_t sub_1C7226360()
{
  result = qword_1EDD0F0F0;
  if (!qword_1EDD0F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F0F0);
  }

  return result;
}

unint64_t sub_1C72263B8()
{
  result = qword_1EDD0F0F8;
  if (!qword_1EDD0F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F0F8);
  }

  return result;
}

unint64_t sub_1C7226410()
{
  result = qword_1EDD0F0E0;
  if (!qword_1EDD0F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F0E0);
  }

  return result;
}

unint64_t sub_1C7226468()
{
  result = qword_1EDD0F0E8;
  if (!qword_1EDD0F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F0E8);
  }

  return result;
}

unint64_t sub_1C72264C0()
{
  result = qword_1EDD0F0D0;
  if (!qword_1EDD0F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F0D0);
  }

  return result;
}

unint64_t sub_1C7226518()
{
  result = qword_1EDD0F0D8;
  if (!qword_1EDD0F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F0D8);
  }

  return result;
}

unint64_t sub_1C7226570()
{
  result = qword_1EDD0F130;
  if (!qword_1EDD0F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F130);
  }

  return result;
}

unint64_t sub_1C72265C8()
{
  result = qword_1EDD0F138;
  if (!qword_1EDD0F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F138);
  }

  return result;
}

unint64_t sub_1C7226620()
{
  result = qword_1EDD0F180;
  if (!qword_1EDD0F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F180);
  }

  return result;
}

unint64_t sub_1C7226678()
{
  result = qword_1EDD0F188;
  if (!qword_1EDD0F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F188);
  }

  return result;
}

unint64_t sub_1C72266D0()
{
  result = qword_1EDD0F170;
  if (!qword_1EDD0F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F170);
  }

  return result;
}

unint64_t sub_1C7226728()
{
  result = qword_1EDD0F178;
  if (!qword_1EDD0F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F178);
  }

  return result;
}

unint64_t sub_1C7226780()
{
  result = qword_1EDD0F160;
  if (!qword_1EDD0F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F160);
  }

  return result;
}

unint64_t sub_1C72267D8()
{
  result = qword_1EDD0F168;
  if (!qword_1EDD0F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F168);
  }

  return result;
}

unint64_t sub_1C7226830()
{
  result = qword_1EDD0F150;
  if (!qword_1EDD0F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F150);
  }

  return result;
}

unint64_t sub_1C7226888()
{
  result = qword_1EDD0F158;
  if (!qword_1EDD0F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F158);
  }

  return result;
}

unint64_t sub_1C72268E0()
{
  result = qword_1EDD0F198;
  if (!qword_1EDD0F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F198);
  }

  return result;
}

unint64_t sub_1C7226938()
{
  result = qword_1EDD0F1A0;
  if (!qword_1EDD0F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F1A0);
  }

  return result;
}

unint64_t sub_1C7226990()
{
  result = qword_1EC2195D8;
  if (!qword_1EC2195D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2195D8);
  }

  return result;
}

unint64_t sub_1C72269E8()
{
  result = qword_1EC2195E0;
  if (!qword_1EC2195E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2195E0);
  }

  return result;
}

unint64_t sub_1C7226A40()
{
  result = qword_1EC2195E8;
  if (!qword_1EC2195E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2195E8);
  }

  return result;
}

unint64_t sub_1C7226A98()
{
  result = qword_1EC2195F0;
  if (!qword_1EC2195F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2195F0);
  }

  return result;
}

unint64_t sub_1C7226AEC()
{
  result = qword_1EDD0DAD8;
  if (!qword_1EDD0DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DAD8);
  }

  return result;
}

unint64_t sub_1C7226B40()
{
  result = qword_1EDD0CBD0;
  if (!qword_1EDD0CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CBD0);
  }

  return result;
}

unint64_t sub_1C7226B94()
{
  result = qword_1EDD0F9F0;
  if (!qword_1EDD0F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F9F0);
  }

  return result;
}

unint64_t sub_1C7226BE8()
{
  result = qword_1EC219610;
  if (!qword_1EC219610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219610);
  }

  return result;
}

unint64_t sub_1C7226C3C()
{
  result = qword_1EDD0F1E0;
  if (!qword_1EDD0F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F1E0);
  }

  return result;
}

unint64_t sub_1C7226C90()
{
  result = qword_1EC219618;
  if (!qword_1EC219618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219618);
  }

  return result;
}

_BYTE *sub_1C7226CF4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7226DA4()
{
  result = qword_1EC219620;
  if (!qword_1EC219620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219620);
  }

  return result;
}

unint64_t sub_1C7226DFC()
{
  result = qword_1EC219628;
  if (!qword_1EC219628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219628);
  }

  return result;
}

unint64_t sub_1C7226E54()
{
  result = qword_1EDD0DAE8[0];
  if (!qword_1EDD0DAE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0DAE8);
  }

  return result;
}

unint64_t sub_1C7226EAC()
{
  result = qword_1EDD0DAE0;
  if (!qword_1EDD0DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DAE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_36()
{

  return sub_1C7551C1C();
}

unint64_t OUTLINED_FUNCTION_40_24(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v2[11] = 10;
  v2[12] = 0xE100000000000000;
  v2[9] = 2314;
  v2[10] = 0xE200000000000000;

  return sub_1C6FB5E8C();
}

__n128 OUTLINED_FUNCTION_68_16()
{
  v2 = *(v1 - 144);
  *(v0 + 152) = *(v1 - 160);
  *(v0 + 168) = v2;
  result = *(v1 - 128);
  *(v0 + 184) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_14()
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_93_10()
{
}

void OUTLINED_FUNCTION_94_10()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_95_9()
{

  return sub_1C7551CBC();
}

void sub_1C72270C8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    sub_1C6F65BE8(0, &unk_1EDD0CE60);
    sub_1C7080178(&unk_1EDD0CE50, &unk_1EDD0CE60);
    sub_1C7550FEC();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
    sub_1C75504FC();
    v4 = 0;
  }

  v21 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1C75516FC() || (sub_1C6F65BE8(0, &unk_1EDD0CE60), swift_dynamicCast(), (v11 = v27) == 0))
    {
LABEL_24:
      sub_1C6F61E88();
      return;
    }

LABEL_17:
    v12 = [v11 sourcePerson];
    if (v12)
    {
      v13 = [v12 localIdentifier];
      swift_unknownObjectRelease();
      v14 = sub_1C755068C();
      v20 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v21 = v18;
      }

      v16 = *(v21 + 16);
      if (v16 >= *(v21 + 24) >> 1)
      {
        sub_1C6FB1814();
        v21 = v19;
      }

      *(v21 + 16) = v16 + 1;
      v17 = v21 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v20;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1C72275B8(uint64_t a1)
{
  v3 = OBJC_IVAR___PNPetPromoter_metrics;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id PetPromoter.__allocating_init(with:delegate:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_50_19());
  v1 = OUTLINED_FUNCTION_65_17();
  return PetPromoter.init(with:delegate:)(v1, v2);
}

id PetPromoter.init(with:delegate:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___PNPetPromoter_photoLibrary] = a1;
  *&v2[OBJC_IVAR___PNPetPromoter_delegate] = a2;
  *&v2[OBJC_IVAR___PNPetPromoter_metrics] = MEMORY[0x1E69E7CC8];
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PetPromoter();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1C7227714()
{
  OUTLINED_FUNCTION_72_13();
  v442 = v1;
  v443 = v2;
  v418 = v3;
  v419 = v4;
  v409 = v0;
  ObjectType = swift_getObjectType();
  v400 = sub_1C754DC0C();
  OUTLINED_FUNCTION_3_0();
  v399 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v420 = v8 - v7;
  v9 = sub_1C754FE4C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v389 - v14;
  v415 = sub_1C754FE8C();
  OUTLINED_FUNCTION_3_0();
  v414 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v20 = v19 - v18;
  v413 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v411 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_0();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_80_8();
  sub_1C754FEFC();
  OUTLINED_FUNCTION_80_8();
  sub_1C754FE7C();
  sub_1C754FE3C();
  v412 = v20;
  v26 = sub_1C754FE6C();
  v27 = sub_1C755131C();
  if (sub_1C755144C())
  {
    v28 = OUTLINED_FUNCTION_127();
    *v28 = 0;
    v29 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v26, v27, v29, "PetPromoter", "", v28, 2u);
    OUTLINED_FUNCTION_109();
  }

  v30 = OUTLINED_FUNCTION_58();
  v31(v30);
  sub_1C754FECC();
  swift_allocObject();
  v32 = sub_1C754FEBC();
  (*(v11 + 8))(v15, v9);
  v33 = swift_slowAlloc();
  LOBYTE(v33->isa) = 0;
  OUTLINED_FUNCTION_55_19();
  v34();
  if (v33->isa)
  {
    goto LABEL_82;
  }

  v402 = v33;
  v403 = v32;
  v35 = *(v409 + OBJC_IVAR___PNPetPromoter_photoLibrary);
  v36 = [v35 librarySpecificFetchOptions];
  v32 = &selRef_mergedPersonIdentifiers;
  [v36 setPersonContext_];
  type metadata accessor for PetPromoter();
  v37 = sub_1C72298C0();
  sub_1C7082AAC(v37, v36);
  v38 = objc_opt_self();
  v33 = &selRef_clsSceneClassifications;
  v408 = v36;
  v39 = [v38 fetchPersonsWithOptions_];
  v40 = sub_1C754FEEC();
  v41 = sub_1C755117C();
  v42 = OUTLINED_FUNCTION_128(v41);
  v405 = v39;
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_41_0();
    *v43 = 134217984;
    *(v43 + 4) = [v39 count];

    OUTLINED_FUNCTION_19(&dword_1C6F5C000, v44, v45, "Starting unverified pet promotion on %ld unverified pets.");
    OUTLINED_FUNCTION_37();
  }

  else
  {

    v40 = v39;
  }

  v46 = v408;
  [v408 setPersonContext_];
  v47 = [v38 fetchPersonsWithOptions_];

  v48 = v47;
  v49 = sub_1C754FEEC();
  v50 = sub_1C755117C();
  if (OUTLINED_FUNCTION_66(v50))
  {
    v46 = OUTLINED_FUNCTION_41_0();
    *v46 = 134217984;
    *(v46 + 4) = [v48 count];

    OUTLINED_FUNCTION_34_22();
    _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v49 = v48;
  }

  OUTLINED_FUNCTION_25_25();
  OUTLINED_FUNCTION_49_17();

  v398 = v48;
  v56 = [v48 fetchedObjects];
  if (!v56)
  {
    v88 = sub_1C754FEEC();
    v89 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v89))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v57 = v56;
  v58 = sub_1C6F65BE8(0, &qword_1EDD100F0);
  sub_1C7550B5C();

  v59 = [v46 &selRef_initWithAssetCollection_photoLibrary_ + 1];
  if (!v59)
  {

    v88 = sub_1C754FEEC();
    v90 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v90))
    {
LABEL_17:
      v91 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v91);
      OUTLINED_FUNCTION_1_82();
      _os_log_impl(v92, v93, v94, v95, v96, v97);
      OUTLINED_FUNCTION_23_3();
    }

LABEL_18:

LABEL_80:
    goto LABEL_81;
  }

  v60 = v59;
  sub_1C7550B5C();

  sub_1C6F65BE8(0, &qword_1EDD108E0);
  v61 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215640);
  sub_1C7080178(&qword_1EDD0CD00, &qword_1EDD108E0);
  v62 = sub_1C75504DC();
  v63 = objc_allocWithZone(PNPromoterPhotoLibrary);
  v64 = sub_1C7232AD8(v61, v62, 1);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_53_21();
  v67 = sub_1C7229928(v65, v66);
  v68 = OUTLINED_FUNCTION_216();
  v70 = sub_1C7229928(v68, v69);

  v436 = v70;
  v71 = *(v409 + OBJC_IVAR___PNPetPromoter_delegate);
  v72 = objc_allocWithZone(PNPersonClusterManager);
  v394 = v64;
  v73 = [v72 initWithPhotoLibrary:v64 detectionType:2 promoterDelegate:v71];
  v74 = sub_1C739CD14(v67);
  v410 = v73;
  v75 = OUTLINED_FUNCTION_58();
  v390 = v61;
  v389 = v71;
  v396 = sub_1C722F040(v75, v76, v74, v61, v77, v71, v25);

  OUTLINED_FUNCTION_30();
  swift_allocObject();
  OUTLINED_FUNCTION_55_19();
  *(v78 + 16) = v79;
  v397 = v80;
  *(v80 + 24) = v418;
  v392 = v67 & 0xC000000000000001;
  v395 = v67;
  if ((v67 & 0xC000000000000001) != 0)
  {

    sub_1C75504FC();
    sub_1C755165C();
    OUTLINED_FUNCTION_99_3();
    sub_1C6F65BE8(v81, v82);
    OUTLINED_FUNCTION_99_3();
    sub_1C7080178(v83, v84);
    sub_1C7550FEC();
    v67 = v437;
    v85 = v438;
    v86 = v439;
    v33 = v440;
    v87 = v441;
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    v85 = v67 + 56;
    v86 = ~v98;
    OUTLINED_FUNCTION_31_26();
    v87 = v99 & v100;

    sub_1C75504FC();
    v33 = 0;
  }

  v101 = &selRef_clsSceneClassifications;
  v393 = v86;
  v32 = MEMORY[0x1E69E7CA0];
  v421 = xmmword_1C755BAB0;
  v422 = v25;
  OUTLINED_FUNCTION_239();
  v391 = v58;
  v104 = v103;
  v407 = v85;
  v406 = v67;
  v401 = v102;
  if (v67 < 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  v105 = v33;
  if (!v87)
  {
    while (1)
    {
      v106 = &v105->isa + 1;
      if (__OFADD__(v105, 1))
      {
        break;
      }

      if (v106 >= v102)
      {
        goto LABEL_59;
      }

      v105 = (v105 + 1);
      if (*(v85 + 8 * v106))
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_156;
  }

LABEL_25:
  OUTLINED_FUNCTION_78_0();
  v417 = v108 & v107;
  v416 = v109;
  v111 = OUTLINED_FUNCTION_94_11(v110);
  if (v111)
  {
    while (1)
    {
      v113 = v111;
      v114 = [v86 pn_fetchCandidatePersonsForPerson_];
      if ([v114 v101[32]])
      {
        v423 = v113;
        v115 = [v114 fetchedObjects];
        v116 = sub_1C7550B5C();

        v426 = v116[2];
        if (v426)
        {
          v117 = 0;
          v425 = v116 + 4;
          v118 = v114;
          v424 = v114;
          while (1)
          {
            if (v117 >= v116[2])
            {
              __break(1u);
              goto LABEL_133;
            }

            OUTLINED_FUNCTION_50();
            sub_1C6F774EC(v119 + 32 * v117, v431);
            v120 = sub_1C6F65BE8(0, v104);
            if (!swift_dynamicCast())
            {
              break;
            }

            v33 = v429;
            if (([v429 isVerified] & 1) == 0)
            {
              v121 = v436;
              if ((v436 & 0xC000000000000001) != 0)
              {
                sub_1C75504FC();
                v122 = v33;
                v123 = sub_1C755170C();

                if (v123)
                {
                  v104 = &unk_1EDD0CE60;
                  sub_1C7235C98();
                  v125 = v124;

                  goto LABEL_50;
                }

                v125 = 0;
              }

              else
              {
                sub_1C75513DC();
                v86 = v121 + 56;
                OUTLINED_FUNCTION_9_2();
                v25 = ~v129;
                while (1)
                {
                  v130 = v128 & v25;
                  if (((*(v86 + (((v128 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v128 & v25)) & 1) == 0)
                  {
                    v125 = 0;
                    OUTLINED_FUNCTION_52_19();
                    OUTLINED_FUNCTION_239();
                    goto LABEL_49;
                  }

                  v131 = *(*(v121 + 48) + 8 * v130);
                  v132 = sub_1C75513EC();

                  if (v132)
                  {
                    break;
                  }

                  v128 = v130 + 1;
                }

                v133 = v436;
                swift_isUniquelyReferenced_nonNull_native();
                v431[0] = v133;
                OUTLINED_FUNCTION_52_19();
                OUTLINED_FUNCTION_239();
                if ((v134 & 1) == 0)
                {
                  sub_1C72F4CA0();
                  v133 = v431[0];
                }

                v125 = *(*(v133 + 48) + 8 * v130);
                sub_1C72368E4();
                v436 = v431[0];
              }

LABEL_49:
              v104 = &unk_1EDD0CE60;
LABEL_50:

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
              v135 = swift_allocObject();
              *(v135 + 16) = v421;
              *(v135 + 56) = v120;
              *(v135 + 32) = v33;
              sub_1C6F65BE8(0, &qword_1EDD06888);
              v136 = v33;
              v33 = MEMORY[0x1CCA5D880](v135);
              [v86 mergePersons:v33 withPerson:v423];

              v32 = MEMORY[0x1E69E7CA0];
LABEL_51:
              v118 = v424;
            }

            ++v117;

            if (v117 == v426)
            {
              swift_unknownObjectRelease();

              v101 = &selRef_clsSceneClassifications;
              goto LABEL_56;
            }
          }

          v33 = sub_1C754FEEC();
          v126 = sub_1C755119C();
          if (os_log_type_enabled(v33, v126))
          {
            v127 = OUTLINED_FUNCTION_127();
            *v127 = 0;
            _os_log_impl(&dword_1C6F5C000, v33, v126, "Merge candidate from PNPersonClusterManager was not a PNPersonCluster!", v127, 2u);
            OUTLINED_FUNCTION_37();
          }

          goto LABEL_51;
        }

        swift_unknownObjectRelease();

LABEL_56:
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v33 = v416;
      v87 = v417;
      v85 = v407;
      v102 = v401;
      if ((v406 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_27:
      v112 = sub_1C75516FC();
      if (v112)
      {
        *&v429 = v112;
        sub_1C6F65BE8(0, v104);
        OUTLINED_FUNCTION_93_11();
        v111 = v431[0];
        v416 = v33;
        v417 = v87;
        if (v431[0])
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_59:
  sub_1C6F61E88();
  v137 = sub_1C754FEEC();
  v138 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v138))
  {
    v139 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v139);
    OUTLINED_FUNCTION_1_82();
    _os_log_impl(v140, v141, v142, v143, v144, v145);
    OUTLINED_FUNCTION_23_3();
  }

  v146 = v436;
  sub_1C7229A48(v436);
  OUTLINED_FUNCTION_24_2();

  sub_1C7550F7C();
  OUTLINED_FUNCTION_364();
  sub_1C7229A48(v395);
  v147 = sub_1C7550F7C();

  OUTLINED_FUNCTION_30();
  swift_allocObject();
  OUTLINED_FUNCTION_20_39();
  v149 = *(v148 - 256);
  v150[2] = v151;
  v150[3] = v149;
  v434 = sub_1C7237294;
  v435 = v150;
  OUTLINED_FUNCTION_18_29();
  OUTLINED_FUNCTION_19_40();
  v432 = v152;
  v433 = &block_descriptor_18;
  v153 = _Block_copy(v431);

  v154 = OUTLINED_FUNCTION_83_5();
  v156 = [v154 v155];
  _Block_release(v153);

  v157 = sub_1C754FEEC();
  v158 = sub_1C755117C();
  OUTLINED_FUNCTION_7_0(v158);
  OUTLINED_FUNCTION_25_25();
  v46 = &unk_1C755C000;
  if (v159)
  {
    v160 = OUTLINED_FUNCTION_41_0();
    *v160 = 134217984;
    *(v160 + 4) = [v156 count];
    OUTLINED_FUNCTION_17();
    _os_log_impl(v161, v162, v163, v164, v165, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  v166 = [v156 allObjects];
  sub_1C7550B5C();

  sub_1C71BC2CC();
  OUTLINED_FUNCTION_364();
  OUTLINED_FUNCTION_49_17();
  if (v166)
  {
    v167 = sub_1C754FEEC();
    v168 = sub_1C755117C();
    if (OUTLINED_FUNCTION_66(v168))
    {
      v169 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_58_8(v169);
      OUTLINED_FUNCTION_34_22();
      _os_log_impl(v170, v171, v172, v173, v174, 2u);
      OUTLINED_FUNCTION_49_17();
      OUTLINED_FUNCTION_109();
    }

    v175 = sub_1C706F058(v166);
    sub_1C7229A48(v175);
    OUTLINED_FUNCTION_24_2();

    sub_1C7550F7C();
    OUTLINED_FUNCTION_364();
    OUTLINED_FUNCTION_30();
    swift_allocObject();
    OUTLINED_FUNCTION_20_39();
    v177 = *(v176 - 256);
    v178[2] = v179;
    v178[3] = v177;
    v434 = sub_1C7237640;
    v435 = v178;
    OUTLINED_FUNCTION_18_29();
    OUTLINED_FUNCTION_19_40();
    v432 = v180;
    v433 = &block_descriptor_10_0;
    _Block_copy(v431);
    v181 = v435;

    v182 = OUTLINED_FUNCTION_83_5();
    v184 = [v182 v183];
    v185 = OUTLINED_FUNCTION_50_19();
    _Block_release(v185);

    v186 = v181;
    v156 = v186;
    v187 = sub_1C754FEEC();
    v188 = sub_1C755117C();
    if (!OUTLINED_FUNCTION_7_0(v188))
    {

      v187 = v156;
      goto LABEL_72;
    }

    v189 = OUTLINED_FUNCTION_41_0();
    *v189 = 134217984;
    v46 = [v156 count];

    *(v189 + 4) = v46;
    OUTLINED_FUNCTION_49_17();

    OUTLINED_FUNCTION_17();
    v195 = 12;
    goto LABEL_70;
  }

  v187 = sub_1C754FEEC();
  v196 = sub_1C755119C();
  if (OUTLINED_FUNCTION_7_0(v196))
  {
    v197 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v197);
    OUTLINED_FUNCTION_1_82();
LABEL_70:
    _os_log_impl(v190, v191, v192, v193, v194, v195);
    OUTLINED_FUNCTION_23_3();
  }

LABEL_72:
  v198 = v395;

  OUTLINED_FUNCTION_55_19();
  v199();
  OUTLINED_FUNCTION_78_11();
  if (v200)
  {
    goto LABEL_79;
  }

  v201 = sub_1C754FEEC();
  v202 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v202))
  {
    v203 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v203);
    OUTLINED_FUNCTION_1_82();
    _os_log_impl(v204, v205, v206, v207, v208, v209);
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_53_21();
  sub_1C7229E3C(v210, v211, v212);
  v213 = sub_1C754FEEC();
  v214 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v214))
  {
    v215 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v215);
    OUTLINED_FUNCTION_1_82();
    _os_log_impl(v216, v217, v218, v219, v220, v221);
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_55_19();
  v222();
  OUTLINED_FUNCTION_78_11();
  if (v200)
  {
LABEL_79:
    OUTLINED_FUNCTION_98_10();

    OUTLINED_FUNCTION_81_12();

    OUTLINED_FUNCTION_71_10();

    goto LABEL_80;
  }

  v224 = sub_1C754FEEC();
  v225 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v225))
  {
    v227 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v227);
    OUTLINED_FUNCTION_1_82();
    _os_log_impl(v228, v229, v230, v231, v232, v233);
    OUTLINED_FUNCTION_23_3();
  }

  if (v392)
  {
    sub_1C755165C();
    OUTLINED_FUNCTION_99_3();
    sub_1C6F65BE8(v234, v235);
    OUTLINED_FUNCTION_99_3();
    sub_1C7080178(v236, v237);
    sub_1C7550FEC();
    v198 = v431[0];
    v238 = v431[1];
    v239 = v432;
    v240 = v433;
    v241 = v434;
  }

  else
  {
    v240 = 0;
    OUTLINED_FUNCTION_9_2();
    v238 = v198 + 56;
    OUTLINED_FUNCTION_31_26();
    v241 = (v242 & v243);
  }

  v425 = v239;
  v244 = (v239 + 64) >> 6;
  v426 = MEMORY[0x1E69E7CD0];
  for (i = v198; ; v198 = i)
  {
    v25 = v240;
    v246 = v241;
    if ((v198 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v252 = sub_1C75516FC();
      if (!v252)
      {
        goto LABEL_104;
      }

      *&v428 = v252;
      sub_1C6F65BE8(0, &unk_1EDD0CE60);
      OUTLINED_FUNCTION_93_11();
      v251 = v429;
      v240 = v25;
      v241 = v246;
      if (!v429)
      {
        goto LABEL_104;
      }

LABEL_98:
      v253 = [v251 mergedPersonIdentifiers];
      v254 = [v253 allObjects];

      v255 = sub_1C7550B5C();
      sub_1C71BBD84(v255, v256, v257, v258, v259, v260, v261, v262, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, ObjectType, v405, v406, v407, v408);
      v264 = v263;

      if (v264)
      {
        break;
      }

      v265 = sub_1C754FEEC();
      v266 = sub_1C755119C();
      if (OUTLINED_FUNCTION_128(v266))
      {
        v267 = OUTLINED_FUNCTION_127();
        *v267 = 0;
        _os_log_impl(&dword_1C6F5C000, v265, v266, "Unable to convert petMergeCandidateLocalIdentifiers to an array of strings!", v267, 2u);
        OUTLINED_FUNCTION_109();
      }

      v25 = v240;
      v246 = v241;
      if ((i & 0x8000000000000000) == 0)
      {
        goto LABEL_90;
      }
    }

    v268 = sub_1C706D154(v264);
    v426 = sub_1C70738FC(v268, v426);
  }

LABEL_90:
  v247 = v25;
  v240 = v25;
  if (!v246)
  {
    while (1)
    {
      v240 = v247 + 1;
      if (__OFADD__(v247, 1))
      {
        break;
      }

      if (v240 >= v244)
      {
        goto LABEL_104;
      }

      ++v247;
      if (*(v238 + 8 * v240))
      {
        goto LABEL_94;
      }
    }

LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    return;
  }

LABEL_94:
  OUTLINED_FUNCTION_78_0();
  v241 = (v249 & v248);
  v251 = OUTLINED_FUNCTION_94_11(v250);
  if (v251)
  {
    goto LABEL_98;
  }

LABEL_104:
  sub_1C6F61E88();
  v269 = v156;
  sub_1C755114C();
  v425 = v269;

  v270 = off_1E829F410;
  v33 = "Unable to convert petMergeCandidateLocalIdentifiers to an array of strings!";
  OUTLINED_FUNCTION_52_19();
  v32 = &selRef_addingKeyAssetForObject_toAssets_options_;
  while (1)
  {
    sub_1C754DBFC();
    if (!v430)
    {
      break;
    }

    sub_1C6F9ED18(&v429, &v428);
    sub_1C6F65BE8(0, &unk_1EDD0CE60);
    if (swift_dynamicCast())
    {
      v271 = v427;
      v272 = [v427 mergedPersonIdentifiers];
      v25 = [v272 allObjects];

      v273 = sub_1C7550B5C();
      sub_1C71BBD84(v273, v274, v275, v276, v277, v278, v279, v280, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, ObjectType, v405, v406, v407, v408);
      v282 = v281;

      if (!v282)
      {
        v283 = sub_1C754FEEC();
        v25 = sub_1C755119C();
        if (OUTLINED_FUNCTION_128(v25))
        {
          v284 = OUTLINED_FUNCTION_127();
          *v284 = 0;
          _os_log_impl(&dword_1C6F5C000, v283, v25, "Unable to convert petMergeCandidateLocalIdentifiers to an array of strings!", v284, 2u);
          OUTLINED_FUNCTION_109();
        }

        OUTLINED_FUNCTION_52_19();
        goto LABEL_113;
      }

      v289 = sub_1C706D154(v282);
      v426 = sub_1C70738FC(v289, v426);

      OUTLINED_FUNCTION_52_19();
    }

    else
    {
      v271 = sub_1C754FEEC();
      v285 = sub_1C755119C();
      if (os_log_type_enabled(v271, v285))
      {
        v25 = OUTLINED_FUNCTION_127();
        *v25 = 0;
        v286 = OUTLINED_FUNCTION_216();
        _os_log_impl(v286, v287, v288, "Output of petDeduper.dedupeUnverifiedPersons was not a NSSet of PNPersonClusters!", v25, 2u);
        OUTLINED_FUNCTION_52_19();
        OUTLINED_FUNCTION_109();
      }

LABEL_113:
    }
  }

  (*(v399 + 8))(v420, v400);
  v46 = v426;
  sub_1C75504FC();
  v290 = sub_1C754FEEC();
  v291 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v291))
  {
    v270 = OUTLINED_FUNCTION_41_0();
    *v270 = 134217984;
    *(v270 + 4) = v46[2];

    OUTLINED_FUNCTION_17();
    _os_log_impl(v292, v293, v294, v295, v296, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_25();
  OUTLINED_FUNCTION_49_17();
  OUTLINED_FUNCTION_239();
  v297 = v391;
  v298 = [v425 allObjects];
  sub_1C7550B5C();

  sub_1C71BC2CC();
  OUTLINED_FUNCTION_364();
  if (!v298)
  {

    v307 = sub_1C754FEEC();
    v308 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v308))
    {
      v309 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v309);
      OUTLINED_FUNCTION_1_82();
      _os_log_impl(v310, v311, v312, v313, v314, v315);
      OUTLINED_FUNCTION_239();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_71_10();
LABEL_147:

    OUTLINED_FUNCTION_81_12();

    goto LABEL_80;
  }

  if (sub_1C6FB6304() < 1)
  {

    v116 = sub_1C754FEEC();
    v317 = sub_1C755117C();
    if (OUTLINED_FUNCTION_7_0(v317))
    {
      v318 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v318);
      OUTLINED_FUNCTION_1_82();
      _os_log_impl(v319, v320, v321, v322, v323, v324);
      OUTLINED_FUNCTION_23_3();
    }

    v325 = 0;
    OUTLINED_FUNCTION_75_9();
LABEL_144:

    v354 = OUTLINED_FUNCTION_26_29();
    (*(v355 - 256))(v354);
    OUTLINED_FUNCTION_78_11();
    if (!v200)
    {
      OUTLINED_FUNCTION_53_21();
      static PetPromoter.calculateOrderOfPetsWithinPeopleAndPetsHome(in:pnPhotoLibrary:clusterManager:delegate:logger:persistOrder:updateBlock:)(v357, v358, v359, v360, v361, v362, v363, v364);

      v365 = sub_1C754FEEC();
      v366 = sub_1C755117C();
      if (OUTLINED_FUNCTION_7_0(v366))
      {
        v368 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_58_8(v368);
        _os_log_impl(&dword_1C6F5C000, v365, v25, "Finished ordering pets.", v46, 2u);
        OUTLINED_FUNCTION_109();
      }

      v369 = OUTLINED_FUNCTION_26_29();
      (*(v370 - 256))(v369);
      v371 = sub_1C755068C();
      if ((v325 & 0x8000000000000000) == 0)
      {
        sub_1C722FE48(v371, v372, v325);

        v373 = sub_1C755068C();
        v375 = v374;
        v376 = v297[2];

        sub_1C722FE48(v373, v375, v376);

        swift_beginAccess();
        v377 = objc_opt_self();
        sub_1C75504FC();
        v378 = @"com.apple.Photos.People.petPromoter";
        sub_1C70C0278();

        sub_1C6F65BE8(0, &qword_1EDD10100);
        v379 = sub_1C755048C();

        [v377 sendEvent:v378 withPayload:v379];

        v116 = sub_1C754FEEC();
        v380 = sub_1C755117C();
        if (OUTLINED_FUNCTION_7_0(v380))
        {
          v381 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_37_0(v381);
          OUTLINED_FUNCTION_1_82();
          _os_log_impl(v382, v383, v384, v385, v386, v387);
          OUTLINED_FUNCTION_23_3();
        }

        OUTLINED_FUNCTION_50();

        OUTLINED_FUNCTION_98_10();
        OUTLINED_FUNCTION_71_10();
        goto LABEL_154;
      }

      goto LABEL_158;
    }

    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_98_10();
    OUTLINED_FUNCTION_71_10();
    goto LABEL_147;
  }

  sub_1C706F058(v298);
  OUTLINED_FUNCTION_53_21();
  v116 = sub_1C722A080(v299, v300);

  v301 = [v116 fetchedObjects];
  if (!v301)
  {

    v326 = sub_1C754FEEC();
    v327 = sub_1C755119C();
    if (OUTLINED_FUNCTION_66(v327))
    {
      v328 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_58_8(v328);
      OUTLINED_FUNCTION_34_22();
      _os_log_impl(v329, v330, v331, v332, v333, 2u);
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_98_10();
    OUTLINED_FUNCTION_71_10();

    goto LABEL_154;
  }

  v302 = v301;
  v86 = sub_1C7550B5C();

  v116 = v116;
  v118 = sub_1C754FEEC();
  v303 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v303))
  {
    v304 = OUTLINED_FUNCTION_41_0();
    *v304 = 134217984;
    v297 = &selRef_clsSceneClassifications;
    *(v304 + 4) = [v116 count];

    OUTLINED_FUNCTION_19(&dword_1C6F5C000, v305, v306, "%ld unverified pets to consider for promotion.");
    OUTLINED_FUNCTION_37();
    goto LABEL_134;
  }

LABEL_133:

  v118 = v116;
  v297 = &selRef_clsSceneClassifications;
LABEL_134:

  if (__OFSUB__(10, [v398 count]))
  {
    goto LABEL_157;
  }

  OUTLINED_FUNCTION_75_9();
  OUTLINED_FUNCTION_53_21();
  sub_1C722A140(v335, v336, v337, v338, v339);

  sub_1C75504FC();
  v340 = sub_1C754FEEC();
  v341 = sub_1C755117C();
  if (OUTLINED_FUNCTION_66(v341))
  {
    v342 = OUTLINED_FUNCTION_41_0();
    *v342 = 134217984;
    *(v342 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v340, v86, "Found %ld pets to promote.", v342, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  OUTLINED_FUNCTION_239();
  v343 = OUTLINED_FUNCTION_26_29();
  (*(v344 - 256))(v343);
  OUTLINED_FUNCTION_78_11();
  if (!v200)
  {
    OUTLINED_FUNCTION_53_21();
    sub_1C722AD84(v346, v347, v348);
    v325 = sub_1C6FB6304();

    v349 = sub_1C754FEEC();
    v46 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v46))
    {
      v351 = OUTLINED_FUNCTION_41_0();
      *v351 = 134217984;
      *(v351 + 4) = v325;
      OUTLINED_FUNCTION_19(&dword_1C6F5C000, v352, v353, "Finished persisting pets to promote with %ld significant");
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_49_17();
    goto LABEL_144;
  }

  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_71_10();

LABEL_154:

  OUTLINED_FUNCTION_81_12();

LABEL_81:
LABEL_82:
  v223 = v412;
  sub_1C7229660(v412, v32, v33);

  (*(v414 + 8))(v223, v415);
  (*(v411 + 8))(v25, v413);
  OUTLINED_FUNCTION_73_13();
}

uint64_t sub_1C7229660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v3 = sub_1C754FE9C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C754FE4C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C754FE6C();
  sub_1C754FEAC();
  v12 = sub_1C755130C();
  if (sub_1C755144C())
  {

    sub_1C754FEDC();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v11, v12, v15, "PetPromoter", v13, v14, 2u);
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  return MEMORY[0x1CCA5F8E0](v18, -1, -1);
}

uint64_t sub_1C72298C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C7564A90;
  *(v0 + 32) = sub_1C7551EFC();
  *(v0 + 40) = sub_1C7551EFC();
  return v0;
}

uint64_t sub_1C7229928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6FB6304();
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v10 = MEMORY[0x1E69E7CC0];
    result = sub_1C755195C();
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1CCA5DDD0](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      [objc_allocWithZone(PNPersonCluster) initWithPerson:v8 inPhotoLibrary:a2];

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    while (v4 != v7);
    v5 = v10;
  }

  return sub_1C706F058(v5);
}

uint64_t sub_1C7229A48(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1C75516BC())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2197D8);
  v3 = sub_1C75517AC();
  if (v2)
  {
LABEL_4:

    sub_1C75504FC();
    sub_1C755165C();
    sub_1C6F65BE8(0, &unk_1EDD0CE60);
    sub_1C7080178(&unk_1EDD0CE50, &unk_1EDD0CE60);
    result = sub_1C7550FEC();
    v1 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
    v8 = v34;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  result = sub_1C75504FC();
  v7 = 0;
LABEL_11:
  v12 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    v13 = v7;
LABEL_21:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v1 + 48) + ((v13 << 9) | (8 * v16)));
    while (1)
    {
      sub_1C6F65BE8(0, &unk_1EDD0CE60);
      swift_dynamicCast();
      result = sub_1C755174C();
      v18 = -1 << *(v3 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = *(v3 + 48) + 40 * v21;
      *(v26 + 32) = v29;
      *v26 = v27;
      *(v26 + 16) = v28;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v14 = sub_1C75516FC();
      if (!v14)
      {
        goto LABEL_33;
      }

      *&v27 = v14;
      sub_1C6F65BE8(0, &unk_1EDD0CE60);
      swift_dynamicCast();
    }

    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (++v20 != v23 || (v22 & 1) == 0)
    {
      v24 = v20 == v23;
      if (v20 == v23)
      {
        v20 = 0;
      }

      v22 |= v24;
      v25 = *(v12 + 8 * v20);
      if (v25 != -1)
      {
        v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v6 + 64) >> 6))
      {
LABEL_33:
        sub_1C6F61E88();

        return v3;
      }

      v8 = *(v5 + 8 * v13);
      ++v15;
      if (v8)
      {
        v7 = v13;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7229DD8(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_1C7229E3C(uint64_t a1, id a2, uint64_t a3)
{
  v20 = [a2 photoLibrary];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    sub_1C6F65BE8(0, &unk_1EDD0CE60);
    sub_1C7080178(&unk_1EDD0CE50, &unk_1EDD0CE60);
    sub_1C7550FEC();
    a1 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);
    sub_1C75504FC();
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_18:
      sub_1C6F61E88();
      swift_unknownObjectRelease();
      return;
    }

    while (1)
    {
      v18 = objc_autoreleasePoolPush();
      sub_1C722F1CC(v20, v17, a3, a2);
      objc_autoreleasePoolPop(v18);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C75516FC())
      {
        sub_1C6F65BE8(0, &unk_1EDD0CE60);
        swift_dynamicCast();
        v17 = v21;
        v15 = v7;
        v16 = v8;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_1C722A080(uint64_t a1, void *a2)
{
  sub_1C72270C8(a1);
  v3 = [a2 librarySpecificFetchOptions];
  v4 = sub_1C72298C0();
  sub_1C7082AAC(v4, v3);
  v5 = objc_opt_self();
  v6 = sub_1C7550B3C();

  v7 = [v5 fetchPersonsWithLocalIdentifiers:v6 options:v3];

  return v7;
}

uint64_t sub_1C722A140(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C754DF6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1C6FB6304())
  {
    sub_1C75504FC();
    v14 = sub_1C754FEEC();
    v47 = sub_1C755117C();
    if (os_log_type_enabled(v14, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v47, "No pets passed into findSignificantPets, returning.", v48, 2u);
      MEMORY[0x1CCA5F8E0](v48, -1, -1);
    }

    goto LABEL_40;
  }

  v111 = v13;
  v113 = a1;
  sub_1C75504FC();
  v115 = a5;
  v14 = sub_1C754FEEC();
  v15 = sub_1C755117C();
  v16 = os_log_type_enabled(v14, v15);
  if (a3 <= 0)
  {
    if (v16)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v15, "There's no more room for pets to promote, returning.", v49, 2u);
      MEMORY[0x1CCA5F8E0](v49, -1, -1);
    }

LABEL_40:

LABEL_41:

    return MEMORY[0x1E69E7CC0];
  }

  v109 = v11;
  v110 = v10;
  v112 = a2;
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2048;
    *(v18 + 14) = sub_1C6FB6304();
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Finding up to %ld significant pets out of %ld input pets.", v18, 0x16u);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);
  }

  v108 = a3;

  v123 = v17;
  v19 = v113;
  v20 = sub_1C6FB6304();
  v21 = v19 & 0xC000000000000001;
  v119 = v19 + 32;
  v120 = v19 & 0xFFFFFFFFFFFFFF8;
  sub_1C75504FC();
  v22 = 0;
  v116 = v19 & 0xC000000000000001;
  v117 = 0;
  v23 = &selRef_clsSceneClassifications;
LABEL_6:
  while (v22 != v20)
  {
    if (v21)
    {
      v24 = MEMORY[0x1CCA5DDD0](v22, v113);
    }

    else
    {
      if (v22 >= *(v120 + 16))
      {
        goto LABEL_99;
      }

      v24 = *(v119 + 8 * v22);
    }

    v25 = v24;
    v26 = __OFADD__(v22++, 1);
    if (v26)
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if ([v24 faceCount] >= 25)
    {
      v27 = sub_1C70CAC04(v25);
      if (!v28)
      {
        goto LABEL_107;
      }

      v29 = v28;
      if (*(a4 + 16))
      {
        v30 = v27;
        sub_1C7551F3C();
        sub_1C75505AC();
        v31 = sub_1C7551FAC();
        v32 = ~(-1 << *(a4 + 32));
        while (1)
        {
          v33 = v31 & v32;
          if (((*(a4 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
          {
            break;
          }

          v34 = (*(a4 + 48) + 16 * v33);
          if (*v34 != v30 || v29 != v34[1])
          {
            v36 = sub_1C7551DBC();
            v31 = v33 + 1;
            if ((v36 & 1) == 0)
            {
              continue;
            }
          }

          v21 = v116;
          goto LABEL_6;
        }

        v21 = v116;
      }

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }
  }

  swift_bridgeObjectRelease_n();
  v37 = v123;
  if (sub_1C6FB6304() <= 0)
  {
    v14 = sub_1C754FEEC();
    v66 = sub_1C755117C();
    if (os_log_type_enabled(v14, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v66, "No unverified pets have enough faces to be promoted, returning early.", v67, 2u);
      MEMORY[0x1CCA5F8E0](v67, -1, -1);
    }

    goto LABEL_41;
  }

  v123 = MEMORY[0x1E69E7CC0];
  v38 = [v112 librarySpecificFetchOptions];
  v39 = sub_1C72298C0();
  v40 = sub_1C722C934();
  v122[0] = v39;
  sub_1C6FD3574(v40);
  sub_1C7082AAC(v122[0], v38);
  [v38 setFetchLimit_];
  v41 = sub_1C6FB6304();
  sub_1C75504FC();
  v42 = 0;
  v43 = v115;
  v23 = v117;
  while (v41 != v42)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1CCA5DDD0](v42, v37);
    }

    else
    {
      if (v42 >= *(v37 + 16))
      {
        goto LABEL_101;
      }

      v44 = *(v37 + 8 * v42 + 32);
    }

    v45 = v44;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_100;
    }

    v46 = objc_autoreleasePoolPush();
    sub_1C722C990(v45, v38, v43, v118, &v123);
    objc_autoreleasePoolPop(v46);

    ++v42;
  }

  v118 = v123;
  v52 = sub_1C6FB6304();
  v107 = v37;
  v106 = v38;
  v105 = MEMORY[0x1E69E7CC0];
  if (v52)
  {
    v53 = v52;
    v122[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    if ((v53 & 0x8000000000000000) == 0)
    {
      v54 = 0;
      v55 = v122[0];
      v117 = v118 & 0xC000000000000001;
      v114 = v118 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_102;
        }

        if (v117)
        {
          v57 = MEMORY[0x1CCA5DDD0](v54, v118);
        }

        else
        {
          if (v54 >= *(v114 + 16))
          {
            goto LABEL_105;
          }

          v57 = *(v118 + 8 * v54 + 32);
        }

        v58 = v57;
        v59 = v23;
        v60 = sub_1C70CAC04(v57);
        if (!v61)
        {
          goto LABEL_108;
        }

        v62 = v60;
        v63 = v61;

        v122[0] = v55;
        v64 = *(v55 + 16);
        if (v64 >= *(v55 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          v55 = v122[0];
        }

        *(v55 + 16) = v64 + 1;
        v65 = v55 + 16 * v64;
        *(v65 + 32) = v62;
        *(v65 + 40) = v63;
        ++v54;
        v23 = v59;
        if (v56 == v53)
        {
          goto LABEL_60;
        }
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:

    __break(1u);
    return result;
  }

  v59 = v23;
  v55 = MEMORY[0x1E69E7CC0];
LABEL_60:
  v68 = objc_opt_self();
  v69 = sub_1C7550B3C();
  v70 = v111;
  sub_1C754DE6C();
  v71 = sub_1C754DECC();
  (*(v109 + 8))(v70, v110);
  v72 = [v68 momentCountsByPersonUUIDForPersonsWithUUIDs:v69 afterDate:v71 photoLibrary:v112];

  v73 = v116;
  if (!v72)
  {

    v14 = sub_1C754FEEC();
    v102 = sub_1C755119C();
    if (os_log_type_enabled(v14, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v102, "Failed to find moment counts for unverified pets.", v103, 2u);
      MEMORY[0x1CCA5F8E0](v103, -1, -1);
    }

    goto LABEL_41;
  }

  sub_1C6F65BE8(0, &qword_1EDD108E0);
  v74 = sub_1C75504AC();

  v122[0] = v55;
  sub_1C75504FC();
  sub_1C75504FC();
  v114 = v74;
  v23 = v59;
  sub_1C723291C(v122, v74);
  if (v59)
  {
    goto LABEL_111;
  }

  v75 = v122[0];
  v76 = *(v122[0] + 16);
  if (v76 > v108)
  {
    sub_1C722CD3C(v76 - v108, v122[0]);
    v75 = v77;
  }

  v78 = sub_1C75504FC();
  v112 = v75;
  v23 = sub_1C706D154(v78);
  v121 = MEMORY[0x1E69E7CC0];
  v117 = sub_1C6FB6304();
  v79 = 0;
LABEL_65:
  while (v79 != v117)
  {
    if (v73)
    {
      v80 = MEMORY[0x1CCA5DDD0](v79, v113);
    }

    else
    {
      if (v79 >= *(v120 + 16))
      {
        goto LABEL_104;
      }

      v80 = *(v119 + 8 * v79);
    }

    v26 = __OFADD__(v79++, 1);
    if (v26)
    {
      goto LABEL_103;
    }

    v81 = v80;
    v82 = sub_1C6FCA214(v81);
    if (!v83)
    {
      goto LABEL_109;
    }

    v84 = v83;
    if (v23[2])
    {
      v85 = v82;
      sub_1C7551F3C();
      sub_1C75505AC();
      v86 = sub_1C7551FAC();
      v87 = ~(-1 << *(v23 + 32));
      while (1)
      {
        v88 = v86 & v87;
        if (((*(v23 + (((v86 & v87) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v86 & v87)) & 1) == 0)
        {
          break;
        }

        v89 = &(*v23[6])[16 * v88];
        if (*v89 != v85 || v84 != *(v89 + 1))
        {
          v91 = sub_1C7551DBC();
          v86 = v88 + 1;
          if ((v91 & 1) == 0)
          {
            continue;
          }
        }

        v92 = sub_1C6FCA214(v81);
        if (!v93)
        {
          goto LABEL_110;
        }

        if (!*(v114 + 16))
        {

          goto LABEL_87;
        }

        v94 = sub_1C6F78124(v92, v93);
        v96 = v95;

        if ((v96 & 1) == 0)
        {
          goto LABEL_87;
        }

        v97 = *(*(v114 + 56) + 8 * v94);
        if ([v97 integerValue] < 3)
        {

          goto LABEL_87;
        }

        v98 = v81;
        MEMORY[0x1CCA5D040]();
        if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();

        v105 = v121;
        goto LABEL_65;
      }
    }

LABEL_87:
  }

  sub_1C75504FC();
  v50 = v105;
  sub_1C75504FC();
  v99 = sub_1C754FEEC();
  v100 = sub_1C755117C();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 134218240;
    *(v101 + 4) = sub_1C6FB6304();
    *(v101 + 12) = 2048;
    *(v101 + 14) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v99, v100, "Found %ld significant pets out of %ld input pets.", v101, 0x16u);
    MEMORY[0x1CCA5F8E0](v101, -1, -1);
  }

  else
  {
  }

  return v50;
}

void sub_1C722AD84(uint64_t a1, void *a2, NSObject *a3)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C754FF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  if (sub_1C6FB6304())
  {
    v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v6;
    sub_1C75504FC();
    v9 = sub_1C754FEEC();
    v10 = sub_1C755117C();
    v11 = os_log_type_enabled(v9, v10);
    v43 = a2;
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = sub_1C6FB6304();

      _os_log_impl(&dword_1C6F5C000, v9, v10, "Promoting any of the %ld input pets that are unverified.", v12, 0xCu);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
    }

    else
    {
    }

    v15 = MEMORY[0x1E69E7CC0];
    v47 = MEMORY[0x1E69E7CC0];
    v16 = sub_1C6FB6304();
    v44 = a3;
    if (v16)
    {
      v17 = v16;
      if (v16 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v17; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1CCA5DDD0](i, a1);
        }

        else
        {
          v19 = *(a1 + 8 * i + 32);
        }

        v20 = v19;
        if ([v19 verifiedType])
        {
        }

        else
        {
          v21 = v20;
          MEMORY[0x1CCA5D040]();
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C7550B9C();
          }

          sub_1C7550BEC();

          v15 = v47;
        }
      }
    }

    if (!sub_1C6FB6304())
    {
      goto LABEL_25;
    }

    v23 = v41;
    v22 = v42;
    (*(v7 + 16))(v41, v44, v42);
    v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = v15;
    (*(v7 + 32))(&v25[v24], v23, v22);
    aBlock[4] = sub_1C7237528;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C6FD8F68;
    aBlock[3] = &block_descriptor_49;
    v26 = _Block_copy(aBlock);
    sub_1C75504FC();

    aBlock[0] = 0;
    LODWORD(v24) = [v43 performChangesAndWait:v26 error:aBlock];
    _Block_release(v26);
    if (v24)
    {
      v27 = aBlock[0];
LABEL_25:

      return;
    }

    v28 = aBlock[0];
    v29 = sub_1C754DBEC();

    swift_willThrow();
    aBlock[0] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    sub_1C6F65BE8(0, &qword_1EC216D18);
    swift_dynamicCast();

    v30 = v45;
    v31 = sub_1C754FEEC();
    v32 = sub_1C755119C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48[0] = v34;
      *v33 = 136315138;
      v35 = [v30 localizedDescription];
      v36 = sub_1C755068C();
      v38 = v37;

      v39 = sub_1C6F765A4(v36, v38, v48);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_1C6F5C000, v31, v32, "Error! Failed to promote unverified pets: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1CCA5F8E0](v34, -1, -1);
      MEMORY[0x1CCA5F8E0](v33, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v44 = sub_1C754FEEC();
    v13 = sub_1C755117C();
    if (os_log_type_enabled(v44, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C6F5C000, v44, v13, "No pets passed into findSignificantPets, returning.", v14, 2u);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
    }
  }
}

uint64_t static PetPromoter.calculateOrderOfPetsWithinPeopleAndPetsHome(in:pnPhotoLibrary:clusterManager:delegate:logger:persistOrder:updateBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, void *a8)
{
  v14 = [a1 librarySpecificFetchOptions];
  type metadata accessor for PetPromoter();
  v15 = sub_1C72298C0();
  v16 = sub_1C722C934();
  sub_1C6FD3574(v16);
  sub_1C7082AAC(v15, v14);
  [v14 setPersonContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C7565670;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v17 + 32) = sub_1C6F6AF98(0x724F6C61756E616DLL, 0xEB00000000726564, 1);
  sub_1C71F8834(v17, v14);
  v205 = v14;
  v19 = [objc_opt_self() fetchPersonsWithOptions_];
  v20 = [v19 fetchedObjects];

  if (!v20)
  {
    v34 = sub_1C754FEEC();
    v35 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v35))
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  sub_1C6F65BE8(0, &qword_1EDD100F0);
  v21 = sub_1C7550B5C();

  v22 = sub_1C6FB6304();
  if (!v22)
  {

    v34 = sub_1C754FEEC();
    v41 = sub_1C755117C();
    if (OUTLINED_FUNCTION_7_0(v41))
    {
LABEL_33:
      v42 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v42);
      OUTLINED_FUNCTION_1_82();
      _os_log_impl(v43, v44, v45, v46, v47, v48);
      OUTLINED_FUNCTION_23_3();
    }

LABEL_34:

    return MEMORY[0x1E69E7CC0];
  }

  v211 = a4;
  v212 = a7;
  v214 = a5;
  v215 = a8;
  v202 = v22;
  v203 = a6;
  v23 = sub_1C722D1BC(v21);
  v223[0] = MEMORY[0x1E69E7CC0];
  v24 = sub_1C6FB6304();
  v25 = 0;
  v26 = (v21 & 0xC000000000000001);
  v27 = v21 & 0xFFFFFFFFFFFFFF8;
  v218 = *MEMORY[0x1E6978F10];
  v28 = &selRef_clsSceneClassifications;
  v217 = v23;
  while (1)
  {
    if (v24 == v25)
    {
      v31 = 0;
      v32 = v223[0];
      v223[0] = MEMORY[0x1E69E7CC0];
      v219 = v21;
      while (v24 != v31)
      {
        if (v26)
        {
          v33 = MEMORY[0x1CCA5DDD0](v31, v21);
        }

        else
        {
          if (v31 >= *(v27 + 16))
          {
            goto LABEL_204;
          }

          v33 = *(v21 + 8 * v31 + 32);
        }

        a5 = v33;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_203;
        }

        if ([v33 detectionType] == 1 && v23 < objc_msgSend(a5, sel_manualOrder))
        {
          sub_1C755192C();
          sub_1C755196C();
          v21 = v219;
          sub_1C755197C();
          sub_1C755193C();
          v23 = v217;
        }

        else
        {
        }

        ++v31;
      }

      v216 = v26;

      v223[0] = sub_1C71CC970(v36);
      sub_1C72329B8(v223);

      v37 = v223[0];

      v38 = sub_1C754FEEC();
      v39 = sub_1C755118C();
      if (OUTLINED_FUNCTION_128(v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134218496;
        *(v40 + 4) = sub_1C6FB6304();

        *(v40 + 12) = 2048;
        *(v40 + 14) = sub_1C6FB6304();

        *(v40 + 22) = 2048;
        v28 = 0x1E82A5000;
        *(v40 + 24) = v217;
        _os_log_impl(&dword_1C6F5C000, v38, v39, "%ld pets to arrange, %ld people to go behind, %ld maximum user modified manual order", v40, 0x20u);
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v201 = v27;
      a5 = sub_1C722D4E8(v219, a2, v211, v212, v215);
      v223[0] = v32;

      v211 = v37;
      sub_1C6FD35B4(v50);
      sub_1C75504FC();
      v51 = sub_1C75504FC();
      v223[0] = sub_1C71CC970(v51);
      sub_1C7232A34(v223, a5);

      v52 = v223[0];
      v223[0] = MEMORY[0x1E69E7CC0];
      v53 = sub_1C6FB6304();
      v26 = v216;
      if (!v53)
      {

        v215 = 0;
        a5 = MEMORY[0x1E69E7CC0];
        v57 = MEMORY[0x1E69E7CC8];
        goto LABEL_77;
      }

      v27 = v53;
      if (v53 < 1)
      {
        goto LABEL_215;
      }

      v54 = 0;
      v55 = 0;
      v56 = v52 & 0xC000000000000001;
      v57 = MEMORY[0x1E69E7CC8];
      v207 = MEMORY[0x1E69E7CC0];
      v206 = v52;
      v209 = v53;
      v208 = v52 & 0xC000000000000001;
      while (1)
      {
        if (v56)
        {
          v58 = MEMORY[0x1CCA5DDD0](v55, v52);
        }

        else
        {
          v58 = *(v52 + 8 * v55 + 32);
        }

        v26 = v58;
        if ([v58 detectionType] == 1)
        {

          v54 = v26;
          v26 = v216;
          goto LABEL_73;
        }

        if (!v54)
        {
          v66 = v26;
          MEMORY[0x1CCA5D040]();
          OUTLINED_FUNCTION_62_14();
          if (v68)
          {
            OUTLINED_FUNCTION_15(v67);
            sub_1C7550B9C();
          }

          OUTLINED_FUNCTION_64();
          sub_1C7550BEC();

          v54 = 0;
          v207 = v223[0];
          v26 = v216;
          v27 = v209;
          v56 = v208;
          goto LABEL_73;
        }

        v59 = *(v57 + 16);
        v215 = v54;
        v213 = v54;
        if (v59 && (sub_1C6FC32C8(), (v61 & 1) != 0))
        {
          v62 = v57;
          v28 = *(*(v57 + 56) + 8 * v60);
          sub_1C75504FC();
        }

        else
        {
          v62 = v57;
          v28 = MEMORY[0x1E69E7CC0];
        }

        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C7565670;
        *(inited + 32) = v26;
        a5 = v28 >> 62;
        if (v28 >> 62)
        {
          v64 = OUTLINED_FUNCTION_96_7();
        }

        else
        {
          v64 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v65 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_209;
        }

        v27 = v26;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (a5)
        {
          goto LABEL_60;
        }

        a5 = v28 & 0xFFFFFFFFFFFFFF8;
        if (v65 > *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_61;
        }

LABEL_62:
        if (*(a5 + 16) >= *(a5 + 24) >> 1)
        {
          goto LABEL_210;
        }

        v69 = v24;
        swift_arrayInitWithCopy();

        ++*(a5 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v222 = v62;
        v24 = v213;
        sub_1C6FC32C8();
        v73 = *(v62 + 16);
        v74 = (v72 & 1) == 0;
        v26 = (v73 + v74);
        if (__OFADD__(v73, v74))
        {
          goto LABEL_211;
        }

        a5 = v71;
        v75 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219648);
        if (sub_1C7551A2C())
        {
          sub_1C6FC32C8();
          v26 = v216;
          if ((v75 & 1) != (v77 & 1))
          {
LABEL_220:
            sub_1C7551E4C();
            __break(1u);

            __break(1u);
            return result;
          }

          a5 = v76;
        }

        else
        {
          v26 = v216;
        }

        v78 = v222;
        if (v75)
        {
          *(*(v222 + 56) + 8 * a5) = v28;
        }

        else
        {
          *(v222 + 8 * (a5 >> 6) + 64) |= 1 << a5;
          *(v78[6] + 8 * a5) = v213;
          *(v78[7] + 8 * a5) = v28;
          v79 = v78[2];
          v80 = __OFADD__(v79, 1);
          v81 = v79 + 1;
          if (v80)
          {
            goto LABEL_213;
          }

          v78[2] = v81;
        }

        v28 = 0x1E82A5000;
        v52 = v206;
        v27 = v209;
        v56 = v208;
        v24 = v69;
        v57 = v78;
LABEL_73:
        if (v27 == ++v55)
        {
          v215 = v54;

          a5 = v207;
LABEL_77:
          sub_1C75504FC();
          v82 = sub_1C754FEEC();
          v83 = sub_1C755118C();
          v207 = a5;
          if (OUTLINED_FUNCTION_7_0(v83))
          {
            v84 = OUTLINED_FUNCTION_41_0();
            *v84 = 134217984;
            *(v84 + 4) = sub_1C6FB6304();

            OUTLINED_FUNCTION_17();
            _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
            OUTLINED_FUNCTION_23_3();
          }

          else
          {
          }

          v90 = v217;
          v91 = 0;
          v222 = MEMORY[0x1E69E7CC0];
          while (v24 != v91)
          {
            if (v26)
            {
              v92 = MEMORY[0x1CCA5DDD0](v91, v219);
            }

            else
            {
              if (v91 >= *(v201 + 16))
              {
                goto LABEL_206;
              }

              v92 = *(v219 + 8 * v91 + 32);
            }

            a5 = v92;
            if (__OFADD__(v91, 1))
            {
              goto LABEL_205;
            }

            if (v90 < [v92 *(v28 + 3920)] || objc_msgSend(a5, *(v28 + 3920)) == v218)
            {
            }

            else
            {
              sub_1C755192C();
              sub_1C755196C();
              OUTLINED_FUNCTION_64();
              sub_1C755197C();
              sub_1C755193C();
              v90 = v217;
            }

            ++v91;
          }

          v221 = v222;
          v93 = sub_1C75504FC();
          sub_1C6FD35B4(v93);
          v94 = v222;
          v27 = v211;
          v95 = sub_1C6FB6304();
          v216 = v57;
          if (!v95)
          {
            v24 = v214;
LABEL_128:
            v28 = "QueryTokenCategoryTypeString";
            v218 = v94;
            if (sub_1C6FB6304() == v202)
            {
            }

            else
            {
              sub_1C75504FC();
              sub_1C75504FC();
              v113 = sub_1C754FEEC();
              v114 = sub_1C755119C();
              if (OUTLINED_FUNCTION_7_0(v114))
              {
                v116 = swift_slowAlloc();
                *v116 = 134218240;
                *(v116 + 4) = sub_1C6FB6304();

                *(v116 + 12) = 2048;
                v117 = sub_1C6FB6304();

                *(v116 + 14) = v117;

                OUTLINED_FUNCTION_17();
                _os_log_impl(v118, v119, v120, v121, v122, 0x16u);
                OUTLINED_FUNCTION_23_3();
              }

              else
              {

                swift_bridgeObjectRelease_n();
              }
            }

            v123 = sub_1C754FEEC();
            v124 = sub_1C755117C();
            if (OUTLINED_FUNCTION_7_0(v124))
            {
              v125 = OUTLINED_FUNCTION_127();
              OUTLINED_FUNCTION_37_0(v125);
              OUTLINED_FUNCTION_1_82();
              _os_log_impl(v126, v127, v128, v129, v130, v131);
              OUTLINED_FUNCTION_23_3();
            }

            if (v203)
            {
              v132 = sub_1C754FEEC();
              v133 = sub_1C755117C();
              if (OUTLINED_FUNCTION_7_0(v133))
              {
                v134 = OUTLINED_FUNCTION_127();
                OUTLINED_FUNCTION_37_0(v134);
                OUTLINED_FUNCTION_1_82();
                _os_log_impl(v135, v136, v137, v138, v139, v140);
                OUTLINED_FUNCTION_23_3();
              }

              v141 = sub_1C74ED5F8(v27);
              if (v141)
              {
                v142 = v141;
                v143 = [v141 manualOrder];
              }

              else
              {
                v143 = 0;
              }

              if (v217 <= v143)
              {
                v26 = v143;
              }

              else
              {
                v26 = v217;
              }

              v144 = sub_1C6FB6304();
              if (v144)
              {
                a5 = v144;
                if (sub_1C6FB6304() >= 1)
                {
                  v24 = v27 & 0xC000000000000001;
                  sub_1C6FB6330(0, (v27 & 0xC000000000000001) == 0, v27);
                  if ((v27 & 0xC000000000000001) == 0)
                  {
                    v145 = *(v27 + 32);
                    goto LABEL_150;
                  }

                  goto LABEL_217;
                }

                goto LABEL_169;
              }

              v151 = sub_1C754FEEC();
              v152 = sub_1C755117C();
              if (OUTLINED_FUNCTION_66(v152))
              {
                v153 = OUTLINED_FUNCTION_127();
                OUTLINED_FUNCTION_58_8(v153);
                OUTLINED_FUNCTION_34_22();
                _os_log_impl(v154, v155, v156, v157, v158, 2u);
                OUTLINED_FUNCTION_109();
              }

              sub_1C722DB3C(v26, v207, a1);
            }

            else
            {
            }

            goto LABEL_200;
          }

          v28 = v95;
          a5 = 0;
          v218 = v211 & 0xC000000000000001;
          v24 = v214;
          v210 = v95;
          while (2)
          {
            if (v218)
            {
              v96 = MEMORY[0x1CCA5DDD0](a5, v27);
            }

            else
            {
              if (a5 >= *(v27 + 16))
              {
                goto LABEL_208;
              }

              v96 = *(v211 + 32 + 8 * a5);
            }

            v80 = __OFADD__(a5++, 1);
            if (v80)
            {
              goto LABEL_207;
            }

            v26 = v96;
            MEMORY[0x1CCA5D040]();
            OUTLINED_FUNCTION_62_14();
            if (v68)
            {
              OUTLINED_FUNCTION_15(v97);
              sub_1C7550B9C();
            }

            sub_1C7550BEC();
            v94 = v222;
            if (*(v57 + 16) && (sub_1C6FC32C8(), (v99 & 1) != 0))
            {
              v28 = *(*(v57 + 56) + 8 * v98);
              v27 = v28 >> 62;
              if (v28 >> 62)
              {
                v100 = OUTLINED_FUNCTION_96_7();
                if (!v100)
                {
                  goto LABEL_116;
                }

LABEL_105:
                if (v100 < 1)
                {
                  goto LABEL_212;
                }

                sub_1C75504FC();
                for (i = 0; i != v100; ++i)
                {
                  if ((v28 & 0xC000000000000001) != 0)
                  {
                    v102 = MEMORY[0x1CCA5DDD0](i, v28);
                  }

                  else
                  {
                    v102 = *(v28 + 8 * i + 32);
                  }

                  v103 = v102;
                  MEMORY[0x1CCA5D040]();
                  OUTLINED_FUNCTION_62_14();
                  if (v68)
                  {
                    OUTLINED_FUNCTION_15(v104);
                    sub_1C7550B9C();
                  }

                  sub_1C7550BEC();
                }

                v94 = v222;
                v24 = v214;
              }

              else
              {
                v100 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v100)
                {
                  goto LABEL_105;
                }

LABEL_116:
                sub_1C75504FC();
              }

              v26 = v26;
              sub_1C75504FC();
              v105 = sub_1C754FEEC();
              v106 = sub_1C755118C();
              if (OUTLINED_FUNCTION_128(v106))
              {
                v107 = swift_slowAlloc();
                v108 = swift_slowAlloc();
                v221 = v108;
                *v107 = 134218242;
                if (v27)
                {
                  v109 = OUTLINED_FUNCTION_96_7();
                }

                else
                {
                  v109 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                *(v107 + 4) = v109;

                *(v107 + 12) = 2080;
                v110 = sub_1C70CAC04(v26);
                isUniquelyReferenced_nonNull_native = v111;

                v27 = v211;
                if (!isUniquelyReferenced_nonNull_native)
                {
LABEL_219:
                  __break(1u);
                  goto LABEL_220;
                }

                v112 = sub_1C6F765A4(v110, isUniquelyReferenced_nonNull_native, &v221);

                *(v107 + 14) = v112;
                _os_log_impl(&dword_1C6F5C000, v105, v106, "%ld pets to insert behind person %s", v107, 0x16u);
                __swift_destroy_boxed_opaque_existential_1(v108);
                OUTLINED_FUNCTION_37();
                OUTLINED_FUNCTION_109();

                v24 = v214;
              }

              else
              {

                swift_bridgeObjectRelease_n();
                v27 = v211;
              }

              v57 = v216;
              v28 = v210;
            }

            else
            {
            }

            if (a5 == v28)
            {
              goto LABEL_128;
            }

            continue;
          }
        }
      }

      if (a5)
      {
LABEL_60:
        OUTLINED_FUNCTION_96_7();
      }

LABEL_61:
      v28 = sub_1C75518CC();
      a5 = v28 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_62;
    }

    if (v26)
    {
      v29 = MEMORY[0x1CCA5DDD0](v25, v21);
    }

    else
    {
      if (v25 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_202;
      }

      v29 = *(v21 + 8 * v25 + 32);
    }

    v30 = v29;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if ([v29 detectionType] == 1 || objc_msgSend(v30, sel_manualOrder) != v218 && v23 >= objc_msgSend(v30, sel_manualOrder))
    {
    }

    else
    {
      sub_1C755192C();
      a5 = *(v223[0] + 16);
      sub_1C755196C();
      OUTLINED_FUNCTION_58();
      sub_1C755197C();
      sub_1C755193C();
      v23 = v217;
    }

    ++v25;
  }

  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
  do
  {
    __break(1u);
LABEL_217:
    v145 = MEMORY[0x1CCA5DDD0](0, v27);
LABEL_150:
    isUniquelyReferenced_nonNull_native = v145;
    v146 = [v145 manualOrder];

    v147 = *MEMORY[0x1E6978F28];
    v148 = v217;
    if (v217 <= v147)
    {
      if (v146 >= v147)
      {
        v146 = *MEMORY[0x1E6978F28];
      }

      if (a5 < 2)
      {
        v148 = v146;
        v146 += v147;
      }

      else
      {
        sub_1C6FB6330(1, v24 == 0, v27);
        if (v24)
        {
          v149 = v146;
          v150 = MEMORY[0x1CCA5DDD0](1, v27);
        }

        else
        {
          v149 = v146;
          v150 = *(v27 + 40);
        }

        isUniquelyReferenced_nonNull_native = v150;
        v146 = [v150 manualOrder];

        v148 = v149;
      }
    }

    v159 = v26;
    v160 = v148;
    v80 = __OFADD__(v148, v147);
    v161 = v148 + v147;
    if (v80)
    {
      __break(1u);
      goto LABEL_219;
    }

    if (v146 >= v161)
    {
      v162 = v161;
    }

    else
    {
      v162 = v146;
    }

    v163 = sub_1C754FEEC();
    v164 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v164))
    {
      v165 = swift_slowAlloc();
      *v165 = *(v28 + 2680);
      *(v165 + 4) = v160;
      *(v165 + 12) = 2048;
      *(v165 + 14) = v162;
      _os_log_impl(&dword_1C6F5C000, v163, v164, "Pets before people range: %ld -> %ld", v165, 0x16u);
      OUTLINED_FUNCTION_23_3();
    }

    v166 = v162;
    v24 = v214;
    v26 = sub_1C722DE50(v207, v160, v166, a1, v214, v159);
    v57 = v216;
LABEL_169:

    v167 = a5 - 1;
  }

  while (__OFSUB__(a5, 1));
  if (v167 >= 1)
  {
    v168 = v27 & 0xC000000000000001;
    sub_1C6FB6330(0, (v27 & 0xC000000000000001) == 0, v27);
    sub_1C6FB6330(a5 - 2, (v27 & 0xC000000000000001) == 0, v27);
    a5 = 0;
    v220 = v167;
    do
    {
      v169 = v27 + 8 * a5;
      if (v168)
      {
        v170 = MEMORY[0x1CCA5DDD0](a5, v27);
      }

      else
      {
        v170 = *(v169 + 32);
      }

      v28 = v170;
      ++a5;
      if (*(v57 + 16) && (sub_1C6FC32C8(), (v172 & 1) != 0))
      {
        v173 = *(*(v57 + 56) + 8 * v171);
        sub_1C75504FC();
        v27 = [v28 manualOrder];
        if (v168)
        {
          v174 = MEMORY[0x1CCA5DDD0](a5, v211);
        }

        else
        {
          if (a5 >= *(v211 + 16))
          {
            goto LABEL_214;
          }

          v174 = *(v169 + 40);
        }

        v175 = v174;
        v176 = [v174 manualOrder];

        v26 = sub_1C722DE50(v173, v27, v176, a1, v24, v26);
        sub_1C75504FC();
        v177 = sub_1C754FEEC();
        v178 = sub_1C755118C();
        if (OUTLINED_FUNCTION_128(v178))
        {
          v217 = v26;
          v179 = swift_slowAlloc();
          *v179 = 134218496;
          if (v173 >> 62)
          {
            v180 = sub_1C75516BC();
          }

          else
          {
            v180 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v179 + 4) = v180;

          *(v179 + 12) = 2048;
          *(v179 + 14) = v27;
          *(v179 + 22) = 2048;
          *(v179 + 24) = v176;
          _os_log_impl(&dword_1C6F5C000, v177, v178, "Inserted %ld pets between persons with manual orders %ld and %ld", v179, 0x20u);
          OUTLINED_FUNCTION_109();

          v24 = v214;
          v27 = v211;
          v57 = v216;
          v26 = v217;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v24 = v214;
          v27 = v211;
          v57 = v216;
        }

        v167 = v220;
      }

      else
      {
      }
    }

    while (v167 != a5);
  }

  v181 = sub_1C74ED5F8(v27);

  if (v181)
  {
    v182 = sub_1C6FE141C(v181, v57);
    if (!v182)
    {
      goto LABEL_195;
    }

    sub_1C722DB3C(v26, v182, a1);
    sub_1C75504FC();
    v183 = sub_1C754FEEC();
    v184 = sub_1C755118C();
    if (OUTLINED_FUNCTION_7_0(v184))
    {
      v185 = OUTLINED_FUNCTION_41_0();
      *v185 = 134217984;
      v186 = sub_1C6FB6304();

      *(v185 + 4) = v186;

      OUTLINED_FUNCTION_17();
      _os_log_impl(v187, v188, v189, v190, v191, 0xCu);
      OUTLINED_FUNCTION_23_3();

LABEL_195:
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  v192 = sub_1C754FEEC();
  v193 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v193))
  {
    v194 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v194);
    OUTLINED_FUNCTION_1_82();
    _os_log_impl(v195, v196, v197, v198, v199, v200);
    OUTLINED_FUNCTION_23_3();
  }

LABEL_200:
  return v218;
}

uint64_t sub_1C722C934()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C7565670;
  *(v0 + 32) = sub_1C7551EFC();
  return v0;
}

void sub_1C722C990(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = [objc_opt_self() fetchAssetsForPerson:a1 faceCount:1 options:a2];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 count];
    v10 = a1;
    if (v9 >= 3)
    {
      MEMORY[0x1CCA5D040]();
      sub_1C6FB6328(*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C7550BEC();
    }

    else
    {
      v11 = sub_1C754FEEC();
      v12 = sub_1C755117C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23 = v22;
        *v13 = 136315650;
        v14 = [v10 localIdentifier];
        v15 = sub_1C755068C();
        v17 = v16;

        v18 = sub_1C6F765A4(v15, v17, &v23);

        *(v13 + 4) = v18;
        *(v13 + 12) = 2048;
        *(v13 + 14) = v9;
        *(v13 + 22) = 2048;
        *(v13 + 24) = 3;
        _os_log_impl(&dword_1C6F5C000, v11, v12, "Pet %s doesn't have enough assets alone to be promoted: %ld < %ld", v13, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1CCA5F8E0](v22, -1, -1);
        MEMORY[0x1CCA5F8E0](v13, -1, -1);
      }
    }
  }

  else
  {
    v19 = sub_1C754FEEC();
    v20 = sub_1C755119C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Unable to fetch assets alone for the pet!", v21, 2u);
      MEMORY[0x1CCA5F8E0](v21, -1, -1);
    }
  }
}

BOOL sub_1C722CBF0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = sub_1C6F78124(*a1, v5);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  if (!*(a3 + 16))
  {
    return 1;
  }

  v10 = *(*(a3 + 56) + 8 * v8);
  v11 = sub_1C6F78124(v6, v7);
  if ((v12 & 1) == 0)
  {

    return 1;
  }

  v13 = *(*(a3 + 56) + 8 * v11);
  v14 = [v10 integerValue];
  if (v14 != [v13 integerValue])
  {
    v18 = [v10 integerValue];
    v19 = [v13 integerValue];

    return v19 < v18;
  }

  if (v4 != v6 || v5 != v7)
  {
    v16 = sub_1C7551DBC();

    return v16 & 1;
  }

  return 0;
}

void sub_1C722CD3C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  if (a1)
  {
    v24 = 0;
    v4 = 0;
    v26 = *(a2 + 16);
    v5 = a2 + 40;
    v6 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    for (i = a2 + 40; ; v5 = i)
    {
      for (j = (v5 + 16 * v4); ; j += 2)
      {
        if (v26 == v4)
        {

          return;
        }

        if (v4 >= *(a2 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v9 = *(j - 1);
        v8 = *j;
        v10 = *(v6 + 16);
        if (v10 >= a1)
        {
          break;
        }

        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6F7ED9C();
        }

        v11 = *(v6 + 16);
        if (v11 >= *(v6 + 24) >> 1)
        {
          sub_1C6F7ED9C();
        }

        *(v6 + 16) = v11 + 1;
        v12 = v6 + 16 * v11;
        *(v12 + 32) = v9;
        *(v12 + 40) = v8;
        ++v4;
      }

      if (v24 >= v10)
      {
        goto LABEL_29;
      }

      v13 = v6 + 16 * v24;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_1C75504FC();
      sub_1C75504FC();
      v16 = v25;
      v22 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6F7ED9C();
        v16 = v25;
      }

      v17 = *(v16 + 16);
      if (v17 >= *(v16 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v16 = v25;
      }

      *(v16 + 16) = v17 + 1;
      v25 = v16;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v22;
      *(v18 + 40) = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C7422A2C();
        v6 = v19;
      }

      if (v24 >= *(v6 + 16))
      {
        break;
      }

      v20 = v6 + 16 * v24;
      ++v4;
      *(v20 + 32) = v9;
      *(v20 + 40) = v8;

      if ((v24 + 1) < a1)
      {
        v21 = v24 + 1;
      }

      else
      {
        v21 = 0;
      }

      v24 = v21;
    }

    goto LABEL_30;
  }
}

void sub_1C722CF74(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_17:
    v1 = sub_1C75516BC();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
LABEL_3:
      v2 = objc_opt_self();
      v3 = 0;
      v18 = v2;
      v19 = v1;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1CCA5DDD0](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v4 = *(a1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v7 = [v2 changeRequestForPerson_];
        [v7 setVerifiedType_];
        v8 = v5;
        v9 = sub_1C754FEEC();
        v10 = sub_1C755117C();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = v7;
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v21 = v13;
          *v12 = 136315138;
          v14 = sub_1C70CAC04(v8);
          v16 = v15;

          if (!v16)
          {
            __break(1u);
            return;
          }

          v17 = sub_1C6F765A4(v14, v16, &v21);

          *(v12 + 4) = v17;
          _os_log_impl(&dword_1C6F5C000, v9, v10, "Promoting pet with UUID %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x1CCA5F8E0](v13, -1, -1);
          MEMORY[0x1CCA5F8E0](v12, -1, -1);

          v2 = v18;
          v1 = v19;
        }

        else
        {
        }

        ++v3;
      }

      while (v6 != v1);
    }
  }
}

uint64_t sub_1C722D1BC(uint64_t a1)
{
  v2 = sub_1C75504FC();
  v29 = sub_1C71CC970(v2);
  sub_1C72329B8(&v29);
  v3 = v29;
  v4 = sub_1C6FB6304();
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *MEMORY[0x1E6978F10];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCA5DDD0](v6, v3);
      }

      else
      {
        if (v6 >= *(v3 + 16))
        {
          goto LABEL_47;
        }

        v9 = *(v3 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v9 manualOrder] == v8)
      {

        v12 = v7;
      }

      else
      {
        v12 = [v10 manualOrder];

        if (__OFADD__(v7, 1))
        {
          goto LABEL_46;
        }

        if (v12 != v7 + 1)
        {
          goto LABEL_15;
        }
      }

      ++v6;
      v7 = v12;
      if (v11 == v5)
      {
        goto LABEL_15;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);

    __break(1u);
  }

  else
  {
    v7 = 0;
LABEL_15:

    v29 = MEMORY[0x1E69E7CC0];
    v5 = sub_1C6FB6304();
    for (i = 0; v5 != i; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1CCA5DDD0](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v14 = *(a1 + 8 * i + 32);
      }

      v15 = v14;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if ([v14 verifiedType] == 1)
      {
        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
      }

      else
      {
      }
    }

    v16 = v29;
    v17 = sub_1C6FB6304();
    if (v17)
    {
      v5 = v17;
      v29 = MEMORY[0x1E69E7CC0];
      sub_1C716D854();
      if (v5 < 0)
      {
        goto LABEL_48;
      }

      v18 = 0;
      v19 = v29;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1CCA5DDD0](v18, v16);
        }

        else
        {
          v20 = *(v16 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = [v20 manualOrder];

        v29 = v19;
        v23 = v19[2];
        if (v23 >= v19[3] >> 1)
        {
          sub_1C716D854();
          v19 = v29;
        }

        ++v18;
        v19[2] = v23 + 1;
        v19[v23 + 4] = v22;
      }

      while (v5 != v18);
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v24 = sub_1C7424BCC(v19);
    v26 = v25;

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v24;
    }

    if (v27 <= v7)
    {
      return v7;
    }

    else
    {
      return v27;
    }
  }

  return result;
}

uint64_t sub_1C722D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C7229928(a1, a2);
  v9 = [objc_allocWithZone(PNPersonPromoter) initWithPhotoLibrary:a2 andDelegate:a3];
  sub_1C6F65BE8(0, &unk_1EDD0CE60);
  sub_1C7080178(&unk_1EDD0CE50, &unk_1EDD0CE60);
  v10 = sub_1C7550F7C();

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v57 = sub_1C7237268;
  v58 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1C7229DD8;
  v56 = &block_descriptor_43_0;
  v12 = _Block_copy(&aBlock);

  v13 = [v9 interestingPersonsFromPersons:v10 detectionType:2 updateBlock:v12];
  _Block_release(v12);

  if (v13)
  {
    v14 = sub_1C7550F8C();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  v48 = v9;
  if ((v14 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    sub_1C7550FEC();
    v14 = aBlock;
    v15 = v54;
    v16 = v55;
    v17 = v56;
    v18 = v57;
  }

  else
  {
    v17 = 0;
    v19 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v14 + 56);
  }

  v47 = v16;
  v22 = (v16 + 64) >> 6;
  v23 = MEMORY[0x1E69E7CC8];
  v49 = v22;
  v50 = v15;
  if (v14 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v24 = v17;
  v25 = v18;
  v26 = v17;
  if (v18)
  {
LABEL_15:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v14 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v28)
    {
LABEL_29:
      sub_1C6F61E88();

      return v23;
    }

    while (1)
    {
      v51 = v27;
      v29 = v14;
      v30 = [v28 localIdentifier];
      v31 = sub_1C755068C();
      v33 = v32;

      [v28 interestingScore];
      v35 = v34;
      swift_isUniquelyReferenced_nonNull_native();
      v52 = v23;
      v36 = sub_1C6F78124(v31, v33);
      if (__OFADD__(v23[2], (v37 & 1) == 0))
      {
        break;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0);
      if (sub_1C7551A2C())
      {
        v40 = sub_1C6F78124(v31, v33);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_33;
        }

        v38 = v40;
      }

      if (v39)
      {

        *(v23[7] + 8 * v38) = v35;
      }

      else
      {
        v23[(v38 >> 6) + 8] |= 1 << v38;
        v42 = (v23[6] + 16 * v38);
        *v42 = v31;
        v42[1] = v33;
        *(v23[7] + 8 * v38) = v35;

        v43 = v23[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_32;
        }

        v23[2] = v45;
      }

      v17 = v26;
      v14 = v29;
      v15 = v50;
      v18 = v51;
      v22 = v49;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      if (sub_1C75516FC())
      {
        swift_dynamicCast();
        v28 = v52;
        v26 = v17;
        v27 = v18;
        if (v52)
        {
          continue;
        }
      }

      goto LABEL_29;
    }
  }

  else
  {
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        goto LABEL_29;
      }

      v25 = *(v15 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C722D970(id *a1, void **a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*a1 localIdentifier];
  v7 = sub_1C755068C();
  v9 = v8;

  v10 = COERCE_DOUBLE(sub_1C6FE0FE8(v7, v9, a3));
  LOBYTE(v7) = v11;

  v12 = 0.0;
  if (v7)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v10;
  }

  v14 = [v5 localIdentifier];
  v15 = sub_1C755068C();
  v17 = v16;

  v18 = COERCE_DOUBLE(sub_1C6FE0FE8(v15, v17, a3));
  LOBYTE(v14) = v19;

  if (v14)
  {
    if (v13 != 0.0)
    {
      return v12 < v13;
    }
  }

  else
  {
    v12 = v18;
    if (v13 != v18)
    {
      return v12 < v13;
    }
  }

  v21 = [v4 faceCount];
  v22 = [v5 faceCount];
  if (v21 != v22)
  {
    return v22 < v21;
  }

  result = sub_1C70CAC04(v4);
  if (!v23)
  {
    __break(1u);
    goto LABEL_19;
  }

  v24 = result;
  v25 = v23;
  result = sub_1C70CAC04(v5);
  if (!v26)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v24 == result && v25 == v26)
  {

    return 0;
  }

  else
  {
    v28 = sub_1C7551DBC();

    return v28 & 1;
  }
}

uint64_t sub_1C722DB3C(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = v6;
  aBlock[4] = sub_1C7237520;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_37_0;
  v8 = _Block_copy(aBlock);
  sub_1C75504FC();

  aBlock[0] = 0;
  LODWORD(a2) = [a3 performChangesAndWait:v8 error:aBlock];
  _Block_release(v8);
  if (a2)
  {
    v9 = aBlock[0];
  }

  else
  {
    v10 = aBlock[0];
    v11 = sub_1C754DBEC();

    swift_willThrow();
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    sub_1C6F65BE8(0, &qword_1EC216D18);
    swift_dynamicCast();
    v12 = v24;
    v13 = sub_1C754FEEC();
    v14 = sub_1C755119C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      v17 = [v12 localizedDescription];
      v18 = sub_1C755068C();
      v20 = v19;

      v21 = sub_1C6F765A4(v18, v20, &v25);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1C6F5C000, v13, v14, "Error! Failed to set manual orders: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1CCA5F8E0](v16, -1, -1);
      MEMORY[0x1CCA5F8E0](v15, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v22 = *(v6 + 16);

  return v22;
}

uint64_t sub_1C722DE50(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

    return a6;
  }

  v11 = sub_1C75516BC();
  if (!v11)
  {
    return a6;
  }

LABEL_3:
  if (a3 >= a2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    v17 = a3 - a2;
    if (__OFSUB__(a3, a2))
    {
      __break(1u);
    }

    else if (!__OFADD__(v11, 1))
    {
      if (v11 != -1)
      {
        if (v17 != 0x8000000000000000 || v11 != -2)
        {
          v19 = v16;
          v20 = v17 / (v11 + 1);
          v21 = swift_allocObject();
          v21[2] = a1;
          v21[3] = v19;
          v21[4] = v20;
          aBlock[4] = sub_1C72374C8;
          aBlock[5] = v21;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1C6FD8F68;
          aBlock[3] = &block_descriptor_30_0;
          v22 = _Block_copy(aBlock);
          sub_1C75504FC();

          aBlock[0] = 0;
          v23 = [a4 performChangesAndWait:v22 error:aBlock];
          _Block_release(v22);
          if (v23)
          {
            v24 = aBlock[0];
          }

          else
          {
            v25 = aBlock[0];
            v26 = sub_1C754DBEC();

            swift_willThrow();
            aBlock[0] = v26;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
            sub_1C6F65BE8(0, &qword_1EC216D18);
            swift_dynamicCast();
            v27 = v37;
            v28 = sub_1C754FEEC();
            v29 = sub_1C755119C();

            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v39[0] = v31;
              *v30 = 136315138;
              v32 = [v27 localizedDescription];
              v33 = sub_1C755068C();
              v35 = v34;

              v36 = sub_1C6F765A4(v33, v35, v39);

              *(v30 + 4) = v36;
              _os_log_impl(&dword_1C6F5C000, v28, v29, "Error! Failed to set manual orders: %s", v30, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v31);
              MEMORY[0x1CCA5F8E0](v31, -1, -1);
              MEMORY[0x1CCA5F8E0](v30, -1, -1);
            }

            else
            {
            }
          }

          return a6;
        }

LABEL_29:
        __break(1u);
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  v12 = sub_1C754FEEC();
  v13 = sub_1C755119C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "The ending person has a higher manual order than the starting person!", v14, 2u);
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
  }

  return sub_1C722DB3C(a6, a1, a4);
}

void sub_1C722E28C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_12;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = objc_opt_self();
      if (v4 < 1)
      {
        break;
      }

      v6 = v5;
      v7 = *MEMORY[0x1E6978F28];
      swift_beginAccess();
      swift_beginAccess();
      v8 = 0;
      while (1)
      {
        v9 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](v8, a1) : *(a1 + 8 * v8 + 32);
        v10 = v9;
        v11 = *(a2 + 16);
        v12 = __OFADD__(v11, v7);
        v13 = v11 + v7;
        if (v12)
        {
          break;
        }

        ++v8;
        *(a2 + 16) = v13;
        v14 = [v6 changeRequestForPerson_];
        [v14 setManualOrder_];

        if (v4 == v8)
        {
          return;
        }
      }

      __break(1u);
LABEL_12:
      v4 = sub_1C75516BC();
      if (!v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1C722E3DC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_12;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v7 = objc_opt_self();
      if (v6 < 1)
      {
        break;
      }

      v8 = v7;
      swift_beginAccess();
      swift_beginAccess();
      v9 = 0;
      while (1)
      {
        v10 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](v9, a1) : *(a1 + 8 * v9 + 32);
        v11 = v10;
        v12 = *(a2 + 16);
        v13 = __OFADD__(v12, a3);
        v14 = v12 + a3;
        if (v13)
        {
          break;
        }

        ++v9;
        *(a2 + 16) = v14;
        v15 = [v8 changeRequestForPerson_];
        [v15 setManualOrder_];

        if (v6 == v9)
        {
          return;
        }
      }

      __break(1u);
LABEL_12:
      v6 = sub_1C75516BC();
      if (!v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C722E524(uint64_t a1, id a2, uint64_t a3)
{
  v5 = [a2 librarySpecificFetchOptions];
  v6 = sub_1C72298C0();
  sub_1C7082AAC(v6, v5);
  [v5 setIncludeTorsoAndFaceDetectionData_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C755BAB0;
  *(v7 + 32) = sub_1C755068C();
  *(v7 + 40) = v8;
  sub_1C6FCA0EC(v7, v5);
  v74 = sub_1C6FB6304();
  if (!v74)
  {
    v68 = MEMORY[0x1E69E7CC8];
LABEL_49:

    return v68;
  }

  v9 = 0;
  v72 = objc_opt_self();
  v73 = a1 & 0xC000000000000001;
  v69 = a1 + 32;
  v70 = a1 & 0xFFFFFFFFFFFFFF8;
  v68 = MEMORY[0x1E69E7CC8];
  v71 = v5;
  v66 = a1;
  v67 = a3;
  while (1)
  {
    if (v73)
    {
      v10 = MEMORY[0x1CCA5DDD0](v9, a1);
    }

    else
    {
      if (v9 >= *(v70 + 16))
      {
        goto LABEL_51;
      }

      v10 = *(v69 + 8 * v9);
    }

    v11 = v10;
    v12 = __OFADD__(v9, 1);
    v13 = v9 + 1;
    if (v12)
    {
      break;
    }

    v76 = v13;
    v14 = v5;
    v15 = [v72 fetchRejectedFacesForPerson:v11 options:v14];
    v16 = [v15 fetchedObjects];

    if (v16)
    {
      v75 = v11;
      v17 = sub_1C6F65BE8(0, &qword_1EDD06898);
      v18 = sub_1C7550B5C();
      v19 = v18;
      if (v18 >> 62)
      {
        if (!sub_1C75516BC())
        {
LABEL_31:

          goto LABEL_32;
        }
      }

      else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v20 = [objc_opt_self() fetchPersonsWithFaces:v16 options:v14];

      v21 = [v20 fetchedObjects];
      if (!v21)
      {
        sub_1C75504FC();
        v43 = sub_1C754FEEC();
        v44 = sub_1C755119C();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v77 = v46;
          *v45 = 136315138;
          v47 = MEMORY[0x1CCA5D090](v19, v17);
          v49 = v48;

          v50 = sub_1C6F765A4(v47, v49, &v77);

          *(v45 + 4) = v50;
          _os_log_impl(&dword_1C6F5C000, v43, v44, "Couldn't get fetched pets with faces %s!", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          MEMORY[0x1CCA5F8E0](v46, -1, -1);
          MEMORY[0x1CCA5F8E0](v45, -1, -1);
        }

        else
        {
        }

        goto LABEL_46;
      }

      sub_1C6F65BE8(0, &qword_1EDD100F0);
      v22 = sub_1C7550B5C();

      if (v22 >> 62)
      {
        v23 = sub_1C75516BC();
        if (!v23)
        {
          goto LABEL_34;
        }

LABEL_14:
        v77 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C();
        if (v23 < 0)
        {
          goto LABEL_52;
        }

        v24 = 0;
        v25 = v77;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x1CCA5DDD0](v24, v22);
          }

          else
          {
            v26 = *(v22 + 8 * v24 + 32);
          }

          v27 = v26;
          v28 = [v26 localIdentifier];
          v29 = sub_1C755068C();
          v31 = v30;

          v77 = v25;
          v32 = *(v25 + 16);
          if (v32 >= *(v25 + 24) >> 1)
          {
            sub_1C6F7ED9C();
            v25 = v77;
          }

          ++v24;
          *(v25 + 16) = v32 + 1;
          v33 = v25 + 16 * v32;
          *(v33 + 32) = v29;
          *(v33 + 40) = v31;
        }

        while (v23 != v24);

        a1 = v66;
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_14;
        }

LABEL_34:

        v25 = MEMORY[0x1E69E7CC0];
      }

      if (*(v25 + 16))
      {
        v51 = [v75 localIdentifier];
        v52 = sub_1C755068C();
        v54 = v53;

        swift_isUniquelyReferenced_nonNull_native();
        v77 = v68;
        v55 = sub_1C6F78124(v52, v54);
        if (__OFADD__(*(v68 + 16), (v56 & 1) == 0))
        {
          goto LABEL_53;
        }

        v57 = v55;
        v58 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
        if (sub_1C7551A2C())
        {
          v59 = sub_1C6F78124(v52, v54);
          if ((v58 & 1) != (v60 & 1))
          {
            goto LABEL_55;
          }

          v57 = v59;
        }

        v61 = v77;
        v68 = v77;
        if (v58)
        {
          *(v77[7] + 8 * v57) = v25;
        }

        else
        {
          v77[(v57 >> 6) + 8] |= 1 << v57;
          v62 = (v61[6] + 16 * v57);
          *v62 = v52;
          v62[1] = v54;
          *(v61[7] + 8 * v57) = v25;
          v63 = v61[2];
          v12 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v12)
          {
            goto LABEL_54;
          }

          v61[2] = v64;
        }
      }

      else
      {
      }

      v5 = v71;
      goto LABEL_46;
    }

    v34 = v11;
    v14 = sub_1C754FEEC();
    v35 = sub_1C755119C();

    if (!os_log_type_enabled(v14, v35))
    {

LABEL_32:
      goto LABEL_46;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v77 = v37;
    *v36 = 136315138;
    v38 = [v34 localIdentifier];
    v39 = sub_1C755068C();
    v41 = v40;

    v42 = sub_1C6F765A4(v39, v41, &v77);
    v5 = v71;

    *(v36 + 4) = v42;
    _os_log_impl(&dword_1C6F5C000, v14, v35, "Couldn't get fetched rejected faces for pet %s!", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1CCA5F8E0](v37, -1, -1);
    MEMORY[0x1CCA5F8E0](v36, -1, -1);

LABEL_46:
    v9 = v76;
    if (v76 == v74)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C722ECB4(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  v7 = sub_1C722E524(a1, a4, a5);
  v40 = sub_1C6FB6304();
  if (v40)
  {
    v8 = 0;
    v39 = a2 & 0xC000000000000001;
    v35 = a2 + 32;
    v9 = MEMORY[0x1E69E7CC8];
    v37 = a2;
    v38 = a3;
    v36 = v7;
    while (1)
    {
      v10 = sub_1C6FB6330(v8, v39 == 0, a2);
      v11 = v39 ? MEMORY[0x1CCA5DDD0](v8, a2, v10) : *(v35 + 8 * v8);
      if (__OFADD__(v8++, 1))
      {
        break;
      }

      v42 = v11;
      v13 = [objc_msgSend(a3 pn:sel_fetchedObjects fetchInvalidCandidatePersonsForPerson:?)];
      swift_unknownObjectRelease();
      sub_1C7550B5C();

      v14 = sub_1C71BC2B8();

      if (v14)
      {
        v41 = v9;
        v15 = sub_1C6FB6304();
        if (v15)
        {
          v16 = v15;
          v43 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C();
          if (v16 < 0)
          {
            goto LABEL_29;
          }

          v17 = 0;
          v18 = v43;
          do
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1CCA5DDD0](v17, v14);
            }

            else
            {
              v19 = *(v14 + 8 * v17 + 32);
              swift_unknownObjectRetain();
            }

            v20 = [v19 localIdentifier];
            v21 = sub_1C755068C();
            v23 = v22;
            swift_unknownObjectRelease();

            v24 = *(v43 + 16);
            if (v24 >= *(v43 + 24) >> 1)
            {
              sub_1C6F7ED9C();
            }

            ++v17;
            *(v43 + 16) = v24 + 1;
            v25 = v43 + 16 * v24;
            *(v25 + 32) = v21;
            *(v25 + 40) = v23;
          }

          while (v16 != v17);

          a2 = v37;
          a3 = v38;
          v7 = v36;
        }

        else
        {

          v18 = MEMORY[0x1E69E7CC0];
        }

        v27 = sub_1C706D154(v18);
        v26 = sub_1C70738FC(v27, MEMORY[0x1E69E7CD0]);
        v9 = v41;
      }

      else
      {
        v26 = MEMORY[0x1E69E7CD0];
      }

      v28 = [v42 localIdentifier];
      v29 = sub_1C755068C();
      v31 = v30;

      v32 = sub_1C6FE3768(v29, v31, v7);

      if (v32)
      {
        v33 = sub_1C706D154(v32);
        v26 = sub_1C70738FC(v33, v26);
      }

      if (*(v26 + 16))
      {
        v34 = [v42 localIdentifier];
        sub_1C755068C();

        swift_isUniquelyReferenced_nonNull_native();
        sub_1C6FC7D38();
      }

      else
      {
      }

      if (v8 == v40)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_27:
  }
}

id sub_1C722F040(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  swift_getObjectType();
  sub_1C722ECB4(a2, a3, a1, a4, a7);
  v16 = v15;
  v17 = [objc_allocWithZone(PNPersonDeduperProfile) initForDetectionType_];
  v18 = objc_allocWithZone(PNPersonDeduper);
  v19 = v17;
  v20 = sub_1C7232BB4(a1, v16, v19);
  [v20 setDelegate_];
  swift_unknownObjectRetain();
  v21 = sub_1C754FEEC();
  v22 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = a6 != 0;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1C6F5C000, v21, v22, "Pet deduper delegate is non-nil: %{BOOL}d.", v23, 8u);
    OUTLINED_FUNCTION_109();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  [v20 setPetPromoter_];

  return v20;
}

void sub_1C722F1CC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v92 = *MEMORY[0x1E69E9840];
  v7 = sub_1C754FF1C();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C755BAB0;
  v11 = [a2 localIdentifier];
  v12 = sub_1C755068C();
  v14 = v13;

  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = sub_1C7550B3C();

  v84 = a1;
  v16 = [a1 pn:v15 fetchPersonsWithLocalIdentifiers:?];

  v17 = [v16 fetchedObjects];
  swift_unknownObjectRelease();
  v18 = sub_1C7550B5C();

  sub_1C710DC34(v18, &aBlock);

  if (v89)
  {
    sub_1C6F65BE8(0, &qword_1EDD100F0);
    if (swift_dynamicCast())
    {
      v19 = v86;
      v20 = [a2 mergedPersonIdentifiers];
      v21 = [v20 allObjects];

      v22 = sub_1C7550B5C();
      sub_1C71BBD84(v22, v23, v24, v25, v26, v27, v28, v29, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, aBlock, *(&aBlock + 1), v88, v89, v90, v91, v92, v93, v94);
      v31 = v30;

      if (v31)
      {
        swift_bridgeObjectRetain_n();
        v32 = a2;
        v80 = a3;
        v33 = sub_1C754FEEC();
        v34 = sub_1C755117C();

        v35 = os_log_type_enabled(v33, v34);
        v78 = v32;
        v79 = v19;
        if (v35)
        {
          v36 = swift_slowAlloc();
          HIDWORD(v76) = v34;
          v37 = v36;
          v77 = swift_slowAlloc();
          *&aBlock = v77;
          *v37 = 136315650;
          v38 = [v32 localIdentifier];
          v39 = sub_1C755068C();
          v41 = v40;

          v42 = sub_1C6F765A4(v39, v41, &aBlock);

          *(v37 + 4) = v42;
          *(v37 + 12) = 2048;
          v43 = *(v31 + 16);

          *(v37 + 14) = v43;

          *(v37 + 22) = 2080;
          v44 = MEMORY[0x1CCA5D090](v31, MEMORY[0x1E69E6158]);
          v46 = sub_1C6F765A4(v44, v45, &aBlock);

          *(v37 + 24) = v46;
          _os_log_impl(&dword_1C6F5C000, v33, BYTE4(v76), "Verified pet %s has %ld merge candidates: %s", v37, 0x20u);
          v47 = v77;
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v47, -1, -1);
          MEMORY[0x1CCA5F8E0](v37, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v54 = v80;
        if (*(v31 + 16))
        {
          v55 = sub_1C7550B3C();

          v77 = [v84 pn:v55 fetchPersonsWithLocalIdentifiers:?];

          v56 = v81;
          v57 = v82;
          (*(v81 + 16))(&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v82);
          v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v59 = (v8 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
          v60 = swift_allocObject();
          v62 = v77;
          v61 = v78;
          *(v60 + 16) = v78;
          *(v60 + 24) = v62;
          (*(v56 + 32))(v60 + v58, v9, v57);
          v63 = v83;
          *(v60 + v59) = v83;
          v64 = v79;
          *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
          v90 = sub_1C723758C;
          v91 = v60;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v88 = sub_1C6FD8F68;
          v89 = &block_descriptor_55;
          v65 = _Block_copy(&aBlock);
          v66 = v61;
          swift_unknownObjectRetain();
          v67 = v63;
          v68 = v64;

          *&aBlock = 0;
          v69 = [v84 pn:v65 performChangesAndWait:&aBlock error:?];
          _Block_release(v65);
          if (v69)
          {
            v70 = aBlock;

            swift_unknownObjectRelease();
          }

          else
          {
            v71 = aBlock;
            v72 = sub_1C754DBEC();

            swift_willThrow();
            v73 = sub_1C754FEEC();
            v74 = sub_1C755119C();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              *v75 = 0;
              _os_log_impl(&dword_1C6F5C000, v73, v74, "Error writing merge candidate changes to Photos database!", v75, 2u);
              MEMORY[0x1CCA5F8E0](v75, -1, -1);
            }

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      else
      {
        v51 = sub_1C754FEEC();
        v52 = sub_1C755119C();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_1C6F5C000, v51, v52, "Merged person identifiers were not strings!", v53, 2u);
          MEMORY[0x1CCA5F8E0](v53, -1, -1);
        }
      }

      return;
    }
  }

  else
  {
    sub_1C6FE32F4(&aBlock);
  }

  v48 = sub_1C754FEEC();
  v49 = sub_1C755119C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1C6F5C000, v48, v49, "Couldn't cast a fetched verified pet from PNPhotoLibrary to a PHPerson!", v50, 2u);
    MEMORY[0x1CCA5F8E0](v50, -1, -1);
  }
}

void sub_1C722F944(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  [a1 pn:a2 addMergeCandidatePersons:?];
  v48 = MEMORY[0x1E69E7CC0];
  v8 = [a2 fetchedObjects];
  v9 = sub_1C7550B5C();

  v10 = *(v9 + 16);
  if (v10)
  {
    v40 = a5;
    v11 = 0;
    v12 = v9 + 32;
    v42 = *(v9 + 16);
    v43 = v9;
    while (v11 < *(v9 + 16))
    {
      sub_1C6F774EC(v12, v47);
      sub_1C6F65BE8(0, &qword_1EDD100F0);
      if (swift_dynamicCast())
      {
        v13 = v46;
        MEMORY[0x1CCA5D040]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
        v14 = [a1 localIdentifier];
        if (!v14)
        {
          sub_1C755068C();
          v14 = sub_1C755065C();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C755BAB0;
        v16 = [v13 localIdentifier];
        v17 = sub_1C755068C();
        v19 = v18;

        *(inited + 32) = v17;
        *(inited + 40) = v19;
        sub_1C706D154(inited);
        v20 = sub_1C7550F7C();

        [a4 mergeConfidenceBetweenPersonLocalIdentifier:v14 andCandidateLocalIdentifiers:v20];
        v22 = v21;

        v23 = v13;
        v24 = sub_1C754FEEC();
        v25 = sub_1C755117C();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v47[0] = v41;
          *v26 = 136315394;
          v27 = [v23 localIdentifier];
          v28 = a3;
          v29 = sub_1C755068C();
          v31 = v30;

          v32 = v29;
          a3 = v28;
          v33 = sub_1C6F765A4(v32, v31, v47);

          *(v26 + 4) = v33;
          *(v26 + 12) = 2048;
          v34 = v22;
          *(v26 + 14) = v34;
          _os_log_impl(&dword_1C6F5C000, v24, v25, "Merge candidate %s has confidence %f.", v26, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v41);
          MEMORY[0x1CCA5F8E0](v41, -1, -1);
          MEMORY[0x1CCA5F8E0](v26, -1, -1);
        }

        else
        {

          v34 = v22;
        }

        v10 = v42;
        v9 = v43;
        v35 = [objc_opt_self() changeRequestForPerson_];
        [v35 setMergeCandidateConfidence:v34];
      }

      else
      {
        v35 = sub_1C754FEEC();
        v36 = sub_1C755119C();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1C6F5C000, v35, v36, "Couldn't cast a fetched merge candidate from PNPhotoLibrary to a PHPerson!", v37, 2u);
          MEMORY[0x1CCA5F8E0](v37, -1, -1);
        }
      }

      ++v11;

      v12 += 32;
      if (v10 == v11)
      {

        a5 = v40;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    if (sub_1C6FB6304())
    {
      v38 = [objc_opt_self() changeRequestForPerson_];
      sub_1C6F65BE8(0, &qword_1EDD100F0);
      v39 = sub_1C7550B3C();

      [v38 addMergeCandidateWithConfidencePersons_];
    }

    else
    {
    }
  }
}