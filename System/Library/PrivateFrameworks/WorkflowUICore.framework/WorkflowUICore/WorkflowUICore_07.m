unint64_t sub_274B86F94()
{
  result = qword_28098D0B0[0];
  if (!qword_28098D0B0[0])
  {
    type metadata accessor for AnyAutocompleteDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28098D0B0);
  }

  return result;
}

uint64_t sub_274B87010@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B855F0();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AutocompleteSearchStringType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of AutocompleteDataSource.fetchAutocompleteResults(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_13();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_10_7(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_6_13(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AutocompleteDataSource.fetchZeroKeywordResults()()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_13();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_10_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_13(v2);
  v4 = OUTLINED_FUNCTION_4_8();

  return v6(v4);
}

uint64_t dispatch thunk of AnyAutocompleteDataSource.fetchAutocompleteResults(for:)()
{
  OUTLINED_FUNCTION_7();
  v6 = (*(*v0 + 120) + **(*v0 + 120));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_10_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_13(v2);
  v4 = OUTLINED_FUNCTION_4_8();

  return v6(v4);
}

uint64_t dispatch thunk of AnyAutocompleteDataSource.fetchZeroKeywordResults()()
{
  v5 = (*(*v0 + 144) + **(*v0 + 144));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_10_7(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_13(v2);

  return v5();
}

uint64_t sub_274B87684()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_274B85090(v8, v10, v9, a4, a5, a6, a7, a8);
}

id WFAVAssetContentItem.preview(configuration:)(char *a1)
{
  v2 = v1;
  v3 = *a1;
  result = [v1 asset];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = [result tracksWithMediaType_];

  sub_274AD8430(0, &qword_28098D138);
  v7 = sub_274BF5144();

  v8 = sub_274B22B94(v7);

  if (!v8)
  {
    result = [v1 asset];
    if (result)
    {
      v9 = result;
      type metadata accessor for AudioController(0);
      swift_allocObject();
      sub_274B8A54C(v9);
      type metadata accessor for AudioScrubberController(0);
      swift_allocObject();

      sub_274B8AD98(v10);
      v11 = [v2 richListTitle];
      sub_274BF4F44();

      sub_274B8BC48(&qword_28098D148, type metadata accessor for AudioController);

      sub_274BF3264();
      sub_274B8BC48(&qword_28098D150, type metadata accessor for AudioScrubberController);
      sub_274BF3264();
      sub_274BF4774();
      sub_274B8BC90();
      v12 = sub_274BF48B4();

      return v12;
    }

    goto LABEL_12;
  }

  if (v3)
  {
    sub_274B0DFBC(34.0, 34.0);
    swift_getKeyPath();
    type metadata accessor for ContentItemDataSource();
    sub_274B8BC48(&qword_28098D070, type metadata accessor for ContentItemDataSource);
    swift_retain_n();
    sub_274BF3264();
    sub_274B08F64();
    return sub_274BF48B4();
  }

  result = [v1 asset];
  if (result)
  {
    v13 = result;
    v14 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];

    [objc_msgSend(objc_allocWithZone(MEMORY[0x277CE6598]) initWithPlayerItem_];
    sub_274B8BBB4();
    return sub_274BF48B4();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_274B87B64@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_274BF38F4();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D1E8);
  sub_274B87C30(v1, a1 + *(v3 + 44));
  v4 = swift_allocObject();
  v5 = v1[1];
  v4[1] = *v1;
  v4[2] = v5;
  v6 = v1[3];
  v4[3] = v1[2];
  v4[4] = v6;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D1F0) + 36));
  *v7 = 0;
  v7[1] = 0;
  v7[2] = sub_274B8C02C;
  v7[3] = v4;
  return sub_274B8C034(v1, &v9);
}

uint64_t sub_274B87C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v67 = sub_274BF37D4();
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D1F8);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D200);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D208);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v68 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  *v9 = sub_274BF3804();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D210);
  sub_274B88390(a1, &v9[*(v19 + 44)]);
  v20 = sub_274BF3E54();
  v75 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A720);
  sub_274BF4784();
  v21 = 0;
  sub_274BF2E54();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_274B16ED0(v9, v15, &qword_28098D200);
  v30 = &v15[*(v11 + 44)];
  *v30 = v20;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v72 = v18;
  sub_274B16ED0(v15, v18, &qword_28098D208);
  v75 = *(a1 + 48);
  sub_274BF4784();
  v31 = 0;
  v71 = 0;
  v32 = 0;
  v33 = 0;
  v70 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (LOBYTE(__src[0]) == 1)
  {
    type metadata accessor for AudioScrubberController(0);
    sub_274B8BC48(&qword_28098D150, type metadata accessor for AudioScrubberController);

    v60 = sub_274BF3264();
    v71 = v39;
    __src[0] = 0;
    LOBYTE(__src[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D228);
    sub_274BF4774();
    v32 = v75;
    v40 = BYTE8(v75);
    v33 = v76;
    v59 = sub_274BF3E64();
    sub_274BF2E54();
    v21 = v41;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    LOBYTE(__src[0]) = v40;
    v73 = 0;
    v58 = v40;
    v45 = v61;
    sub_274BF37C4();
    sub_274BF4AE4();
    sub_274BF4AB4();

    v46 = sub_274B8BC48(&qword_28098D230, MEMORY[0x277CE0068]);
    v47 = v63;
    v48 = v67;
    sub_274BF2ED4();

    (*(v64 + 8))(v45, v48);
    v49 = v65;
    v50 = v66;
    (*(v65 + 16))(v62, v47, v66);
    *&v75 = v48;
    *(&v75 + 1) = v46;
    swift_getOpaqueTypeConformance2();
    v35 = v58;
    v70 = sub_274BF30E4();
    v51 = v50;
    v31 = v60;
    (*(v49 + 8))(v47, v51);
    v34 = v59;
  }

  v52 = v68;
  v67 = v34;
  sub_274AEBC0C(v72, v68);
  v53 = v69;
  sub_274AEBC0C(v52, v69);
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D218) + 48);
  __src[0] = v31;
  v55 = v71;
  __src[1] = v71;
  __src[2] = v32;
  __src[3] = v35;
  __src[4] = v33;
  __src[5] = v34;
  __src[6] = v21;
  __src[7] = v36;
  __src[8] = v37;
  __src[9] = v38;
  v56 = v70;
  __src[10] = 0;
  __src[11] = v70;
  memcpy((v53 + v54), __src, 0x60uLL);
  sub_274B01968(__src, &v75, &qword_28098D220);
  sub_274AEBC74(v72);
  *&v75 = v31;
  *(&v75 + 1) = v55;
  v76 = v32;
  v77 = v35;
  v78 = v33;
  v79 = v67;
  v80 = v21;
  v81 = v36;
  v82 = v37;
  v83 = v38;
  v84 = 0;
  v85 = v56;
  sub_274AFA708(&v75, &qword_28098D220);
  return sub_274AEBC74(v52);
}

uint64_t sub_274B88390@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v43 = sub_274BF3454();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D238);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D240);
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = *(a1 + 8);
  v51 = *a1;
  v52 = v14;
  sub_274ADDF6C();

  v15 = sub_274BF4104();
  v38 = v16;
  v18 = v17;
  v40 = v19;
  KeyPath = swift_getKeyPath();
  v39 = swift_getKeyPath();
  LOBYTE(v51) = v18 & 1;
  v37 = v18 & 1;
  LOBYTE(__src[0]) = 0;
  v20 = swift_allocObject();
  v21 = *(a1 + 16);
  v20[1] = *a1;
  v20[2] = v21;
  v22 = *(a1 + 48);
  v20[3] = *(a1 + 32);
  v20[4] = v22;
  v47 = a1;
  sub_274B8C034(a1, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D248);
  sub_274B8C07C();
  sub_274BF47C4();
  sub_274BF3444();
  sub_274AFA930(&qword_28098D268, &qword_28098D238);
  sub_274B8BC48(&qword_28098AE20, MEMORY[0x277CDDB18]);
  v36 = v13;
  v23 = v43;
  sub_274BF41D4();
  (*(v44 + 8))(v4, v23);
  (*(v6 + 8))(v8, v5);
  v24 = *(v9 + 16);
  v25 = v41;
  v26 = v42;
  v24(v41, v13, v42);
  v27 = v15;
  __src[0] = v15;
  v28 = v38;
  __src[1] = v38;
  LOBYTE(__src[2]) = v18 & 1;
  *(&__src[2] + 1) = *v49;
  HIDWORD(__src[2]) = *&v49[3];
  v29 = v40;
  __src[3] = v40;
  __src[4] = KeyPath;
  __src[5] = 2;
  LOBYTE(__src[6]) = 0;
  *(&__src[6] + 1) = *v48;
  HIDWORD(__src[6]) = *&v48[3];
  v30 = v39;
  __src[7] = v39;
  LOBYTE(__src[8]) = 0;
  v31 = v45;
  memcpy(v45, __src, 0x41uLL);
  v31[9] = 0;
  *(v31 + 80) = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D270);
  v24(v31 + *(v32 + 64), v25, v26);
  sub_274B01968(__src, &v51, &qword_28098D278);
  v33 = *(v9 + 8);
  v33(v36, v26);
  v33(v25, v26);
  v51 = v27;
  v52 = v28;
  v53 = v37;
  *v54 = *v49;
  *&v54[3] = *&v49[3];
  v55 = v29;
  v56 = KeyPath;
  v57 = 2;
  v58 = 0;
  *v59 = *v48;
  *&v59[3] = *&v48[3];
  v60 = v30;
  v61 = 0;
  return sub_274AFA708(&v51, &qword_28098D278);
}

void sub_274B88924(_OWORD *a1)
{
  v2 = sub_274BF4C94();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_274BF4CD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_274BF4CF4();
  v9 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v28[0] = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A720);
  v15 = sub_274BF4784();
  if (aBlock[0])
  {
    sub_274B8A85C();
  }

  else
  {
    v16 = MEMORY[0x277C64360](v15, 0.25, 0.9, 0.0);
    v25 = v6;
    MEMORY[0x28223BE20](v16);
    *(&v22 - 2) = a1;
    v24 = v5;
    sub_274BF31E4();

    sub_274AD8430(0, &qword_280989F80);
    v22 = sub_274BF5504();
    sub_274BF4CE4();
    sub_274BF4D44();
    v23 = *(v9 + 8);
    v23(v11, v27);
    v17 = swift_allocObject();
    v18 = a1[1];
    v17[1] = *a1;
    v17[2] = v18;
    v19 = a1[3];
    v17[3] = a1[2];
    v17[4] = v19;
    aBlock[4] = sub_274B8C224;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274B02D5C;
    aBlock[3] = &block_descriptor_12;
    v20 = _Block_copy(aBlock);
    sub_274B8C034(a1, v28);

    sub_274BF4CB4();
    *&v28[0] = MEMORY[0x277D84F90];
    sub_274B8BC48(&qword_280989F88, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
    sub_274AFA930(&qword_280989F98, &qword_280989F90);
    sub_274BF57F4();
    v21 = v22;
    MEMORY[0x277C64D80](v14, v8, v4, v20);
    _Block_release(v20);

    (*(v26 + 8))(v4, v2);
    (*(v25 + 8))(v8, v24);
    v23(v14, v27);
  }
}

uint64_t sub_274B88E50@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  sub_274B8A3DC();
  v5 = sub_274BF46D4();
  sub_274BF4A94();
  sub_274BF30D4();
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v20;
  v11 = v21;
  sub_274BF3F34();
  v12 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  v13 = sub_274BF3F44();
  sub_274AFA708(v4, &qword_280989DC0);
  result = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = result;
  *(a1 + 64) = v13;
  return result;
}

void sub_274B88FEC(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_274B8A49C();
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_scrubberDisplayLink);
  *(v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_scrubberDisplayLink) = 0;
}

uint64_t sub_274B89070@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_274BF38F4();
  v32 = 0;
  sub_274B892F0(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v38, __src, 0x110uLL);
  sub_274B01968(__dst, &v24, &qword_28098D2B0);
  sub_274AFA708(v38, &qword_28098D2B0);
  memcpy(&v31[7], __dst, 0x110uLL);
  v5 = v32;
  v6 = sub_274BF3E34();
  v36 = *v1;
  sub_274B8B264();
  sub_274BF2E54();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v33 = 0;
  __src[0] = v4;
  __src[1] = 0x4000000000000000;
  LOBYTE(__src[2]) = v5;
  memcpy(&__src[2] + 1, v31, 0x117uLL);
  LOBYTE(__src[37]) = v6;
  __src[38] = v8;
  __src[39] = v10;
  __src[40] = v12;
  __src[41] = v14;
  LOBYTE(__src[42]) = 0;
  v34 = *(v1 + 16);
  v35 = *(v1 + 32);
  v15 = swift_allocObject();
  memcpy((v15 + 16), __src, 0x151uLL);
  v16 = *(v2 + 16);
  *(v15 + 360) = *v2;
  *(v15 + 376) = v16;
  *(v15 + 392) = *(v2 + 32);
  sub_274B01968(__src, &v24, &qword_28098D2B8);
  sub_274B01968(&v36, &v24, &qword_28098D2C0);
  sub_274B01968(&v34, &v24, &qword_28098D2C8);
  sub_274BF4A94();
  sub_274BF30D4();
  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  v22 = v29;
  result = sub_274AFA708(__src, &qword_28098D2B8);
  *a1 = sub_274B8C3D8;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  return result;
}

uint64_t sub_274B892F0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v53 = *a1;
  v51 = v3;
  v52 = *(a1 + 4);
  v4 = swift_allocObject();
  v5 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 4);
  sub_274B01968(&v53, __src, &qword_28098D2C0);
  sub_274B01968(&v51, __src, &qword_28098D2C8);
  sub_274BF4A94();
  sub_274BF30D4();
  v6 = v45;
  v25 = v49;
  v26 = v47;
  v24 = v50;
  v55 = v46;
  v54 = v48;
  v7 = sub_274BF3804();
  v28[0] = 1;
  sub_274B899E0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v57, __src, 0x50uLL);
  sub_274B01968(__dst, v34, &qword_28098BAD0);
  sub_274AFA708(v57, &qword_28098BAD0);
  memcpy(&v44[7], __dst, 0x50uLL);
  v8 = sub_274BF4644();
  KeyPath = swift_getKeyPath();
  sub_274BF3FD4();
  sub_274BF3F14();
  v10 = sub_274BF3F84();

  v11 = swift_getKeyPath();
  if (sub_274B8B264())
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.18;
  }

  v13 = sub_274BF3E34();
  sub_274B8B264();
  v14 = 0.0;
  sub_274BF2E54();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v44[88] = 0;
  if (sub_274B8B264())
  {
    v14 = 2.0;
  }

  *&v30 = sub_274B8C5C0;
  *(&v30 + 1) = v4;
  *&v31 = v6;
  BYTE8(v31) = v55;
  *&v32 = v26;
  BYTE8(v32) = v54;
  *&v33 = v25;
  *(&v33 + 1) = v24;
  v29[2] = v32;
  v29[3] = v33;
  v29[0] = v30;
  v29[1] = v31;
  v34[0] = v7;
  v34[1] = 0;
  LOBYTE(v34[2]) = 1;
  memcpy(&v34[2] + 1, v44, 0x57uLL);
  v34[13] = KeyPath;
  v34[14] = v8;
  v34[15] = v11;
  v34[16] = v10;
  *&v34[17] = v12;
  LOBYTE(v34[18]) = v13;
  v34[19] = v16;
  v34[20] = v18;
  v34[21] = v20;
  v34[22] = v22;
  LOBYTE(v34[23]) = 0;
  v34[24] = 0;
  *&v34[25] = v14;
  memcpy(&v29[4], v34, 0xD0uLL);
  memcpy(a2, v29, 0x110uLL);
  __src[0] = v7;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v44, 0x57uLL);
  __src[13] = KeyPath;
  __src[14] = v8;
  __src[15] = v11;
  __src[16] = v10;
  *&__src[17] = v12;
  v36 = v13;
  v37 = v16;
  v38 = v18;
  v39 = v20;
  v40 = v22;
  v41 = 0;
  v42 = 0;
  v43 = v14;
  sub_274B01968(&v30, v28, &qword_28098D300);
  sub_274B01968(v34, v28, &qword_28098D308);
  sub_274AFA708(__src, &qword_28098D308);
}

uint64_t sub_274B896BC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D310);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  sub_274BF4644();
  v27 = sub_274BF4634();

  v6 = sub_274BF3804();
  v44 = 1;
  v7 = sub_274B8B0E8();
  sub_274BF30F4();
  v9 = v7 * v8;
  sub_274BF4644();
  sub_274B8B264();
  v10 = sub_274BF4634();

  sub_274BF30F4();
  *&v12 = (v11 - v9) * -0.5;
  sub_274BF4A94();
  sub_274BF30D4();
  v13 = v44;
  v14 = sub_274BF4A94();
  v16 = v15;
  v32[0] = v6;
  LOBYTE(v32[1]) = v13;
  *(&v32[1] + 1) = v10;
  v32[2] = v12;
  v32[3] = v29;
  v32[4] = v30;
  v32[5] = v31;
  *&v32[6] = v14;
  *(&v32[6] + 1) = v15;
  memcpy(__dst, v32, sizeof(__dst));
  v33[0] = v6;
  v33[1] = 0;
  v34 = v13;
  v35 = v10;
  v36 = v12;
  v37 = 0;
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v41 = v14;
  v42 = v16;
  sub_274B01968(v32, v28, &qword_28098D318);
  sub_274AFA708(v33, &qword_28098D318);
  sub_274B8B178();
  sub_274BF4A94();
  sub_274BF30D4();
  v17 = sub_274B8B178() * 0.5;
  v18 = &v5[*(v3 + 44)];
  v19 = *(sub_274BF3484() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_274BF38C4();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = v17;
  v18[1] = v17;
  *v5 = v27;
  memcpy(v5 + 8, __dst, 0x70uLL);
  v22 = v28[1];
  *(v5 + 120) = v28[0];
  *(v5 + 136) = v22;
  *(v5 + 152) = v28[2];
  if (sub_274B8B264())
  {
    v23 = -6.0;
  }

  else
  {
    v23 = 0.0;
  }

  sub_274B8C5C8(v5, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D320);
  v25 = a1 + *(result + 36);
  *v25 = 0;
  *(v25 + 8) = v23;
  return result;
}

uint64_t sub_274B899E0@<X0>(uint64_t a1@<X8>)
{
  sub_274B8B360();
  sub_274ADDF6C();
  v2 = sub_274BF4104();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_274B8B388();
  v9 = sub_274BF4104();
  v11 = v10;
  v12 = v6 & 1;
  v17 = v6 & 1;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v13 & 1;
  *(a1 + 72) = v15;
  sub_274AF396C(v2, v4, v12);

  sub_274AF396C(v9, v11, v14);

  sub_274AFA1D0(v9, v11, v14);

  sub_274AFA1D0(v2, v4, v17);
}

uint64_t sub_274B89B20@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a1;
  v40 = a4;
  v5 = sub_274BF3114();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_274BF3A94();
  MEMORY[0x28223BE20](v8);
  v9 = sub_274BF2F54();
  v10 = *(v9 - 8);
  v34 = v9;
  v35 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C9A8);
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D2D0);
  v18 = *(v17 - 8);
  v38 = v17;
  v39 = v18;
  MEMORY[0x28223BE20](v17);
  v33 = &v31 - v19;
  memcpy(v42, v31, sizeof(v42));
  sub_274BF3BA4();
  sub_274BF2F14();
  v20 = *(a3 + 16);
  v45[0] = *a3;
  v43 = v20;
  v44 = *(a3 + 32);
  (*(v6 + 16))(&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v5);
  v21 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = *(a3 + 16);
  *(v22 + 16) = *a3;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a3 + 32);
  (*(v6 + 32))(v22 + v21, &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_274B01968(v45, v41, &qword_28098D2C0);
  sub_274B01968(&v43, v41, &qword_28098D2C8);
  sub_274B8BC48(&qword_28098A728, MEMORY[0x277CDD730]);
  sub_274B8BC48(&qword_28098C9B0, MEMORY[0x277CDD708]);
  v24 = v34;
  sub_274BF4984();

  (*(v35 + 8))(v12, v24);
  v25 = swift_allocObject();
  v26 = *(a3 + 16);
  *(v25 + 16) = *a3;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(a3 + 32);
  sub_274B01968(v45, v41, &qword_28098D2C0);
  sub_274B01968(&v43, v41, &qword_28098D2C8);
  sub_274AFA930(&qword_28098C9C8, &qword_28098C9A8);
  v27 = v33;
  v28 = v36;
  sub_274BF4974();

  (*(v37 + 8))(v16, v28);
  sub_274BF2F74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D2B8);
  sub_274B8C460();
  sub_274AFA930(&qword_28098D2F0, &qword_28098D2D0);
  v29 = v38;
  sub_274BF4424();
  return (*(v39 + 8))(v27, v29);
}

void sub_274B8A0DC(uint64_t a1, uint64_t a2)
{
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = v11;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  sub_274B01968(&v12, &v6, &qword_28098D2F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D2C8);
  sub_274BF4784();
  if (v7)
  {
    sub_274B8B410();
    sub_274BF30F4();
    v3 = v2;
    v4 = sub_274B8B0E8();
    v8 = v10;
    v9 = v11;
    v6 = v3 * v4;
    v7 = 0;
    sub_274BF4794();
  }

  sub_274AFA708(&v10, &qword_28098D2C8);
  if ((sub_274B8B264() & 1) == 0)
  {
    v5 = MEMORY[0x277C64360](0.23, 1.0, 0.0);
    MEMORY[0x28223BE20](v5);
    sub_274BF31E4();
  }

  v8 = v10;
  v9 = v11;
  sub_274BF4784();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    sub_274BF2F24();
    sub_274BF30F4();
    sub_274B8B0FC();
  }
}

uint64_t sub_274B8A300()
{
  MEMORY[0x277C64360](0.4, 0.8, 0.0);
  sub_274BF31E4();

  v0 = sub_274B8B0E8();
  sub_274B8A8EC(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D2C8);
  return sub_274BF4794();
}

uint64_t sub_274B8A3F0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

void sub_274B8A49C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_scrubberDisplayLink);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentRunLoop];
    [v3 removeFromRunLoop:v4 forMode:*MEMORY[0x277CBE738]];
  }
}

uint64_t sub_274B8A54C(void *a1)
{
  v2 = v1;
  v4 = sub_274BF1F54();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A18);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-v9];
  v11 = OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController__isPlaying;
  v20[15] = 0;
  sub_274BF2D24();
  (*(v8 + 32))(v2 + v11, v10, v7);
  swift_weakInit();
  *(v2 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_audioPlayer) = 0;
  *(v2 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_scrubberDisplayLink) = 0;
  *(v2 + 16) = a1;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = a1;
    v15 = [v13 URL];
    sub_274BF1F04();

    v16 = objc_allocWithZone(MEMORY[0x277CB83D0]);
    v17 = sub_274B8BA20(v6);

    v18 = *(v2 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_audioPlayer);
    *(v2 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_audioPlayer) = v17;
  }

  else
  {
  }

  return v2;
}

uint64_t sub_274B8A78C()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_scrubberDisplayLink;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_scrubberDisplayLink);
  *(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_scrubberDisplayLink) = 0;

  v3 = OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController__isPlaying;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A18);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_weakDestroy();

  return v0;
}

void sub_274B8A85C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_audioPlayer);
  if (v1)
  {
    v2 = v1;
    if ([v2 isPlaying])
    {
      [v2 pause];
      sub_274B8ACDC();
    }

    else
    {
      [v2 play];
      sub_274B8AB18();
    }
  }
}

void sub_274B8A8EC(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_audioPlayer);
  if (v2)
  {
    v5 = v2;
    [v5 duration];
    [v5 setCurrentTime_];
  }
}

void sub_274B8A970()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_audioPlayer);
  if (v1)
  {
    v2 = v1;
    if ([v2 isPlaying])
    {
      [v2 currentTime];
      [v2 duration];
      if (swift_weakLoadStrong())
      {
        if ((sub_274B8B264() & 1) == 0)
        {
          sub_274B8B0FC();
        }
      }

      return;
    }
  }

  sub_274B8ACDC();
  if (swift_weakLoadStrong())
  {
    if ((sub_274B8B264() & 1) == 0 && swift_weakLoadStrong())
    {
      if ((sub_274B8B264() & 1) == 0)
      {
        sub_274B8B0FC();
      }
    }
  }
}

void sub_274B8AB18()
{
  v1 = v0;
  sub_274BF31E4();
  sub_274AD8430(0, &qword_28098D290);
  v6[3] = type metadata accessor for AudioController(0);
  v6[0] = v0;

  v2 = sub_274B8AC5C(v6, sel_updateScrubber);
  sub_274B8A49C();
  v3 = *(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_scrubberDisplayLink);
  *(v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_scrubberDisplayLink) = v2;
  v4 = v2;

  if (v4)
  {
    v5 = [objc_opt_self() currentRunLoop];
    [v4 addToRunLoop:v5 forMode:*MEMORY[0x277CBE738]];
  }
}

id sub_274B8AC5C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_274BF5C04();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

void sub_274B8ACDC()
{
  sub_274BF31E4();
  sub_274B8A49C();
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_scrubberDisplayLink);
  *(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_scrubberDisplayLink) = 0;
}

uint64_t sub_274B8AD58@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioController(0);
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

uint64_t sub_274B8AD98(uint64_t a1)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D288);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A18);
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D280);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController__widthFraction;
  v26 = 0;
  sub_274BF2D24();
  v13 = *(v9 + 32);
  v13(v1 + v12, v11, v8);
  v14 = OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController__scrubberHeight;
  v26 = 0x401C000000000000;
  sub_274BF2D24();
  v13(v1 + v14, v11, v8);
  v15 = OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController__isDragActive;
  LOBYTE(v26) = 0;
  sub_274BF2D24();
  (*(v5 + 32))(v1 + v15, v7, v22);
  v16 = OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController__elapsedTimeString;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_274BF2D24();
  v17 = v24;
  v18 = *(v23 + 32);
  v18(v1 + v16, v4, v24);
  v19 = OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController__remainingTimeString;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_274BF2D24();
  v18(v1 + v19, v4, v17);
  v20 = v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController_initialDragWidth;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController_wasPlayingDuringDragInitiation) = 2;
  *(v1 + 16) = v25;
  swift_weakAssign();

  sub_274B8B448();

  return v1;
}

void sub_274B8B0FC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_274BF2D74();
  sub_274B8B448();
}

double sub_274B8B18C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_26();

  return v1;
}

uint64_t sub_274B8B1EC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274B8B278()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_26();

  return v1;
}

uint64_t sub_274B8B2D8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_274BF2D74();
  sub_274B8B264();
  return sub_274B8B1EC();
}

uint64_t sub_274B8B39C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_26();

  return v1;
}

uint64_t sub_274B8B410()
{
  result = sub_274B8A3DC();
  *(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController_wasPlayingDuringDragInitiation) = result & 1;
  return result;
}

void sub_274B8B448()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE15AudioController_audioPlayer);
  if (v1)
  {
    [v1 duration];
    v3 = v2;
    v4 = floor(v2 * sub_274B8B0E8());
    v5 = v4 - floor(v3);
    v6 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    v20 = v6;
    if (round(v3) >= 3600.0)
    {
      v7 = 224;
    }

    else
    {
      v7 = 192;
    }

    [v6 setAllowedUnits_];
    [v20 setZeroFormattingBehavior_];
    v8 = [v20 stringFromTimeInterval_];
    if (v8)
    {
      v9 = sub_274BF4F44();
      v11 = v10;

      sub_274B8B670(3813424, 0xE300000000000000, 14896, 0xE200000000000000, v9, v11);
    }

    sub_274B8B374();
    v12 = [v20 stringFromTimeInterval_];
    if (v12)
    {
      v13 = v12;
      v14 = sub_274BF4F44();
      v16 = v15;

      v17 = sub_274B8B670(3813424, 0xE300000000000000, 14896, 0xE200000000000000, v14, v16);
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    MEMORY[0x277C648E0](v17, v19);

    sub_274B8B3FC();
  }
}

uint64_t sub_274B8B670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = sub_274BF5074();

  if (v9)
  {
    v10 = sub_274BF5004();
    v11 = sub_274B8B94C(v10, a5, a6);
    v12 = MEMORY[0x277C64860](v11);
    v14 = v13;

    MEMORY[0x277C648E0](v12, v14);

    return a3;
  }

  return a5;
}

uint64_t sub_274B8B740()
{

  v1 = OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController__widthFraction;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D280);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController__scrubberHeight, v2);
  v4 = OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController__isDragActive;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A18);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController__elapsedTimeString;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D288);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_BD23D6A48E6635290113291E20E48EAE23AudioScrubberController__remainingTimeString, v7);
  return v0;
}

uint64_t sub_274B8B8B4(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_274B8B90C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioScrubberController(0);
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

unint64_t sub_274B8B94C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_274BF5024();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_274BF50D4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

id sub_274B8BA20(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_274BF1ED4();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_274BF1F54();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_274BF1E74();

    swift_willThrow();
    v11 = sub_274BF1F54();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_274B8BB6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

unint64_t sub_274B8BBB4()
{
  result = qword_28098D140;
  if (!qword_28098D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D140);
  }

  return result;
}

uint64_t sub_274B8BC48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274B8BC90()
{
  result = qword_28098D158;
  if (!qword_28098D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D158);
  }

  return result;
}

void sub_274B8BCEC()
{
  sub_274B8BF10(319, &qword_2815A3128);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274B8BDB8()
{
  sub_274B8BF10(319, &qword_28098D1D8);
  if (v0 <= 0x3F)
  {
    sub_274B8BF10(319, &qword_2815A3128);
    if (v1 <= 0x3F)
    {
      sub_274B8BF10(319, &qword_28098D1E0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_274B8BF10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_274BF2D94();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
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

uint64_t sub_274B8BF70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_274B8BFB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274B8C07C()
{
  result = qword_28098D250;
  if (!qword_28098D250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D248);
    sub_274B8C134();
    sub_274AFA930(&qword_2815A2F98, &qword_280989D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D250);
  }

  return result;
}

unint64_t sub_274B8C134()
{
  result = qword_28098D258;
  if (!qword_28098D258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D258);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_274B8C2AC()
{
  result = qword_28098D298;
  if (!qword_28098D298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D1F0);
    sub_274AFA930(&qword_28098D2A0, &qword_28098D2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D298);
  }

  return result;
}

void sub_274B8C3E4(uint64_t a1)
{
  sub_274BF3114();

  sub_274B8A0DC(a1, v1 + 16);
}

unint64_t sub_274B8C460()
{
  result = qword_28098D2D8;
  if (!qword_28098D2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D2B8);
    sub_274AFA930(&qword_28098D2E0, &qword_28098D2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D2D8);
  }

  return result;
}

uint64_t objectdestroy_117Tm()
{

  return swift_deallocObject();
}

uint64_t sub_274B8C5C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274B8C638()
{
  result = qword_28098D328;
  if (!qword_28098D328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D330);
    sub_274AFA930(&qword_28098D338, &qword_28098D340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D328);
  }

  return result;
}

uint64_t sub_274B8C6F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a3 & 1;
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = v7;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D3F8);
  sub_274B8CF28();
  *&v14 = sub_274BD2E04(a2);
  *(&v14 + 1) = v9;
  v15 = v10;
  v11 = type metadata accessor for LoaderProgressView();
  OUTLINED_FUNCTION_0_24();
  WitnessTable = swift_getWitnessTable();
  sub_274ADB48C(&v14, v11, WitnessTable);

  v14 = v16;
  v15 = v17;
  sub_274ADB48C(&v14, v11, WitnessTable);
}

void sub_274B8C844(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = *(v8 + 16);
  v13(&v30 - v14, a1, v15, v12);
  sub_274AD8430(0, &qword_28098D030);
  if (swift_dynamicCast())
  {
    v16 = v33;
    v17 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
    v18 = [objc_allocWithZone(MEMORY[0x277CE6598]) initWithPlayerItem_];
    [v18 setAllowsExternalPlayback_];
    v30 = v18;
    v31 = a2 & 1;
    v32 = 0;
    sub_274B8BBB4();
    v19 = v18;
    sub_274BF3A64();
  }

  else
  {
    (v13)(v10, a1, a3);
    sub_274AD8430(0, &qword_28098D418);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v27 = 0;
      v29 = -256;
      goto LABEL_10;
    }

    v20 = v33;
    v21 = [v33 asset];
    v22 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];

    v23 = objc_allocWithZone(MEMORY[0x277CE6598]);
    v24 = v22;
    v25 = [v23 initWithPlayerItem_];
    [v25 setAllowsExternalPlayback_];

    v30 = v25;
    v31 = a2 & 1;
    v32 = 1;
    sub_274B8BBB4();
    v26 = v25;
    sub_274BF3A64();
  }

  v27 = v33;
  if (v35)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28 | v34;
LABEL_10:
  *a4 = v27;
  *(a4 + 8) = v29;
}

id VideoPlayerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *v1;
  sub_274BF25E4();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D348) + 36));
  *v6 = sub_274B8CC88;
  v6[1] = v5;
  v6[2] = 0;
  v6[3] = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D350) + 36));
  *v8 = 0;
  v8[1] = 0;
  v8[2] = sub_274B8CCA8;
  v8[3] = v7;
  v9 = v4;

  return v9;
}

id sub_274B8CC88()
{
  if (*(v0 + 24) == 1)
  {
    return [*(v0 + 16) play];
  }

  return result;
}

uint64_t sub_274B8CCD8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_274B8CD18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B8CD98(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_274B8CE1C()
{
  result = qword_28098D368;
  if (!qword_28098D368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28098D370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D368);
  }

  return result;
}

uint64_t sub_274B8CE80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_274B8CF28()
{
  result = qword_28098D400;
  if (!qword_28098D400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D3F8);
    sub_274B8CFAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D400);
  }

  return result;
}

unint64_t sub_274B8CFAC()
{
  result = qword_28098D408;
  if (!qword_28098D408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D410);
    sub_274B8BBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D408);
  }

  return result;
}

uint64_t sub_274B8D030(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_274B8D070(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata accessor for ContentCollectionGridView()
{
  result = qword_28098D428;
  if (!qword_28098D428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274B8D13C()
{
  type metadata accessor for PreviewableContentCollection();
  if (v0 <= 0x3F)
  {
    sub_274B8D2BC();
    if (v1 <= 0x3F)
    {
      sub_274B8D30C(319, &qword_28098D440, &qword_28098AA48);
      if (v2 <= 0x3F)
      {
        sub_274AD8470();
        if (v3 <= 0x3F)
        {
          sub_274B171AC();
          if (v4 <= 0x3F)
          {
            sub_274B8D30C(319, &qword_28098D448, &unk_28098D450);
            if (v5 <= 0x3F)
            {
              sub_274B8D30C(319, &qword_28098D458, &unk_28098D460);
              if (v6 <= 0x3F)
              {
                sub_274B8D30C(319, &qword_28098D468, &qword_28098AB08);
                if (v7 <= 0x3F)
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

void sub_274B8D2BC()
{
  if (!qword_28098D438)
  {
    v0 = sub_274BF4914();
    if (!v1)
    {
      atomic_store(v0, &qword_28098D438);
    }
  }
}

void sub_274B8D30C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_9_12(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    v5 = sub_274BF47B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_274B8D35C@<X0>(void *(**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v2 = type metadata accessor for ContentCollectionGridView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_274B93EB0();
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  result = sub_274B9029C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  *a1 = sub_274B90300;
  a1[1] = v6;
  return result;
}

void *sub_274B8D464@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for ContentCollectionGridView();
  v4 = *(v3 - 8);
  v54 = v3 - 8;
  v49 = v4;
  v48 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D478);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D480);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v45 = &v44 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D488);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = &v44 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D490);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v46 = &v44 - v12;
  v58 = a1;
  sub_274BF3E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D4A0);
  sub_274AFA930(&qword_28098D4A8, &qword_28098D4A0);
  sub_274BF2EC4();
  v59 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA70);
  sub_274BF47A4();
  v13 = *&__src[1];
  *v9 = __src[0];
  *(v9 + 2) = v13;
  *(v9 + 3) = 0;
  v14 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D4B0) + 36)];
  *v14 = 0xD000000000000012;
  *(v14 + 1) = 0x8000000274C0C160;
  v44 = type metadata accessor for ContentCollectionGridView;
  sub_274B93EB0();
  v15 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v16 = swift_allocObject();
  sub_274B9029C(v6, v16 + v15);
  v17 = &v9[*(v7 + 36)];
  *v17 = sub_274B9037C;
  v17[1] = v16;
  v18 = sub_274B903E0();
  v19 = v45;
  sub_274BF44D4();
  sub_274AFA708(v9, &qword_28098D478);
  *&__src[0] = v7;
  *(&__src[0] + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v47;
  v22 = v50;
  sub_274BF4334();
  (*(v51 + 8))(v19, v22);
  sub_274B93EB0();
  v23 = v46;
  v24 = swift_allocObject();
  sub_274B9029C(v6, v24 + v15);
  *&__src[0] = v22;
  *(&__src[0] + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v52;
  sub_274BF4254();

  (*(v53 + 8))(v21, v25);
  v26 = *(a1 + *(v54 + 56));
  v27 = *(a1 + *(v54 + 64));
  v28 = sub_274B809C8();
  sub_274B22B94(v28);

  v29 = sub_274B809C8();
  v30 = sub_274B22B94(v29);

  if (v30 <= 4)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 24.0;
  }

  v32 = sub_274B809C8();
  v33 = sub_274B22B94(v32);

  if (v33 <= 2)
  {
    v34 = 1.0;
  }

  else
  {
    v34 = 2.0;
  }

  v35 = sub_274B809C8();
  v36 = sub_274B22B94(v35);

  if (v36 <= 4)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = 24.0;
  }

  v38 = v26 + v26 + v27 + -1.0 + 130.0 + v31;
  v39 = v37 + v26 + v26 + v34 * 130.0 + v27 * v34 + -1.0;
  sub_274BF4A94();
  if (v38 > v39)
  {
    sub_274BF54A4();
    v40 = sub_274BF3DF4();
    sub_274BF2BC4();
  }

  sub_274BF34A4();
  v41 = v57;
  (*(v55 + 32))(v57, v23, v56);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D4F0);
  return memcpy((v41 + *(v42 + 36)), __src, 0x70uLL);
}

uint64_t sub_274B8DC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_274BF3804();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D500);
  return sub_274B8DCA0(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_274B8DCA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = sub_274BF3B54();
  MEMORY[0x28223BE20](v3);
  v4 = sub_274BF4A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D508);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D510);
  MEMORY[0x28223BE20](v11 - 8);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = &v34 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D518);
  sub_274BF4A14();
  *(swift_allocObject() + 16) = xmmword_274BF8D80;
  *v7 = xmmword_274C026B0;
  (*(v5 + 104))(v7, *MEMORY[0x277CDF100], v4);
  sub_274BF4AA4();
  sub_274BF4A24();
  type metadata accessor for ContentCollectionGridView();
  v38 = a1;
  sub_274BF38F4();
  LODWORD(v39) = 0;
  sub_274B9413C(&qword_2815A2FC8, MEMORY[0x277CE0428]);
  sub_274BF5DB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D520);
  sub_274B905E0();
  sub_274BF4B04();
  v15 = sub_274BF3E44();
  sub_274BF2E54();
  v16 = &v10[*(v8 + 36)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v21 = qword_28098C7C0;
  v22 = sub_274BF4F04();
  v23 = sub_274BF4F04();

  v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

  v25 = sub_274BF4F44();
  v27 = v26;

  v39 = v25;
  v40 = v27;
  sub_274B90A0C();
  sub_274ADDF6C();
  v28 = v35;
  sub_274BF42F4();

  sub_274AFA708(v10, &qword_28098D508);
  v29 = v36;
  sub_274B93FC0();
  v30 = v37;
  *v37 = 0;
  *(v30 + 8) = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D5B8);
  sub_274B93FC0();
  v32 = v30 + *(v31 + 64);
  *v32 = 0;
  v32[8] = 0;
  sub_274AFA708(v28, &qword_28098D510);
  return sub_274AFA708(v29, &qword_28098D510);
}

uint64_t sub_274B8E208()
{
  v0 = type metadata accessor for ContentCollectionGridView();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v8[3] = sub_274B81ED4();
  swift_getKeyPath();
  sub_274B93EB0();
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = swift_allocObject();
  sub_274B9029C(v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D5C8);
  sub_274AFA930(&qword_28098D5D0, &qword_28098D5C0);
  sub_274B90CBC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D530);
  v6 = sub_274B906A0();
  v8[1] = v5;
  v8[2] = v6;
  swift_getOpaqueTypeConformance2();
  return sub_274BF4944();
}

uint64_t sub_274B8E414@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = type metadata accessor for ContentCollectionGridView();
  v6 = v5 - 8;
  v30 = *(v5 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D530);
  MEMORY[0x28223BE20](v29);
  v9 = &v29 - v8;
  v10 = *a1;
  KeyPath = swift_getKeyPath();

  sub_274BF4A94();
  sub_274BF34A4();
  LOBYTE(v34[0]) = 0;
  memcpy(&v32[7], __src, 0x70uLL);
  v12 = *(a2 + *(v6 + 60));
  v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D558) + 36)];
  v14 = *(sub_274BF3484() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_274BF38C4();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v13 = v12;
  *(v13 + 1) = v12;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B540) + 36)] = 256;
  *v9 = v10;
  v9[8] = 0;
  *(v9 + 9) = v34[0];
  *(v9 + 3) = *(v34 + 3);
  *(v9 + 2) = KeyPath;
  v9[24] = 0;
  memcpy(v9 + 25, v32, 0x77uLL);
  v9[144] = 0;

  v17 = sub_274BF4A94();
  v19 = v18;
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D548) + 36)];
  *v20 = sub_274B90D24;
  v20[1] = v10;
  v20[2] = v17;
  v20[3] = v19;
  v21 = sub_274BF4A94();
  v23 = v22;
  v24 = &v9[*(v29 + 36)];
  sub_274B8E9A0(a2, v10, v24);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D598) + 36));
  *v25 = v21;
  v25[1] = v23;
  sub_274B93EB0();
  v26 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v27 = swift_allocObject();
  sub_274B9029C(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  *(v27 + ((v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  sub_274B906A0();

  sub_274BF4254();

  return sub_274AFA708(v9, &qword_28098D530);
}

uint64_t sub_274B8E808@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_274BF3AA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF45E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D670);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_274BF8D80;
  v10 = *(a1 + 16);
  v21[0] = 0xD000000000000012;
  v21[1] = 0x8000000274C0C160;
  v11 = v10;
  sub_274BF3BB4();
  sub_274BF3104();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = (*(v5 + 8))(v7, v4);
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  *(v9 + 48) = v15;
  *(v9 + 56) = v17;
  *(v9 + 64) = v19;
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_274B8E9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v33 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D5D8);
  MEMORY[0x28223BE20](v32);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D5E0);
  MEMORY[0x28223BE20](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D5E8);
  MEMORY[0x28223BE20](v31);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D5F0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v35 = *(a1 + 8);
  v36 = v15;
  v37 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB00);
  MEMORY[0x277C64160](&v38, v17);
  v18 = v38;
  if (v39)
  {
    if (v39 == 1)
    {
      v19 = *(v29 + 16);
      v20 = sub_274B8F788(v19, v38);
      v21 = 1;
      sub_274B21754(v18, 1);
      if (!v20)
      {
        v22 = (a1 + *(type metadata accessor for ContentCollectionGridView() + 44));
        v24 = *v22;
        v23 = v22[1];
        *&v35 = v24;
        *(&v35 + 1) = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D5F8);
        sub_274BF4784();
        v21 = sub_274B8F788(v19, v34);
      }

      sub_274B8EED4(v21, v8);
      sub_274B93FC0();
      swift_storeEnumTagMultiPayload();
      sub_274B93CBC();
      sub_274B93D40();
      sub_274BF3A64();
      v11 = v8;
    }

    else
    {
      sub_274B8EED4(0, v14);
      sub_274B93FC0();
      swift_storeEnumTagMultiPayload();
      sub_274B93D40();
      sub_274BF3A64();
      sub_274B93FC0();
      swift_storeEnumTagMultiPayload();
      sub_274B93CBC();
      sub_274BF3A64();
      sub_274AFA708(v5, &qword_28098D5E8);
      v11 = v14;
    }
  }

  else
  {
    if (v38)
    {
      v25 = *(v29 + 16);
      sub_274AD8430(0, &qword_28098A118);
      v26 = v25;
      sub_274B217DC(v18, 0);
      v27 = sub_274BF5624();

      sub_274B21754(v18, 0);
    }

    else
    {
      v27 = 0;
    }

    sub_274B8EED4(v27 & 1, v11);
    sub_274B93FC0();
    swift_storeEnumTagMultiPayload();
    sub_274B93D40();
    sub_274BF3A64();
    sub_274B93FC0();
    swift_storeEnumTagMultiPayload();
    sub_274B93CBC();
    sub_274BF3A64();
    sub_274B21754(v18, 0);
    sub_274AFA708(v5, &qword_28098D5E8);
  }

  return sub_274AFA708(v11, &qword_28098D5F0);
}

uint64_t sub_274B8EED4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  HIDWORD(v77) = a1;
  v82 = a2;
  v3 = sub_274BF2F04();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v70 = &v67 - v6;
  v74 = sub_274BF4AF4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D638);
  MEMORY[0x28223BE20](v8);
  v68 = &v67 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D628);
  MEMORY[0x28223BE20](v81);
  v67 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v67 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D640);
  MEMORY[0x28223BE20](v78);
  v80 = &v67 - v13;
  v14 = sub_274BF3934();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D618);
  MEMORY[0x28223BE20](v79);
  v19 = &v67 - v18;
  v20 = sub_274BF3484();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v2 + *(type metadata accessor for ContentCollectionGridView() + 52));
  v25 = *(v21 + 28);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_274BF38C4();
  (*(*(v27 - 8) + 104))(&v23[v25], v26, v27);
  *v23 = v24;
  *(v23 + 1) = v24;
  if ((v77 & 0x100000000) != 0)
  {
    sub_274BF3924();
    sub_274BF2FB4();
    sub_274B93EB0();
    v28 = *&v83 * 0.5;
    v29 = &v19[*(v79 + 68)];
    sub_274B93EB0();
    *&v29[*(sub_274BF3474() + 20)] = v28;
    v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D648) + 36)];
    v31 = v84;
    *v30 = v83;
    *(v30 + 1) = v31;
    *(v30 + 4) = v85;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D660);
    (*(v15 + 16))(&v29[*(v32 + 52)], v17, v14);
    *&v29[*(v32 + 56)] = 256;
    v33 = sub_274BF4A94();
    v35 = v34;
    (*(v15 + 8))(v17, v14);
    v36 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D668) + 36)];
    *v36 = v33;
    v36[1] = v35;
    v37 = &qword_28098D618;
    sub_274B93FC0();
    swift_storeEnumTagMultiPayload();
    sub_274AFA930(&qword_28098D610, &qword_28098D618);
    sub_274B93DF8();
  }

  else
  {
    v38 = sub_274B8FCA8();
    sub_274BF2FB4();
    v39 = v68;
    sub_274B93EB0();
    v40 = *&v83 * 0.5;
    v41 = v39 + *(v8 + 68);
    sub_274B93EB0();
    *(v41 + *(sub_274BF3474() + 20)) = v40;
    v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D648) + 36);
    v43 = v84;
    *v42 = v83;
    *(v42 + 16) = v43;
    *(v42 + 32) = v85;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D650);
    *(v41 + *(v44 + 52)) = v38;
    *(v41 + *(v44 + 56)) = 256;
    v45 = sub_274BF4A94();
    v47 = v46;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D658);
    v49 = (v41 + *(v48 + 36));
    *v49 = v45;
    v49[1] = v47;
    v50 = v70;
    sub_274ADE30C(v48, v51, v52, v53, v54, v55, v56, v57, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
    v59 = v75;
    v58 = v76;
    v60 = v71;
    (*(v75 + 104))(v71, *MEMORY[0x277CDF3D0], v76);
    LOBYTE(v45) = sub_274BF2EF4();
    v61 = *(v59 + 8);
    v61(v60, v58);
    v61(v50, v58);
    v62 = v72;
    v63 = MEMORY[0x277CE13D0];
    if ((v45 & 1) == 0)
    {
      v63 = MEMORY[0x277CE13E8];
    }

    v64 = v69;
    v65 = v74;
    (*(v72 + 104))(v69, *v63, v74);
    (*(v62 + 32))(v67 + *(v81 + 36), v64, v65);
    sub_274B93F0C();
    v37 = &qword_28098D628;
    v19 = v73;
    sub_274B93F0C();
    sub_274B93FC0();
    swift_storeEnumTagMultiPayload();
    sub_274AFA930(&qword_28098D610, &qword_28098D618);
    sub_274B93DF8();
  }

  sub_274BF3A64();
  sub_274AFA708(v19, v37);
  return sub_274B93F64(v23);
}

BOOL sub_274B8F788(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_274BF58C4();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    sub_274AD8430(0, &qword_28098A118);
    sub_274BF5614();
    OUTLINED_FUNCTION_2_27();
    v8 = ~v7;
    do
    {
      v9 = v6 & v8;
      v10 = (1 << (v6 & v8)) & *(a2 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
      v11 = v10 != 0;
      if (!v10)
      {
        break;
      }

      v12 = *(*(a2 + 48) + 8 * v9);
      v13 = sub_274BF5624();

      v6 = v9 + 1;
    }

    while ((v13 & 1) == 0);
    return v11;
  }
}

void sub_274B8F89C(uint64_t a1)
{
  v2 = v1;
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v20 = v5;
  v21 = v4;
  v22 = v6;
  v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB00);
  MEMORY[0x277C64160](&v24);
  v8 = v24;
  if (v25)
  {
    if (v25 != 1)
    {
      (*(v1 + 56))(*(a1 + 16));
      return;
    }

    v9 = *(a1 + 16);

    v10 = sub_274B8F788(v9, v8);
    sub_274B21754(v8, 1);
    if (v10)
    {
    }

    else
    {
      sub_274B9114C(&v20, v9, &qword_28098A118, 0x277CFC2F8, &qword_28098BFF8, &unk_274BFF5A0);
    }

    v20 = v5;
    v21 = v4;
    v22 = v6;
    v23 = v7;

    sub_274B217DC(v6, v7);
    sub_274BF48D4();
  }

  else
  {
    v11 = *(a1 + 16);
    if (!v24 || (sub_274AD8430(0, &qword_28098A118), v12 = v11, sub_274B217DC(v8, 0), v13 = sub_274BF5624(), v12, sub_274B21754(v8, 0), (v13 & 1) == 0))
    {
      v14 = v11;
    }

    v15 = *(v2 + 16);
    v16 = *(v2 + 24);
    v17 = *(v2 + 32);
    v20 = *(v2 + 8);
    v21 = v15;
    v22 = v16;
    v23 = v17;

    sub_274B217DC(v16, v17);
    sub_274BF48D4();
    sub_274B21754(v8, 0);
  }

  v18 = v22;
  v19 = v23;

  sub_274B21754(v18, v19);
}

uint64_t sub_274B8FAF8()
{
  type metadata accessor for ContentCollectionGridView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D4F8);
  return sub_274BF4794();
}

void sub_274B8FB6C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB00);
  MEMORY[0x277C64160](&v5);
  if (v6)
  {
    if (v6 != 1)
    {
      return;
    }

    sub_274B21754(v5, 1);
    if (sub_274B22B94(MEMORY[0x277D84F90]))
    {
      sub_274B48714(MEMORY[0x277D84F90]);
    }

    v3 = v1;
    v4 = v2;
  }

  else
  {
    sub_274B21754(v5, 0);
    v3 = v1;
    v4 = v2;
  }

  sub_274B217DC(v1, v2);
  sub_274BF48D4();

  sub_274B21754(v3, v4);
}

uint64_t sub_274B8FCA8()
{
  v0 = sub_274BF4584();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_274BF2F04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for ContentCollectionGridView();
  sub_274ADE30C(v11, v12, v13, v14, v15, v16, v17, v18, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11]);
  (*(v5 + 104))(v7, *MEMORY[0x277CDF3D0], v4);
  sub_274BF2EF4();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277CE0EE0], v0);
  return sub_274BF4664();
}

uint64_t sub_274B8FF24@<X0>(void *a1@<X8>)
{
  if (qword_2809893C0 != -1)
  {
    swift_once();
  }

  *a1 = qword_28098D420;
}

uint64_t sub_274B8FF9C()
{
  sub_274BF5634();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v0[1];
  }

  MEMORY[0x277C655C0](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x277C655C0](*&v6);
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  Width = CGRectGetWidth(v10);
  if (Width == 0.0)
  {
    Width = 0.0;
  }

  MEMORY[0x277C655C0](*&Width);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  Height = CGRectGetHeight(v11);
  if (Height == 0.0)
  {
    Height = 0.0;
  }

  return MEMORY[0x277C655C0](*&Height);
}

uint64_t sub_274B900D4()
{
  sub_274BF5CD4();
  sub_274B8FF9C();
  return sub_274BF5D44();
}

uint64_t sub_274B9018C()
{
  sub_274BF5CD4();
  sub_274B8FF9C();
  return sub_274BF5D44();
}

BOOL sub_274B901DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_274B90060(v5, v7);
}

unint64_t sub_274B9022C()
{
  result = qword_28098D470;
  if (!qword_28098D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D470);
  }

  return result;
}

uint64_t sub_274B9029C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentCollectionGridView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_274B90300@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContentCollectionGridView();
  OUTLINED_FUNCTION_7_1(v2);
  OUTLINED_FUNCTION_4_17();

  return sub_274B8D464(v3, a1);
}

uint64_t sub_274B9037C()
{
  v0 = type metadata accessor for ContentCollectionGridView();
  OUTLINED_FUNCTION_7_1(v0);
  OUTLINED_FUNCTION_4_17();

  return sub_274B8FAF8();
}

unint64_t sub_274B903E0()
{
  result = qword_28098D4B8;
  if (!qword_28098D4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D478);
    sub_274B90498();
    sub_274AFA930(&qword_28098D4E0, &qword_28098D4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D4B8);
  }

  return result;
}

unint64_t sub_274B90498()
{
  result = qword_28098D4C0;
  if (!qword_28098D4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D4B0);
    sub_274AFA930(&qword_28098D4C8, &qword_28098D498);
    sub_274AFA930(&qword_28098D4D0, &qword_28098D4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D4C0);
  }

  return result;
}

void sub_274B9057C()
{
  v1 = type metadata accessor for ContentCollectionGridView();
  OUTLINED_FUNCTION_7_1(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_274B8FB6C(v3);
}

unint64_t sub_274B905E0()
{
  result = qword_28098D528;
  if (!qword_28098D528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D530);
    sub_274B906A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D528);
  }

  return result;
}

unint64_t sub_274B906A0()
{
  result = qword_28098D538;
  if (!qword_28098D538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D530);
    sub_274B90758();
    sub_274AFA930(&qword_28098D590, &qword_28098D598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D538);
  }

  return result;
}

unint64_t sub_274B90758()
{
  result = qword_28098D540;
  if (!qword_28098D540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D548);
    sub_274B90810();
    sub_274AFA930(&qword_28098D580, &qword_28098D588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D540);
  }

  return result;
}

unint64_t sub_274B90810()
{
  result = qword_28098D550;
  if (!qword_28098D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D558);
    sub_274B908C8();
    sub_274AFA930(&qword_2815A3100, &qword_28098B540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D550);
  }

  return result;
}

unint64_t sub_274B908C8()
{
  result = qword_28098D560;
  if (!qword_28098D560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D568);
    sub_274B90980();
    sub_274AFA930(&qword_28098A8C8, &qword_28098A8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D560);
  }

  return result;
}

unint64_t sub_274B90980()
{
  result = qword_28098D570;
  if (!qword_28098D570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D578);
    sub_274B090FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D570);
  }

  return result;
}

unint64_t sub_274B90A0C()
{
  result = qword_28098D5A0;
  if (!qword_28098D5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D508);
    sub_274AFA930(&qword_28098D5A8, &qword_28098D5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D5A0);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  type metadata accessor for ContentCollectionGridView();
  OUTLINED_FUNCTION_1_1();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_274B21754(*(v3 + 24), *(v3 + 32));

  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_0_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274B90C48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContentCollectionGridView();
  OUTLINED_FUNCTION_7_1(v4);
  OUTLINED_FUNCTION_4_17();

  return sub_274B8E414(a1, v5, a2);
}

unint64_t sub_274B90CBC()
{
  result = qword_28098AD48;
  if (!qword_28098AD48)
  {
    sub_274AD8430(255, &qword_28098A118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AD48);
  }

  return result;
}

BOOL sub_274B90DB4(char *a1, char *a2)
{
  v26 = a1;
  v4 = sub_274BF1F54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v8 = *v2;
  OUTLINED_FUNCTION_1_23();
  sub_274B9413C(v9, v10);
  v31 = a2;
  sub_274BF4E94();
  v28 = v8;
  v29 = v8 + 56;
  OUTLINED_FUNCTION_2_27();
  v13 = ~v12;
  v30 = v5 + 16;
  v27 = v5 + 8;
  while (1)
  {
    v14 = v11 & v13;
    v15 = (1 << (v11 & v13)) & *(v29 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      v21 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v31;
      (*(v5 + 16))(v7, v31, v4);
      v32 = *v21;
      sub_274B920C4(v7, v14, isUniquelyReferenced_nonNull_native);
      *v21 = v32;
      (*(v5 + 32))(v26, v23, v4);
      return v15 == 0;
    }

    v16 = *(v5 + 72) * v14;
    v17 = *(v5 + 16);
    v17(v7, *(v28 + 48) + v16, v4);
    OUTLINED_FUNCTION_1_23();
    sub_274B9413C(&qword_28098D690, v18);
    v19 = sub_274BF4EF4();
    v20 = *(v5 + 8);
    v20(v7, v4);
    if (v19)
    {
      break;
    }

    v11 = v14 + 1;
  }

  v20(v31, v4);
  v17(v26, *(v28 + 48) + v16, v4);
  return v15 == 0;
}

BOOL sub_274B9107C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_274BF5CC4();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_274B92350(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_274B9114C(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_274BF5894();

    if (v16)
    {

      sub_274AD8430(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v31;
    }

    else
    {
      result = sub_274BF5874();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v24 = sub_274B914EC(v14, result + 1, a5, a6, a3);
        v25 = *(v24 + 16);
        if (*(v24 + 24) <= v25)
        {
          sub_274B91C44(v25 + 1, a5);
        }

        v26 = v15;
        sub_274B92048();

        *v10 = v24;
        *a1 = v26;
        return 1;
      }
    }
  }

  else
  {
    sub_274AD8430(0, a3);
    sub_274BF5614();
    OUTLINED_FUNCTION_2_27();
    v20 = ~v19;
    while (1)
    {
      v21 = v18 & v20;
      if (((*(v13 + 56 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v20)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v32 = *v10;
        v27 = a2;
        sub_274B92454();
        *v10 = v32;
        *a1 = v27;
        return 1;
      }

      v22 = *(*(v13 + 48) + 8 * v21);
      v23 = sub_274BF5624();

      if (v23)
      {
        break;
      }

      v18 = v21 + 1;
    }

    v28 = *(*(v13 + 48) + 8 * v21);
    *a1 = v28;
    v29 = v28;
    return 0;
  }

  return result;
}

BOOL sub_274B913A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_274BF5CD4();
  sub_274BF4FF4();
  sub_274BF5D44();
  OUTLINED_FUNCTION_2_27();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_274BF5C24() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_274B925AC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_274B914EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    v7 = OUTLINED_FUNCTION_9_12(a1, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    v8 = sub_274BF5944();
    v21 = v8;
    sub_274BF5844();
    while (1)
    {
      if (!sub_274BF58B4())
      {

        return v8;
      }

      sub_274AD8430(0, a5);
      swift_dynamicCast();
      v9 = *(v8 + 16);
      if (*(v8 + 24) <= v9)
      {
        sub_274B91C44(v9 + 1, a3);
      }

      v8 = v21;
      result = sub_274BF5614();
      v11 = v21 + 56;
      v12 = -1 << *(v21 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v21 + 48) + 8 * v15) = v20;
      ++*(v21 + 16);
    }

    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (++v14 != v17 || (v16 & 1) == 0)
    {
      v18 = v14 == v17;
      if (v14 == v17)
      {
        v14 = 0;
      }

      v16 |= v18;
      v19 = *(v11 + 8 * v14);
      if (v19 != -1)
      {
        v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_274B916C8()
{
  v1 = v0;
  v35 = sub_274BF1F54();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D698);
  result = sub_274BF5934();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
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
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_274B92714(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_274B9413C(&qword_28098D688, MEMORY[0x277CC9260]);
    result = sub_274BF4E94();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_274B91A20()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D680);
  result = sub_274BF5934();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_274B92714(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_274BF5CC4();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_274B91C44(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_3_21(a1, a2);
  v4 = sub_274BF5934();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
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
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v13;
      if (v7[v6])
      {
        OUTLINED_FUNCTION_5_14();
        v10 = v15 & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      sub_274B92714(0, (v24 + 63) >> 6, v3 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_2_27();
      *v7 = v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_8_14();
LABEL_12:
    v16 = sub_274BF5614() & ~(-1 << *(v5 + 32));
    if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_15_7();
LABEL_21:
    OUTLINED_FUNCTION_12_6();
    *(v12 + v21) |= v22;
    OUTLINED_FUNCTION_7_18(v23);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_14_5();
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    if (*(v12 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_13_9();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_274B91DEC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D678);
  result = sub_274BF5934();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_274B92714(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_274BF5CD4();
    sub_274BF4FF4();
    result = sub_274BF5D44();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
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
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_274B92048()
{
  OUTLINED_FUNCTION_48();
  sub_274BF5614();
  OUTLINED_FUNCTION_2_27();
  result = sub_274BF5824();
  *(v0 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v0 + 48) + 8 * result) = v1;
  ++*(v0 + 16);
  return result;
}

uint64_t sub_274B920C4(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_274BF1F54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274B916C8();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_274B92D84();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_274B9413C(&qword_28098D688, MEMORY[0x277CC9260]);
      v14 = sub_274BF4E94();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_274B9413C(&qword_28098D690, MEMORY[0x277CC9260]);
        v16 = sub_274BF4EF4();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_274B92778();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_274BF5C34();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_274B92350(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274B91A20();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_274B9309C();
LABEL_10:
      v12 = *v3;
      result = sub_274BF5CC4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_274B929C0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_274BF5C34();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_274B92454()
{
  OUTLINED_FUNCTION_19_6();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(*v0 + 16);
  v10 = *(*v0 + 24);
  if (v10 <= v9 || (v1 & 1) == 0)
  {
    if (v1)
    {
      sub_274B91C44(v9 + 1, v2);
      goto LABEL_8;
    }

    if (v10 <= v9)
    {
      sub_274B93288();
LABEL_8:
      v11 = *v0;
      sub_274BF5614();
      OUTLINED_FUNCTION_2_27();
      v14 = ~v13;
      while (1)
      {
        v6 = v12 & v14;
        if (((*(v11 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_274AD8430(0, v4);
        v15 = *(*(v11 + 48) + 8 * v6);
        v16 = sub_274BF5624();

        if (v16)
        {
          goto LABEL_15;
        }

        v12 = v6 + 1;
      }
    }

    sub_274B92B00(v2);
  }

LABEL_12:
  v17 = *v0;
  *(*v0 + 8 * (v6 >> 6) + 56) |= 1 << v6;
  *(*(v17 + 48) + 8 * v6) = v8;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_15:
    sub_274BF5C34();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
    OUTLINED_FUNCTION_18_5();
  }
}

uint64_t sub_274B925AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_274B91DEC();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_274B93414();
LABEL_10:
      v15 = *v4;
      sub_274BF5CD4();
      sub_274BF4FF4();
      result = sub_274BF5D44();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_274BF5C24() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_274B92C2C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_274BF5C34();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_274B92714(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_274BFBC10;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_274B92778()
{
  v1 = v0;
  v2 = sub_274BF1F54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D698);
  v6 = *v0;
  v7 = sub_274BF5924();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_274B929C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D680);
  v2 = *v0;
  v3 = sub_274BF5924();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_274B92B00(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_274BF5924();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_8_14();
LABEL_17:
        v19 = v15 | (v9 << 6);
        v20 = *(*(v3 + 48) + 8 * v19);
        *(*(v5 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      ++v16;
      if (*(v3 + 56 + 8 * v9))
      {
        OUTLINED_FUNCTION_5_14();
        v13 = v18 & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_274B92C2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D678);
  v2 = *v0;
  v3 = sub_274BF5924();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_274B92D84()
{
  v1 = v0;
  v32 = sub_274BF1F54();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D698);
  v6 = sub_274BF5934();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_274B9413C(&qword_28098D688, MEMORY[0x277CC9260]);
        result = sub_274BF4E94();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_274B9309C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D680);
  result = sub_274BF5934();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_274BF5CC4();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

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
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

void sub_274B93288()
{
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_3_21(v2, v3);
  v4 = sub_274BF5934();
  v5 = v4;
  if (*(v1 + 16))
  {
    v24 = v0;
    v6 = 0;
    v7 = 1 << *(v1 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v1 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        *(*(v1 + 48) + 8 * (v12 | (v6 << 6)));
        v16 = sub_274BF5614() & ~(-1 << *(v5 + 32));
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_15_7();
LABEL_21:
        OUTLINED_FUNCTION_12_6();
        *(v11 + v21) |= v22;
        OUTLINED_FUNCTION_7_18(v23);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_14_5();
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        if (*(v11 + 8 * v17) != -1)
        {
          OUTLINED_FUNCTION_13_9();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v0 = v24;
          goto LABEL_25;
        }

        ++v13;
        if (*(v1 + 56 + 8 * v6))
        {
          OUTLINED_FUNCTION_5_14();
          v9 = v15 & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v5;
    OUTLINED_FUNCTION_18_5();
  }
}

uint64_t sub_274B93414()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D678);
  result = sub_274BF5934();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_274BF5CD4();

        sub_274BF4FF4();
        result = sub_274BF5D44();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
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
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void sub_274B9366C()
{
  OUTLINED_FUNCTION_19_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v16 = v0;

  v7 = sub_274BF5874();
  v8 = swift_unknownObjectRetain();
  v9 = sub_274B914EC(v8, v7, v6, v4, v2);

  sub_274BF5614();
  OUTLINED_FUNCTION_2_27();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((*(v9 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v12)) & 1) == 0)
    {
      break;
    }

    sub_274AD8430(0, v2);
    v14 = *(*(v9 + 48) + 8 * v13);
    v15 = sub_274BF5624();

    if (v15)
    {

      sub_274B937C0(v13);
      if (sub_274BF5624())
      {
        *v16 = v9;
        OUTLINED_FUNCTION_18_5();
        return;
      }

      __break(1u);
      break;
    }

    v10 = v13 + 1;
  }

  __break(1u);
}

unint64_t sub_274B937C0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_274BF5814();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_274BF5614();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_274B93954(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_274BF5814();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_274BF5CD4();

        sub_274BF4FF4();
        v10 = sub_274BF5D44();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_274B93B0C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_274AD8430(0, &qword_28098A118);
    v9 = sub_274BF5614();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = sub_274BF5624();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v2;
        v17 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_274B92B00(&qword_28098BFF8);
          v15 = v17;
        }

        v8 = *(*(v15 + 48) + 8 * v11);
        sub_274B937C0(v11);
        *v2 = v17;
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  v5 = a1;
  v6 = sub_274BF58C4();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  sub_274B9366C();
  v8 = v7;

  return v8;
}

unint64_t sub_274B93CBC()
{
  result = qword_28098D600;
  if (!qword_28098D600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D5E8);
    sub_274B93D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D600);
  }

  return result;
}

unint64_t sub_274B93D40()
{
  result = qword_28098D608;
  if (!qword_28098D608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D5F0);
    sub_274AFA930(&qword_28098D610, &qword_28098D618);
    sub_274B93DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D608);
  }

  return result;
}

unint64_t sub_274B93DF8()
{
  result = qword_28098D620;
  if (!qword_28098D620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D628);
    sub_274AFA930(&qword_28098D630, &qword_28098D638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D620);
  }

  return result;
}

uint64_t sub_274B93EB0()
{
  OUTLINED_FUNCTION_48();
  v2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_274B93F0C()
{
  OUTLINED_FUNCTION_48();
  v5 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_0_2();
  (*(v6 + 32))(v0, v1);
  return v0;
}

uint64_t sub_274B93F64(uint64_t a1)
{
  v2 = sub_274BF3484();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274B93FC0()
{
  OUTLINED_FUNCTION_48();
  v5 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_0_2();
  (*(v6 + 16))(v0, v1);
  return v0;
}

uint64_t sub_274B94018(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_274BF5CD4();
  sub_274BF4FF4();
  sub_274BF5D44();
  OUTLINED_FUNCTION_2_27();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((*(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_274BF5C24() & 1) != 0)
    {
      break;
    }

    v6 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_274B92C2C();
    v13 = v16;
  }

  v14 = *(*(v13 + 48) + 16 * v9);
  sub_274B93954(v9);
  *v2 = v16;
  return v14;
}

uint64_t sub_274B9413C(unint64_t *a1, void (*a2)(uint64_t))
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

void *DatabaseResult.__allocating_init(_:animation:)(id a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 descriptors];
    v5 = sub_274BF5144();
  }

  else
  {
    v5 = sub_274BF5164();
  }

  v6 = sub_274B94B10(v5, a2);
  v7 = *(*v6 + 104);
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = a1;
  v9 = a1;

  if (a1)
  {
    v10 = v9;
    [v10 registerObserver_];
  }

  return v6;
}

uint64_t sub_274B942CC(uint64_t a1)
{
  v3 = a1;
  v1 = sub_274BF51A4();
  return sub_274BCF108(&v3, v1);
}

uint64_t DatabaseResult.descriptors.getter()
{
  OUTLINED_FUNCTION_18();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t sub_274B943A4@<X0>(uint64_t *a1@<X8>)
{
  result = DatabaseResult.descriptors.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274B943FC()
{
  OUTLINED_FUNCTION_18();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t DatabaseResult.$descriptors.getter()
{
  OUTLINED_FUNCTION_1_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_2();
  sub_274BF51A4();
  sub_274BF2D94();
  sub_274BF2D34();
  return swift_endAccess();
}

uint64_t sub_274B9451C(uint64_t a1)
{
  sub_274BF51A4();
  v2 = sub_274BF2D84();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_274B945F8(v5);
}

uint64_t sub_274B945F8(uint64_t a1)
{
  OUTLINED_FUNCTION_18();
  sub_274BF51A4();
  v2 = sub_274BF2D84();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_18();
  swift_beginAccess();
  sub_274BF2D94();
  sub_274BF2D44();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void *DatabaseResult.observedResult.getter()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_9_1();
  v3 = *(v0 + v2);
  v4 = v3;
  return v3;
}

id sub_274B94788@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 104);
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_274B947FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  DatabaseResult.observedResult.setter(v1);
}

void DatabaseResult.observedResult.setter(void *a1)
{
  OUTLINED_FUNCTION_18();
  v4 = *(v3 + 104);
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  v6 = a1;
  sub_274B948A0(v5);
}

uint64_t sub_274B948A0(void *a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (v4 != a1)
  {
    if (!a1)
    {
LABEL_7:
      [v4 registerObserver_];
      a1 = *(v1 + v3);
      if (a1)
      {
        goto LABEL_8;
      }

LABEL_9:
      sub_274BF5164();
      return sub_274B943FC();
    }

LABEL_6:
    [a1 unregisterObserver_];
    v4 = *(v1 + v3);
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_8:
  v5 = [a1 descriptors];
  sub_274BF5144();

  return sub_274B943FC();
}

void (*DatabaseResult.observedResult.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_18();
  v5 = *(v4 + 104);
  swift_beginAccess();
  v6 = *(v1 + v5);
  v3[3] = v6;
  v7 = v6;
  return sub_274B94A4C;
}

void sub_274B94A4C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    DatabaseResult.observedResult.setter(v3);
  }

  else
  {
    DatabaseResult.observedResult.setter(*(*a1 + 24));
  }

  free(v2);
}

id DatabaseResult.database.getter()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_9_1();
  result = *(v0 + v2);
  if (result)
  {
    return [result database];
  }

  return result;
}

void *sub_274B94B5C(uint64_t a1, uint64_t a2)
{
  *(v2 + *(*v2 + 104)) = 0;
  swift_beginAccess();
  sub_274B942CC(a1);
  swift_endAccess();
  v2[2] = a2;
  return v2;
}

void *static DatabaseResult.empty.getter()
{
  v0 = sub_274BF4AD4();

  return DatabaseResult.__allocating_init(_:animation:)(0, v0);
}

uint64_t DatabaseResult.deinit()
{
  v1 = *(*v0 + 104);
  OUTLINED_FUNCTION_9_1();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 unregisterObserver_];
  }

  OUTLINED_FUNCTION_18();
  v4 = *(v3 + 96);
  sub_274BF51A4();
  v5 = sub_274BF2D94();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t DatabaseResult.__deallocating_deinit()
{
  DatabaseResult.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274B94DBC(uint64_t (*a1)(void))
{
  DatabaseResult.descriptors.getter();
  OUTLINED_FUNCTION_1_2();
  v2 = a1();

  return v2;
}

uint64_t DatabaseResult.subscript.getter()
{
  DatabaseResult.descriptors.getter();
  OUTLINED_FUNCTION_1_2();
  sub_274BF51B4();

  return v1;
}

uint64_t sub_274B94EB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void))
{
  v5 = *v2;
  v6 = DatabaseResult.descriptors.getter();
  v7 = a2(a1, v6, *(v5 + 80));

  return v7;
}

uint64_t DatabaseResult.databaseResultDidChange(_:)(void *a1)
{
  v3 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClassUnconditional();
  sub_274B0F2B4();
  v15 = sub_274BF5504();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v14;
  aBlock[4] = sub_274B956E4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_13;
  v17 = _Block_copy(aBlock);

  v18 = a1;

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  sub_274B03DB4();
  sub_274BF57F4();
  MEMORY[0x277C64DC0](0, v13, v8, v17);
  _Block_release(v17);

  (*(v5 + 8))(v8, v3);
  return (*(v10 + 8))(v13, v21);
}

uint64_t sub_274B95220(int a1, id a2)
{
  v2 = [a2 descriptors];
  sub_274BF5144();

  return sub_274B943FC();
}

uint64_t sub_274B9529C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  DatabaseResult.databaseResultDidChange(_:)(v3);
}

Swift::Int sub_274B95308@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DatabaseResult.index(before:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_274B95338(Swift::Int *a1)
{
  result = DatabaseResult.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_274B95368@<X0>(uint64_t *a1@<X8>)
{
  result = DatabaseResult.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274B95394@<X0>(uint64_t *a1@<X8>)
{
  result = DatabaseResult.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_274B953C0(uint64_t **a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  v3 = sub_274B95474(v2);
  v2[4] = v4;
  v2[5] = v3;
  return sub_274B9542C;
}

void sub_274B9542C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t sub_274B954C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

Swift::Int sub_274B95568@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DatabaseResult.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_274B95598(Swift::Int *a1)
{
  result = DatabaseResult.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_274B955C8@<X0>(void *a1@<X8>)
{
  *a1 = *v1;

  v3 = DatabaseResult.startIndex.getter();

  a1[1] = v3;
  return result;
}

uint64_t sub_274B95614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_274B95668(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274B958C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A128);
    sub_274B089D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274B95978()
{
  sub_274BF51A4();
  result = sub_274BF2D94();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_274B95AC0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_274BC1A58(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_274B9B0D8(v6);
  return sub_274BF59D4();
}

uint64_t sub_274B95B3C()
{
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11();

  return sub_274BF3264();
}

uint64_t sub_274B95BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v33[0] = a3;
  v40 = a2;
  v39 = a1;
  v41 = a5;
  sub_274BF51A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8B0);
  OUTLINED_FUNCTION_27_0();
  swift_getWitnessTable();
  v59 = MEMORY[0x277D837E0];
  OUTLINED_FUNCTION_16_5();
  sub_274BF4964();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8B8);
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C8);
  OUTLINED_FUNCTION_7_19();
  sub_274AFA930(v5, &qword_28098D8C0);
  OUTLINED_FUNCTION_6_2();
  sub_274AFA930(v6, &qword_28098D8C8);
  OUTLINED_FUNCTION_5_15();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_12();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_18();
  v52 = WitnessTable;
  v53 = sub_274AFA930(v8, &qword_28098D8B8);
  OUTLINED_FUNCTION_11_10();
  v37 = v9;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_5();
  v10 = sub_274BF4054();
  v35 = sub_274BF32B4();
  OUTLINED_FUNCTION_1_3();
  v34 = swift_getWitnessTable();
  v55 = v10;
  v56 = v35;
  v57 = v34;
  v58 = MEMORY[0x277CDD980];
  v33[1] = MEMORY[0x277CDEF88];
  OUTLINED_FUNCTION_16_5();
  swift_getOpaqueTypeMetadata2();
  sub_274BF3A74();
  v11 = sub_274BF46B4();
  OUTLINED_FUNCTION_1();
  v36 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  v16 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v33 - v23;
  v25 = v33[0];

  v26 = DatabaseResult.descriptors.getter();

  v42 = v38;
  v43 = v26;
  v44 = v39;
  v45 = v40;
  v46 = v25;
  v55 = v10;
  v56 = v35;
  v57 = v34;
  v58 = MEMORY[0x277CDD980];
  v27 = swift_getOpaqueTypeConformance2();
  v50 = MEMORY[0x277CE0BC8];
  v51 = v27;
  OUTLINED_FUNCTION_3_0();
  v28 = swift_getWitnessTable();
  sub_274BF46A4();

  v49 = v28;
  OUTLINED_FUNCTION_28_0();
  v32 = swift_getWitnessTable();
  sub_274BF4A94();
  sub_274BF43F4();
  (*(v36 + 8))(v15, v11);
  v47 = v32;
  v48 = MEMORY[0x277CDFC60];
  v29 = swift_getWitnessTable();
  sub_274ADB48C(v21, v16, v29);
  v30 = *(v18 + 8);
  v30(v21, v16);
  sub_274ADB48C(v24, v16, v29);
  return (v30)(v24, v16);
}

uint64_t sub_274B96104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v32 = a3;
  v31 = a2;
  v36 = a1;
  v38 = a6;
  v34 = a5;
  sub_274BF51A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8B0);
  swift_getWitnessTable();
  v53 = MEMORY[0x277D837E0];
  sub_274BF4964();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8B8);
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C8);
  sub_274AFA930(&qword_28098D8D0, &qword_28098D8C0);
  sub_274AFA930(&qword_28098D8D8, &qword_28098D8C8);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v47 = sub_274AFA930(&qword_28098D8E0, &qword_28098D8B8);
  swift_getWitnessTable();
  v6 = sub_274BF4054();
  v49 = v6;
  v50 = sub_274BF32B4();
  v37 = v50;
  v39 = swift_getWitnessTable();
  v51 = v39;
  v52 = MEMORY[0x277CDD980];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_274BF3A74();
  v35 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = v36;
  v49 = v36;
  swift_checkMetadataState();
  swift_getWitnessTable();
  if (sub_274BF53F4())
  {
    sub_274BF38A4();
    v18 = sub_274BF40E4();
    v20 = v19;
    v49 = v18;
    v50 = v19;
    v22 = v21 & 1;
    LOBYTE(v51) = v21 & 1;
    v52 = v23;
    v24 = v37;
    v40 = v6;
    v41 = v37;
    v42 = v39;
    v43 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_274ADB9A0();
    sub_274AFA1D0(v18, v20, v22);
  }

  else
  {
    sub_274B9678C(v17, v31, v32, v33, v34, v10);
    v24 = v37;
    v49 = v6;
    v50 = v37;
    v51 = v39;
    v52 = MEMORY[0x277CDD980];
    v25 = swift_getOpaqueTypeConformance2();
    sub_274ADB48C(v10, OpaqueTypeMetadata2, v25);
    v26 = *(v8 + 8);
    v26(v10, OpaqueTypeMetadata2);
    sub_274ADB48C(v13, OpaqueTypeMetadata2, v25);
    sub_274B2CC88();
    v26(v10, OpaqueTypeMetadata2);
    v26(v13, OpaqueTypeMetadata2);
  }

  v49 = v6;
  v50 = v24;
  v51 = v39;
  v52 = MEMORY[0x277CDD980];
  v27 = swift_getOpaqueTypeConformance2();
  v44 = MEMORY[0x277CE0BC8];
  v45 = v27;
  v28 = swift_getWitnessTable();
  sub_274ADB48C(v16, v14, v28);
  return (*(v35 + 8))(v16, v14);
}

uint64_t sub_274B9678C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v37 = a3;
  v38 = a4;
  v35 = a1;
  v36 = a2;
  v40 = a6;
  v39 = sub_274BF32B4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_274BF51A4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8B0);
  OUTLINED_FUNCTION_27_0();
  WitnessTable = swift_getWitnessTable();
  v49 = v11;
  v50 = MEMORY[0x277D837D0];
  v51 = v12;
  v52 = WitnessTable;
  v53 = MEMORY[0x277D837E0];
  OUTLINED_FUNCTION_16_5();
  sub_274BF4964();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8B8);
  v14 = sub_274BF33D4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C8);
  OUTLINED_FUNCTION_7_19();
  v18 = sub_274AFA930(v17, &qword_28098D8C0);
  OUTLINED_FUNCTION_6_2();
  v20 = sub_274AFA930(v19, &qword_28098D8C8);
  v49 = v15;
  v50 = v16;
  v51 = v18;
  v52 = v20;
  OUTLINED_FUNCTION_5_15();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_12();
  v21 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_18();
  v23 = sub_274AFA930(v22, &qword_28098D8B8);
  v46 = v21;
  v47 = v23;
  OUTLINED_FUNCTION_11_10();
  v24 = swift_getWitnessTable();
  v49 = MEMORY[0x277D84A98];
  v50 = v14;
  v51 = MEMORY[0x277D84AA8];
  v52 = v24;
  v25 = sub_274BF4054();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v33 - v29;
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v44 = v37;
  v45 = v38;
  sub_274BF4034();
  sub_274BF32A4();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  v31 = v39;
  sub_274BF44E4();
  (*(v7 + 8))(v10, v31);
  return (*(v27 + 8))(v30, v25);
}

uint64_t sub_274B96AE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a3;
  v48 = a6;
  v36 = a5;
  v44 = sub_274BF51A4();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8B0);
  WitnessTable = swift_getWitnessTable();
  v54 = v44;
  v55 = MEMORY[0x277D837D0];
  v56 = v43;
  v57 = WitnessTable;
  v58 = MEMORY[0x277D837E0];
  v11 = sub_274BF4964();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v40 = &v36 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8B8);
  v13 = sub_274BF33D4();
  v47 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v41 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v45 = &v36 - v16;
  v38 = a1;
  v53 = a1;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v37 = a4;

  v18 = a2;

  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C8);
  v21 = sub_274AFA930(&qword_28098D8D0, &qword_28098D8C0);
  v22 = sub_274AFA930(&qword_28098D8D8, &qword_28098D8C8);
  v54 = v19;
  v55 = v20;
  v56 = v21;
  v57 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v36;
  swift_getWitnessTable();
  v25 = v40;
  sub_274BF4954();
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v18;
  v27 = v37;
  v26[4] = v39;
  v26[5] = v27;
  v26[6] = v38;
  v52 = OpaqueTypeConformance2;

  v28 = v18;

  swift_getWitnessTable();
  v29 = v41;
  sub_274BF3814();

  (*(v46 + 8))(v25, v11);
  v51 = OpaqueTypeConformance2;
  v30 = swift_getWitnessTable();
  v31 = sub_274AFA930(&qword_28098D8E0, &qword_28098D8B8);
  v49 = v30;
  v50 = v31;
  v32 = swift_getWitnessTable();
  v33 = v45;
  sub_274ADB48C(v29, v13, v32);
  v34 = *(v47 + 8);
  v34(v29, v13);
  sub_274ADB48C(v33, v13, v32);
  return (v34)(v33, v13);
}

uint64_t sub_274B96FF8@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21[0] = a3;
  v21[1] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D8C0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  v15 = *a1;
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v15;
  v24 = 0;
  v17 = a2;

  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D908);
  sub_274BF4774();
  v19 = v22;
  *&v22 = sub_274B9C28C;
  *(&v22 + 1) = v16;
  v23 = v19;
  v21[12] = a5;
  v21[13] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAA8);
  sub_274AFA930(&qword_28098BAB0, &qword_28098BAA8);
  sub_274B9C2A4();
  sub_274BF3244();
  v21[4] = a5;
  v21[5] = v17;
  v21[6] = v21[0];
  v21[7] = a4;
  v21[8] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D8C8);
  sub_274AFA930(&qword_28098D8D0, &qword_28098D8C0);
  sub_274AFA930(&qword_28098D8D8, &qword_28098D8C8);
  sub_274BF41F4();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_274B972BC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v32[0] = 0;
  v5 = [a1 recordWithDescriptor:a4 error:v32];
  if (v5)
  {
    v6 = v5;
    v7 = v32[0];
    v8 = sub_274B97638(v6);
  }

  else
  {
    v9 = v32[0];
    v10 = sub_274BF1E74();

    swift_willThrow();
    v28[0] = a4;
    v11 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D920);
    if (swift_dynamicCast())
    {
      sub_274B226BC(&v29, v32);
      v12 = v33;
      v13 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v26 = (*(v13 + 8))(v12, v13);
      v14 = sub_274B62598(v26);
      v15 = *(v14 + 16);
      if (v15)
      {
        v27 = MEMORY[0x277D84F90];
        sub_274B63EAC(0, v15, 0);
        v16 = (v14 + 40);
        v8 = v27;
        do
        {
          v18 = *(v16 - 1);
          v17 = *v16;
          if (*(v26 + 16))
          {

            v19 = sub_274BDA830(v18, v17);
            if (v20)
            {
              sub_274B9C4DC(*(v26 + 56) + 32 * v19, &v29, &qword_28098B300);
            }

            else
            {
              v29 = 0uLL;
              *&v30 = 0;
              *(&v30 + 1) = 1;
            }
          }

          else
          {
            v29 = 0uLL;
            *&v30 = 0;
            *(&v30 + 1) = 1;
          }

          sub_274B9C4DC(&v29, v28, &qword_28098D930);
          if (v28[3] == 1)
          {
            sub_274B0671C(&v29, &qword_28098D930);
            v21 = 0;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300);
            v21 = sub_274BF5714();
            sub_274B0671C(&v29, &qword_28098D930);
            sub_274B0671C(v28, &qword_28098B300);
          }

          v23 = *(v27 + 16);
          v22 = *(v27 + 24);

          if (v23 >= v22 >> 1)
          {
            sub_274B63EAC((v22 > 1), v23 + 1, 1);
          }

          *(v27 + 16) = v23 + 1;
          v24 = (v27 + 40 * v23);
          v24[4] = v18;
          v24[5] = v17;
          v24[6] = v21;
          v24[7] = v18;
          v24[8] = v17;
          v16 += 2;
          --v15;
        }

        while (v15);
      }

      else
      {

        v8 = MEMORY[0x277D84F90];
      }

      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      sub_274B0671C(&v29, &qword_28098D928);
      return MEMORY[0x277D84F90];
    }
  }

  return v8;
}

uint64_t sub_274B97638(void *a1)
{
  v1 = [a1 fetchedProperties];
  sub_274AD8430(0, &qword_28098D938);
  sub_274B9C3B0();
  v2 = sub_274BF52B4();

  v30 = sub_274BBC84C(v2);
  sub_274B95AC0(&v30);

  v3 = v30;
  v4 = sub_274B22B94(v30);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v30 = MEMORY[0x277D84F90];
  sub_274B63EAC(0, v4 & ~(v4 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v30;
    v27 = v3 & 0xC000000000000001;
    v28 = v3;
    v8 = &selRef_setOutline_;
    v26 = v5;
    do
    {
      if (v27)
      {
        v9 = MEMORY[0x277C65230](v6, v3);
      }

      else
      {
        v9 = *(v3 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = [v9 v8[324]];
      v12 = sub_274BF4F44();
      v14 = v13;

      v15 = [v10 v8[324]];
      if (!v15)
      {
        sub_274BF4F44();
        v15 = sub_274BF4F04();
      }

      v16 = [a1 valueForKey_];

      v17 = v8;
      v18 = [v10 v8[324]];
      v19 = sub_274BF4F44();
      v21 = v20;

      v30 = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_274B63EAC((v22 > 1), v23 + 1, 1);
        v7 = v30;
      }

      ++v6;
      *(v7 + 16) = v23 + 1;
      v24 = (v7 + 40 * v23);
      v24[4] = v12;
      v24[5] = v14;
      v24[6] = v16;
      v24[7] = v19;
      v24[8] = v21;
      v3 = v28;
      v8 = v17;
    }

    while (v26 != v6);

    return v7;
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_274B978B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3904();
  sub_274B97944(a1, v7);
  *&v6[7] = v7[0];
  *&v6[23] = v7[1];
  *&v6[39] = v7[2];
  *&v6[55] = v7[3];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return memcpy((a2 + 17), v6, 0x47uLL);
}

uint64_t sub_274B97944@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 displayName];
  sub_274BF4F44();

  sub_274ADDF6C();
  v5 = sub_274BF4104();
  v29 = v6;
  v30 = v5;
  v28 = v7;
  v31 = v8;
  v9 = [a1 displaySubtitle];
  sub_274BF4F44();

  v10 = sub_274BF4104();
  v12 = v11;
  v14 = v13;
  sub_274BF3FB4();
  v15 = sub_274BF40D4();
  v17 = v16;
  v19 = v18;

  sub_274AFA1D0(v10, v12, v14 & 1);

  sub_274BF4654();
  v20 = sub_274BF4094();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_274AFA1D0(v15, v17, v19 & 1);

  *a2 = v30;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  sub_274AF396C(v30, v29, v28 & 1);

  sub_274AF396C(v20, v22, v24 & 1);

  sub_274AFA1D0(v20, v22, v24 & 1);

  sub_274AFA1D0(v30, v29, v28 & 1);
}

uint64_t sub_274B97B64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v53 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAC0);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EA8);
  v55 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v52 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - v24;
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a1;
  v26[4] = a2;
  v26[5] = a3;
  v26[6] = a4;
  v27 = a1;

  v28 = a4;
  v56 = v25;
  sub_274BF47C4();
  v29 = swift_allocObject();
  v29[2] = a5;
  v29[3] = v27;
  v29[4] = a2;
  v29[5] = a3;
  v29[6] = v28;
  v30 = v27;

  v31 = v28;
  v32 = v22;
  sub_274BF47C4();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v33 = swift_allocObject();
    *(v33 + 16) = a5;
    *(v33 + 24) = v31;
    v34 = v31;
    sub_274BF47C4();
    v35 = v51;
    (*(v55 + 32))(v15, v19, v51);
    v36 = 0;
    v37 = v19;
  }

  else
  {
    v36 = 1;
    v37 = v19;
    v35 = v51;
  }

  __swift_storeEnumTagSinglePayload(v15, v36, 1, v35);
  v38 = v55;
  v39 = *(v55 + 16);
  v39(v37, v56, v35);
  v40 = v52;
  v41 = v32;
  v39(v52, v32, v35);
  v42 = v54;
  sub_274B9C4DC(v15, v54, &qword_28098BAC0);
  v43 = v37;
  v50 = v37;
  v44 = v15;
  v45 = v53;
  v39(v53, v43, v35);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D918);
  v39(&v45[*(v46 + 48)], v40, v35);
  sub_274B9C4DC(v42, &v45[*(v46 + 64)], &qword_28098BAC0);
  sub_274B0671C(v44, &qword_28098BAC0);
  v47 = *(v38 + 8);
  v47(v41, v35);
  v47(v56, v35);
  sub_274B0671C(v42, &qword_28098BAC0);
  v47(v40, v35);
  return (v47)(v50, v35);
}

void sub_274B98068(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v6 = [a1 deleteReference:a4 tombstone:a6 & 1 error:v11];
  v7 = v11[0];
  if (v6)
  {

    v8 = v7;
  }

  else
  {
    v9 = v11[0];
    v10 = sub_274BF1E74();

    swift_willThrow();
  }
}

void sub_274B98170(void *a1)
{
  v2 = [objc_opt_self() generalPasteboard];
  v3 = [a1 identifier];
  if (!v3)
  {
    sub_274BF4F44();
    v4 = sub_274BF4F04();

    v3 = v4;
  }

  v5 = v3;
  [v2 setString_];
}

uint64_t sub_274B982F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a2;
  v23 = a5;
  v24 = a6;
  v26[4] = *MEMORY[0x277D85DE8];
  v6 = sub_274BF2264();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D8F0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_274BF2274();
  sub_274BF2284();
  sub_274B9C244(&qword_28098D8F8, MEMORY[0x277CC9A28]);
  v13 = (v7 + 8);
  while (1)
  {
    sub_274BF5374();
    sub_274B9C244(&qword_28098D900, MEMORY[0x277CC9A08]);
    v14 = sub_274BF4EF4();
    (*v13)(v9, v6);
    if (v14)
    {
      return sub_274B0671C(v12, &qword_28098D8F0);
    }

    v15 = sub_274BF5414();
    v15(v26, 0);
    sub_274BF5384();
    sub_274BF51B4();
    v16 = v26[0];
    v25 = 0;
    v17 = [v22 deleteReference:v26[0] tombstone:1 error:&v25];

    if (!v17)
    {
      break;
    }

    v18 = v25;
  }

  v20 = v25;
  sub_274BF1E74();

  swift_willThrow();
  return sub_274B0671C(v12, &qword_28098D8F0);
}

uint64_t sub_274B9860C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274C02D20;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v4 = [v0 identifier];
  sub_274BF4F44();
  OUTLINED_FUNCTION_14_6();

  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  OUTLINED_FUNCTION_13_10();
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  *(inited + 88) = 0xE900000000000044;
  v7 = [v0 triggerID];
  v8 = sub_274BF4F44();
  v10 = v9;

  *(inited + 96) = v8;
  *(inited + 104) = v10;
  *(inited + 120) = v5;
  *(inited + 128) = 0x656D7269666E6F63;
  *(inited + 136) = 0xE900000000000064;
  v11 = [v0 confirmed];
  v12 = MEMORY[0x277D839B0];
  *(inited + 144) = v11;
  *(inited + 168) = v12;
  *(inited + 176) = 0x646573756170;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [v0 paused];
  *(inited + 216) = v12;
  *(inited + 224) = 0x666E49746E657665;
  *(inited + 232) = 0xE90000000000006FLL;
  v13 = [v0 eventInfo];
  v14 = sub_274BF1F84();
  v16 = v15;

  v17 = MEMORY[0x277CC9318];
  *(inited + 240) = v14;
  *(inited + 248) = v16;
  *(inited + 264) = v17;
  *(inited + 272) = 0x6165724365746164;
  *(inited + 280) = 0xEB00000000646574;
  v18 = [v0 dateCreated];
  *(inited + 312) = sub_274BF2114();
  __swift_allocate_boxed_opaque_existential_1((inited + 288));
  sub_274BF20C4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300);
  OUTLINED_FUNCTION_11_1();
  return sub_274BF4E14();
}

uint64_t sub_274B98874()
{
  v1 = v0;
  v2 = sub_274BF2114();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274C02D30;
  *(inited + 32) = 0x776F6C666B726F77;
  *(inited + 40) = 0xE800000000000000;
  v9 = [v1 workflow];
  v10 = sub_274AD8430(0, &qword_28098BB68);
  *(inited + 48) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 1702125924;
  *(inited + 88) = 0xE400000000000000;
  v11 = [v1 date];
  sub_274BF20C4();

  *(inited + 120) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(v4 + 32))(boxed_opaque_existential_1, v7, v2);
  *(inited + 128) = 0x656372756F73;
  *(inited + 136) = 0xE600000000000000;
  v13 = [v1 source];
  type metadata accessor for WFWorkflowRunSource(0);
  *(inited + 144) = v13;
  *(inited + 168) = v14;
  *(inited + 176) = 0x656D6F6374756FLL;
  v15 = 0xE700000000000000;
  *(inited + 184) = 0xE700000000000000;
  v16 = [v1 outcome];
  if (v16 == 1)
  {
    v17 = 0x73736563637553;
  }

  else if (v16 == 2)
  {
    v15 = 0xE500000000000000;
    v17 = 0x726F727245;
  }

  else
  {
    v15 = 0xEB00000000646569;
    v17 = 0x6669636570736E55;
  }

  *(inited + 192) = v17;
  *(inited + 200) = v15;
  OUTLINED_FUNCTION_13_10();
  *(inited + 216) = v19;
  *(inited + 224) = v18;
  *(inited + 232) = 0xE900000000000044;
  v20 = sub_274B9BE2C(v1, &selRef_triggerID);
  if (v21)
  {
    v22 = MEMORY[0x277D837D0];
  }

  else
  {
    v20 = 0;
    v22 = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v20;
  *(inited + 248) = v21;
  *(inited + 264) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300);
  return sub_274BF4E14();
}

uint64_t sub_274B98B64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BFFAC0;
  strcpy((inited + 32), "appIdentifier");
  *(inited + 46) = -4864;
  v4 = [v0 identifier];
  sub_274BF4F44();
  OUTLINED_FUNCTION_14_6();

  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 72) = v5;
  *(inited + 80) = 0x6974736567677573;
  *(inited + 88) = 0xEB00000000736E6FLL;
  v6 = [v0 suggestions];
  sub_274BF2DC4();
  v7 = sub_274BF5144();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098D818);
  *(inited + 96) = v7;
  *(inited + 120) = v8;
  strcpy((inited + 128), "availability");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  [v0 availability];
  type metadata accessor for INShortcutAvailabilityOptions(0);
  v9 = sub_274BF4FA4();
  *(inited + 168) = v5;
  *(inited + 144) = v9;
  *(inited + 152) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300);
  OUTLINED_FUNCTION_11_1();
  return sub_274BF4E14();
}

uint64_t sub_274B98D30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BFFAC0;
  *(inited + 32) = 1752457584;
  *(inited + 40) = 0xE400000000000000;
  v4 = [v0 path];
  sub_274BF4F44();
  OUTLINED_FUNCTION_14_6();

  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 72) = v5;
  *(inited + 80) = 1635017060;
  *(inited + 88) = 0xE400000000000000;
  v6 = [v0 bookmarkData];
  v7 = sub_274BF1F84();
  v9 = v8;

  v10 = MEMORY[0x277CC9318];
  *(inited + 96) = v7;
  *(inited + 104) = v9;
  *(inited + 120) = v10;
  *(inited + 128) = 0x696669746E656469;
  *(inited + 136) = 0xEA00000000007265;
  v11 = [v0 identifier];
  sub_274BF4F44();
  OUTLINED_FUNCTION_14_6();

  *(inited + 168) = v5;
  *(inited + 144) = v6;
  *(inited + 152) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300);
  OUTLINED_FUNCTION_11_1();
  return sub_274BF4E14();
}

uint64_t sub_274B98EB8()
{
  v1 = 7104878;
  v2 = *(v0 + 16);
  if (v2)
  {
    v7[0] = v2;
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9D0);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      sub_274BF5984();

      strcpy(v7, "Array: ");
      v7[1] = 0xE700000000000000;
      v3 = sub_274B22B94(v8);
LABEL_6:

      v8 = v3;
      v4 = sub_274BF5BE4();
      MEMORY[0x277C648E0](v4);

      MEMORY[0x277C648E0](0x7365756C617620, 0xE700000000000000);
      return v7[0];
    }

    v7[0] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9D8);
    if (swift_dynamicCast())
    {
      sub_274BF5984();

      strcpy(v7, "Dictionary: ");
      BYTE5(v7[1]) = 0;
      HIWORD(v7[1]) = -5120;
      v3 = *(v8 + 16);
      goto LABEL_6;
    }

    if ([v2 respondsToSelector_])
    {
      v5 = [v2 description];
      v1 = sub_274BF4F44();
    }
  }

  return v1;
}

uint64_t sub_274B990B4()
{
  v1 = *(v0 + 2);
  if (!v1)
  {
    return v1;
  }

  *&v44 = *(v0 + 2);
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9D0);
  if (!swift_dynamicCast())
  {
    *&v44 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v16 = v42;

    v18 = sub_274B62598(v17);

    v19 = *(v18 + 16);
    if (v19)
    {
      v43 = MEMORY[0x277D84F90];
      sub_274B63EAC(0, v19, 0);
      v1 = v43;
      v44 = *v0;
      v40 = v42;
      v20 = (v18 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v42 = v44;

        sub_274B9C64C(&v44, &v41);
        MEMORY[0x277C648E0](45, 0xE100000000000000);
        MEMORY[0x277C648E0](v21, v22);
        v23 = *(&v42 + 1);
        v24 = v42;
        if (*(v16 + 16))
        {
          v25 = *(&v42 + 1);
          v26 = sub_274BDA830(v21, v22);
          if (v27)
          {
            v28 = *(*(v16 + 56) + 8 * v26);
            swift_unknownObjectRetain();
          }

          else
          {
            v28 = 0;
          }

          v23 = v25;
        }

        else
        {
          v28 = 0;
        }

        v43 = v1;
        v30 = *(v1 + 16);
        v29 = *(v1 + 24);
        if (v30 >= v29 >> 1)
        {
          v32 = v23;
          sub_274B63EAC((v29 > 1), v30 + 1, 1);
          v23 = v32;
          v1 = v43;
        }

        *(v1 + 16) = v30 + 1;
        v31 = (v1 + 40 * v30);
        v31[4] = v24;
        v31[5] = v23;
        v31[6] = v28;
        v31[7] = v21;
        v31[8] = v22;
        v20 += 2;
        --v19;
        v16 = v40;
      }

      while (v19);

LABEL_31:

      return v1;
    }

LABEL_33:

    return MEMORY[0x277D84F90];
  }

  swift_unknownObjectRelease();
  v2 = v42;
  v3 = sub_274B22B94(v42);
  if (!v3)
  {
    goto LABEL_33;
  }

  v4 = v3;
  *&v42 = MEMORY[0x277D84F90];
  result = sub_274B63EAC(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v1 = v42;
    result = sub_274B22B94(v2);
    v6 = 0;
    v37 = *v0;
    v38 = v2 & 0xC000000000000001;
    v35 = v2;
    v36 = *(v0 + 1);
    v33 = v2 & 0xFFFFFFFFFFFFFF8;
    v34 = v4;
    v39 = result & ~(result >> 63);
    while (v39 != v6)
    {
      if (v38)
      {
        v7 = MEMORY[0x277C65230](v6, v2);
      }

      else
      {
        if (v6 >= *(v33 + 16))
        {
          goto LABEL_37;
        }

        v7 = *(v2 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      *&v44 = v37;
      *(&v44 + 1) = v36;

      MEMORY[0x277C648E0](45, 0xE100000000000000);
      v41 = v6;
      v8 = sub_274BF5BE4();
      MEMORY[0x277C648E0](v8);

      v9 = v44;
      *&v44 = v6;
      result = sub_274BF5BE4();
      v10 = result;
      v12 = v11;
      *&v42 = v1;
      v14 = *(v1 + 16);
      v13 = *(v1 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_274B63EAC((v13 > 1), v14 + 1, 1);
        v1 = v42;
      }

      *(v1 + 16) = v14 + 1;
      v15 = v1 + 40 * v14;
      *(v15 + 32) = v9;
      *(v15 + 48) = v7;
      *(v15 + 56) = v10;
      *(v15 + 64) = v12;
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }

      ++v6;
      v2 = v35;
      if (v34 == v6)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_274B994B4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_274B994C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a2;
  v24 = a5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D968);
  MEMORY[0x28223BE20](v23);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D970);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D978);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  v26 = a3;
  v27 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D980);
  sub_274BF4784();
  if (v25)
  {
    v26 = v25;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9A8);
    sub_274AFA930(&qword_28098D9B0, &qword_28098D9B8);
    sub_274AFA930(&qword_28098D9C0, &qword_28098D9A8);
    sub_274B9C5F8();
    sub_274BF4044();
    (*(v14 + 16))(v12, v16, v13);
    swift_storeEnumTagMultiPayload();
    sub_274AFA930(&qword_28098D988, &qword_28098D978);
    sub_274B9C540();
    sub_274BF3A64();
    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    sub_274BF38A4();
    sub_274BF3064();
    v18 = swift_allocObject();
    v19 = v22;
    v20 = v23;
    *(v18 + 2) = a1;
    *(v18 + 3) = v19;
    *(v18 + 4) = a3;
    *(v18 + 5) = a4;
    v21 = &v9[*(v20 + 36)];
    *v21 = sub_274B9C4D0;
    v21[1] = v18;
    v21[2] = 0;
    v21[3] = 0;
    sub_274B9C4DC(v9, v12, &qword_28098D968);
    swift_storeEnumTagMultiPayload();
    sub_274AFA930(&qword_28098D988, &qword_28098D978);
    sub_274B9C540();

    sub_274BF3A64();
    return sub_274B0671C(v9, &qword_28098D968);
  }
}

void *sub_274B998F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 32);
  v4 = sub_274BF3904();
  sub_274B9997C(v7, v9);
  *&v6[7] = v9[0];
  *&v6[23] = v9[1];
  *&v6[39] = v9[2];
  *&v6[55] = v9[3];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return memcpy((a2 + 17), v6, 0x47uLL);
}

uint64_t sub_274B9997C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_274ADDF6C();

    v4 = sub_274BF4104();
    v6 = v5;
    v8 = v7;
    v3 = sub_274BF40C4();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_274AFA1D0(v4, v6, v8 & 1);

    v15 = v12 & 1;
    sub_274AF396C(v3, v10, v12 & 1);
  }

  else
  {
    v10 = 0;
    v15 = 0;
    v14 = 0;
  }

  sub_274B98EB8();
  sub_274ADDF6C();
  v16 = sub_274BF4104();
  v18 = v17;
  v20 = v19;
  v22 = v21 & 1;
  sub_274B7ABEC(v3, v10, v15, v14);
  sub_274AF396C(v16, v18, v22);

  sub_274B7AD64(v3, v10, v15, v14);
  *a2 = v3;
  *(a2 + 8) = v10;
  *(a2 + 16) = v15;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  *(a2 + 48) = v22;
  *(a2 + 56) = v20;
  sub_274AFA1D0(v16, v18, v22);

  return sub_274B7AD64(v3, v10, v15, v14);
}

uint64_t sub_274B99B1C(void (*a1)(void))
{
  a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D980);
  return sub_274BF4794();
}

uint64_t sub_274B99BAC()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D808);
  return sub_274BF4FA4();
}

id sub_274B99C00(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_274B99C78(a3);

  OUTLINED_FUNCTION_11_1();
  v5 = sub_274BF4F04();

  return v5;
}

uint64_t sub_274B99C78(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_274BF4F44();

  return v3;
}

id sub_274B99CE4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  OUTLINED_FUNCTION_11_1();
  v5 = sub_274BF4F04();

  return v5;
}

uint64_t sub_274B99D50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989648);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_274BF8D80;
  v3 = [v0 identifier];
  v4 = sub_274BF4F44();
  v6 = v5;

  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  [v1 actionCount];
  v7 = sub_274BF5BE4();
  MEMORY[0x277C648E0](v7);

  v8 = *(v2 + 16);
  if (v8 >= *(v2 + 24) >> 1)
  {
    sub_274BBAD94();
    v2 = v25;
  }

  *(v2 + 16) = v8 + 1;
  v9 = v2 + 16 * v8;
  *(v9 + 32) = 0x3A736E6F69746361;
  *(v9 + 40) = 0xE900000000000020;
  if ([v1 isDeleted])
  {
    v10 = *(v2 + 16);
    if (v10 >= *(v2 + 24) >> 1)
    {
      sub_274BBAD94();
      v2 = v28;
    }

    *(v2 + 16) = v10 + 1;
    v11 = v2 + 16 * v10;
    *(v11 + 32) = 0x646574656C6564;
    *(v11 + 40) = 0xE700000000000000;
  }

  if ([v1 hiddenFromLibraryAndSync])
  {
    v12 = *(v2 + 16);
    if (v12 >= *(v2 + 24) >> 1)
    {
      sub_274BBAD94();
      v2 = v29;
    }

    *(v2 + 16) = v12 + 1;
    v13 = v2 + 16 * v12;
    *(v13 + 32) = 0x6974616D6F747561;
    *(v13 + 40) = 0xEA00000000006E6FLL;
  }

  v14 = [objc_opt_self() defaultDatabase];
  v15 = [v1 identifier];
  if (!v15)
  {
    sub_274BF4F44();
    v15 = sub_274BF4F04();
  }

  v16 = [v14 conflictingReferenceForWorkflowID_];

  if (v16)
  {

    v17 = *(v2 + 16);
    if (v17 >= *(v2 + 24) >> 1)
    {
      sub_274BBAD94();
      v2 = v26;
    }

    *(v2 + 16) = v17 + 1;
    v18 = v2 + 16 * v17;
    *(v18 + 32) = 0x7463696C666E6F63;
    *(v18 + 40) = 0xE800000000000000;
  }

  v19 = sub_274B9BE2C(v1, &selRef_associatedAppBundleIdentifier);
  if (v20)
  {
    MEMORY[0x277C648E0](v19);

    v21 = *(v2 + 16);
    if (v21 >= *(v2 + 24) >> 1)
    {
      sub_274BBAD94();
      v2 = v27;
    }

    *(v2 + 16) = v21 + 1;
    v22 = v2 + 16 * v21;
    *(v22 + 32) = 0x203A707061;
    *(v22 + 40) = 0xE500000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  sub_274AFA930(&qword_28098A4E0, &qword_280989650);
  v23 = sub_274BF4EB4();

  return v23;
}

uint64_t sub_274B9A140()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    sub_274BF4F44();
    v1 = sub_274BF4F04();
  }

  v2 = WFWorkflowTypeForCollectionIdentifier();

  if (v2 && (v3 = WFHumanReadableNameForWorkflowType()) != 0)
  {
    v4 = v2;
    v2 = v3;
  }

  else
  {
    v4 = [v0 name];
  }

  v5 = sub_274BF4F44();

  return v5;
}

uint64_t sub_274B9A228()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989648);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_274BF8D80;
  v3 = [v0 identifier];
  v4 = sub_274BF4F44();
  v6 = v5;

  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  v7 = [objc_opt_self() defaultDatabase];
  v8 = [v7 sortedVisibleWorkflowsInCollection_];

  [v8 count];
  v9 = sub_274BF5BE4();
  MEMORY[0x277C648E0](v9);

  v10 = *(v2 + 16);
  if (v10 >= *(v2 + 24) >> 1)
  {
    sub_274BBAD94();
    v2 = v16;
  }

  *(v2 + 16) = v10 + 1;
  v11 = v2 + 16 * v10;
  *(v11 + 32) = 0x74756374726F6873;
  *(v11 + 40) = 0xEB00000000203A73;
  if ([v1 isDeleted])
  {
    v12 = *(v2 + 16);
    if (v12 >= *(v2 + 24) >> 1)
    {
      sub_274BBAD94();
      v2 = v17;
    }

    *(v2 + 16) = v12 + 1;
    v13 = v2 + 16 * v12;
    *(v13 + 32) = 0x646574656C6564;
    *(v13 + 40) = 0xE700000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  sub_274AFA930(&qword_28098A4E0, &qword_280989650);
  v14 = sub_274BF4EB4();

  return v14;
}

id sub_274B9A48C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_28098D7A0 = v0;
  return result;
}

uint64_t sub_274B9A544()
{
  v1 = v0;
  v2 = sub_274BF2114();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809893C8 != -1)
  {
    swift_once();
  }

  v6 = qword_28098D7A0;
  v7 = [v1 date];
  sub_274BF20C4();

  v8 = sub_274BF20A4();
  (*(v3 + 8))(v5, v2);
  v9 = [v6 stringFromDate_];

  v10 = sub_274BF4F44();
  v12 = v11;

  v22[0] = v10;
  v22[1] = v12;
  MEMORY[0x277C648E0](2108704, 0xE300000000000000);
  v13 = [v1 workflow];
  v14 = [v13 name];

  v15 = sub_274BF4F44();
  v17 = v16;

  MEMORY[0x277C648E0](v15, v17);

  MEMORY[0x277C648E0](2108704, 0xE300000000000000);
  v18 = [v1 outcome];
  if (v18 == 1)
  {
    v19 = 0xE700000000000000;
    v20 = 0x73736563637553;
  }

  else if (v18 == 2)
  {
    v19 = 0xE500000000000000;
    v20 = 0x726F727245;
  }

  else
  {
    v19 = 0xEB00000000646569;
    v20 = 0x6669636570736E55;
  }

  MEMORY[0x277C648E0](v20, v19);

  return v22[0];
}

uint64_t sub_274B9A7B4(void *a1)
{
  sub_274B9A874(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D7E0);
  sub_274B9C42C(&qword_28098D7E8, &qword_28098D7E0);
  sub_274BF4034();
}

uint64_t sub_274B9A874(void *a1)
{
  v1 = [a1 activeObjectObservers];
  v2 = sub_274BF5144();

  v3 = *(v2 + 16);
  if (v3)
  {
    v7 = MEMORY[0x277D84F90];
    sub_274BF59F4();
    v4 = v2 + 32;
    do
    {
      sub_274AF5954(v4, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_274BF5C04();
      __swift_destroy_boxed_opaque_existential_0(v6);
      sub_274BF59C4();
      sub_274BF5A14();
      sub_274BF5A24();
      sub_274BF59D4();
      v4 += 32;
      --v3;
    }

    while (v3);

    return v7;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_274B9A98C@<X0>(uint64_t a1@<X8>)
{
  swift_unknownObjectRetain();
  sub_274BF4FA4();
  sub_274ADDF6C();
  result = sub_274BF4104();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274B9AA20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D7A8);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v9[-v4];
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x277D84F90];
  v10 = &v14;
  v11 = KeyPath;
  v12 = sub_274B9ABF8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D7B0);
  sub_274B9BEDC();
  sub_274BF4034();

  sub_274BF38A4();
  OUTLINED_FUNCTION_3_3();
  sub_274AFA930(v7, &qword_28098D7A8);
  sub_274BF42B4();

  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_274B9ABF8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9B8);
  swift_getOpaqueTypeConformance2();
  sub_274B9BF98();
  return sub_274BF3244();
}

uint64_t sub_274B9ACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_274ADDF6C();

  v4 = sub_274BF4104();
  v6 = v5;
  v8 = v7 & 1;
  sub_274B22B94(a3);
  sub_274BF43D4();
  sub_274AFA1D0(v4, v6, v8);
}

uint64_t sub_274B9ADA4()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D948);
  sub_274B9C42C(&qword_28098D950, &qword_28098D948);
  sub_274BF4034();
}

uint64_t sub_274B9AE84@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 description];
  sub_274BF4F44();

  sub_274ADDF6C();
  result = sub_274BF4104();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_274B9AF18(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_274AD8430(0, &qword_28098D938);
      result = sub_274BF5174();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_274B9AF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D7F0);
  sub_274AFA930(&qword_28098D7F8, &qword_28098D7F0);
  sub_274B9C000();
  return sub_274BF4954();
}

uint64_t sub_274B9B090(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

void sub_274B9B0D8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_274BF5BD4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_274B9AF18(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_274B9B330(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_274B9B1B8(0, v3, 1, a1);
  }
}

uint64_t sub_274B9B1B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v24 = v4;
      v25 = a3;
      v6 = *(v26 + 8 * a3);
      v23 = v5;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 name];
        v11 = sub_274BF4F44();
        v13 = v12;

        v14 = [v9 name];
        v15 = sub_274BF4F44();
        v17 = v16;

        if (v11 == v15 && v13 == v17)
        {
          break;
        }

        v19 = sub_274BF5C24();

        if (v19)
        {
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      a3 = v25 + 1;
      v4 = v24 + 8;
      v5 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_274B9B330(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_106:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v127 = v6;
      v107 = *(v6 + 2);
      v6 += 16;
      for (i = v107; i >= 2; *v6 = i)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v108 = &v127[16 * i];
        v109 = *v108;
        v110 = &v6[16 * i];
        v111 = *(v110 + 1);
        sub_274B9BAF4((*a3 + 8 * *v108), (*a3 + 8 * *v110), (*a3 + 8 * v111), v7);
        if (v123)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v6)
        {
          goto LABEL_133;
        }

        *v108 = v109;
        *(v108 + 1) = v111;
        v112 = *v6 - i;
        if (*v6 < i)
        {
          goto LABEL_134;
        }

        v123 = 0;
        i = *v6 - 1;
        sub_274BBF62C(v110 + 16, v112, v110);
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_274BBF538(v6);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v118 = v4;
      v124 = v6;
      v9 = *a3;
      v115 = v5;
      v10 = *(*a3 + 8 * v5);
      v11 = *(*a3 + 8 * v8);
      v12 = v10;
      v13 = [v11 name];
      v14 = sub_274BF4F44();
      v16 = v15;

      v17 = [v12 name];
      v18 = sub_274BF4F44();
      v7 = v19;

      if (v14 == v18 && v16 == v7)
      {
        v120 = 0;
      }

      else
      {
        v120 = sub_274BF5C24();
      }

      v21 = (v9 + 8 * v115 + 16);
      v22 = 8 * v115 + 8;
      do
      {
        v23 = v8;
        v6 = v22;
        if (++v8 >= v118)
        {
          break;
        }

        v128 = v8;
        v24 = *(v21 - 1);
        v25 = *v21;
        v26 = v24;
        v131 = v25;
        v27 = [v25 name];
        v28 = sub_274BF4F44();
        v30 = v29;

        v31 = [v26 name];
        v32 = sub_274BF4F44();
        v34 = v33;

        v35 = v28 == v32 && v30 == v34;
        v7 = v35 ? 0 : sub_274BF5C24();

        ++v21;
        v22 = (v6 + 8);
        v8 = v128;
      }

      while (((v120 ^ v7) & 1) == 0);
      if (v120)
      {
        v36 = v115;
        if (v8 < v115)
        {
          goto LABEL_138;
        }

        if (v115 >= v8)
        {
          v6 = v124;
          v7 = v115;
          goto LABEL_29;
        }

        v37 = 8 * v115;
        do
        {
          if (v36 != v23)
          {
            v38 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v39 = *(v38 + v37);
            *(v38 + v37) = *&v6[v38];
            *&v6[v38] = v39;
          }

          ++v36;
          v6 -= 8;
          v37 += 8;
        }

        while (v36 < v23--);
      }

      v6 = v124;
      v7 = v115;
    }

LABEL_29:
    v41 = a3[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274BBB338(0, *(v6 + 2) + 1, 1, v6);
      v6 = v104;
    }

    v62 = v6;
    v63 = *(v6 + 2);
    v126 = v62;
    v64 = *(v62 + 3);
    v65 = v63 + 1;
    if (v63 >= v64 >> 1)
    {
      sub_274BBB338(v64 > 1, v63 + 1, 1, v126);
      v126 = v105;
    }

    *(v126 + 16) = v65;
    v66 = v126 + 32;
    v67 = (v126 + 32 + 16 * v63);
    *v67 = v7;
    v67[1] = v8;
    v68 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v130 = v8;
    if (v63)
    {
      v6 = v126;
      while (1)
      {
        v69 = v65 - 1;
        v70 = (v66 + 16 * (v65 - 1));
        v71 = &v6[16 * v65];
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v72 = *(v6 + 4);
          v73 = *(v6 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_72:
          if (v75)
          {
            goto LABEL_123;
          }

          v87 = *v71;
          v86 = *(v71 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_126;
          }

          v91 = v70[1];
          v92 = v91 - *v70;
          if (__OFSUB__(v91, *v70))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v89, v92))
          {
            goto LABEL_131;
          }

          if (v89 + v92 >= v74)
          {
            if (v74 < v92)
            {
              v69 = v65 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v65 < 2)
        {
          goto LABEL_125;
        }

        v94 = *v71;
        v93 = *(v71 + 1);
        v82 = __OFSUB__(v93, v94);
        v89 = v93 - v94;
        v90 = v82;
LABEL_87:
        if (v90)
        {
          goto LABEL_128;
        }

        v96 = *v70;
        v95 = v70[1];
        v82 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v82)
        {
          goto LABEL_130;
        }

        if (v97 < v89)
        {
          goto LABEL_103;
        }

LABEL_94:
        if (v69 - 1 >= v65)
        {
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
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v6 = (v66 + 16 * (v69 - 1));
        v7 = *v6;
        v101 = v66 + 16 * v69;
        v102 = *(v101 + 8);
        sub_274B9BAF4((*a3 + 8 * *v6), (*a3 + 8 * *v101), (*a3 + 8 * v102), v68);
        if (v123)
        {
          goto LABEL_116;
        }

        if (v102 < v7)
        {
          goto LABEL_118;
        }

        v103 = *(v126 + 16);
        if (v69 > v103)
        {
          goto LABEL_119;
        }

        *v6 = v7;
        *(v6 + 1) = v102;
        if (v69 >= v103)
        {
          goto LABEL_120;
        }

        v123 = 0;
        v65 = v103 - 1;
        sub_274BBF62C((v101 + 16), v103 - 1 - v69, (v66 + 16 * v69));
        v6 = v126;
        *(v126 + 16) = v103 - 1;
        if (v103 <= 2)
        {
          goto LABEL_103;
        }
      }

      v76 = v66 + 16 * v65;
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_121;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_122;
      }

      v83 = *(v71 + 1);
      v84 = v83 - *v71;
      if (__OFSUB__(v83, *v71))
      {
        goto LABEL_124;
      }

      v82 = __OFADD__(v74, v84);
      v85 = v74 + v84;
      if (v82)
      {
        goto LABEL_127;
      }

      if (v85 >= v79)
      {
        v99 = *v70;
        v98 = v70[1];
        v82 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v100)
        {
          v69 = v65 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    v6 = v126;
LABEL_103:
    v4 = a3[1];
    v5 = v130;
    if (v130 >= v4)
    {
      goto LABEL_106;
    }
  }

  v42 = &v7[a4];
  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v42)
  {
    goto LABEL_51;
  }

  v125 = v6;
  v132 = *a3;
  v43 = *a3 + 8 * v8 - 8;
  v116 = v7;
  v117 = v42;
  v44 = &v7[-v8];
LABEL_38:
  v129 = v8;
  v45 = *(v132 + 8 * v8);
  v119 = v44;
  v121 = v43;
  v46 = v43;
  while (1)
  {
    v47 = *v46;
    v48 = v45;
    v49 = v47;
    v50 = [v48 name];
    v51 = sub_274BF4F44();
    v53 = v52;

    v54 = [v49 name];
    v55 = sub_274BF4F44();
    v57 = v56;

    if (v51 == v55 && v53 == v57)
    {

LABEL_49:
      v8 = v129 + 1;
      v43 = v121 + 8;
      v44 = v119 - 1;
      if ((v129 + 1) == v117)
      {
        v8 = v117;
        v6 = v125;
        v7 = v116;
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v59 = sub_274BF5C24();

    if ((v59 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v132)
    {
      break;
    }

    v60 = *v46;
    v45 = *(v46 + 8);
    *v46 = v45;
    *(v46 + 8) = v60;
    v46 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_274B9BAF4(char *a1, char *a2, void **a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_274B68AA0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    v51 = v10;
    v53 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v55 = v7;
      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      v15 = [v13 name];
      v16 = sub_274BF4F44();
      v18 = v17;

      v19 = [v14 name];
      v20 = sub_274BF4F44();
      v22 = v21;

      if (v16 == v20 && v18 == v22)
      {

        v25 = v55;
      }

      else
      {
        v24 = sub_274BF5C24();

        v25 = v55;
        if (v24)
        {
          v26 = v6;
          v27 = v55 == v6++;
          goto LABEL_15;
        }
      }

      v26 = v4;
      v27 = v25 == v4++;
LABEL_15:
      v10 = v51;
      v5 = v53;
      if (!v27)
      {
        *v25 = *v26;
      }

      v7 = (v25 + 1);
    }
  }

  sub_274B68AA0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v49 = v4;
  v56 = v7;
LABEL_19:
  v28 = v6 - 1;
  v29 = v5 - 1;
  for (i = v6; v10 > v4 && v6 > v7; v6 = i)
  {
    v52 = v10;
    v54 = v29;
    v31 = v10 - 1;
    v32 = v28;
    v33 = *v28;
    v34 = *(v10 - 1);
    v35 = v33;
    v36 = [v34 name];
    v37 = sub_274BF4F44();
    v39 = v38;

    v40 = [v35 name];
    v41 = sub_274BF4F44();
    v43 = v42;

    if (v37 == v41 && v39 == v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = sub_274BF5C24();
    }

    v7 = v56;
    v10 = v52;
    v28 = v32;
    if (v45)
    {
      v5 = v54;
      v4 = v49;
      v6 = v28;
      if (v54 + 1 != i)
      {
        *v54 = *v28;
        v6 = v28;
      }

      goto LABEL_19;
    }

    v4 = v49;
    if (v52 != v54 + 1)
    {
      *v54 = *v31;
    }

    v29 = v54 - 1;
    v10 = v31;
  }

LABEL_38:
  v46 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v46])
  {
    memmove(v6, v4, 8 * v46);
  }

  return 1;
}

uint64_t sub_274B9BE2C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_274BF4F44();
  }

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_274B9BE90@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  result = sub_274B9B090(*a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

unint64_t sub_274B9BEDC()
{
  result = qword_28098D7B8;
  if (!qword_28098D7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D7B0);
    sub_274AFA930(&qword_28098D7C0, &qword_28098D7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D7B8);
  }

  return result;
}

unint64_t sub_274B9BF98()
{
  result = qword_28098D7D8;
  if (!qword_28098D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D7D8);
  }

  return result;
}

unint64_t sub_274B9C000()
{
  result = qword_28098D800;
  if (!qword_28098D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D800);
  }

  return result;
}

uint64_t sub_274B9C054()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274B9C0B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_274B9C0F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_274B9C244(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274B9C2A4()
{
  result = qword_28098D910;
  if (!qword_28098D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D910);
  }

  return result;
}

uint64_t objectdestroy_29Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_274B9C3B0()
{
  result = qword_28098D940;
  if (!qword_28098D940)
  {
    sub_274AD8430(255, &qword_28098D938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D940);
  }

  return result;
}

uint64_t sub_274B9C42C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_0_12();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274B9C4DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

unint64_t sub_274B9C540()
{
  result = qword_28098D990;
  if (!qword_28098D990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D968);
    sub_274AFA930(&qword_28098D998, &qword_28098D9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D990);
  }

  return result;
}

unint64_t sub_274B9C5F8()
{
  result = qword_28098D9C8;
  if (!qword_28098D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D9C8);
  }

  return result;
}

unint64_t sub_274B9C6A8()
{
  result = qword_28098D9E0;
  if (!qword_28098D9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D9E8);
    sub_274AFA930(&qword_28098D988, &qword_28098D978);
    sub_274B9C540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098D9E0);
  }

  return result;
}

id sub_274B9C788@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274B9E610();
  *a1 = result & 1;
  return result;
}

void sub_274B9C7DC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager_observers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v21 = MEMORY[0x277D84F90];
  while (v6)
  {
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_274B04B04(*(v3 + 48) + 40 * (v10 | (v8 << 6)), v25);
    v22[0] = v25[0];
    v22[1] = v25[1];
    v23 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA30);
    if (swift_dynamicCast() && v24)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBAF58();
        v21 = v14;
      }

      v11 = v21[2];
      v12 = v11 + 1;
      v13 = v24;
      if (v11 >= v21[3] >> 1)
      {
        sub_274BBAF58();
        v13 = v24;
        v12 = v11 + 1;
        v21 = v15;
      }

      v21[2] = v12;
      *&v21[2 * v11 + 4] = v13;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v16 = 0;
      v17 = v21[2];
      v18 = v21 + 5;
      while (v17 != v16)
      {
        if (v16 >= v21[2])
        {
          goto LABEL_22;
        }

        ++v16;
        v19 = *v18;
        ObjectType = swift_getObjectType();
        swift_getKeyPath();
        swift_getKeyPath();
        swift_unknownObjectRetain();
        sub_274BF2D64();

        *&v22[0] = *&v25[0];
        BYTE8(v22[0]) = BYTE8(v25[0]);
        (*(v19 + 8))(v1, v22, ObjectType, v19);
        swift_unknownObjectRelease();
        sub_274B03D34(*&v22[0], SBYTE8(v22[0]));
        v18 += 2;
      }

      return;
    }

    v6 = *(v3 + 56 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_274B9CAC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();
}

void sub_274B9CB3C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_274BF2D74();
  sub_274B9C7DC();
}

uint64_t sub_274B9CBDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_26(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9F0);
  OUTLINED_FUNCTION_6_14();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_5_16();
  return v5(v4);
}

uint64_t sub_274B9CD18@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  a2(0);
  OUTLINED_FUNCTION_0_2();
  v8 = *(v7 + 16);

  return v8(a3, v3 + v5, v6);
}

uint64_t sub_274B9CE0C(void *a1)
{
  v3 = sub_274BF2114();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274BF2164();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF2154();
  (*(v8 + 32))(v1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_id, v10, v7);
  v11 = [a1 logType];
  if (v11 == 17)
  {
    v12 = 4;
  }

  else if (v11 == 2)
  {
    v12 = 1;
  }

  else if (v11 == 16)
  {
    v12 = 3;
  }

  else if (v11 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(v1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_type) = v12;
  v13 = [a1 date];
  sub_274BF20C4();

  (*(v4 + 32))(v1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_date, v6, v3);
  v14 = sub_274B9BE2C(a1, &selRef_process);
  v16 = 0x6E776F6E6B6E55;
  if (v15)
  {
    v16 = v14;
  }

  v17 = 0xE700000000000000;
  if (v15)
  {
    v17 = v15;
  }

  v18 = (v1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_processName);
  *v18 = v16;
  v18[1] = v17;
  v19 = sub_274B9BE2C(a1, &selRef_category);
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v23 = (v1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_category);
  *v23 = v21;
  v23[1] = v22;
  v24 = sub_274B9BE2C(a1, &selRef_composedMessage);
  v26 = v25;

  if (v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v29 = (v1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_message);
  *v29 = v27;
  v29[1] = v28;
  return v1;
}

uint64_t sub_274B9D0BC()
{
  sub_274BF2164();
  OUTLINED_FUNCTION_3_22();
  sub_274B9E7C0(v0, v1);
  return sub_274BF4EA4();
}

uint64_t LogStreamManager.LogEvent.EventType.displayName(with:)()
{
  result = 0x6775626544;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 1868983881;
      break;
    case 3:
      OUTLINED_FUNCTION_11_11();
      sub_274B9DF14();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_11_11();
      sub_274B9DB00();
LABEL_6:
      v2 = sub_274BF5BE4();
      MEMORY[0x277C648E0](v2);

      MEMORY[0x277C648E0](41, 0xE100000000000000);
      result = v3;
      break;
    default:
      result = 0x746C7561666544;
      break;
  }

  return result;
}

uint64_t LogStreamManager.LogEvent.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_274BF5CD4();
  MEMORY[0x277C65580](v1);
  return sub_274BF5D44();
}

uint64_t LogStreamManager.LogEvent.deinit()
{
  v1 = OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_id;
  sub_274BF2164();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_date;
  sub_274BF2114();
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_274B9D3CC()
{
  sub_274BF5CD4();
  sub_274BF2164();
  OUTLINED_FUNCTION_3_22();
  sub_274B9E7C0(v0, v1);
  sub_274BF4EA4();
  return sub_274BF5D44();
}

uint64_t sub_274B9D4C4()
{
  sub_274BF5CD4();
  sub_274B9D0BC();
  return sub_274BF5D44();
}

uint64_t sub_274B9D528@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B9D580();
  *a1 = result;
  return result;
}

uint64_t sub_274B9D580()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t sub_274B9D5F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274B9D664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a7(v12);
}

uint64_t sub_274B9D744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_26(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9F8);
  OUTLINED_FUNCTION_6_14();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_5_16();
  return v5(v4);
}

uint64_t sub_274B9D82C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B9DB00();
  *a1 = result;
  return result;
}

void sub_274B9D880()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager_observers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_274B04B04(*(v3 + 48) + 40 * (v11 | (v8 << 6)), &v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA30);
    if (swift_dynamicCast() && v25)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBAF58();
        v9 = v15;
      }

      v12 = v9[2];
      v13 = v12 + 1;
      v14 = v25;
      if (v12 >= v9[3] >> 1)
      {
        v24 = v12 + 1;
        v16 = v9[2];
        sub_274BBAF58();
        v12 = v16;
        v14 = v25;
        v13 = v24;
        v9 = v17;
      }

      v9[2] = v13;
      *&v9[2 * v12 + 4] = v14;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v18 = 0;
      v19 = v9[2];
      v20 = v9 + 5;
      while (v19 != v18)
      {
        if (v18 >= v9[2])
        {
          goto LABEL_22;
        }

        ++v18;
        v21 = *v20;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_274B9DB00();
        (*(v21 + 16))(v1, v23, ObjectType, v21);
        swift_unknownObjectRelease();
        v20 += 2;
      }

      return;
    }

    v6 = *(v3 + 56 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_274B9DB58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA38);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_26(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00);
  OUTLINED_FUNCTION_6_14();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_5_16();
  return v5(v4);
}

uint64_t sub_274B9DC40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B9DF14();
  *a1 = result;
  return result;
}

void sub_274B9DC94()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager_observers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_274B04B04(*(v3 + 48) + 40 * (v11 | (v8 << 6)), &v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA30);
    if (swift_dynamicCast() && v25)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBAF58();
        v9 = v15;
      }

      v12 = v9[2];
      v13 = v12 + 1;
      v14 = v25;
      if (v12 >= v9[3] >> 1)
      {
        v24 = v12 + 1;
        v16 = v9[2];
        sub_274BBAF58();
        v12 = v16;
        v14 = v25;
        v13 = v24;
        v9 = v17;
      }

      v9[2] = v13;
      *&v9[2 * v12 + 4] = v14;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v18 = 0;
      v19 = v9[2];
      v20 = v9 + 5;
      while (v19 != v18)
      {
        if (v18 >= v9[2])
        {
          goto LABEL_22;
        }

        ++v18;
        v21 = *v20;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_274B9DF14();
        (*(v21 + 24))(v1, v23, ObjectType, v21);
        swift_unknownObjectRelease();
        v20 += 2;
      }

      return;
    }

    v6 = *(v3 + 56 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_274B9DF28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t sub_274B9DFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_274BF2D74();
  return a4(v5);
}

uint64_t sub_274B9E058(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_14_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_274BF2D34();
  return swift_endAccess();
}

uint64_t sub_274B9E0C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA38);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_26(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_4_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00);
  OUTLINED_FUNCTION_6_14();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_5_16();
  return v5(v4);
}

uint64_t sub_274B9E1AC()
{
  type metadata accessor for LogStreamManager(0);
  swift_allocObject();
  result = sub_274B9E248();
  qword_2815A36B8 = result;
  return result;
}

uint64_t static LogStreamManager.shared.getter()
{
  if (qword_2815A36B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_274B9E248()
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00);
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__state;
  v24 = 0;
  v25 = 3;
  sub_274BF2D24();
  (*(v9 + 32))(v0 + v12, v11, v8);
  *(v0 + OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager_observers) = MEMORY[0x277D84FA0];
  v13 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__logs;
  v24 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA28);
  sub_274BF2D24();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__faultCount;
  v24 = 0;
  sub_274BF2D24();
  v15 = *(v1 + 32);
  v16 = v23;
  v15(v0 + v14, v3, v23);
  v17 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__errorCount;
  v24 = 0;
  sub_274BF2D24();
  v15(v0 + v17, v3, v16);
  v18 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BF8D80;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000274C0C240;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  sub_274BF4E14();
  v20 = sub_274BF4DE4();

  [v18 registerDefaults_];

  return v0;
}