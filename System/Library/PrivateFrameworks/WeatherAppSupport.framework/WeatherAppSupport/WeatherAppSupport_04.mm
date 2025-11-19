uint64_t sub_220D2F780(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = sub_220DBE4E0();
    v4 = v3;
    swift_beginAccess();
    v5 = *(a1 + 24);
    *(a1 + 16) = v2;
    *(a1 + 24) = v4;
  }

  return v2;
}

uint64_t sub_220D2F814()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D2FB04(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v6 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = *a1;
  sub_220D32614(a2 + *(v6 + 20), v16, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v18 + 32))(v21, v16, v17);
    HIBYTE(v52) = v22;
    sub_220D3093C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v24 = MEMORY[0x277D83A80];
    *(v23 + 56) = MEMORY[0x277D839F8];
    *(v23 + 64) = v24;
    *(v23 + 32) = v25;
    v26 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v26, 0, 0, v27, v28, v29, v30, v31, v50, v51, v52, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8]);
    v33 = v32;
    v35 = v34;

    v36 = MEMORY[0x277D837D0];
    *(v23 + 96) = MEMORY[0x277D837D0];
    v37 = sub_220CEFDB0();
    *(v23 + 72) = v33;
    *(v23 + 80) = v35;
    *(v23 + 136) = v36;
    *(v23 + 144) = v37;
    v38 = v50;
    *(v23 + 104) = v37;
    *(v23 + 112) = v38;
    *(v23 + 120) = v51;

    v39 = sub_220DC05F0();

    (*(v18 + 8))(v21, v17);
  }

  else
  {
    sub_220D325BC(v16, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v40 = sub_220DBF410();
    __swift_project_value_buffer(v40, qword_27CF95F48);
    sub_220D32614(a2, v12, type metadata accessor for PrecipitationTotalStringAmount);
    v41 = sub_220DBF3F0();
    v42 = sub_220DC0980();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53[0] = v44;
      *v43 = 136446210;
      sub_220D32614(v12, v10, type metadata accessor for PrecipitationTotalStringAmount);
      v45 = sub_220DC0630();
      v47 = v46;
      sub_220D325BC(v12, type metadata accessor for PrecipitationTotalStringAmount);
      v48 = sub_220D3F210(v45, v47, v53);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_220CD1000, v41, v42, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x223D98FB0](v44, -1, -1);
      MEMORY[0x223D98FB0](v43, -1, -1);
    }

    else
    {

      sub_220D325BC(v12, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v39;
}

uint64_t sub_220D2FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a3;
  v96 = a4;
  v6 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v89 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v92 = &v88 - v11;
  MEMORY[0x28223BE20](v10);
  v91 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v88 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v88 - v21;
  v23 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v23, 0, 0, v24, v25, v26, v27, v28, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
  v94 = v29;
  v98 = v30;

  v31 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v31, 0, 0, v32, v33, v34, v35, v36, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
  v93 = v37;
  v97 = v38;

  v90 = v6;
  v39 = *(v6 + 20);
  v40 = *(v19 + 56);
  sub_220D32614(a2 + v39, v22, type metadata accessor for PrecipitationTotalStringAmount.Format);
  sub_220D32614(a1 + v39, &v22[v40], type metadata accessor for PrecipitationTotalStringAmount.Format);
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  LODWORD(v19) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v42 = EnumCaseMultiPayload;
  if (v19 == 1)
  {
    (*(v14 + 32))(v17, v22, v13);
    if (v42 == 1)
    {
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_220DC1CE0;
      sub_220DBE050();
      v44 = MEMORY[0x277D83A80];
      *(v43 + 56) = MEMORY[0x277D839F8];
      *(v43 + 64) = v44;
      *(v43 + 32) = v45;
      v46 = MEMORY[0x277D837D0];
      *(v43 + 96) = MEMORY[0x277D837D0];
      v47 = sub_220CEFDB0();
      v48 = v98;
      *(v43 + 72) = v94;
      *(v43 + 80) = v48;
      *(v43 + 136) = v46;
      *(v43 + 144) = v47;
      v49 = v93;
      *(v43 + 104) = v47;
      *(v43 + 112) = v49;
      *(v43 + 120) = v97;
      *(v43 + 176) = v46;
      *(v43 + 184) = v47;
      v50 = v96;
      *(v43 + 152) = v95;
      *(v43 + 160) = v50;

      v51 = sub_220DC05F0();

      v52 = *(v14 + 8);
      v52(v17, v13);
      v52(&v22[v40], v13);
      return v51;
    }

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_220DC1CE0;
    sub_220DBE050();
    v61 = MEMORY[0x277D83A80];
    *(v60 + 56) = MEMORY[0x277D839F8];
    *(v60 + 64) = v61;
    *(v60 + 32) = v62;
    v63 = MEMORY[0x277D837D0];
    *(v60 + 96) = MEMORY[0x277D837D0];
    v64 = sub_220CEFDB0();
    v65 = v98;
    *(v60 + 72) = v94;
    *(v60 + 80) = v65;
    *(v60 + 136) = v63;
    *(v60 + 144) = v64;
    v66 = v93;
    *(v60 + 104) = v64;
    *(v60 + 112) = v66;
    *(v60 + 120) = v97;
    *(v60 + 176) = v63;
    *(v60 + 184) = v64;
    v67 = v96;
    *(v60 + 152) = v95;
    *(v60 + 160) = v67;

    v51 = sub_220DC05F0();

    (*(v14 + 8))(v17, v13);
    v59 = &v22[v40];
LABEL_13:
    sub_220D325BC(v59, type metadata accessor for PrecipitationTotalStringAmount.Format);
    return v51;
  }

  if (EnumCaseMultiPayload == 1)
  {
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_220DC1CC0;
    v54 = MEMORY[0x277D837D0];
    *(v53 + 56) = MEMORY[0x277D837D0];
    v55 = sub_220CEFDB0();
    v56 = v98;
    *(v53 + 32) = v94;
    *(v53 + 40) = v56;
    *(v53 + 96) = v54;
    *(v53 + 104) = v55;
    v57 = v93;
    *(v53 + 64) = v55;
    *(v53 + 72) = v57;
    *(v53 + 80) = v97;
    *(v53 + 136) = v54;
    *(v53 + 144) = v55;
    v58 = v96;
    *(v53 + 112) = v95;
    *(v53 + 120) = v58;

    v51 = sub_220DC05F0();

    (*(v14 + 8))(&v22[v40], v13);
    v59 = v22;
    goto LABEL_13;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v68 = sub_220DBF410();
  __swift_project_value_buffer(v68, qword_27CF95F48);
  v69 = a2;
  v70 = v91;
  sub_220D32614(v69, v91, type metadata accessor for PrecipitationTotalStringAmount);
  v71 = v92;
  sub_220D32614(a1, v92, type metadata accessor for PrecipitationTotalStringAmount);
  v72 = sub_220DBF3F0();
  v73 = sub_220DC0980();
  v98 = v72;
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    LODWORD(v96) = v73;
    v75 = v74;
    v97 = swift_slowAlloc();
    v99 = v97;
    *v75 = 136446466;
    v76 = v89;
    sub_220D32614(v70, v89, type metadata accessor for PrecipitationTotalStringAmount);
    v77 = sub_220DC0630();
    v79 = v78;
    sub_220D325BC(v70, type metadata accessor for PrecipitationTotalStringAmount);
    v80 = sub_220D3F210(v77, v79, &v99);

    *(v75 + 4) = v80;
    *(v75 + 12) = 2082;
    sub_220D32614(v71, v76, type metadata accessor for PrecipitationTotalStringAmount);
    v81 = sub_220DC0630();
    v83 = v82;
    sub_220D325BC(v71, type metadata accessor for PrecipitationTotalStringAmount);
    v84 = sub_220D3F210(v81, v83, &v99);

    *(v75 + 14) = v84;
    v85 = v98;
    _os_log_impl(&dword_220CD1000, v98, v96, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v75, 0x16u);
    v86 = v97;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v86, -1, -1);
    MEMORY[0x223D98FB0](v75, -1, -1);
  }

  else
  {

    sub_220D325BC(v71, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D325BC(v70, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v22);
  return 0;
}

uint64_t sub_220D3093C()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D30BD0(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D30F00(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D31230(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D315CC(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D318FC(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D31C2C(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D31F5C(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D3228C(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D325BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220D32614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_220D32674()
{
  type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence();
  if (v0 <= 0x3F)
  {
    sub_220D261B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t VisibilityDustRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for VisibilityDustRule(_BYTE *result, int a2, int a3)
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

uint64_t VisibilitySmokeRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for VisibilitySmokeRule(_BYTE *result, int a2, int a3)
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

uint64_t VisibilityFogRule.description(for:data:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v12 - v6;
  v8 = [objc_opt_self() meters];
  sub_220DBE130();

  sub_220DBE050();
  v10 = v9;
  (*(v3 + 8))(v7, v0);
  if (v10 < 50.0)
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v10 >= 200.0)
  {
    if (v10 >= 500.0)
    {
      if (v10 >= 1000.0)
      {
        if (qword_280FA6600 == -1)
        {
          goto LABEL_6;
        }
      }

      else if (qword_280FA6600 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_280FA6600 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_10();
  }

LABEL_6:
  OUTLINED_FUNCTION_2_0();
  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for VisibilityFogRule(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for VisibilityFallbackRule(_BYTE *result, int a2, int a3)
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

uint64_t VisibilityHazeRule.description(for:data:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v13 - v6;
  v8 = [objc_opt_self() kilometers];
  sub_220DBE130();

  sub_220DBE050();
  v10 = v9;
  (*(v3 + 8))(v7, v0);
  if (v10 <= 2.0 || v10 >= 4.0)
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_9;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_9:
    OUTLINED_FUNCTION_10();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for VisibilityHazeRule(_BYTE *result, int a2, int a3)
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

uint64_t Precipitation.chartColor.getter()
{
  v0 = sub_220DBEC20();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = OUTLINED_FUNCTION_1_20(v6, v19);
  v8(v7);
  v9 = *(v3 + 88);
  v10 = OUTLINED_FUNCTION_5_13();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277CE3390] || v12 == *MEMORY[0x277CE3388])
  {
    return sub_220DBFEE0();
  }

  if (v12 == *MEMORY[0x277CE33A8])
  {
    return sub_220DBFF00();
  }

  if (v12 == *MEMORY[0x277CE3398])
  {
    return sub_220DBFEB0();
  }

  if (v12 == *MEMORY[0x277CE33B0])
  {
    return sub_220DBFEA0();
  }

  if (v12 != *MEMORY[0x277CE33A0])
  {
    v14 = sub_220DBFEE0();
    v16 = *(v3 + 8);
    v17 = OUTLINED_FUNCTION_5_13();
    v18(v17);
    return v14;
  }

  return sub_220DBFEF0();
}

uint64_t Precipitation.chartColorAccessibilityDescription.getter()
{
  v0 = sub_220DBEC20();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = OUTLINED_FUNCTION_1_20(v6, v18);
  v8(v7);
  v9 = *(v3 + 88);
  v10 = OUTLINED_FUNCTION_5_13();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277CE3390] || v12 == *MEMORY[0x277CE3388])
  {
    return 0;
  }

  if (v12 != *MEMORY[0x277CE33A8])
  {
    if (v12 == *MEMORY[0x277CE3398])
    {
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    if (v12 == *MEMORY[0x277CE33B0])
    {
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

LABEL_21:
      OUTLINED_FUNCTION_10();
      goto LABEL_15;
    }

    if (v12 == *MEMORY[0x277CE33A0])
    {
      if (qword_280FA6600 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

    v15 = *(v3 + 8);
    v16 = OUTLINED_FUNCTION_5_13();
    v17(v16);
    return 0;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_20:
    OUTLINED_FUNCTION_10();
  }

LABEL_9:
  OUTLINED_FUNCTION_3_15();
LABEL_15:
  OUTLINED_FUNCTION_6_0();
  return sub_220DBE240();
}

uint64_t sub_220D33494@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  result = sub_220DBF200();
  if (v7)
  {
    a2[3] = &type metadata for PrecipitationEventCalculator;
    a2[4] = &protocol witness table for PrecipitationEventCalculator;
    v5 = swift_allocObject();
    *a2 = v5;
    return sub_220CD570C(&v6, v5 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220D33544@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  result = sub_220DBF200();
  if (v11)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A80, &unk_220DC4400);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = sub_220DBF280();
    a2[3] = &type metadata for DetailChartDataPointValueCalculator;
    a2[4] = &protocol witness table for DetailChartDataPointValueCalculator;
    v9 = swift_allocObject();
    *a2 = v9;
    result = sub_220CD570C(&v10, v9 + 16);
    *(v9 + 56) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220D33624@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A68, &qword_220DC43E8);
  result = sub_220DBF200();
  if (v11)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A78, &qword_220DC43F8);
    result = sub_220DBF1F0();
    if (result)
    {
      v7 = result;
      v8 = type metadata accessor for DetailChartSeriesValuesCalculator();
      v9 = swift_allocObject();
      result = sub_220CD570C(&v10, v9 + 16);
      *(v9 + 56) = v7;
      a2[3] = v8;
      a2[4] = &off_2834754B0;
      *a2 = v9;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void TemperatureFeelsLikeChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)(uint64_t a1@<X0>, void **a2@<X1>, void (*a3)(uint64_t, void, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v190 = a3;
  v215 = a1;
  v217 = a4;
  v5 = sub_220DBE260();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1_21();
  v189 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v184 - v10;
  v208 = sub_220DBF310();
  v12 = OUTLINED_FUNCTION_0(v208);
  v191 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_21();
  v210 = v16;
  OUTLINED_FUNCTION_6_1();
  v17 = sub_220DBEBA0();
  v18 = OUTLINED_FUNCTION_0(v17);
  v204 = v19;
  v205 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_21();
  v213 = v22;
  OUTLINED_FUNCTION_6_1();
  v23 = sub_220DC02E0();
  v24 = OUTLINED_FUNCTION_0(v23);
  v202 = v25;
  v203 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_21();
  v201 = v28;
  OUTLINED_FUNCTION_6_1();
  v199 = sub_220DBE1C0();
  v29 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_1_21();
  v198 = v30;
  OUTLINED_FUNCTION_6_1();
  v211 = sub_220DC0300();
  v31 = OUTLINED_FUNCTION_0(v211);
  v216 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_21();
  v195 = v35;
  OUTLINED_FUNCTION_6_1();
  v194 = sub_220DC0A00();
  v36 = OUTLINED_FUNCTION_0(v194);
  v193 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_21();
  v192 = v40;
  OUTLINED_FUNCTION_6_1();
  v218 = sub_220DC0A40();
  v41 = OUTLINED_FUNCTION_0(v218);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1();
  v48 = (v47 - v46);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v49 = OUTLINED_FUNCTION_0(v196);
  v197 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  v54 = v184 - v53;
  v212 = sub_220DBE210();
  v55 = OUTLINED_FUNCTION_0(v212);
  v200 = v56;
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v55);
  v209 = (v184 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v59);
  v219 = v184 - v61;
  OUTLINED_FUNCTION_6_1();
  v62 = sub_220DBEAD0();
  v63 = OUTLINED_FUNCTION_0(v62);
  v206 = v64;
  v207 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_1_21();
  v214 = v67;
  v68 = OUTLINED_FUNCTION_6_1();
  v69 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(v68);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_1();
  v73 = v72 - v71;
  v74 = sub_220DBE830();
  v75 = OUTLINED_FUNCTION_0(v74);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_1();
  v82 = v81 - v80;
  v83 = *a2;
  sub_220D34C0C(v215, v73);
  if (swift_getEnumCaseMultiPayload())
  {
    v215 = v43;
    v84 = v217;
    (*(v77 + 4))(v82, v73, v74);
    sub_220CEF48C(v190, v11);
    v85 = v208;
    if (__swift_getEnumTagSinglePayload(v11, 1, v208) == 1)
    {
      (*(v77 + 1))(v82, v74);
      sub_220CEF4FC(v11);
      if (qword_27CF94F50 != -1)
      {
        swift_once();
      }

      v86 = sub_220DBF410();
      __swift_project_value_buffer(v86, qword_27CF95F78);
      v87 = sub_220DBF3F0();
      v88 = sub_220DC0980();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_220CD1000, v87, v88, "Failed to create chart header for Feels Like due to missing extrema values", v89, 2u);
        MEMORY[0x223D98FB0](v89, -1, -1);
      }

      sub_220DBE250();
      sub_220DBE220();
      v90 = type metadata accessor for ConditionDetailChartHeaderStringModel();
      __swift_storeEnumTagSinglePayload(v84 + v90[5], 1, 1, v212);
      OUTLINED_FUNCTION_7_10(v90[6]);
      *(v84 + v90[7]) = xmmword_220DC17B0;
      OUTLINED_FUNCTION_7_10(v90[8]);
      OUTLINED_FUNCTION_7_10(v90[11]);
      *(v84 + v90[9]) = 0;
      v91 = (v84 + v90[10]);
      *v91 = 0;
      v91[1] = 0xE000000000000000;
      v92 = v90[12];
    }

    else
    {
      v191[4](v210, v11, v85);
      sub_220DBE750();
      (*(v77 + 1))(v82, v74);
      sub_220DBF2F0();
      v214 = sub_220D287C0();
      v189 = v83;
      v185 = v54;
      sub_220DBE040();
      v139 = v48;
      sub_220DC02B0();
      v140 = v192;
      sub_220DC0A20();
      v141 = *(v215 + 8);
      v215 += 8;
      v207 = v141;
      v141(v139, v218);
      LODWORD(v206) = *MEMORY[0x277D7B408];
      v142 = v216;
      v143 = *(v216 + 104);
      v184[1] = v216 + 104;
      v190 = v143;
      v144 = v195;
      v145 = v211;
      v143(v195);
      v188 = sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_3_16();
      v187 = sub_220D34CA0(v146, v147);
      v148 = v196;
      v149 = v194;
      v150 = v185;
      sub_220DBE0A0();

      v186 = *(v142 + 8);
      v216 = v142 + 8;
      v186(v144, v145);
      v193 = *(v193 + 8);
      (v193)(v140, v149);
      v197 = *(v197 + 8);
      (v197)(v150, v148);
      sub_220DBF300();
      v151 = v189;
      sub_220DBE040();
      sub_220DC02B0();
      sub_220DC0A20();
      v207(v139, v218);
      v152 = v211;
      v190(v144, v206, v211);
      sub_220DBF0D0();
      sub_220DBE0A0();

      v186(v144, v152);
      (v193)(v140, v149);
      (v197)(v150, v148);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      v215 = qword_280FA6608;
      OUTLINED_FUNCTION_8_9();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v153 = swift_allocObject();
      *(v153 + 16) = xmmword_220DC17C0;
      sub_220DBE1B0();
      OUTLINED_FUNCTION_4_12();
      sub_220D34CA0(v154, v155);
      v156 = sub_220DC06C0();
      v158 = v157;
      v159 = MEMORY[0x277D837D0];
      *(v153 + 56) = MEMORY[0x277D837D0];
      v160 = sub_220CEFDB0();
      *(v153 + 64) = v160;
      *(v153 + 32) = v156;
      *(v153 + 40) = v158;
      sub_220DBE1B0();
      v161 = sub_220DC06C0();
      *(v153 + 96) = v159;
      *(v153 + 104) = v160;
      *(v153 + 72) = v161;
      *(v153 + 80) = v162;
      v218 = sub_220DC05F0();
      v216 = v163;

      v164 = v200;
      v165 = *(v200 + 16);
      v84 = v217;
      v166 = v212;
      v165(v217, v219, v212);
      v167 = type metadata accessor for ConditionDetailChartHeaderStringModel();
      v168 = v167[5];
      v169 = v209;
      v165(v84 + v168, v209, v166);
      __swift_storeEnumTagSinglePayload(v84 + v168, 0, 1, v166);
      v184[0] = 0x8000000220DEA200;
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      v170 = sub_220DC05F0();
      v215 = v171;

      v172 = v201;
      v173 = v213;
      sub_220DBEB70();
      v174 = sub_220DC02D0();
      v176 = v175;
      (*(v202 + 8))(v172, v203);
      v177 = *(v164 + 8);
      v177(v169, v166);
      v177(v219, v166);
      (*(v204 + 8))(v173, v205);
      (v191[1])(v210, v208);
      OUTLINED_FUNCTION_7_10(v167[6]);
      v178 = (v84 + v167[7]);
      v179 = v215;
      *v178 = v170;
      v178[1] = v179;
      OUTLINED_FUNCTION_7_10(v167[8]);
      v180 = (v84 + v167[11]);
      *v180 = v174;
      v180[1] = v176;
      *(v84 + v167[9]) = 0;
      v181 = (v84 + v167[10]);
      v182 = v216;
      *v181 = v218;
      v181[1] = v182;
      v92 = v167[12];
    }

    v183 = (v84 + v92);
    v183[2] = 0u;
    v183[3] = 0u;
    *v183 = 0u;
    v183[1] = 0u;
  }

  else
  {
    v209 = v77;
    v210 = v74;
    v208 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
    (*(v206 + 32))(v214, v73, v207);
    sub_220DBE9D0();
    sub_220DC02B0();
    v93 = v192;
    sub_220DC0A20();
    v94 = *(v43 + 8);
    v215 = v43 + 8;
    v191 = v94;
    (v94)(v48, v218);
    LODWORD(v190) = *MEMORY[0x277D7B408];
    v95 = v216;
    v189 = *(v216 + 104);
    v96 = v195;
    v186 = v48;
    v97 = v211;
    (v189)(v195);
    v187 = sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_3_16();
    sub_220D34CA0(v98, v99);
    v100 = v196;
    v101 = v194;
    sub_220DBE0A0();

    v188 = *(v95 + 8);
    v188(v96, v97);
    (*(v193 + 8))(v93, v101);
    v194 = *(v197 + 8);
    v194(v54, v100);
    sub_220DBE9B0();
    v102 = v186;
    sub_220DC02B0();
    (v189)(v96, v190, v97);
    sub_220DBF0D0();
    sub_220D34CA0(&qword_280FA6610, MEMORY[0x277D7B508]);
    v103 = v102;
    v104 = v218;
    v216 = sub_220DBE0B0();
    v197 = v105;

    v188(v96, v97);
    (v191)(v103, v104);
    v194(v54, v100);
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v211 = qword_280FA6608;
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_11();
    sub_220DBE240();
    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_220DC17C0;
    v107 = v219;
    sub_220DBE1B0();
    OUTLINED_FUNCTION_4_12();
    sub_220D34CA0(v108, v109);
    v110 = sub_220DC06C0();
    v112 = v111;
    v113 = MEMORY[0x277D837D0];
    *(v106 + 56) = MEMORY[0x277D837D0];
    v114 = sub_220CEFDB0();
    *(v106 + 32) = v110;
    *(v106 + 40) = v112;
    *(v106 + 96) = v113;
    *(v106 + 104) = v114;
    v115 = v216;
    *(v106 + 64) = v114;
    *(v106 + 72) = v115;
    v116 = v197;
    *(v106 + 80) = v197;

    v218 = sub_220DC05F0();
    v215 = v117;

    v118 = v200;
    v119 = v217;
    v120 = v107;
    v121 = v212;
    (*(v200 + 16))(v217, v120, v212);
    v122 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    __swift_storeEnumTagSinglePayload(v119 + v122[5], 1, 1, v121);
    v184[0] = 0x8000000220DEA5F0;
    OUTLINED_FUNCTION_11();
    sub_220DBE240();
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_220DC17A0;
    *(v123 + 56) = MEMORY[0x277D837D0];
    *(v123 + 64) = v114;
    *(v123 + 32) = v115;
    *(v123 + 40) = v116;
    v216 = sub_220DC05F0();
    v125 = v124;

    v127 = v213;
    v126 = v214;
    sub_220DBEAC0();
    sub_220DBE990();
    v128 = v201;
    sub_220DBEB70();
    (*(v204 + 8))(v127, v205);
    v129 = sub_220DC02D0();
    v131 = v130;
    (*(v202 + 8))(v128, v203);
    (*(v118 + 8))(v219, v121);
    (*(v206 + 8))(v126, v207);
    v132 = (v119 + v122[6]);
    *v132 = 0;
    v132[1] = 0;
    v133 = (v119 + v122[7]);
    *v133 = v216;
    v133[1] = v125;
    v134 = (v119 + v122[8]);
    *v134 = 0;
    v134[1] = 0;
    v135 = (v119 + v122[11]);
    *v135 = v129;
    v135[1] = v131;
    *(v119 + v122[9]) = 0;
    v136 = (v119 + v122[10]);
    v137 = v215;
    *v136 = v218;
    v136[1] = v137;
    v138 = v119 + v122[12];
    *v138 = 0xD000000000000019;
    *(v138 + 8) = 0x8000000220DEA620;
    *(v138 + 16) = 0u;
    *(v138 + 32) = 0u;
    *(v138 + 48) = 0xD000000000000020;
    *(v138 + 56) = 0x8000000220DEA640;
    v209[1](v208, v210);
  }
}

uint64_t sub_220D34C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D34CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220D34D38(uint64_t a1, uint64_t a2)
{
  if ((sub_220DBE460() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PressureChartHeaderStringBuilder.CacheKey();
  if ((MEMORY[0x223D96350](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  sub_220CD8184(0, &qword_27CF95530, 0x277D82BB8);
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  return sub_220DC0AB0() & 1;
}

uint64_t sub_220D34DC8()
{
  v1 = v0;
  sub_220DBE560();
  sub_220D37234(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  v2 = type metadata accessor for PressureChartHeaderStringBuilder.CacheKey();
  v3 = *(v2 + 20);
  sub_220DBE740();
  sub_220D37234(&qword_27CF94FE8, MEMORY[0x277CC9A70]);
  sub_220DC0560();
  v4 = *(v1 + *(v2 + 24));
  return sub_220DC0AC0();
}

uint64_t sub_220D34EC0()
{
  v1 = v0;
  sub_220DC0CE0();
  sub_220DBE560();
  sub_220D37234(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  v2 = type metadata accessor for PressureChartHeaderStringBuilder.CacheKey();
  v3 = *(v2 + 20);
  sub_220DBE740();
  sub_220D37234(&qword_27CF94FE8, MEMORY[0x277CC9A70]);
  sub_220DC0560();
  v4 = *(v1 + *(v2 + 24));
  sub_220DC0AC0();
  return sub_220DC0D20();
}

uint64_t sub_220D34FD0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_220DC0CE0();
  sub_220DBE560();
  sub_220D37234(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  v5 = *(a2 + 20);
  sub_220DBE740();
  sub_220D37234(&qword_27CF94FE8, MEMORY[0x277CC9A70]);
  sub_220DC0560();
  v6 = *(v4 + *(a2 + 24));
  sub_220DC0AC0();
  return sub_220DC0D20();
}

uint64_t PressureChartHeaderStringBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A98, &qword_220DC4470);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_220DBF280();
  return v0;
}

uint64_t PressureChartHeaderStringBuilder.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A98, &qword_220DC4470);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_220DBF280();
  return v0;
}

double PressureChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v223 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AA0, &qword_220DC4478);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4();
  v211 = v7 - v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v9);
  v216 = &v203 - v10;
  OUTLINED_FUNCTION_6_1();
  v215 = type metadata accessor for PressureChartHeaderStringBuilder.CacheKey();
  v11 = OUTLINED_FUNCTION_6(v215);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v210 = v14 - v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  v18 = &v203 - v17;
  v19 = sub_220DBE260();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_1_21();
  v222 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v221 = &v203 - v24;
  OUTLINED_FUNCTION_6_1();
  v25 = sub_220DBEC50();
  v26 = OUTLINED_FUNCTION_0(v25);
  v213 = v27;
  v214 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_21();
  v212 = v30;
  OUTLINED_FUNCTION_6_1();
  v230 = sub_220DC0300();
  v31 = OUTLINED_FUNCTION_0(v230);
  v232 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_21();
  v227 = v35;
  OUTLINED_FUNCTION_6_1();
  v225 = sub_220DC09B0();
  v36 = OUTLINED_FUNCTION_0(v225);
  v233 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4();
  v42 = (v40 - v41);
  MEMORY[0x28223BE20](v43);
  v45 = &v203 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v47 = OUTLINED_FUNCTION_0(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4();
  v231 = v52 - v53;
  OUTLINED_FUNCTION_23();
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v203 - v56;
  MEMORY[0x28223BE20](v55);
  v226 = &v203 - v58;
  OUTLINED_FUNCTION_6_1();
  v59 = sub_220DBEAD0();
  v60 = OUTLINED_FUNCTION_0(v59);
  v218 = v61;
  v219 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_1_21();
  v224 = v64;
  v65 = OUTLINED_FUNCTION_6_1();
  v66 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(v65);
  v67 = OUTLINED_FUNCTION_6(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  v71 = &v203 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(a2 + 8);
  sub_220D36A4C(a1, v71, type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v229 = v46;
  if (EnumCaseMultiPayload)
  {
    v226 = v42;
    v220 = v45;
    v228 = v49;
    v74 = sub_220DBE830();
    OUTLINED_FUNCTION_6(v74);
    (*(v75 + 8))(v71);
    v76 = type metadata accessor for ConditionDetailChartHeaderInput(0);
    v77 = v76[7];
    v78 = sub_220DBE560();
    OUTLINED_FUNCTION_6(v78);
    v80 = a1;
    (*(v79 + 16))(v18, a1 + v77);
    v81 = v76[8];
    v82 = v18;
    v83 = v46;
    v84 = v215;
    v85 = *(v215 + 5);
    v86 = sub_220DBE740();
    OUTLINED_FUNCTION_6(v86);
    v88 = v82 + v85;
    v89 = v83;
    (*(v87 + 16))(v88, v80 + v81);
    *(v82 + *(v84 + 24)) = v72;
    v90 = v217;
    v91 = *(v217 + 2);
    v92 = v72;

    v93 = v216;
    sub_220DBF290();

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, 1, v89);
    v209 = v82;
    if (EnumTagSinglePayload == 1)
    {
      sub_220CDA548(v93, &qword_27CF95AA0, &qword_220DC4478);
      v95 = (v80 + v77);
      v96 = v80 + v76[6];
      v97 = v231;
      sub_220D36418(v95, v92, v231);
      v98 = *(v90 + 2);
      sub_220D36A4C(v82, v210, type metadata accessor for PressureChartHeaderStringBuilder.CacheKey);
      v99 = v211;
      (*(v228 + 16))(v211, v97, v89);
      __swift_storeEnumTagSinglePayload(v99, 0, 1, v89);

      sub_220DBF2A0();
    }

    else
    {
      (*(v228 + 32))(v231, v93, v89);
    }

    v155 = v226;
    v156 = v220;
    sub_220DC0290();
    sub_220DC09A0();
    v157 = v233 + 8;
    v158 = *(v233 + 8);
    v159 = v225;
    v158(v156, v225);
    v160 = v232;
    v161 = *(v232 + 104);
    v162 = v227;
    LODWORD(v226) = *MEMORY[0x277D7B408];
    v163 = v230;
    v224 = v232 + 104;
    v219 = v161;
    v161(v227);
    v218 = sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_4_13();
    v166 = sub_220D37234(v164, v165);
    v167 = v229;
    v216 = v166;
    v215 = sub_220DBE0B0();
    v169 = v168;

    v170 = *(v160 + 8);
    v232 = v160 + 8;
    v213 = v170;
    v170(v162, v163);
    v171 = v159;
    v233 = v157;
    v217 = v158;
    v158(v155, v159);
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v212 = qword_280FA6608;
    OUTLINED_FUNCTION_2_0();
    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v172 = swift_allocObject();
    *(v172 + 16) = xmmword_220DC17A0;
    *(v172 + 56) = MEMORY[0x277D837D0];
    *(v172 + 64) = sub_220CEFDB0();
    *(v172 + 32) = v215;
    *(v172 + 40) = v169;
    v173 = sub_220DC05F0();
    v214 = v174;
    v215 = v173;

    sub_220DC0860();
    v208 = sub_220DBE5E0();
    v175 = v221;
    v176 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v176, v177, v178, v179);
    v180 = v220;
    sub_220DC02A0();

    sub_220CDA548(v175, &qword_27CF95228, &unk_220DC1E60);
    v181 = v227;
    v182 = v230;
    v219(v227, v226, v230);
    sub_220DBF0D0();
    v211 = sub_220DBE0B0();
    v210 = v183;

    v184 = v213;
    v213(v181, v182);
    v185 = v217;
    v217(v180, v171);
    sub_220DC0850();
    v186 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v186, v187, v188, v208);
    sub_220DC02A0();

    sub_220CDA548(v175, &qword_27CF95228, &unk_220DC1E60);
    v219(v181, v226, v182);
    sub_220DBF0D0();
    sub_220DBE0B0();

    v184(v181, v182);
    v185(v180, v171);
    OUTLINED_FUNCTION_2_0();
    v189 = sub_220DBE240();
    v191 = v190;
    sub_220DBE250();
    v192 = v223;
    sub_220DBE220();
    v193 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    v194 = v193[5];

    sub_220DBE250();
    sub_220DBE220();

    (*(v228 + 8))(v231, v167);
    sub_220D3706C(v209);
    v195 = sub_220DBE210();
    __swift_storeEnumTagSinglePayload(v192 + v194, 0, 1, v195);
    v196 = (v192 + v193[6]);
    *v196 = 0;
    v196[1] = 0;
    v197 = (v192 + v193[7]);
    *v197 = v189;
    v197[1] = v191;
    v198 = (v192 + v193[8]);
    *v198 = 0;
    v198[1] = 0;
    v199 = (v192 + v193[11]);
    *v199 = 0;
    v199[1] = 0;
    *(v192 + v193[9]) = 0;
    v200 = (v192 + v193[10]);
    v201 = v214;
    *v200 = v215;
    v200[1] = v201;
    v202 = (v192 + v193[12]);
    result = 0.0;
    v202[2] = 0u;
    v202[3] = 0u;
    *v202 = 0u;
    v202[1] = 0u;
  }

  else
  {
    v209 = &v71[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48)];
    (*(v218 + 32))(v224, v71, v219);
    sub_220DBEAB0();
    sub_220DBE130();
    v100 = *(v49 + 8);
    v228 = v49 + 8;
    v208 = v100;
    v100(v57, v46);
    sub_220DC0290();
    sub_220DC09A0();
    v101 = v233 + 8;
    v102 = *(v233 + 8);
    v103 = v225;
    v102(v45, v225);
    v104 = v232;
    v105 = *(v232 + 104);
    v106 = v227;
    LODWORD(v217) = *MEMORY[0x277D7B408];
    v107 = v230;
    v215 = v105;
    v216 = (v232 + 104);
    v105(v227);
    v211 = sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_4_13();
    v210 = sub_220D37234(v108, v109);
    v204 = sub_220DBE0B0();
    v203 = v110;

    v111 = *(v104 + 8);
    v232 = v104 + 8;
    v206 = v111;
    v111(v106, v107);
    v233 = v101;
    v207 = v102;
    v102(v42, v103);
    v112 = v212;
    sub_220DBE9C0();
    v231 = sub_220DBEC30();
    v114 = v113;
    (*(v213 + 1))(v112, v214);
    v115 = v45;
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_2_0();
    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_220DC17C0;
    v117 = MEMORY[0x277D837D0];
    *(v116 + 56) = MEMORY[0x277D837D0];
    v118 = sub_220CEFDB0();
    v119 = v203;
    *(v116 + 32) = v204;
    *(v116 + 40) = v119;
    *(v116 + 96) = v117;
    *(v116 + 104) = v118;
    v120 = v231;
    *(v116 + 64) = v118;
    *(v116 + 72) = v120;
    v205 = v114;
    *(v116 + 80) = v114;

    v121 = sub_220DC05F0();
    v213 = v122;
    v214 = v121;

    sub_220DC0860();
    v123 = sub_220DBE5E0();
    v124 = v221;
    v125 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v125, v126, v127, v123);
    sub_220DC02A0();

    sub_220CDA548(v124, &qword_27CF95228, &unk_220DC1E60);
    v128 = v230;
    (v215)(v106, v217, v230);
    sub_220DBF0D0();
    v129 = v225;
    v212 = sub_220DBE0B0();
    v204 = v130;

    v131 = v206;
    v206(v106, v128);
    v132 = v45;
    v133 = v106;
    v134 = v207;
    v207(v132, v129);
    sub_220DC0850();
    v135 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v123);
    sub_220DC02A0();

    sub_220CDA548(v124, &qword_27CF95228, &unk_220DC1E60);
    (v215)(v133, v217, v128);
    sub_220DBF0D0();
    v138 = v229;
    v139 = v226;
    v221 = sub_220DBE0B0();

    v131(v133, v128);
    v134(v115, v129);
    sub_220DBE250();
    v140 = v223;
    sub_220DBE220();
    v141 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    v142 = v141[5];

    sub_220DBE250();
    sub_220DBE220();

    v208(v139, v138);
    (*(v218 + 8))(v224, v219);
    v143 = sub_220DBE210();
    __swift_storeEnumTagSinglePayload(v140 + v142, 0, 1, v143);
    v144 = (v140 + v141[6]);
    *v144 = 0;
    v144[1] = 0;
    v145 = (v140 + v141[7]);
    v146 = v205;
    *v145 = v231;
    v145[1] = v146;
    v147 = (v140 + v141[8]);
    *v147 = 0;
    v147[1] = 0;
    v148 = (v140 + v141[11]);
    *v148 = 0;
    v148[1] = 0;
    *(v140 + v141[9]) = 0;
    v149 = (v140 + v141[10]);
    v150 = v213;
    *v149 = v214;
    v149[1] = v150;
    v151 = (v140 + v141[12]);
    v152 = sub_220DBE830();
    *v151 = 0u;
    v151[1] = 0u;
    v151[2] = 0u;
    v151[3] = 0u;
    OUTLINED_FUNCTION_6(v152);
    (*(v153 + 8))(v209);
  }

  return result;
}

uint64_t type metadata accessor for PressureChartHeaderStringBuilder.CacheKey()
{
  result = qword_27CF95AA8;
  if (!qword_27CF95AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D36418@<X0>(void (*a1)(char *, unint64_t, uint64_t)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v65 = a2;
  v59 = a1;
  v55 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v57 = *(v61 - 8);
  v3 = *(v57 + 64);
  v4 = MEMORY[0x28223BE20](v61);
  v64 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = v50 - v6;
  v62 = sub_220DBE960();
  v66 = *(v62 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v9 = *(v58 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v58);
  v12 = v50 - v11;
  v13 = sub_220DBE6E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_220DBE560();
  v54 = *(v18 - 8);
  v19 = *(v54 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v50 - v23;
  sub_220DBE480();
  sub_220DBE600();
  sub_220DBE320();
  (*(v14 + 8))(v17, v13);
  (*(v9 + 16))(v12, v67, v58);
  v69 = v24;
  v70 = v22;
  v25 = sub_220CE5008(sub_220D3727C, v68);
  v26 = *(v25 + 16);
  if (v26)
  {
    v51 = v24;
    v52 = v22;
    v53 = v18;
    v71 = MEMORY[0x277D84F90];
    sub_220CFB704(0, v26, 0);
    v27 = v71;
    v59 = *(v66 + 16);
    v28 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v50[1] = v25;
    v29 = v25 + v28;
    v30 = *(v66 + 72);
    v57 += 8;
    v58 = v30;
    v56 = (v66 + 8);
    v50[2] = v26;
    v66 += 16;
    v31 = v61;
    v32 = v57;
    do
    {
      v67 = v27;
      v33 = v60;
      v34 = v62;
      v59(v60, v29, v62);
      v35 = v64;
      sub_220DBE940();
      v36 = v63;
      sub_220DBE130();
      v37 = *v32;
      (*v32)(v35, v31);
      sub_220DBE050();
      v39 = v38;
      v37(v36, v31);
      v40 = v33;
      v27 = v67;
      (*v56)(v40, v34);
      v71 = v27;
      v42 = *(v27 + 16);
      v41 = *(v27 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_220CFB704((v41 > 1), v42 + 1, 1);
        v27 = v71;
      }

      *(v27 + 16) = v42 + 1;
      *(v27 + 8 * v42 + 32) = v39;
      v29 += v58;
      --v26;
    }

    while (v26);

    v18 = v53;
    v22 = v52;
    v24 = v51;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v43 = *(v27 + 16);
  if (v43)
  {
    v44 = (v27 + 32);
    v45 = 0.0;
    do
    {
      v46 = *v44++;
      v45 = v45 + v46;
      --v43;
    }

    while (v43);
  }

  sub_220CD8184(0, &qword_27CF956B0, 0x277CCAE38);
  v47 = v65;
  sub_220DBE040();
  v48 = *(v54 + 8);
  v48(v22, v18);
  return (v48)(v24, v18);
}

uint64_t sub_220D36A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D36AAC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v81 = a1;
  v82 = a2;
  v70 = a3;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v3 = OUTLINED_FUNCTION_0(v77);
  v72 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v80 = v7 - v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v9);
  v79 = v65 - v10;
  OUTLINED_FUNCTION_6_1();
  v78 = sub_220DBE960();
  v11 = OUTLINED_FUNCTION_0(v78);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_21();
  v76 = v16;
  OUTLINED_FUNCTION_6_1();
  v17 = sub_220DBE6E0();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_220DBE560();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = v65 - v35;
  sub_220DBE480();
  sub_220DBE600();
  sub_220DBE320();
  (*(v20 + 8))(v24, v17);
  v68 = v36;
  v84 = v36;
  v85 = v33;
  v69 = v33;
  v37 = v82;

  v38 = sub_220D28868(sub_220D3729C, v83, v37);
  v39 = *(v38 + 16);
  if (v39)
  {
    v66 = v28;
    v67 = v25;
    v86 = MEMORY[0x277D84F90];
    sub_220CFB704(0, v39, 0);
    v40 = v86;
    v42 = *(v13 + 16);
    v41 = v13 + 16;
    v74 = v42;
    v43 = (*(v41 + 64) + 32) & ~*(v41 + 64);
    v65[1] = v38;
    v44 = v38 + v43;
    v45 = *(v41 + 56);
    ++v72;
    v73 = v45;
    v71 = (v41 - 8);
    v65[2] = v39;
    v46 = v39;
    v75 = v41;
    do
    {
      v82 = v40;
      v47 = v76;
      v48 = v78;
      v74(v76, v44, v78);
      v49 = v80;
      sub_220DBE940();
      v50 = v79;
      v51 = v77;
      sub_220DBE130();
      v52 = *v72;
      (*v72)(v49, v51);
      sub_220DBE050();
      v54 = v53;
      v52(v50, v51);
      v55 = v47;
      v40 = v82;
      (*v71)(v55, v48);
      v86 = v40;
      v57 = *(v40 + 16);
      v56 = *(v40 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_220CFB704((v56 > 1), v57 + 1, 1);
        v40 = v86;
      }

      *(v40 + 16) = v57 + 1;
      *(v40 + 8 * v57 + 32) = v54;
      v44 += v73;
      --v46;
    }

    while (v46);

    v25 = v67;
    v28 = v66;
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v58 = *(v40 + 16);
  if (v58)
  {
    v59 = (v40 + 32);
    v60 = 0.0;
    do
    {
      v61 = *v59++;
      v60 = v60 + v61;
      --v58;
    }

    while (v58);
  }

  sub_220CD8184(0, &qword_27CF956B0, 0x277CCAE38);
  v62 = v81;
  sub_220DBE040();
  v63 = *(v28 + 8);
  v63(v69, v25);
  return (v63)(v68, v25);
}

uint64_t PressureChartHeaderStringBuilder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PressureChartHeaderStringBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_220D3706C(uint64_t a1)
{
  v2 = type metadata accessor for PressureChartHeaderStringBuilder.CacheKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D37140()
{
  result = sub_220DBE560();
  if (v1 <= 0x3F)
  {
    result = sub_220DBE740();
    if (v2 <= 0x3F)
    {
      result = sub_220CD8184(319, &qword_27CF956B0, 0x277CCAE38);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_220D37234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220D3727C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_220DA6A08() & 1;
}

void WindChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v275 = a4;
  v284 = a3;
  v292 = a2;
  v297 = a1;
  v295 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14(&v261 - v9);
  v294 = sub_220DBE210();
  v10 = OUTLINED_FUNCTION_0(v294);
  v272 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v279 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v17 = OUTLINED_FUNCTION_18(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  v22 = &v261 - v21;
  v287 = sub_220DBF310();
  v23 = OUTLINED_FUNCTION_0(v287);
  v282 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14(&v261 - v28);
  v29 = sub_220DBE260();
  v30 = OUTLINED_FUNCTION_18(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v293 = v34 - v33;
  v299 = sub_220DC0300();
  v35 = OUTLINED_FUNCTION_0(v299);
  v303 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v291 = v40 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  v42 = OUTLINED_FUNCTION_18(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v298 = &v261 - v45;
  v46 = sub_220DC0920();
  v300 = OUTLINED_FUNCTION_0(v46);
  v301 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v300);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v51 - v50);
  v290 = sub_220DC0910();
  v52 = OUTLINED_FUNCTION_0(v290);
  v302 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_4();
  v58 = v56 - v57;
  MEMORY[0x28223BE20](v59);
  v289 = &v261 - v60;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v61 = OUTLINED_FUNCTION_0(v296);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v68);
  v70 = &v261 - v69;
  v71 = sub_220DBEF00();
  v72 = OUTLINED_FUNCTION_0(v71);
  v74 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_1();
  v79 = v78 - v77;
  v286 = sub_220DBEAD0();
  v80 = OUTLINED_FUNCTION_0(v286);
  v285 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_1();
  v86 = v85 - v84;
  v87 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  v88 = OUTLINED_FUNCTION_6(v87);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_1();
  v93 = v92 - v91;
  v94 = v292[3];
  v271 = v292[2];
  v292 = v94;
  sub_220D34C0C(v297, v93);
  if (swift_getEnumCaseMultiPayload())
  {
    v95 = sub_220DBE830();
    OUTLINED_FUNCTION_6(v95);
    (*(v96 + 8))(v93);
    sub_220CEF48C(v284, v22);
    v97 = v287;
    if (__swift_getEnumTagSinglePayload(v22, 1, v287) != 1)
    {
      v98 = v300;
      v99 = v282;
      v100 = *(v282 + 32);
      v101 = v281;
      v100(v281, v22, v97);
      v22 = v274;
      sub_220CEF48C(v275, v274);
      if (__swift_getEnumTagSinglePayload(v22, 1, v97) != 1)
      {
        v297 = v63;
        v100(v278, v22, v97);
        sub_220DBF2F0();
        sub_220D3A5F8();
        v212 = v271;
        v213 = v276;
        sub_220DBE040();
        sub_220DBF300();
        v214 = v212;
        sub_220DBE040();
        sub_220DBF2F0();
        v215 = v292;
        v216 = v277;
        sub_220DBE040();
        sub_220DC07F0();
        v217 = v301;
        v218 = v288;
        v219 = v98;
        (*(v301 + 104))(v288, *MEMORY[0x277D7B490], v98);
        sub_220DBE5E0();
        v220 = v298;
        OUTLINED_FUNCTION_9_8();
        __swift_storeEnumTagSinglePayload(v221, v222, v223, v224);
        v225 = v289;
        sub_220DC0270();

        sub_220CDA548(v220, &qword_27CF95228, &unk_220DC1E60);
        (*(v217 + 8))(v218, v219);
        v226 = v303;
        v227 = v291;
        v228 = v299;
        (*(v303 + 104))(v291, *MEMORY[0x277D7B408], v299);
        sub_220DBF100();
        sub_220DBF0D0();
        sub_220D3A63C();
        v229 = v290;
        v230 = sub_220DBE0B0();
        v232 = v231;

        (*(v226 + 8))(v227, v228);
        (*(v302 + 8))(v225, v229);
        sub_220D39428(v213, v280, v230, v232, &v304);
        v233 = v306[0];
        v302 = v305;
        v235 = v306[1];
        v234 = v306[2];

        v303 = sub_220D39EEC(v216);
        v237 = v236;
        v239 = v238;
        v241 = v240;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
        v242 = swift_allocObject();
        *(v242 + 16) = xmmword_220DC17C0;
        *(v242 + 32) = v235;
        *(v242 + 40) = v234;
        *(v242 + 48) = v239;
        *(v242 + 56) = v241;
        v304 = v242;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95750, &qword_220DC5B30);
        sub_220D3A694();
        v243 = sub_220DC0570();
        v245 = v244;

        sub_220D39274(&v304);
        v246 = v304;
        sub_220DBE250();
        sub_220DBE220();
        if (v233)
        {

          sub_220DBE250();
          v247 = v273;
          sub_220DBE220();

          v248 = 0;
        }

        else
        {
          v247 = v273;
          v248 = 1;
        }

        v249 = *(v297 + 8);
        v250 = OUTLINED_FUNCTION_14_10(v306);
        v249(v250);
        v251 = OUTLINED_FUNCTION_14_10(v307);
        v249(v251);
        v252 = OUTLINED_FUNCTION_14_10(&v305);
        v249(v252);
        v253 = *(v282 + 8);
        (v253)(v278, v287);
        v254 = OUTLINED_FUNCTION_14_10(&v308);
        v253(v254);
        v255 = v294;
        __swift_storeEnumTagSinglePayload(v247, v248, 1, v294);
        v106 = v295;
        (*(v272 + 4))(v295, v279, v255);
        v107 = type metadata accessor for ConditionDetailChartHeaderStringModel();
        sub_220CEFF68(v247, v106 + v107[5]);
        OUTLINED_FUNCTION_12_9();
        v257 = (v106 + v256);
        *v257 = v303;
        v257[1] = v237;
        OUTLINED_FUNCTION_6_10();
        *(v106 + v258) = v246;
        v259 = (v106 + v107[10]);
        *v259 = v243;
        v259[1] = v245;
LABEL_17:
        v260 = (v106 + v107[12]);
        v260[2] = 0u;
        v260[3] = 0u;
        *v260 = 0u;
        v260[1] = 0u;
        return;
      }

      (*(v99 + 8))(v101, v97);
    }

    sub_220CDA548(v22, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F50 != -1)
    {
      swift_once();
    }

    v102 = sub_220DBF410();
    __swift_project_value_buffer(v102, qword_27CF95F78);
    v103 = sub_220DBF3F0();
    v104 = sub_220DC0980();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_220CD1000, v103, v104, "Failed to create chart header for Wind due to missing extrema values", v105, 2u);
      MEMORY[0x223D98FB0](v105, -1, -1);
    }

    sub_220DBE250();
    v106 = v295;
    sub_220DBE220();
    v107 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    v108 = v107[5];
    OUTLINED_FUNCTION_9_8();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v294);
    OUTLINED_FUNCTION_12_9();
    *(v106 + v112) = xmmword_220DC17B0;
    OUTLINED_FUNCTION_6_10();
    *(v106 + v113) = 0;
    v114 = (v106 + v107[10]);
    *v114 = 0;
    v114[1] = 0xE000000000000000;
    goto LABEL_17;
  }

  v115 = v74;
  v297 = v63;
  v270 = v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
  (*(v285 + 32))(v86, v93, v286);
  v269 = sub_220D38904();
  v268 = v116;
  v267 = v117;
  v266 = v118;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v119 = sub_220DBE240();
  OUTLINED_FUNCTION_17_8(v119, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_220DC1CC0;
  OUTLINED_FUNCTION_15_6();
  *(v122 - 256) = v86;
  sub_220DBEA70();
  v265 = v70;
  sub_220DBEEF0();
  v287 = *(v115 + 8);
  v284 = v115 + 8;
  v283 = v71;
  v287(v79, v71);
  LODWORD(v282) = *MEMORY[0x277D7B490];
  v123 = v301;
  v124 = *(v301 + 104);
  v280 = (v301 + 104);
  v281 = v124;
  v125 = v288;
  v126 = v300;
  v124(v288);
  v279 = sub_220DBE5E0();
  v127 = v298;
  OUTLINED_FUNCTION_9_8();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
  sub_220DC07E0();
  v132 = v289;
  sub_220DC0270();

  sub_220CDA548(v127, &qword_27CF95228, &unk_220DC1E60);
  v133 = *(v123 + 8);
  v301 = v123 + 8;
  v278 = v133;
  v133(v125, v126);
  v134 = v58;
  sub_220DC0900();
  v135 = v302 + 8;
  v292 = *(v302 + 8);
  v264 = v79;
  v136 = v290;
  (v292)(v132);
  v302 = v135;
  LODWORD(v277) = *MEMORY[0x277D7B408];
  v137 = v303;
  v138 = *(v303 + 104);
  v275 = v303 + 104;
  v276 = v138;
  v139 = v291;
  v140 = v299;
  v138(v291);
  v274 = sub_220DBF100();
  sub_220DBF0D0();
  v273 = sub_220D3A63C();
  v141 = v296;
  v142 = v265;
  v263 = sub_220DBE0B0();
  v262 = v143;

  v144 = *(v137 + 8);
  v303 = v137 + 8;
  v272 = v144;
  v144(v139, v140);
  (v292)(v134, v136);
  v145 = *(v297 + 8);
  v297 += 8;
  v271 = v145;
  (v145)(v142, v141);
  v146 = MEMORY[0x277D837D0];
  *(v121 + 56) = MEMORY[0x277D837D0];
  v147 = sub_220CEFDB0();
  *(v121 + 64) = v147;
  v148 = v262;
  *(v121 + 32) = v263;
  *(v121 + 40) = v148;
  v149 = v264;
  OUTLINED_FUNCTION_15_6();
  v151 = *(v150 - 256);
  sub_220DBEA70();
  sub_220DBEED0();
  v152 = v283;
  v153 = v287;
  v287(v149, v283);
  v154 = sub_220DBEEC0();
  *(v121 + 96) = v146;
  *(v121 + 104) = v147;
  *(v121 + 72) = v154;
  *(v121 + 80) = v155;
  *(v121 + 136) = v146;
  *(v121 + 144) = v147;
  v156 = v266;
  *(v121 + 112) = v267;
  *(v121 + 120) = v156;
  v267 = sub_220DC05F0();
  v266 = v157;

  sub_220DBEA70();
  sub_220DBEEF0();
  v153(v149, v152);
  sub_220DC0800();
  v158 = v288;
  v159 = v300;
  OUTLINED_FUNCTION_10_11();
  v160();
  v161 = v298;
  OUTLINED_FUNCTION_9_8();
  __swift_storeEnumTagSinglePayload(v162, v163, v164, v279);
  sub_220DC0270();

  sub_220CDA548(v161, &qword_27CF95228, &unk_220DC1E60);
  v278(v158, v159);
  v165 = v291;
  v166 = v299;
  OUTLINED_FUNCTION_11_6();
  v167();
  sub_220DBF0D0();
  v168 = OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_17_8(v168, v169);

  v272(v165, v166);
  v170 = OUTLINED_FUNCTION_16_8();
  v171(v170);
  v172 = OUTLINED_FUNCTION_8_10();
  v173(v172);
  OUTLINED_FUNCTION_15_6();
  v175 = *(v174 - 256);
  sub_220DBEA70();
  sub_220DBEEF0();
  v176 = OUTLINED_FUNCTION_5_15();
  v177(v176);
  sub_220DC07F0();
  v178 = v300;
  OUTLINED_FUNCTION_10_11();
  v179();
  v180 = v298;
  OUTLINED_FUNCTION_9_8();
  __swift_storeEnumTagSinglePayload(v181, v182, v183, v279);
  sub_220DC0270();

  sub_220CDA548(v180, &qword_27CF95228, &unk_220DC1E60);
  v278(v158, v178);
  v184 = v299;
  OUTLINED_FUNCTION_11_6();
  v185();
  sub_220DBF0D0();
  v301 = OUTLINED_FUNCTION_18_7();

  v272(v165, v184);
  v186 = OUTLINED_FUNCTION_16_8();
  v187(v186);
  v188 = OUTLINED_FUNCTION_8_10();
  v189(v188);
  OUTLINED_FUNCTION_15_6();
  v191 = *(v190 - 256);
  sub_220DBEA70();
  sub_220DBEED0();
  v192 = OUTLINED_FUNCTION_5_15();
  v193(v192);
  v194 = sub_220DBEEB0();
  v196 = v195;
  sub_220D39274(&v304);
  LOBYTE(v165) = v304;
  v302 = 0x8000000220DEAA70;
  v303 = 0x8000000220DEAAB0;
  sub_220DBE250();
  v197 = v295;
  sub_220DBE220();
  v198 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v199 = v198[5];

  sub_220DBE250();
  sub_220DBE220();

  (*(v285 + 8))(v191, v286);
  __swift_storeEnumTagSinglePayload(v197 + v199, 0, 1, v294);
  v200 = (v197 + v198[6]);
  *v200 = v194;
  v200[1] = v196;
  v201 = (v197 + v198[7]);
  v202 = v268;
  *v201 = v269;
  v201[1] = v202;
  v203 = (v197 + v198[8]);
  *v203 = 0;
  v203[1] = 0;
  v204 = (v197 + v198[11]);
  *v204 = 0;
  v204[1] = 0;
  *(v197 + v198[9]) = v165;
  v205 = (v197 + v198[10]);
  v206 = v266;
  *v205 = v267;
  v205[1] = v206;
  v207 = v197 + v198[12];
  *v207 = xmmword_220DC4550;
  v208 = v302;
  *(v207 + 16) = 0xD000000000000012;
  *(v207 + 24) = v208;
  *(v207 + 32) = 0xD000000000000017;
  *(v207 + 40) = 0x8000000220DEAA90;
  v209 = v303;
  *(v207 + 48) = 0xD000000000000013;
  *(v207 + 56) = v209;
  v210 = sub_220DBE830();
  OUTLINED_FUNCTION_6(v210);
  (*(v211 + 8))(v270);
}

uint64_t sub_220D38904()
{
  v90 = sub_220DC0300();
  v0 = *(v90 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v90);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = &v68 - v6;
  v95 = sub_220DC0920();
  v98 = *(v95 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_220DC0910();
  v9 = *(v96 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v96);
  v92 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95640, &qword_220DC45A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v68 - v17;
  v19 = sub_220DBEF00();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v93 = *(v24 - 8);
  v25 = *(v93 + 64);
  MEMORY[0x28223BE20](v24);
  v97 = &v68 - v26;
  sub_220DBEA70();
  sub_220DBEEE0();
  (*(v20 + 8))(v23, v19);
  if (__swift_getEnumTagSinglePayload(v18, 1, v24) == 1)
  {
    sub_220CDA548(v18, &qword_27CF95640, &qword_220DC45A0);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v27 = sub_220DBE240();
  }

  else
  {
    v86 = v9;
    v81 = v3;
    v28 = v0;
    (*(v93 + 32))(v97, v18, v24);
    v29 = v24;
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v30 = sub_220DBE240();
    v88 = v31;
    v89 = v30;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_220DC17A0;
    v84 = *MEMORY[0x277D7B498];
    v33 = v98;
    v34 = *(v98 + 104);
    v82 = v98 + 104;
    v83 = v34;
    v36 = v94;
    v35 = v95;
    v34(v94);
    v77 = sub_220DBE5E0();
    v37 = v91;
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v77);
    sub_220DC07E0();
    v38 = v14;
    sub_220DC0270();

    sub_220CDA548(v37, &qword_27CF95228, &unk_220DC1E60);
    v39 = *(v33 + 8);
    v98 = v33 + 8;
    v75 = v39;
    v39(v36, v35);
    v80 = *MEMORY[0x277D7B408];
    v40 = v28;
    v41 = *(v28 + 104);
    v78 = v28 + 104;
    v79 = v41;
    v42 = v81;
    v43 = v90;
    v41(v81);
    v76 = sub_220DBF100();
    sub_220DBF0D0();
    v74 = sub_220D3A63C();
    v87 = v29;
    v44 = v96;
    v45 = sub_220DBE0B0();
    v47 = v46;

    v48 = *(v40 + 8);
    v71 = v40 + 8;
    v72 = v48;
    v48(v42, v43);
    v49 = v43;
    v50 = *(v86 + 8);
    v50(v38, v44);
    v69 = v50;
    *(v32 + 56) = MEMORY[0x277D837D0];
    v70 = sub_220CEFDB0();
    *(v32 + 64) = v70;
    *(v32 + 32) = v45;
    *(v32 + 40) = v47;
    v86 = sub_220DC05F0();
    v73 = v51;

    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_220DC17C0;
    v54 = v94;
    v53 = v95;
    v83(v94, v84, v95);
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v77);
    sub_220DC07E0();
    sub_220DC0270();

    sub_220CDA548(v37, &qword_27CF95228, &unk_220DC1E60);
    v75(v54, v53);
    v55 = v92;
    sub_220DC0900();
    v56 = v38;
    v57 = v96;
    v50(v56, v96);
    v58 = v42;
    v59 = v42;
    v60 = v49;
    v79(v59, v80, v49);
    sub_220DBF0D0();
    v61 = v97;
    v62 = sub_220DBE0B0();
    v64 = v63;

    v72(v58, v60);
    v69(v55, v57);
    v65 = MEMORY[0x277D837D0];
    v66 = v70;
    *(v52 + 56) = MEMORY[0x277D837D0];
    *(v52 + 64) = v66;
    *(v52 + 32) = v62;
    *(v52 + 40) = v64;
    *(v52 + 96) = v65;
    *(v52 + 104) = v66;
    *(v52 + 72) = 0;
    *(v52 + 80) = 0xE000000000000000;
    sub_220DC05F0();

    v27 = v86;

    (*(v93 + 8))(v61, v87);
  }

  return v27;
}

uint64_t sub_220D39274@<X0>(char *a1@<X8>)
{
  v2 = sub_220DBE5E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220DBE5C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE580();
  sub_220DBE5D0();
  (*(v3 + 8))(v6, v2);
  if (sub_220DBE590())
  {
    result = (*(v8 + 8))(v11, v7);
    v13 = 1;
  }

  else
  {
    v14 = sub_220DBE5B0();
    result = (*(v8 + 8))(v11, v7);
    if (v14)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }
  }

  *a1 = v13;
  return result;
}

uint64_t sub_220D39428@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v89 = a4;
  v87 = a3;
  v84 = a2;
  v104 = a1;
  v88 = a5;
  v90 = sub_220DC0300();
  v5 = *(v90 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v90);
  v106 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v75 - v10;
  v12 = sub_220DC0920();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_220DC0910();
  v108 = *(v92 - 8);
  v17 = *(v108 + 64);
  v18 = MEMORY[0x28223BE20](v92);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v75 - v20;
  sub_220DC0800();
  v94 = *MEMORY[0x277D7B490];
  v22 = v13 + 13;
  v95 = v13[13];
  v103 = v12;
  v95(v16);
  v93 = sub_220DBE5E0();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v93);
  sub_220DC0270();

  sub_220CDA548(v11, &qword_27CF95228, &unk_220DC1E60);
  v23 = v13[1];
  v102 = v13 + 1;
  v96 = v23;
  v23(v16, v12);
  v100 = *MEMORY[0x277D7B408];
  v24 = v5 + 13;
  v101 = v5[13];
  v25 = v106;
  v101(v106);
  v97 = sub_220DBF100();
  sub_220DBF0D0();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v98 = sub_220D3A63C();
  v26 = v92;
  v91 = sub_220DBE0B0();
  v107 = v27;

  v28 = v5 + 1;
  v29 = v5[1];
  v105 = v28;
  v30 = v25;
  v31 = v90;
  v29(v30, v90);
  v32 = *(v108 + 8);
  v108 += 8;
  v32(v21, v26);
  sub_220DC0800();
  v33 = v103;
  v80 = v22;
  (v95)(v16, v94, v103);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v93);
  sub_220DC0270();

  v85 = v11;
  sub_220CDA548(v11, &qword_27CF95228, &unk_220DC1E60);
  v79 = v16;
  v34 = v106;
  v96(v16, v33);
  v35 = v91;
  v81 = v24;
  (v101)(v34, v100, v31);
  sub_220DBF0D0();
  v36 = v92;
  v37 = sub_220DBE0B0();
  v39 = v38;

  v82 = v29;
  v29(v34, v31);
  v83 = v21;
  v84 = v32;
  v32(v21, v36);
  v40 = v35;
  v41 = v37 == v35 && v39 == v107;
  if (v41 || (sub_220DC0CA0() & 1) != 0)
  {

    v42 = v79;
    v43 = v103;
    (v95)(v79, v94, v103);
    v44 = v85;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v93);
    sub_220DC07E0();
    v45 = v83;
    sub_220DC0270();

    sub_220CDA548(v44, &qword_27CF95228, &unk_220DC1E60);
    v96(v42, v43);
    v46 = v86;
    sub_220DC0900();
    v47 = v84;
    v84(v45, v36);
    (v101)(v34, v100, v31);
    sub_220DBF0D0();
    v48 = sub_220DBE0B0();
    v50 = v49;

    v82(v34, v31);
    v47(v46, v36);
  }

  else
  {
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v78 = sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v51 = swift_allocObject();
    v75 = xmmword_220DC17C0;
    *(v51 + 16) = xmmword_220DC17C0;
    v52 = MEMORY[0x277D837D0];
    *(v51 + 56) = MEMORY[0x277D837D0];
    v53 = sub_220CEFDB0();
    *(v51 + 32) = v37;
    *(v51 + 40) = v39;
    *(v51 + 96) = v52;
    *(v51 + 104) = v53;
    *(v51 + 64) = v53;
    *(v51 + 72) = v35;
    v54 = v53;
    v76 = v53;
    *(v51 + 80) = v107;

    v91 = sub_220DC05F0();
    v107 = v55;

    v78 = sub_220DBE240();
    v77 = v56;
    v57 = swift_allocObject();
    *(v57 + 16) = v75;
    *(v57 + 56) = v52;
    *(v57 + 64) = v54;
    *(v57 + 32) = v37;
    *(v57 + 40) = v39;
    v58 = v79;
    v59 = v103;
    (v95)(v79, v94, v103);
    v60 = v85;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v93);
    sub_220DC07E0();
    v61 = v83;
    sub_220DC0270();

    sub_220CDA548(v60, &qword_27CF95228, &unk_220DC1E60);
    v96(v58, v59);
    v62 = v86;
    sub_220DC0900();
    v63 = v84;
    v84(v61, v36);
    v64 = v106;
    v65 = v90;
    (v101)(v106, v100, v90);
    sub_220DBF0D0();
    v66 = sub_220DBE0B0();
    v68 = v67;

    v82(v64, v65);
    v69 = v62;
    v40 = v91;
    v63(v69, v36);
    v70 = v76;
    *(v57 + 96) = MEMORY[0x277D837D0];
    *(v57 + 104) = v70;
    *(v57 + 72) = v66;
    *(v57 + 80) = v68;
    v48 = sub_220DC05F0();
    v50 = v71;
  }

  v73 = v88;
  v74 = v107;
  *v88 = v40;
  v73[1] = v74;
  v73[2] = v87;
  v73[3] = result;
  v73[4] = v48;
  v73[5] = v50;
  return result;
}

uint64_t sub_220D39EEC(uint64_t a1)
{
  v2 = sub_220DC0300();
  v3 = *(v2 - 8);
  v73 = v2;
  v74 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - v9;
  v11 = sub_220DC0920();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_220DC0910();
  v70 = *(v68 - 8);
  v16 = *(v70 + 64);
  v17 = MEMORY[0x28223BE20](v68);
  v69 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v21 = sub_220DBE240();
  v71 = v22;
  v72 = v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v23 = swift_allocObject();
  v66 = xmmword_220DC17A0;
  *(v23 + 16) = xmmword_220DC17A0;
  v63 = *MEMORY[0x277D7B498];
  v24 = v12[13];
  v64 = v12 + 13;
  v65 = v24;
  v24(v15);
  v59 = sub_220DBE5E0();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v59);
  sub_220DC07E0();
  v25 = v20;
  v49 = v15;
  sub_220DC0270();

  sub_220CDA548(v10, &qword_27CF95228, &unk_220DC1E60);
  v26 = v12[1];
  v51 = v12 + 1;
  v57 = v26;
  v26(v15, v11);
  v62 = *MEMORY[0x277D7B408];
  v27 = v74;
  v48 = v11;
  v28 = *(v74 + 104);
  v60 = v74 + 104;
  v61 = v28;
  v29 = v73;
  v28(v6);
  v58 = sub_220DBF100();
  sub_220DBF0D0();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v54 = sub_220D3A63C();
  v30 = v68;
  v31 = sub_220DBE0B0();
  v52 = a1;
  v33 = v32;

  v34 = *(v27 + 8);
  v74 = v27 + 8;
  v53 = v34;
  v34(v6, v29);
  v47 = *(v70 + 8);
  v47(v25, v30);
  *(v23 + 56) = MEMORY[0x277D837D0];
  v50 = sub_220CEFDB0();
  *(v23 + 64) = v50;
  *(v23 + 32) = v31;
  *(v23 + 40) = v33;
  v70 = sub_220DC05F0();
  v56 = v35;

  v36 = swift_allocObject();
  *(v36 + 16) = v66;
  v37 = v49;
  v38 = v48;
  v65(v49, v63, v48);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v59);
  sub_220DC07E0();
  sub_220DC0270();

  sub_220CDA548(v10, &qword_27CF95228, &unk_220DC1E60);
  v57(v37, v38);
  v39 = v69;
  sub_220DC0900();
  v40 = v47;
  v47(v25, v30);
  v41 = v73;
  v61(v6, v62, v73);
  sub_220DBF0D0();
  v42 = sub_220DBE0B0();
  v44 = v43;

  v53(v6, v41);
  v40(v39, v30);
  v45 = v50;
  *(v36 + 56) = MEMORY[0x277D837D0];
  *(v36 + 64) = v45;
  *(v36 + 32) = v42;
  *(v36 + 40) = v44;
  sub_220DC05F0();

  return v70;
}

unint64_t sub_220D3A5F8()
{
  result = qword_27CF95668;
  if (!qword_27CF95668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF95668);
  }

  return result;
}

unint64_t sub_220D3A63C()
{
  result = qword_27CF95748;
  if (!qword_27CF95748)
  {
    sub_220DC0910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95748);
  }

  return result;
}

unint64_t sub_220D3A694()
{
  result = qword_27CF95758;
  if (!qword_27CF95758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95750, &qword_220DC5B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95758);
  }

  return result;
}

double TemperatureChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)@<D0>(void (*a1)(char *, uint64_t)@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v165 = a1;
  v177 = a3;
  v4 = sub_220DBEBA0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v175 = v6;
  v176 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v183 = v10 - v9;
  OUTLINED_FUNCTION_6_1();
  v11 = sub_220DC02E0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v173 = v13;
  v174 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v161 = sub_220DBE1C0();
  v19 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_1();
  v22 = (v21 - v20);
  v182 = sub_220DC0A00();
  v23 = OUTLINED_FUNCTION_0(v182);
  v168 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v167 = v28 - v27;
  OUTLINED_FUNCTION_6_1();
  v181 = sub_220DC0A40();
  v29 = OUTLINED_FUNCTION_0(v181);
  v164 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9();
  v160 = v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v159 - v35;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v37 = OUTLINED_FUNCTION_0(v179);
  v169 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v42 = &v159 - v41;
  OUTLINED_FUNCTION_6_1();
  v171 = sub_220DBE210();
  v43 = OUTLINED_FUNCTION_0(v171);
  v170 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9();
  v162 = v47;
  MEMORY[0x28223BE20](v48);
  v186 = &v159 - v49;
  OUTLINED_FUNCTION_6_1();
  v50 = sub_220DBEAD0();
  v51 = OUTLINED_FUNCTION_0(v50);
  v163 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1();
  v178 = v56 - v55;
  v57 = OUTLINED_FUNCTION_6_1();
  v58 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(v57);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_1();
  v62 = v61 - v60;
  v185 = sub_220DBE830();
  v63 = OUTLINED_FUNCTION_0(v185);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_9();
  v180 = v68;
  MEMORY[0x28223BE20](v69);
  v71 = &v159 - v70;
  v72 = a2[1];
  v187[0] = *a2;
  v187[1] = v72;
  v187[2] = a2[2];
  sub_220D34C0C(v165, v62);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v172 = v18;
  v166 = v65;
  if (EnumCaseMultiPayload)
  {
    (*(v65 + 32))(v71, v62, v185);
    sub_220DBE750();
    v180 = sub_220DBEB90();
    v178 = v74;
    sub_220DBE7B0();
    sub_220DC02B0();
    v75 = v167;
    sub_220DC0A20();
    v165 = *(v164 + 8);
    v165(v36, v181);
    v76 = OUTLINED_FUNCTION_5_16();
    v77 = v179;
    sub_220D3B5C4(v76, v78, v79);
    v168 = *(v168 + 8);
    (v168)(v75, v182);
    v80 = v177;
    v169 = *(v169 + 8);
    (v169)(v42, v77);
    sub_220DBE780();
    OUTLINED_FUNCTION_8_0(&v189);
    v81(v71, v185);
    sub_220DC02B0();
    sub_220DC0A20();
    v165(v36, v181);
    v82 = v162;
    v83 = OUTLINED_FUNCTION_5_16();
    sub_220D3B5C4(v83, v84, v85);
    (v168)(v75, v182);
    (v169)(v42, v77);
    v86 = v186;
    v87 = sub_220D3B9D0(v187, v180, v178);
    v181 = v88;
    v182 = v87;
    v184 = v90;
    v185 = v89;

    v91 = v170;
    v92 = v170 + 16;
    v93 = *(v170 + 16);
    v94 = v171;
    v93(v80, v86, v171);
    v95 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    v96 = v95[5];
    v93(v80 + v96, v82, v94);
    __swift_storeEnumTagSinglePayload(v80 + v96, 0, 1, v94);
    v97 = v172;
    v98 = v183;
    sub_220DBEB70();
    sub_220DC02D0();
    OUTLINED_FUNCTION_4_14();
    v99(v97);
    v100 = *(v91 + 8);
    v100(v82, v94);
    v100(v86, v94);
    (*(v175 + 8))(v98, v176);
    v101 = (v80 + v95[6]);
    *v101 = 0;
    v101[1] = 0;
    v102 = (v80 + v95[7]);
    v103 = v181;
    *v102 = v182;
    v102[1] = v103;
    v104 = (v80 + v95[8]);
    *v104 = 0;
    v104[1] = 0;
    v105 = (v80 + v95[11]);
    *v105 = v92;
    v105[1] = v97;
    *(v80 + v95[9]) = 0;
    v106 = (v80 + v95[10]);
    v107 = v184;
    *v106 = v185;
    v106[1] = v107;
    v108 = (v80 + v95[12]);
    result = 0.0;
    v108[2] = 0u;
    v108[3] = 0u;
    *v108 = 0u;
    v108[1] = 0u;
  }

  else
  {
    v165 = v22;
    v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
    v111 = *(v163 + 32);
    v159 = v50;
    v111(v178, v62, v50);
    (*(v65 + 32))(v180, v62 + v110, v185);
    v112 = v42;
    sub_220DBE9B0();
    sub_220DC02B0();
    v113 = v167;
    sub_220DC0A20();
    v114 = *(v164 + 8);
    v115 = v181;
    v114(v36, v181);
    sub_220D3B5C4(v42, v113, v187);
    OUTLINED_FUNCTION_8_0(&v190);
    v116(v113, v182);
    v117 = *(v169 + 8);
    v117(v112, v179);
    sub_220DBE7B0();
    sub_220DC02B0();
    v118 = v160;
    sub_220DC0A30();
    v114(v36, v115);
    v182 = sub_220D3B7C8(v112, v118, v187);
    v169 = v119;
    v120 = OUTLINED_FUNCTION_5_16();
    (v114)(v120);
    v121 = v179;
    v117(v112, v179);
    sub_220DBE780();
    sub_220DC02B0();
    sub_220DC0A30();
    v114(v36, v115);
    v184 = sub_220D3B7C8(v112, v118, v187);
    v168 = v122;
    v123 = OUTLINED_FUNCTION_5_16();
    (v114)(v123);
    v117(v112, v121);
    v124 = v186;
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v167 = qword_280FA6608;
    v181 = sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_220DC1CE0;
    sub_220DBE1B0();
    sub_220D3BE30(&qword_27CF95A90, MEMORY[0x277CC8B30]);
    v126 = sub_220DC06C0();
    v128 = v127;
    v129 = MEMORY[0x277D837D0];
    *(v125 + 56) = MEMORY[0x277D837D0];
    v130 = sub_220CEFDB0();
    *(v125 + 64) = v130;
    *(v125 + 32) = v126;
    *(v125 + 40) = v128;
    v131 = sub_220DBE9E0();
    *(v125 + 96) = v129;
    *(v125 + 104) = v130;
    *(v125 + 72) = v131;
    *(v125 + 80) = v132;
    *(v125 + 136) = v129;
    *(v125 + 144) = v130;
    v133 = v169;
    *(v125 + 112) = v182;
    *(v125 + 120) = v133;
    *(v125 + 176) = v129;
    *(v125 + 184) = v130;
    v134 = v168;
    *(v125 + 152) = v184;
    *(v125 + 160) = v134;

    v181 = sub_220DC05F0();
    v179 = v135;

    v136 = v170;
    v137 = v177;
    v138 = v124;
    v139 = v171;
    (*(v170 + 16))(v177, v138, v171);
    v140 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    __swift_storeEnumTagSinglePayload(v137 + v140[5], 1, 1, v139);
    sub_220DBE240();
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_220DC17C0;
    v142 = MEMORY[0x277D837D0];
    *(v141 + 56) = MEMORY[0x277D837D0];
    *(v141 + 64) = v130;
    *(v141 + 32) = v182;
    *(v141 + 40) = v133;
    *(v141 + 96) = v142;
    *(v141 + 104) = v130;
    *(v141 + 72) = v184;
    *(v141 + 80) = v134;
    v143 = sub_220DC05F0();
    v184 = v144;

    v145 = v183;
    v146 = v178;
    sub_220DBEAC0();
    sub_220DBE990();
    v147 = v172;
    sub_220DBEB70();
    (*(v175 + 8))(v145, v176);
    sub_220DC02D0();
    OUTLINED_FUNCTION_4_14();
    v148(v147);
    (*(v136 + 8))(v186, v139);
    OUTLINED_FUNCTION_8_0(&v189);
    v149(v180, v185);
    OUTLINED_FUNCTION_8_0(&v188);
    v150(v146, v159);
    v151 = (v137 + v140[6]);
    *v151 = 0;
    v151[1] = 0;
    v152 = (v137 + v140[7]);
    v153 = v184;
    *v152 = v143;
    v152[1] = v153;
    v154 = (v137 + v140[8]);
    *v154 = 0;
    v154[1] = 0;
    v155 = (v137 + v140[11]);
    *v155 = v145;
    v155[1] = v147;
    *(v137 + v140[9]) = 0;
    v156 = (v137 + v140[10]);
    v157 = v179;
    *v156 = v181;
    v156[1] = v157;
    v158 = v137 + v140[12];
    *v158 = 0xD000000000000019;
    *(v158 + 8) = 0x8000000220DEAED0;
    result = 0.0;
    *(v158 + 16) = 0u;
    *(v158 + 32) = 0u;
    *(v158 + 48) = 0xD000000000000022;
    *(v158 + 56) = 0x8000000220DEAEF0;
  }

  return result;
}

uint64_t sub_220D3B5C4(uint64_t a1, uint64_t a2, void **a3)
{
  v16[1] = a1;
  v4 = sub_220DC0300();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  v10 = sub_220DBF130();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v9;
  sub_220DBF120();
  v14 = [v13 symbol];
  sub_220DC0620();

  (*(v5 + 104))(v8, *MEMORY[0x277D7B408], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  sub_220DC0A00();
  sub_220D3BE30(&qword_27CF95A88, MEMORY[0x277D7B4F8]);
  sub_220DBE080();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_220D3B7C8(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = sub_220DC0300();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  v10 = sub_220DBF130();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v9;
  sub_220DBF120();
  v14 = [v13 symbol];
  sub_220DC0620();

  (*(v5 + 104))(v8, *MEMORY[0x277D7B408], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  sub_220DC0A40();
  sub_220D3BE30(&qword_280FA6610, MEMORY[0x277D7B508]);
  v15 = sub_220DBE090();

  (*(v5 + 8))(v8, v4);
  return v15;
}

uint64_t sub_220D3B9D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_220DBE1C0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_220D022A8();
  v7 = *a1;
  v8 = [objc_opt_self() fahrenheit];
  LOBYTE(v7) = sub_220DC0AB0();

  if (v7)
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v17 = sub_220DBE240();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220DC1CC0;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_220CEFDB0();
  *(v9 + 64) = v11;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;

  sub_220DBE1B0();
  sub_220D3BE30(&qword_27CF95A90, MEMORY[0x277CC8B30]);
  v12 = sub_220DC06C0();
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v12;
  *(v9 + 80) = v13;
  sub_220DBE1B0();
  v14 = sub_220DC06C0();
  *(v9 + 136) = v10;
  *(v9 + 144) = v11;
  *(v9 + 112) = v14;
  *(v9 + 120) = v15;
  sub_220DC05F0();

  return v17;
}

uint64_t sub_220D3BE30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DaylightStringBuilder.makeLollipopDaylightString(for:location:sunEvents:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a3;
  v53 = a4;
  v50 = a1;
  v51 = a2;
  v55 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v50 - v9;
  v10 = sub_220DBE740();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = sub_220DBF070();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v28 = sub_220DBF1D0();
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  v37 = sub_220DBE560();
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1();
  v43 = (v42 - v41);
  (*(v44 + 16))(v42 - v41, v50);
  (*(v31 + 16))(v36, v51, v28);
  (*(v22 + 16))(v27, v52, v19);
  (*(v13 + 16))(v18, v53, v10);
  SunriseSunsetNextEventTodayCountdown.init(date:location:sunEvents:timeZone:)(v43, v36, v27, v18, &v56);
  if (v57 == 255)
  {
    v46 = sub_220DBE210();
    v48 = v54;
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v46);
    v47 = v55;
    sub_220DBE1D0();
    if (__swift_getEnumTagSinglePayload(v48, 1, v46) != 1)
    {
      sub_220D3DD1C(v48, &qword_27CF95030, &qword_220DC17E0);
    }
  }

  else
  {
    v45 = v54;
    sub_220D3EBE8();
    v46 = sub_220DBE210();
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
    v47 = v55;
    (*(*(v46 - 8) + 32))(v55, v45, v46);
  }

  sub_220DBE210();
  return __swift_storeEnumTagSinglePayload(v47, 0, 1, v46);
}

uint64_t DaylightStringBuilder.makeLollipopPolarDaylightString(for:location:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = sub_220DBE260();
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v43 = sub_220DBE740();
  v8 = OUTLINED_FUNCTION_0(v43);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_220DBF1D0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = sub_220DBE560();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  EventFutureDayCountdown = type metadata accessor for SunriseSunsetNextEventFutureDayCountdown();
  v35 = OUTLINED_FUNCTION_18(EventFutureDayCountdown);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v40 = (v39 - v38);
  (*(v28 + 16))(v33, a1, v25);
  (*(v19 + 16))(v24, a2, v16);
  (*(v10 + 16))(v15, a3, v43);
  SunriseSunsetNextEventFutureDayCountdown.init(date:location:timeZone:)(v33, v24, v15, v40);
  SunriseSunsetNextEventFutureDayCountdown.description.getter();
  sub_220DBE250();
  sub_220DBE220();
  sub_220D3DCC0(v40);
  v41 = sub_220DBE210();
  return __swift_storeEnumTagSinglePayload(a4, 0, 1, v41);
}

uint64_t DaylightStringBuilder.makeDaylightString(for:sunEvents:timeZone:calendar:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_220DC05D0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v52 = v10 - v9;
  v11 = sub_220DBE6E0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = sub_220DBE740();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v29 = sub_220DBF070();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v38 = sub_220DBE560();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v44 = v43 - v42;
  v46 = *(v45 + 16);
  v47 = OUTLINED_FUNCTION_11_7();
  v48(v47);
  (*(v32 + 16))(v37, a2, v29);
  (*(v23 + 16))(v28, a3, v20);
  (*(v14 + 16))(v19, a4, v11);
  DaylightStringKind.init(date:sunEvents:timeZone:calendar:)(v44, v37, v28, v19, &v58);
  if (v59 == 255)
  {
    return sub_220DBE1D0();
  }

  sub_220DC05C0();
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_220DC17A0;
  *(v50 + 32) = sub_220D3DA6C();
  *(v50 + 40) = v51;
  sub_220DBE1F0();

  return (*(v53 + 8))(v52, v54);
}

uint64_t DaylightStringKind.init(date:sunEvents:timeZone:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v232 = a4;
  v233 = a3;
  v237 = a1;
  v238 = a5;
  v234 = sub_220DBE740();
  v7 = OUTLINED_FUNCTION_0(v234);
  v236 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v216 = v12 - v11;
  v218 = sub_220DBF410();
  v13 = OUTLINED_FUNCTION_0(v218);
  v217 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = sub_220DBE6E0();
  v21 = OUTLINED_FUNCTION_0(v20);
  v231 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v225 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v28 = OUTLINED_FUNCTION_18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9();
  v229 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25_0();
  v227 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  v224 = v35;
  OUTLINED_FUNCTION_23();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = v212 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = v212 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = v212 - v43;
  v45 = sub_220DBE560();
  v46 = OUTLINED_FUNCTION_0(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_0();
  v223 = v53;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_25_0();
  v228 = v55;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25_0();
  v222 = v58;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_25_0();
  v221 = v62;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_25_0();
  v226 = v64;
  OUTLINED_FUNCTION_23();
  v66 = MEMORY[0x28223BE20](v65);
  v68 = v212 - v67;
  MEMORY[0x28223BE20](v66);
  v70 = v212 - v69;
  sub_220DBF030();
  OUTLINED_FUNCTION_3_0(v44);
  v235 = v20;
  if (v74)
  {
    sub_220D3DD1C(v44, &qword_27CF951E0, &unk_220DC1D80);
    v71 = a2;
    v72 = v237;
  }

  else
  {
    v220 = v19;
    v73 = *(v48 + 32);
    v73(v70, v44, v45);
    sub_220DBF020();
    OUTLINED_FUNCTION_3_0(v42);
    if (v74)
    {
      v75 = *(v48 + 8);
      v76 = OUTLINED_FUNCTION_9_9();
      v77(v76);
      sub_220D3DD1C(v42, &qword_27CF951E0, &unk_220DC1D80);
    }

    else
    {
      v73(v68, v42, v45);
      v78 = sub_220DBE430();
      if (v78)
      {
        v79 = v237;
        if (sub_220DBE430() & 1) != 0 && (sub_220DBE440())
        {
          sub_220DBE410();
          v80 = OUTLINED_FUNCTION_12_10();
          v81(v80);
          (*(v236 + 8))(v233, v234);
          v82 = sub_220DBF070();
          OUTLINED_FUNCTION_1_0(v82);
          (*(v83 + 8))(a2);
          v84 = *(v48 + 8);
          v84(v79, v45);
          v84(v68, v45);
          v85 = OUTLINED_FUNCTION_9_9();
          result = (v84)(v85);
LABEL_42:
          v160 = 0;
          goto LABEL_43;
        }

        sub_220DBE410();
        v189 = OUTLINED_FUNCTION_12_10();
        v190(v189);
        (*(v236 + 8))(v233, v234);
        v191 = sub_220DBF070();
        OUTLINED_FUNCTION_1_0(v191);
        (*(v192 + 8))(a2);
        v193 = *(v48 + 8);
        v193(v79, v45);
        v193(v68, v45);
        v194 = OUTLINED_FUNCTION_9_9();
        result = (v193)(v194);
LABEL_36:
        *v238 = v5;
LABEL_37:
        v160 = 1;
        goto LABEL_44;
      }

      v87 = *(v48 + 8);
      v87(v68, v45);
      v88 = OUTLINED_FUNCTION_9_9();
      (v87)(v88);
    }

    v72 = v237;
    v71 = a2;
    v20 = v235;
    v19 = v220;
  }

  sub_220DBF030();
  OUTLINED_FUNCTION_3_0(v39);
  v230 = v71;
  if (v74)
  {
    v89 = v19;
    sub_220D3DD1C(v39, &qword_27CF951E0, &unk_220DC1D80);
    v90 = v236;
    v91 = v233;
  }

  else
  {
    v92 = v19;
    v93 = *(v48 + 32);
    v93(v226, v39, v45);
    v94 = v224;
    sub_220DBF020();
    OUTLINED_FUNCTION_3_0(v94);
    if (v95)
    {
      v96 = *(v48 + 8);
      v97 = OUTLINED_FUNCTION_10_12();
      v98(v97);
      sub_220D3DD1C(v94, &qword_27CF951E0, &unk_220DC1D80);
      v90 = v236;
      v72 = v237;
    }

    else
    {
      v99 = v221;
      v93(v221, v94, v45);
      OUTLINED_FUNCTION_7_11();
      sub_220D3DD70(v100, v101);
      v102 = sub_220DC0580();
      v90 = v236;
      if ((v102 & 1) == 0)
      {
        v161 = v233;
        sub_220DBE480();
        v162 = v225;
        sub_220DBE6A0();
        v163 = v213;
        sub_220DBE390();
        v164 = *(v231 + 8);
        v164(v162, v20);
        if (sub_220DBE430())
        {
          sub_220DBE410();
          v5 = v165;
          v164(v232, v20);
          (*(v90 + 8))(v161, v234);
          v166 = sub_220DBF070();
          OUTLINED_FUNCTION_1_0(v166);
          (*(v167 + 8))(v230);
          v168 = *(v48 + 8);
          v169 = OUTLINED_FUNCTION_10_12();
          v168(v169);
          (v168)(v163, v45);
          (v168)(v219, v45);
          v170 = v221;
        }

        else
        {
          v195 = v221;
          v196 = sub_220DBE440();
          v197 = v234;
          if ((v196 & 1) == 0)
          {
            sub_220DBE410();
            v203 = v202;
            sub_220DBE410();
            v205 = v204;
            v164(v232, v20);
            (*(v90 + 8))(v233, v197);
            v206 = sub_220DBF070();
            OUTLINED_FUNCTION_1_0(v206);
            (*(v207 + 8))(v230);
            v208 = *(v48 + 8);
            v208(v237, v45);
            v209 = OUTLINED_FUNCTION_13_8();
            (v208)(v209);
            v210 = OUTLINED_FUNCTION_9_9();
            (v208)(v210);
            v208(v221, v45);
            v211 = OUTLINED_FUNCTION_10_12();
            result = (v208)(v211);
            *v238 = v203 + v205;
            goto LABEL_37;
          }

          sub_220DBE410();
          v5 = v198;
          v164(v232, v20);
          (*(v90 + 8))(v233, v197);
          v199 = sub_220DBF070();
          OUTLINED_FUNCTION_1_0(v199);
          (*(v200 + 8))(v230);
          v168 = *(v48 + 8);
          v201 = OUTLINED_FUNCTION_9_9();
          v168(v201);
          (v168)(v213, v45);
          (v168)(v219, v45);
          v170 = v195;
        }

        (v168)(v170, v45);
        result = (v168)(v226, v45);
        goto LABEL_42;
      }

      v103 = *(v48 + 8);
      v103(v99, v45);
      v104 = OUTLINED_FUNCTION_10_12();
      (v103)(v104);
      v72 = v237;
    }

    v91 = v233;
    v89 = v92;
    v71 = v230;
  }

  v105 = v229;
  v106 = v227;
  sub_220DBF030();
  OUTLINED_FUNCTION_3_0(v106);
  if (!v74)
  {
    v229 = v48;
    v132 = *(v48 + 32);
    v133 = v222;
    v132(v222, v106, v45);
    sub_220DBE480();
    v134 = v225;
    sub_220DBE6A0();
    v135 = v223;
    sub_220DBE390();
    v136 = *(v231 + 8);
    v137 = v235;
    v136(v134);
    LOBYTE(v134) = sub_220DBE440();
    sub_220DBE410();
    v5 = v152;
    (v136)(v232, v137);
    v153 = *(v236 + 8);
    v154 = OUTLINED_FUNCTION_11_7();
    v155(v154);
    v156 = sub_220DBF070();
    OUTLINED_FUNCTION_1_0(v156);
    (*(v157 + 8))(v230);
    v158 = *(v229 + 8);
    v159 = OUTLINED_FUNCTION_10_12();
    v158(v159);
    (v158)(v135, v45);
    (v158)(v228, v45);
    result = (v158)(v133, v45);
    v160 = v134 & 1;
LABEL_43:
    *v238 = v5;
    goto LABEL_44;
  }

  sub_220D3DD1C(v106, &qword_27CF951E0, &unk_220DC1D80);
  sub_220DBF020();
  OUTLINED_FUNCTION_3_0(v105);
  if (!v74)
  {
    v138 = v214;
    (*(v48 + 32))(v214, v105, v45);
    v139 = sub_220DBE430();
    if ((v139 & 1) == 0)
    {
      sub_220DBE410();
      v5 = v179;
      v180 = OUTLINED_FUNCTION_8_11();
      v181(v180);
      v182 = *(v90 + 8);
      v183 = OUTLINED_FUNCTION_11_7();
      v184(v183);
      v185 = sub_220DBF070();
      OUTLINED_FUNCTION_1_0(v185);
      (*(v186 + 8))(v71);
      v187 = *(v48 + 8);
      v188 = OUTLINED_FUNCTION_9_9();
      v187(v188);
      result = (v187)(v138, v45);
      goto LABEL_42;
    }

    v140 = v212[1];
    sub_220DBE480();
    sub_220DBE410();
    v5 = v141;
    v142 = OUTLINED_FUNCTION_8_11();
    v143(v142);
    v144 = *(v90 + 8);
    v145 = OUTLINED_FUNCTION_11_7();
    v146(v145);
    v147 = sub_220DBF070();
    OUTLINED_FUNCTION_1_0(v147);
    (*(v148 + 8))(v71);
    v149 = *(v48 + 8);
    v150 = OUTLINED_FUNCTION_9_9();
    v149(v150);
    (v149)(v140, v45);
    v151 = OUTLINED_FUNCTION_13_8();
    result = (v149)(v151);
    goto LABEL_36;
  }

  sub_220D3DD1C(v105, &qword_27CF951E0, &unk_220DC1D80);
  v107 = v89;
  sub_220DBF3D0();
  v108 = v215;
  (*(v48 + 16))(v215, v72, v45);
  v109 = v216;
  (*(v90 + 16))(v216, v91, v234);
  v220 = v107;
  v110 = sub_220DBF3F0();
  v111 = v91;
  v112 = sub_220DC0980();
  if (os_log_type_enabled(v110, v112))
  {
    v113 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    v239 = v228;
    *v113 = 136315394;
    OUTLINED_FUNCTION_7_11();
    sub_220D3DD70(v114, v115);
    sub_220DC0C70();
    v212[0] = v45;
    v116 = *(v48 + 8);
    v229 = v48 + 8;
    v116(v108, v45);
    v117 = OUTLINED_FUNCTION_13_8();
    v120 = sub_220D3F210(v117, v118, v119);

    *(v113 + 4) = v120;
    *(v113 + 12) = 2080;
    sub_220D3DD70(&qword_27CF95AC8, MEMORY[0x277CC9A70]);
    v121 = v234;
    sub_220DC0C70();
    v122 = *(v90 + 8);
    v122(v109, v121);
    v123 = OUTLINED_FUNCTION_13_8();
    v126 = sub_220D3F210(v123, v124, v125);

    *(v113 + 14) = v126;
    _os_log_impl(&dword_220CD1000, v110, v112, "Unexpected condition in makeDaylightString with date:%s, timeZone:%s", v113, 0x16u);
    v127 = v228;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v127, -1, -1);
    MEMORY[0x223D98FB0](v113, -1, -1);

    v128 = OUTLINED_FUNCTION_8_11();
    v129(v128);
    v122(v233, v121);
    v130 = sub_220DBF070();
    OUTLINED_FUNCTION_1_0(v130);
    (*(v131 + 8))(v230);
    v116(v237, v212[0]);
  }

  else
  {

    v171 = OUTLINED_FUNCTION_8_11();
    v172(v171);
    v173 = *(v90 + 8);
    v174 = v234;
    v173(v111, v234);
    v175 = sub_220DBF070();
    OUTLINED_FUNCTION_1_0(v175);
    (*(v176 + 8))(v230);
    v177 = *(v48 + 8);
    v178 = OUTLINED_FUNCTION_9_9();
    v177(v178);
    v173(v109, v174);
    (v177)(v108, v45);
  }

  result = (*(v217 + 8))(v220, v218);
  *v238 = 0;
  v160 = -1;
LABEL_44:
  *(v238 + 8) = v160;
  return result;
}

uint64_t sub_220D3DA6C()
{
  v0 = sub_220DBF410();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Double.formatTimeDuration()();
  result = v6.value._countAndFlagsBits;
  if (!v6.value._object)
  {
    sub_220DBF3D0();
    v7 = sub_220DBF3F0();
    v8 = sub_220DC0980();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      v11 = sub_220DC0780();
      v13 = sub_220D3F210(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_220CD1000, v7, v8, "Failed to generate duration string for %{public}s ", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x223D98FB0](v10, -1, -1);
      MEMORY[0x223D98FB0](v9, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return result;
}

BOOL static DaylightStringKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_220D3DCC0(uint64_t a1)
{
  EventFutureDayCountdown = type metadata accessor for SunriseSunsetNextEventFutureDayCountdown();
  (*(*(EventFutureDayCountdown - 8) + 8))(a1, EventFutureDayCountdown);
  return a1;
}

uint64_t sub_220D3DD1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_220D3DD70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220D3DDB8(uint64_t a1)
{
  result = sub_220D3DDE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_220D3DDE0()
{
  result = qword_27CF95AD0;
  if (!qword_27CF95AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95AD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DaylightStringBuilder(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DaylightStringKind(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DaylightStringKind(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t SunriseSunsetNextEventTodayCountdown.init(date:location:sunEvents:timeZone:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v181 = a3;
  v177 = a2;
  v174 = a5;
  v175 = a1;
  v163 = sub_220DBF410();
  v6 = OUTLINED_FUNCTION_0(v163);
  v162 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v164 = v11 - v10;
  v12 = sub_220DC03C0();
  v13 = OUTLINED_FUNCTION_0(v12);
  v168 = v14;
  v169 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v160 = (v17 - v18);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v19);
  v161 = &v160 - v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v21);
  v178 = &v160 - v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v23);
  v179 = &v160 - v24;
  v25 = sub_220DBE6C0();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v160 - v36;
  v38 = sub_220DBE560();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4();
  v165 = v44 - v45;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v46);
  v48 = &v160 - v47;
  v49 = sub_220DC04D0();
  v50 = OUTLINED_FUNCTION_0(v49);
  v170 = v51;
  v171 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1();
  v56 = v55 - v54;
  v57 = sub_220DBE6E0();
  v58 = OUTLINED_FUNCTION_0(v57);
  v172 = v59;
  v173 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_1();
  v64 = v63 - v62;
  v176 = a4;
  sub_220DBE600();
  v180 = v56;
  sub_220DC04C0();
  sub_220DBF050();
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    v65 = v41;
    sub_220CD8040(v37);
    v66 = v175;
  }

  else
  {
    (*(v41 + 32))(v48, v37, v38);
    (*(v28 + 104))(v33, *MEMORY[0x277CC99A0], v25);
    v66 = v175;
    v67 = sub_220DBE690();
    (*(v28 + 8))(v33, v25);
    v65 = v41;
    v68 = *(v41 + 8);
    v68(v48, v38);
    if (!v67)
    {
      v142 = sub_220DBE740();
      OUTLINED_FUNCTION_1_0(v142);
      (*(v143 + 8))(v176);
      v144 = sub_220DBF070();
      OUTLINED_FUNCTION_1_0(v144);
      (*(v145 + 8))(v181);
      v146 = sub_220DBF1D0();
      OUTLINED_FUNCTION_1_0(v146);
      (*(v147 + 8))(v177);
      v68(v66, v38);
      v148 = OUTLINED_FUNCTION_3_17();
      v149(v148);
      result = (*(v172 + 8))(v64, v173);
      v96 = v174;
      *v174 = 0;
      v95 = 2;
      goto LABEL_13;
    }
  }

  v166 = v38;
  v167 = v64;
  v69 = v177;
  sub_220DBF180();
  v70 = v179;
  v71 = v176;
  sub_220DC04B0();
  v73 = v168;
  v72 = v169;
  v74 = *(v168 + 16);
  v75 = v178;
  v74(v178, v70, v169);
  v76 = (*(v73 + 88))(v75, v72);
  if (v76 == *MEMORY[0x277D7B448])
  {
    (*(v73 + 96))(v75, v72);
    v77 = v65;
    v78 = *(v65 + 32);
    v80 = v165;
    v79 = v166;
    v78(v165, v75, v166);
    sub_220DBE410();
    v82 = v81;
    v83 = sub_220DBE740();
    OUTLINED_FUNCTION_1_0(v83);
    (*(v84 + 8))(v71);
    v85 = sub_220DBF070();
    OUTLINED_FUNCTION_1_0(v85);
    (*(v86 + 8))(v181);
    v87 = sub_220DBF1D0();
    OUTLINED_FUNCTION_1_0(v87);
    (*(v88 + 8))(v69);
    v89 = *(v77 + 8);
    v89(v66, v79);
    v89(v80, v79);
    (*(v73 + 8))(v70, v72);
    v90 = OUTLINED_FUNCTION_3_17();
    v91(v90);
    v92 = OUTLINED_FUNCTION_5_17();
    result = v93(v92);
    v95 = 0;
    v96 = v174;
    *v174 = v82;
  }

  else if (v76 == *MEMORY[0x277D7B440])
  {
    v97 = v178;
    (*(v73 + 96))(v178, v72);
    v98 = v65;
    v99 = *(v65 + 32);
    v101 = v165;
    v100 = v166;
    v99(v165, v97, v166);
    sub_220DBE410();
    v103 = v102;
    v104 = sub_220DBE740();
    OUTLINED_FUNCTION_1_0(v104);
    (*(v105 + 8))(v71);
    v106 = sub_220DBF070();
    OUTLINED_FUNCTION_1_0(v106);
    (*(v107 + 8))(v181);
    v108 = sub_220DBF1D0();
    OUTLINED_FUNCTION_1_0(v108);
    (*(v109 + 8))(v69);
    v110 = *(v98 + 8);
    v110(v66, v100);
    v110(v101, v100);
    (*(v73 + 8))(v179, v72);
    v111 = OUTLINED_FUNCTION_3_17();
    v112(v111);
    v113 = OUTLINED_FUNCTION_5_17();
    result = v114(v113);
    v96 = v174;
    *v174 = v103;
    v95 = 1;
  }

  else
  {
    v115 = v164;
    sub_220DBF3D0();
    v116 = v161;
    v117 = v179;
    v74(v161, v179, v72);
    v118 = v72;
    v119 = sub_220DBF3F0();
    v120 = sub_220DC0980();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v165 = v65;
      v122 = v121;
      v123 = v116;
      v124 = v73;
      v125 = swift_slowAlloc();
      v182 = v125;
      *v122 = 136446210;
      v126 = v118;
      v74(v160, v123, v118);
      v127 = sub_220DC0630();
      v129 = v128;
      LODWORD(v160) = v120;
      v130 = *(v124 + 8);
      v130(v123, v118);
      v131 = sub_220D3F210(v127, v129, &v182);

      *(v122 + 4) = v131;
      _os_log_impl(&dword_220CD1000, v119, v160, "Unexpected sunEvent type:%{public}s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v125);
      MEMORY[0x223D98FB0](v125, -1, -1);
      MEMORY[0x223D98FB0](v122, -1, -1);

      v132 = sub_220DBE740();
      OUTLINED_FUNCTION_1_0(v132);
      (*(v133 + 8))(v176);
      v134 = sub_220DBF070();
      OUTLINED_FUNCTION_1_0(v134);
      (*(v135 + 8))(v181);
      v136 = sub_220DBF1D0();
      OUTLINED_FUNCTION_1_0(v136);
      (*(v137 + 8))(v177);
      (*(v165 + 8))(v175, v166);
      (*(v162 + 8))(v164, v163);
      v130(v179, v118);
      v138 = OUTLINED_FUNCTION_3_17();
      v139(v138);
      v140 = OUTLINED_FUNCTION_5_17();
      v141(v140);
    }

    else
    {

      v150 = sub_220DBE740();
      OUTLINED_FUNCTION_1_0(v150);
      (*(v151 + 8))(v176);
      v152 = sub_220DBF070();
      OUTLINED_FUNCTION_1_0(v152);
      (*(v153 + 8))(v181);
      v154 = sub_220DBF1D0();
      OUTLINED_FUNCTION_1_0(v154);
      (*(v155 + 8))(v177);
      (*(v65 + 8))(v175, v166);
      v130 = *(v73 + 8);
      v130(v116, v118);
      (*(v162 + 8))(v115, v163);
      v130(v117, v118);
      v156 = OUTLINED_FUNCTION_3_17();
      v157(v156);
      v158 = OUTLINED_FUNCTION_5_17();
      v159(v158);
      v126 = v118;
    }

    result = (v130)(v178, v126);
    v96 = v174;
    *v174 = 0;
    v95 = -1;
  }

LABEL_13:
  *(v96 + 8) = v95;
  return result;
}

uint64_t sub_220D3EBE8()
{
  v1 = sub_220DBE260();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_1();
  v3 = sub_220DC05D0();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      OUTLINED_FUNCTION_9_10();
      if (v16 == v17)
      {
        sub_220DC05C0();
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_220DC17A0;
        v23 = v15;
        v24 = 1;
        *(v19 + 32) = sub_220D3F050();
        *(v19 + 40) = v20;
        sub_220DBE1F0();

        return (*(v6 + 8))(v11, v3);
      }

      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

LABEL_13:
      sub_220DBE240();
      sub_220DBE250();
      return sub_220DBE220();
    }

    if (qword_280FA6600 == -1)
    {
LABEL_12:
      OUTLINED_FUNCTION_7_12();
      goto LABEL_13;
    }

LABEL_20:
    OUTLINED_FUNCTION_10();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_9_10();
  if (v16 != v17)
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  sub_220DC05C0();
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_220DC17A0;
  v23 = v15;
  v24 = 0;
  *(v21 + 32) = sub_220D3F050();
  *(v21 + 40) = v22;
  sub_220DBE1F0();

  return (*(v6 + 8))(v14, v3);
}

uint64_t sub_220D3F014()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return sub_220D3EBE8();
}

uint64_t sub_220D3F050()
{
  v0 = sub_220DBF410();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Double.formatTimeDuration()();
  result = v6.value._countAndFlagsBits;
  if (!v6.value._object)
  {
    sub_220DBF3D0();
    v7 = sub_220DBF3F0();
    v8 = sub_220DC0980();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      v11 = sub_220DC0780();
      v13 = sub_220D3F210(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_220CD1000, v7, v8, "Failed to generate duration string for %{public}s ", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x223D98FB0](v10, -1, -1);
      MEMORY[0x223D98FB0](v9, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return result;
}

uint64_t sub_220D3F210(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_220D3F2D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_220D3F844(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_220D3F2D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_220D3F3D4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_220DC0BB0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_220D3F3D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_220D3F420(a1, a2);
  sub_220D3F538(&unk_283472400);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_220D3F420(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_220DC0690())
  {
    result = sub_220D3F61C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_220DC0B70();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_220DC0BB0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_220D3F538(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_220D3F68C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_220D3F61C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AD8, &unk_220DC4728);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_220D3F68C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AD8, &unk_220DC4728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for SunriseSunsetNextEventTodayCountdown(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SunriseSunsetNextEventTodayCountdown(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_220D3F804(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_220D3F81C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_220D3F844(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void VisibilityChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v325 = a3;
  v332 = a1;
  v334 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v291 - v7;
  v331 = sub_220DBF310();
  v9 = OUTLINED_FUNCTION_0(v331);
  v327 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_21();
  v326 = v13;
  OUTLINED_FUNCTION_6_1();
  v14 = sub_220DBE260();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_1_21();
  v333 = v16;
  OUTLINED_FUNCTION_6_1();
  v345 = sub_220DC0300();
  v17 = OUTLINED_FUNCTION_0(v345);
  v349 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_21();
  v337 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v336 = &v291 - v24;
  OUTLINED_FUNCTION_6_1();
  v344 = sub_220DC02F0();
  v25 = OUTLINED_FUNCTION_0(v344);
  v348 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_21();
  v341 = v29;
  OUTLINED_FUNCTION_6_1();
  v343 = sub_220DC0960();
  v30 = OUTLINED_FUNCTION_0(v343);
  v347 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_21();
  v335 = v34;
  OUTLINED_FUNCTION_6_1();
  v340 = sub_220DC0950();
  v35 = OUTLINED_FUNCTION_0(v340);
  v346 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9();
  v324 = v39;
  MEMORY[0x28223BE20](v40);
  v342 = &v291 - v41;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v42 = OUTLINED_FUNCTION_0(v339);
  v329 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9();
  v338 = v46;
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v291 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v323 = &v291 - v52;
  MEMORY[0x28223BE20](v51);
  v330 = (&v291 - v53);
  OUTLINED_FUNCTION_6_1();
  v54 = sub_220DBEAD0();
  v55 = OUTLINED_FUNCTION_0(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_21();
  v61 = v60;
  v62 = OUTLINED_FUNCTION_6_1();
  v63 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(v62);
  v64 = OUTLINED_FUNCTION_6(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_1_21();
  v68 = v67;
  v322 = *(a2 + 40);
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_1();
  v309 = v69;
  v70 = sub_220DBE240();
  v72 = v71;
  sub_220D34C0C(v332, v68);
  if (swift_getEnumCaseMultiPayload())
  {
    v73 = v70;
    v74 = sub_220DBE830();
    OUTLINED_FUNCTION_6(v74);
    (*(v75 + 8))(v68);
    v76 = OUTLINED_FUNCTION_22_6();
    sub_220CEF48C(v76, v8);
    v77 = v331;
    if (__swift_getEnumTagSinglePayload(v8, 1, v331) == 1)
    {

      sub_220CDA548(v8, &qword_27CF94F90, &unk_220DC4410);
      if (qword_27CF94F50 != -1)
      {
        swift_once();
      }

      v78 = sub_220DBF410();
      __swift_project_value_buffer(v78, qword_27CF95F78);
      v79 = sub_220DBF3F0();
      v80 = sub_220DC0980();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_220CD1000, v79, v80, "Failed to create chart header for Visibility due to missing extrema values", v81, 2u);
        MEMORY[0x223D98FB0](v81, -1, -1);
      }

      sub_220DBE250();
      v82 = v334;
      sub_220DBE220();
      v83 = type metadata accessor for ConditionDetailChartHeaderStringModel();
      v84 = v83[5];
      sub_220DBE210();
      OUTLINED_FUNCTION_9_8();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
      v89 = (v82 + v83[6]);
      *v89 = 0;
      v89[1] = 0;
      *(v82 + v83[7]) = xmmword_220DC17B0;
      v90 = (v82 + v83[8]);
      *v90 = 0;
      v90[1] = 0;
      v91 = (v82 + v83[11]);
      *v91 = 0;
      v91[1] = 0;
      *(v82 + v83[9]) = 0;
      v92 = (v82 + v83[10]);
      *v92 = 0;
      v92[1] = 0xE000000000000000;
      v93 = (v82 + v83[12]);
      v93[2] = 0u;
      v93[3] = 0u;
      *v93 = 0u;
      v93[1] = 0u;
    }

    else
    {
      v325 = v73;
      v332 = v72;
      v162 = v348;
      (*(v327 + 32))(v326, v8, v77);
      sub_220DBF2F0();
      sub_220CDB190();
      v163 = v322;
      sub_220DBE040();
      sub_220DBF300();
      v164 = v163;
      sub_220DBE040();
      static VisibilityCondition.condition(for:)(&v355);
      v301 = v355;
      static VisibilityCondition.condition(for:)(&v354);
      v298 = v354;
      sub_220DC0830();
      v311 = *MEMORY[0x277D7B4B0];
      v165 = v347;
      v166 = *(v347 + 104);
      v313 = (v347 + 104);
      v312 = v166;
      v308 = v50;
      v167 = v335;
      v168 = v343;
      v166(v335);
      LODWORD(v307) = *MEMORY[0x277D7B3E8];
      v169 = v162;
      v170 = *(v162 + 104);
      v315 = v162 + 104;
      v314 = v170;
      v171 = v341;
      v172 = v344;
      (v170)(v341);
      v310 = sub_220DBE5E0();
      v173 = v336;
      OUTLINED_FUNCTION_9_8();
      __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
      OUTLINED_FUNCTION_20_5();
      sub_220DC0280();

      v178 = v340;
      sub_220CDA548(v173, &qword_27CF95228, &unk_220DC1E60);
      v179 = *(v169 + 8);
      v348 = v169 + 8;
      v316 = v179;
      v179(v171, v172);
      v180 = *(v165 + 8);
      v347 = v165 + 8;
      v317 = v180;
      v180(v167, v168);
      LODWORD(v319) = *MEMORY[0x277D7B408];
      v181 = v349;
      v182 = *(v349 + 104);
      v321 = v349 + 104;
      v320 = v182;
      v183 = v337;
      v184 = v345;
      (v182)(v337);
      v318 = sub_220DBF100();
      sub_220DBF0D0();
      v322 = sub_220D427C0();
      v185 = v342;
      v300 = sub_220DBE0B0();
      v299 = v186;

      v187 = *(v181 + 8);
      v349 = v181 + 8;
      v323 = v187;
      (v187)(v183, v184);
      v188 = v346 + 8;
      v330 = *(v346 + 8);
      v330(v185, v178);
      sub_220DC0830();
      OUTLINED_FUNCTION_12_11();
      OUTLINED_FUNCTION_5_18();
      v189();
      v190 = v341;
      v191 = v344;
      OUTLINED_FUNCTION_7_13();
      v192();
      OUTLINED_FUNCTION_2_16(v173);
      OUTLINED_FUNCTION_13_9();
      sub_220DC0280();

      sub_220CDA548(v173, &qword_27CF95228, &unk_220DC1E60);
      v316(v190, v191);
      OUTLINED_FUNCTION_14_11();
      v193();
      OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_6_11();
      v194();
      OUTLINED_FUNCTION_24_5();
      OUTLINED_FUNCTION_23_7();
      v195 = sub_220DBE0B0();
      v197 = v196;

      OUTLINED_FUNCTION_3_18();
      v198();
      v346 = v188;
      OUTLINED_FUNCTION_19_7();
      v199();
      v200 = v299;
      v201 = sub_220DBE0D0();
      v202 = v300;
      v302 = v201;
      v303 = v203;
      OUTLINED_FUNCTION_5_1();
      v305 = v204;
      OUTLINED_FUNCTION_5_1();
      v304 = v205;
      OUTLINED_FUNCTION_5_1();
      v306 = v206;
      v207 = v202 == v195 && v200 == v197;
      if (v207 || (sub_220DC0CA0() & 1) != 0)
      {

        OUTLINED_FUNCTION_12_11();
        OUTLINED_FUNCTION_5_18();
        v208();
        v209 = v336;
        OUTLINED_FUNCTION_2_16(v336);
        sub_220DC0810();
        LODWORD(v309) = *MEMORY[0x277D7B3F8];
        v210 = v341;
        v211 = v344;
        OUTLINED_FUNCTION_7_13();
        v212();
        OUTLINED_FUNCTION_13_9();
        sub_220DC0280();

        v316(v210, v211);
        sub_220CDA548(v209, &qword_27CF95228, &unk_220DC1E60);
        OUTLINED_FUNCTION_14_11();
        v213();
        OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_6_11();
        v214();
        OUTLINED_FUNCTION_24_5();
        OUTLINED_FUNCTION_23_7();
        v307 = sub_220DBE0B0();
        v300 = v215;

        OUTLINED_FUNCTION_3_18();
        v216();
        OUTLINED_FUNCTION_19_7();
        v217();
        v351 = v301;
        v218 = sub_220D41724(&v351);
        v324 = v218;
        v220 = v219;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v221 = OUTLINED_FUNCTION_15_7();
        *(v221 + 16) = xmmword_220DC17C0;
        v222 = MEMORY[0x277D837D0];
        *(v221 + 56) = MEMORY[0x277D837D0];
        v223 = sub_220CEFDB0();
        v224 = v300;
        *(v221 + 32) = v307;
        *(v221 + 40) = v224;
        *(v221 + 96) = v222;
        *(v221 + 104) = v223;
        *(v221 + 64) = v223;
        *(v221 + 72) = v218;
        *(v221 + 80) = v220;

        OUTLINED_FUNCTION_22_6();
        v328 = sub_220DC05F0();
        v325 = v225;

        sub_220DC0830();
        OUTLINED_FUNCTION_12_11();
        OUTLINED_FUNCTION_5_18();
        v226();
        OUTLINED_FUNCTION_2_16(v209);
        v227 = v344;
        OUTLINED_FUNCTION_7_13();
        v228();
        OUTLINED_FUNCTION_13_9();
        sub_220DC0280();

        v316(v210, v227);
        sub_220CDA548(v209, &qword_27CF95228, &unk_220DC1E60);
        OUTLINED_FUNCTION_14_11();
        v229();
        OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_6_11();
        v230();
        OUTLINED_FUNCTION_24_5();
        v231 = v339;
        OUTLINED_FUNCTION_23_7();
        v232 = v338;
        sub_220DBE0B0();

        OUTLINED_FUNCTION_3_18();
        v233();
        OUTLINED_FUNCTION_19_7();
        v234();
        sub_220DBE250();
        v235 = v334;
        sub_220DBE220();
        v236 = type metadata accessor for ConditionDetailChartHeaderStringModel();
        v237 = v236[5];

        sub_220DBE250();
        sub_220DBE220();

        v238 = *(v329 + 8);
        v238(v232, v231);
        v238(v308, v231);
        v239 = OUTLINED_FUNCTION_9_11();
        v240(v239);
        v241 = sub_220DBE210();
        __swift_storeEnumTagSinglePayload(v235 + v237, 0, 1, v241);
        OUTLINED_FUNCTION_11_8(v236[6]);
        v242 = (v235 + v236[7]);
        *v242 = v324;
        v242[1] = v220;
        OUTLINED_FUNCTION_11_8(v236[8]);
        OUTLINED_FUNCTION_11_8(v236[11]);
        *(v235 + v236[9]) = 0;
        v243 = (v235 + v236[10]);
        v244 = v325;
        *v243 = v328;
        v243[1] = v244;
        v245 = v236[12];
      }

      else
      {
        OUTLINED_FUNCTION_16_9();
        sub_220DBE240();
        v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v246 = OUTLINED_FUNCTION_15_7();
        v297 = xmmword_220DC17C0;
        *(v246 + 16) = xmmword_220DC17C0;
        v247 = MEMORY[0x277D837D0];
        *(v246 + 56) = MEMORY[0x277D837D0];
        v248 = sub_220CEFDB0();
        *(v246 + 32) = v202;
        *(v246 + 40) = v200;
        *(v246 + 96) = v247;
        *(v246 + 104) = v248;
        *(v246 + 64) = v248;
        *(v246 + 72) = v195;
        v249 = v248;
        v292 = v248;
        *(v246 + 80) = v197;

        v296 = sub_220DC05F0();
        v295 = v250;

        OUTLINED_FUNCTION_16_9();
        v309 = sub_220DBE240();
        v293 = v251;
        v252 = OUTLINED_FUNCTION_15_7();
        *(v252 + 16) = v297;
        *(v252 + 56) = MEMORY[0x277D837D0];
        *(v252 + 64) = v249;
        *(v252 + 32) = v202;
        *(v252 + 40) = v200;
        sub_220DC0810();
        v253 = v335;
        v254 = v343;
        v312(v335, v311, v343);
        v255 = v341;
        v256 = v344;
        (v314)(v341, v307, v344);
        v257 = v336;
        OUTLINED_FUNCTION_2_16(v336);
        v258 = v342;
        OUTLINED_FUNCTION_20_5();
        sub_220DC0280();

        sub_220CDA548(v257, &qword_27CF95228, &unk_220DC1E60);
        v316(v255, v256);
        v317(v253, v254);
        v259 = v324;
        sub_220DC0940();
        v260 = v340;
        v261 = v330;
        v330(v258, v340);
        OUTLINED_FUNCTION_21_5();
        v320();
        OUTLINED_FUNCTION_24_5();
        OUTLINED_FUNCTION_23_7();
        v262 = sub_220DBE0B0();
        v264 = v263;

        OUTLINED_FUNCTION_3_18();
        v265();
        v261(v259, v260);
        v266 = MEMORY[0x277D837D0];
        v267 = v292;
        *(v252 + 96) = MEMORY[0x277D837D0];
        *(v252 + 104) = v267;
        *(v252 + 72) = v262;
        *(v252 + 80) = v264;
        v268 = sub_220DC05F0();
        v270 = v269;

        v353 = v301;
        v352 = v298;
        v271 = sub_220D41A80(&v353, &v352);
        v273 = v272;
        v274 = OUTLINED_FUNCTION_15_7();
        *(v274 + 16) = v297;
        *(v274 + 56) = v266;
        *(v274 + 64) = v267;
        *(v274 + 32) = v268;
        *(v274 + 40) = v270;
        *(v274 + 96) = v266;
        *(v274 + 104) = v267;
        *(v274 + 72) = v271;
        *(v274 + 80) = v273;

        OUTLINED_FUNCTION_22_6();
        v275 = sub_220DC05F0();
        v277 = v276;

        sub_220DBE250();
        v235 = v334;
        sub_220DBE220();
        v278 = type metadata accessor for ConditionDetailChartHeaderStringModel();
        v279 = v278[5];

        sub_220DBE250();
        sub_220DBE220();

        v280 = *(v329 + 8);
        v281 = v339;
        v280(v338, v339);
        v280(v308, v281);
        v282 = OUTLINED_FUNCTION_9_11();
        v283(v282);
        v284 = sub_220DBE210();
        __swift_storeEnumTagSinglePayload(v235 + v279, 0, 1, v284);
        OUTLINED_FUNCTION_11_8(v278[6]);
        v285 = (v235 + v278[7]);
        *v285 = v271;
        v285[1] = v273;
        OUTLINED_FUNCTION_11_8(v278[8]);
        OUTLINED_FUNCTION_11_8(v278[11]);
        *(v235 + v278[9]) = 0;
        v286 = (v235 + v278[10]);
        *v286 = v275;
        v286[1] = v277;
        v245 = v278[12];
      }

      v287 = (v235 + v245);
      v288 = v305;
      *v287 = 0xD000000000000013;
      v287[1] = v288;
      v289 = v304;
      v287[2] = 0xD000000000000012;
      v287[3] = v289;
      v287[4] = 0;
      v287[5] = 0;
      v290 = v306;
      v287[6] = 0xD000000000000019;
      v287[7] = v290;
    }
  }

  else
  {
    v331 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
    v320 = v57;
    v94 = *(v57 + 32);
    v321 = v61;
    v312 = v68;
    v319 = v54;
    v94(v61, v68, v54);
    OUTLINED_FUNCTION_19_7();
    v332 = v72;
    v95 = v348;
    sub_220DBE9A0();
    LODWORD(v327) = *MEMORY[0x277D7B4B0];
    v96 = v347;
    v97 = *(v347 + 104);
    v322 = (v347 + 104);
    v326 = v97;
    v98 = v335;
    v99 = v343;
    v97(v335);
    LODWORD(v318) = *MEMORY[0x277D7B3F8];
    v100 = *(v95 + 104);
    v316 = (v95 + 104);
    v317 = v100;
    v101 = v341;
    v102 = v344;
    (v100)(v341);
    v315 = sub_220DBE5E0();
    v103 = v336;
    OUTLINED_FUNCTION_9_8();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
    sub_220DC0810();
    v108 = v342;
    sub_220DC0280();

    sub_220CDA548(v103, &qword_27CF95228, &unk_220DC1E60);
    v109 = *(v95 + 8);
    v348 = v95 + 8;
    v314 = v109;
    v109(v101, v102);
    v110 = *(v96 + 8);
    v347 = v96 + 8;
    v313 = v110;
    v110(v98, v99);
    v111 = v324;
    v112 = v108;
    sub_220DC0940();
    v113 = v346 + 8;
    v338 = *(v346 + 8);
    v114 = v340;
    v338(v112, v340);
    v346 = v113;
    v311 = *MEMORY[0x277D7B408];
    v115 = v349;
    v116 = *(v349 + 104);
    v309 = v349 + 104;
    v310 = v116;
    v117 = v337;
    v118 = v345;
    v116(v337);
    v308 = sub_220DBF100();
    sub_220DBF0D0();
    v307 = sub_220D427C0();
    v325 = v70;
    v119 = v339;
    v120 = v330;
    v303 = sub_220DBE0B0();
    v302 = v121;

    v122 = *(v115 + 8);
    v349 = v115 + 8;
    v305 = v122;
    v122(v117, v118);
    v338(v111, v114);
    v123 = *(v329 + 8);
    v123(v120, v119);
    v124 = v123;
    sub_220DBE9A0();
    static VisibilityCondition.condition(for:)(&v350);
    v125 = v119;
    v123(v120, v119);
    v304 = v123;
    v126 = sub_220D41724(&v350);
    v324 = v126;
    v128 = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v129 = OUTLINED_FUNCTION_15_7();
    *(v129 + 16) = xmmword_220DC17C0;
    v130 = MEMORY[0x277D837D0];
    *(v129 + 56) = MEMORY[0x277D837D0];
    v131 = sub_220CEFDB0();
    v132 = v302;
    *(v129 + 32) = v303;
    *(v129 + 40) = v132;
    *(v129 + 96) = v130;
    *(v129 + 104) = v131;
    *(v129 + 64) = v131;
    *(v129 + 72) = v126;
    v306 = v128;
    *(v129 + 80) = v128;

    OUTLINED_FUNCTION_22_6();
    v329 = sub_220DC05F0();
    v328 = v133;

    sub_220DBE9A0();
    v332 = sub_220DBE100();
    v325 = v134;
    v124(v120, v125);
    v135 = v323;
    sub_220DBE9A0();
    sub_220DC0820();
    v136 = v335;
    v137 = v343;
    v326(v335, v327, v343);
    v138 = v341;
    v139 = v344;
    (v317)(v341, v318, v344);
    v140 = v336;
    OUTLINED_FUNCTION_9_8();
    __swift_storeEnumTagSinglePayload(v141, v142, v143, v315);
    v144 = v342;
    sub_220DC0280();

    sub_220CDA548(v140, &qword_27CF95228, &unk_220DC1E60);
    v314(v138, v139);
    v313(v136, v137);
    v145 = v337;
    v146 = v345;
    v310(v337, v311, v345);
    sub_220DBF0D0();
    v147 = v340;
    sub_220DBE0B0();

    v305(v145, v146);
    v338(v144, v147);
    v304(v135, v125);
    sub_220DBE250();
    v148 = v334;
    sub_220DBE220();
    v149 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    v150 = v149[5];

    sub_220DBE250();
    sub_220DBE220();

    (*(v320 + 1))(v321, v319);
    v151 = sub_220DBE210();
    __swift_storeEnumTagSinglePayload(v148 + v150, 0, 1, v151);
    v152 = (v148 + v149[6]);
    *v152 = 0;
    v152[1] = 0;
    v153 = (v148 + v149[7]);
    v154 = v306;
    *v153 = v324;
    v153[1] = v154;
    v155 = (v148 + v149[8]);
    *v155 = 0;
    v155[1] = 0;
    v156 = (v148 + v149[11]);
    *v156 = 0;
    v156[1] = 0;
    *(v148 + v149[9]) = 0;
    v157 = (v148 + v149[10]);
    v158 = v328;
    *v157 = v329;
    v157[1] = v158;
    v159 = (v148 + v149[12]);
    v160 = sub_220DBE830();
    *v159 = 0u;
    v159[1] = 0u;
    v159[2] = 0u;
    v159[3] = 0u;
    OUTLINED_FUNCTION_6(v160);
    (*(v161 + 8))(v312 + v331);
  }
}

uint64_t sub_220D41724(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_14;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_14:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D41A80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 1:
      switch(*a2)
      {
        case 1:
          v12 = 1;
          v3 = &v12;
          goto LABEL_86;
        case 2:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 3:
          if (qword_280FA6600 != -1)
          {
            swift_once();
          }

          v6 = 0x280FA6000uLL;
          goto LABEL_63;
        case 4:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 5:
          if (qword_280FA6600 != -1)
          {
            swift_once();
          }

          v8 = 0x280FA6000;
          goto LABEL_83;
        default:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
      }

    case 2:
      switch(*a2)
      {
        case 1:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 2:
          v13 = 2;
          v3 = &v13;
          goto LABEL_86;
        case 3:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 4:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 5:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        default:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
      }

    case 3:
      switch(*a2)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            swift_once();
          }

          v6 = 0x280FA6000;
          goto LABEL_63;
        case 2:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 3:
          v14 = 3;
          v3 = &v14;
          goto LABEL_86;
        case 4:
          if (qword_280FA6600 != -1)
          {
            swift_once();
          }

          v4 = 0x280FA6000uLL;
          goto LABEL_30;
        case 5:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        default:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
      }

    case 4:
      switch(*a2)
      {
        case 1:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 2:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 3:
          if (qword_280FA6600 != -1)
          {
            swift_once();
          }

          v4 = 0x280FA6000;
LABEL_30:
          v5 = *(v4 + 1544);
          goto LABEL_84;
        case 4:
          v15 = 4;
          v3 = &v15;
          goto LABEL_86;
        case 5:
          if (qword_280FA6600 != -1)
          {
            swift_once();
          }

          v6 = 0x280FA6000;
          goto LABEL_63;
        default:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
      }

    case 5:
      switch(*a2)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            swift_once();
          }

          v8 = 0x280FA6000uLL;
LABEL_83:
          v9 = *(v8 + 1544);
          goto LABEL_84;
        case 2:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 3:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 4:
          if (qword_280FA6600 != -1)
          {
            swift_once();
          }

          v6 = 0x280FA6000;
LABEL_63:
          v7 = *(v6 + 1544);
          goto LABEL_84;
        case 5:
          v16 = 5;
          v3 = &v16;
          goto LABEL_86;
        default:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
      }

    default:
      switch(*a2)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_87;
          }

          goto LABEL_84;
        case 2:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 3:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 4:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        case 5:
          if (qword_280FA6600 == -1)
          {
            goto LABEL_84;
          }

LABEL_87:
          swift_once();
LABEL_84:
          result = sub_220DBE240();
          break;
        default:
          v11 = 0;
          v3 = &v11;
LABEL_86:
          result = sub_220D41724(v3);
          break;
      }

      return result;
  }
}

unint64_t sub_220D427C0()
{
  result = qword_280FA6620;
  if (!qword_280FA6620)
  {
    sub_220DC0950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6620);
  }

  return result;
}

uint64_t SunElevationCalculator.__allocating_init(locationPeakTimeCalculator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  SunElevationCalculator.init(locationPeakTimeCalculator:)(a1);
  return v2;
}

uint64_t sub_220D428A8()
{
  if ((sub_220DBF190() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for SunElevationCalculator.CacheKey() + 20);

  return sub_220DBE460();
}

uint64_t sub_220D42908()
{
  sub_220DBF1D0();
  sub_220D43704(&qword_27CF95630, MEMORY[0x277D7AB60]);
  sub_220DC0560();
  v0 = *(type metadata accessor for SunElevationCalculator.CacheKey() + 20);
  sub_220DBE560();
  sub_220D43704(&qword_280FA77A0, MEMORY[0x277CC9578]);
  return sub_220DC0560();
}

uint64_t sub_220D429E0()
{
  sub_220DC0CE0();
  sub_220DBF1D0();
  sub_220D43704(&qword_27CF95630, MEMORY[0x277D7AB60]);
  sub_220DC0560();
  v0 = *(type metadata accessor for SunElevationCalculator.CacheKey() + 20);
  sub_220DBE560();
  sub_220D43704(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t sub_220D42AD8(uint64_t a1, uint64_t a2)
{
  sub_220DC0CE0();
  sub_220DBF1D0();
  sub_220D43704(&qword_27CF95630, MEMORY[0x277D7AB60]);
  sub_220DC0560();
  v3 = *(a2 + 20);
  sub_220DBE560();
  sub_220D43704(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t SunElevationCalculator.init(locationPeakTimeCalculator:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AE0, &unk_220DC47A0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_220DBF280();
  sub_220CD570C(a1, v1 + 24);
  return v1;
}

uint64_t SunElevationCalculator.getElevation(for:on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v101 = a2;
  v102 = a3;
  v6 = sub_220DBF1D0();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v92 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v95 = v86 - v15;
  v16 = sub_220DBE560();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  v91 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = v86 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AE8, &qword_220DC47B0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_9();
  v98 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = v86 - v30;
  v32 = type metadata accessor for SunElevationCalculator.CacheKey();
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9();
  v97 = v35;
  MEMORY[0x28223BE20](v36);
  v38 = v86 - v37;
  v93 = v9;
  v94 = v6;
  v39 = *(v9 + 16);
  v100 = a1;
  v40 = a1;
  v41 = v101;
  v90 = v39;
  v39(v86 - v37, v40, v6);
  v42 = *(v33 + 28);
  v99 = v19;
  v43 = *(v19 + 16);
  (v43)(&v38[v42], v41, v16);
  v96 = v4[2];
  v44 = v96;
  sub_220DBF290();
  sub_220DC0500();
  v45 = OUTLINED_FUNCTION_3_19();
  if (__swift_getEnumTagSinglePayload(v45, 1, v44) == 1)
  {
    v88 = v44;
    v89 = v38;
    sub_220D433A8(v31);
    v46 = v100;
    sub_220DBF180();
    v48 = v47;
    sub_220DBF180();
    v50 = v49;
    v51 = v4[6];
    v52 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v51);
    (*(v52 + 8))(v46, v41, v51, v52);
    v53 = sub_220DBE430();
    v54 = v95;
    (v43)(v95, v41, v16);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v16);
    v55 = objc_allocWithZone(MEMORY[0x277D0EB38]);
    v56 = sub_220D4349C(v54, 0, v48, v50);
    v57 = v16;
    v58 = v56;
    if (v56)
    {
      [v56 altitude];
      v59 = v102;
      v43 = v99;
      v60 = v89;
    }

    else
    {
      v62 = v41;
      v86[3] = v53;
      v87 = 0;
      v63 = v100;
      v95 = v25;
      if (qword_27CF94F50 != -1)
      {
        swift_once();
      }

      v64 = sub_220DBF410();
      __swift_project_value_buffer(v64, qword_27CF95F78);
      v65 = v92;
      v66 = v63;
      v67 = v94;
      v90(v92, v66, v94);
      (v43)(v91, v62, v57);
      v68 = sub_220DBF3F0();
      v69 = sub_220DC0980();
      v70 = os_log_type_enabled(v68, v69);
      v59 = v102;
      if (v70)
      {
        v43 = v67;
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v103[0] = v72;
        *v71 = 141558531;
        *(v71 + 4) = 1752392040;
        *(v71 + 12) = 2081;
        v73 = v65;
        sub_220DBF1B0();
        v74 = OUTLINED_FUNCTION_3_19();
        v76 = v75;
        (*(v93 + 8))(v74, v43);
        sub_220D3F210(v73, v76, v103);
        OUTLINED_FUNCTION_3_19();

        *(v71 + 14) = v73;
        *(v71 + 22) = 2082;
        sub_220D43704(&qword_27CF95AC0, MEMORY[0x277CC9578]);
        v77 = sub_220DC0C70();
        v79 = v78;
        v80 = OUTLINED_FUNCTION_1_22();
        v81(v80);
        sub_220D3F210(v77, v79, v103);
        OUTLINED_FUNCTION_3_19();

        *(v71 + 24) = v77;
        _os_log_impl(&dword_220CD1000, v68, v69, "Failed to get elevationDegrees for location:%{private,mask.hash}s, date: %{public}s", v71, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D98FB0](v72, -1, -1);
        MEMORY[0x223D98FB0](v71, -1, -1);
      }

      else
      {

        v82 = OUTLINED_FUNCTION_1_22();
        v83(v82);
        (*(v93 + 8))(v65, v67);
      }

      v25 = v95;
      v60 = v89;
      v58 = v87;
    }

    sub_220DC0510();
    sub_220D43570(v60, v97);
    v84 = v88;
    v85 = v98;
    (*(*(v88 - 8) + 16))(v98, v59, v88);
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v84);
    sub_220DBF2A0();

    (*(v43 + 8))(v25, v57);
    return sub_220D435D4(v60);
  }

  else
  {
    sub_220D435D4(v38);
    return (*(*(v44 - 8) + 32))(v102, v31, v44);
  }
}

uint64_t type metadata accessor for SunElevationCalculator.CacheKey()
{
  result = qword_27CF95AF0;
  if (!qword_27CF95AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D433A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95AE8, &qword_220DC47B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SunElevationCalculator.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t SunElevationCalculator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

id sub_220D4349C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_220DBE560();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) != 1)
  {
    v11 = sub_220DBE420();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  v12 = [v5 initWithLocation:v11 date:a2 body:{a3, a4}];

  return v12;
}

uint64_t sub_220D43570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunElevationCalculator.CacheKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D435D4(uint64_t a1)
{
  v2 = type metadata accessor for SunElevationCalculator.CacheKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D43704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PrecipitationTotalChartHeaderStringBuilder.__allocating_init(precipitationTotalHeroStringBuilder:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_220CD570C(a1, v2 + 16);
  return v2;
}

uint64_t PrecipitationTotalChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_220DBE260();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_1();
  v112 = v6 - v5;
  v7 = type metadata accessor for PrecipitationTotalHeroString(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_220DBE830();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = sub_220DBEAD0();
  v22 = OUTLINED_FUNCTION_0(v21);
  v115 = v23;
  v119 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v29 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v34 = sub_220DBE240();
  v36 = v35;
  sub_220D34C0C(a1, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v38 = OUTLINED_FUNCTION_1_23(v15);
      v39(v38);
      v40 = a2;
      v41 = v20;
      v42 = 0;
    }

    else
    {
      v86 = OUTLINED_FUNCTION_1_23(v15);
      v87(v86);
      v40 = a2;
      v41 = v20;
      v42 = 1;
    }

    sub_220D43D84(v41, v42, v34, v36, v40);

    return (*(v15 + 8))(v20, v33);
  }

  else
  {
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
    v105 = v28;
    (*(v115 + 32))(v28, v33, v119);
    (*(v15 + 32))(v20, v33 + v43, v12);
    v44 = v123[5];
    v45 = v123[6];
    __swift_project_boxed_opaque_existential_1(v123 + 2, v44);
    v46 = type metadata accessor for ConditionDetailChartHeaderInput(0);
    (*(v45 + 8))(v28, a1 + *(v46 + 24), v20, a1 + *(v46 + 32), v44, v45);
    v47 = PrecipitationTotalHeroString.longSubtitle.getter();
    v124 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_220DC17C0;
    v50 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v50, 1, 1, v51, v52, v53, v54, v55, v88, v91, v47, v97, v101, v105, v12, v112, v115, v119, v124, a2);
    v57 = v56;
    v59 = v58;

    v60 = MEMORY[0x277D837D0];
    *(v49 + 56) = MEMORY[0x277D837D0];
    v61 = sub_220CEFDB0();
    *(v49 + 32) = v57;
    *(v49 + 40) = v59;
    *(v49 + 96) = v60;
    *(v49 + 104) = v61;
    *(v49 + 64) = v61;
    *(v49 + 72) = v47;
    *(v49 + 80) = v125;

    v62 = sub_220DC05F0();
    v98 = v63;
    v102 = v62;

    v64 = sub_220DC0830();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v64, 0, 1, v65, v66, v67, v68, v69, v89, v92, v94, v98, v102, v106, v109, v113, v116, v120, v125, v129);

    v70 = sub_220DC0820();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v70, 0, 1, v71, v72, v73, v74, v75, v90, v93, v95, v99, v103, v107, v110, v114, v117, v121, v126, v130);

    sub_220DBE250();
    sub_220DBE220();
    v76 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    v77 = v76[5];

    sub_220DBE250();
    sub_220DBE220();

    sub_220D440E8(v11);
    (*(v15 + 8))(v20, v111);
    (*(v118 + 8))(v108, v122);
    v78 = sub_220DBE210();
    result = __swift_storeEnumTagSinglePayload(v131 + v77, 0, 1, v78);
    v80 = (v131 + v76[6]);
    *v80 = 0;
    v80[1] = 0;
    v81 = (v131 + v76[7]);
    *v81 = v96;
    v81[1] = v127;
    v82 = (v131 + v76[8]);
    *v82 = 0;
    v82[1] = 0;
    v83 = (v131 + v76[11]);
    *v83 = 0;
    v83[1] = 0;
    *(v131 + v76[9]) = 0;
    v84 = (v131 + v76[10]);
    *v84 = v104;
    v84[1] = v100;
    v85 = (v131 + v76[12]);
    v85[2] = 0u;
    v85[3] = 0u;
    *v85 = 0u;
    v85[1] = 0u;
  }

  return result;
}

double sub_220D43D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a3;
  v61 = a4;
  v9 = sub_220DBE260();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for PrecipitationTotalHeroString(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5[5];
  v16 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v15);
  (*(v16 + 16))(a1, a2, v15, v16);
  v17 = PrecipitationTotalHeroString.longSubtitle.getter();
  v59 = v17;
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_220DC17C0;
  v21 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 1, 1, v22, v23, v24, v25, v26, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v28 = v27;
  v30 = v29;

  v31 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v32 = sub_220CEFDB0();
  *(v20 + 32) = v28;
  *(v20 + 40) = v30;
  *(v20 + 96) = v31;
  *(v20 + 104) = v32;
  *(v20 + 64) = v32;
  *(v20 + 72) = v17;
  *(v20 + 80) = v19;

  v33 = sub_220DC05F0();
  v60 = v34;
  v61 = v33;

  v35 = sub_220DC0830();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v35, 0, 1, v36, v37, v38, v39, v40, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);

  v41 = sub_220DC0820();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v41, 0, 1, v42, v43, v44, v45, v46, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);

  sub_220DBE250();
  sub_220DBE220();
  v47 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v48 = v47[5];

  sub_220DBE250();
  sub_220DBE220();

  sub_220D440E8(v14);
  v49 = sub_220DBE210();
  __swift_storeEnumTagSinglePayload(a5 + v48, 0, 1, v49);
  v50 = (a5 + v47[6]);
  *v50 = 0;
  v50[1] = 0;
  v51 = (a5 + v47[7]);
  *v51 = v59;
  v51[1] = v19;
  v52 = (a5 + v47[8]);
  *v52 = 0;
  v52[1] = 0;
  v53 = (a5 + v47[11]);
  *v53 = 0;
  v53[1] = 0;
  *(a5 + v47[9]) = 0;
  v54 = (a5 + v47[10]);
  v55 = v60;
  *v54 = v61;
  v54[1] = v55;
  v56 = (a5 + v47[12]);
  result = 0.0;
  v56[2] = 0u;
  v56[3] = 0u;
  *v56 = 0u;
  v56[1] = 0u;
  return result;
}

uint64_t PrecipitationTotalChartHeaderStringBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_220D440E8(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalHeroString(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void UVIndexChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v143 = a2;
  v150 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v138 = &v136 - v6;
  v149 = sub_220DBE210();
  v7 = OUTLINED_FUNCTION_0(v149);
  v137 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v136 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v136 - v15;
  v147 = sub_220DBF310();
  v17 = OUTLINED_FUNCTION_0(v147);
  v142 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v141 = v22 - v21;
  v23 = sub_220DBE260();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_1();
  v151 = v26 - v25;
  v27 = sub_220DBEF70();
  v28 = OUTLINED_FUNCTION_0(v27);
  v139 = v29;
  v140 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  v35 = sub_220DBEAD0();
  v36 = OUTLINED_FUNCTION_0(v35);
  v145 = v37;
  v146 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  v43 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  v44 = OUTLINED_FUNCTION_6(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_20();
  v50 = sub_220DBE240();
  v52 = v51;
  OUTLINED_FUNCTION_3_20();
  v144 = sub_220DBE240();
  v148 = v53;
  OUTLINED_FUNCTION_3_20();
  v54 = sub_220DBE240();
  v56 = v55;
  sub_220D34C0C(v150, v49);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v152 = v50;
  if (!EnumCaseMultiPayload)
  {
    v150 = a3;
    v71 = *(v145 + 32);
    v138 = v49;
    v71(v42, v49, v146);
    sub_220DBEA80();
    v72 = sub_220DBEF60();
    v73 = *(v139 + 8);
    v142 = v54;
    v139 = v56;
    v74 = v140;
    v73(v34, v140);
    v75 = UVIndex.ExposureCategory.localizedString.getter(v72);
    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_220DC1CC0;
    sub_220DBEA80();
    v79 = sub_220DBEF50();
    v73(v34, v74);
    v80 = MEMORY[0x277D83C10];
    *(v78 + 56) = MEMORY[0x277D83B88];
    *(v78 + 64) = v80;
    *(v78 + 32) = v79;
    v81 = MEMORY[0x277D837D0];
    *(v78 + 96) = MEMORY[0x277D837D0];
    v82 = sub_220CEFDB0();
    v143 = v75;
    *(v78 + 72) = v75;
    *(v78 + 80) = v77;
    *(v78 + 136) = v81;
    *(v78 + 144) = v82;
    v83 = v152;
    *(v78 + 104) = v82;
    *(v78 + 112) = v83;
    *(v78 + 120) = v52;

    v147 = v52;
    v84 = v74;

    v85 = sub_220DC05F0();
    v141 = v86;
    v142 = v85;

    sub_220CEFE04();
    v87 = sub_220DC09E0();
    sub_220DBEA80();
    v88 = sub_220DBEF50();
    v73(v34, v74);
    v89 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v90 = [v87 stringFromNumber_];

    if (v90)
    {
      sub_220DC0620();
    }

    else
    {
      sub_220DBEA80();
      v113 = sub_220DBEF50();
      v73(v34, v84);
      v153 = v113;
      sub_220DC0C70();
    }

    v114 = v150;
    v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
    sub_220DBE250();
    sub_220DBE220();
    v116 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    v117 = *(v116 + 20);

    sub_220DBE250();
    sub_220DBE220();

    (*(v145 + 8))(v42, v146);
    __swift_storeEnumTagSinglePayload(v114 + v117, 0, 1, v149);
    OUTLINED_FUNCTION_5_19();
    v118 = v147;
    *v119 = v152;
    v119[1] = v118;
    OUTLINED_FUNCTION_2_17();
    v120 = v141;
    *v121 = v142;
    v121[1] = v120;
    v122 = (v114 + *(v116 + 48));
    v123 = sub_220DBE830();
    *v122 = 0u;
    v122[1] = 0u;
    v122[2] = 0u;
    v122[3] = 0u;
    OUTLINED_FUNCTION_6(v123);
    (*(v124 + 8))(&v138[v115]);
    return;
  }

  v58 = sub_220DBE830();
  OUTLINED_FUNCTION_6(v58);
  (*(v59 + 8))(v49);
  sub_220CEF48C(v143, v16);
  v60 = v147;
  if (__swift_getEnumTagSinglePayload(v16, 1, v147) == 1)
  {

    sub_220CEF4FC(v16);
    if (qword_27CF94F50 != -1)
    {
      swift_once();
    }

    v61 = sub_220DBF410();
    __swift_project_value_buffer(v61, qword_27CF95F78);
    v62 = sub_220DBF3F0();
    v63 = sub_220DC0980();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_220CD1000, v62, v63, "Failed to create chart header for UV Index due to missing extrema values", v64, 2u);
      MEMORY[0x223D98FB0](v64, -1, -1);
    }

    sub_220DBE250();
    sub_220DBE220();
    v65 = type metadata accessor for ConditionDetailChartHeaderStringModel();
    __swift_storeEnumTagSinglePayload(a3 + v65[5], 1, 1, v149);
    v66 = (a3 + v65[6]);
    *v66 = 0;
    v66[1] = 0;
    *(a3 + v65[7]) = xmmword_220DC17B0;
    v67 = (a3 + v65[8]);
    *v67 = 0;
    v67[1] = 0;
    v68 = (a3 + v65[11]);
    *v68 = 0;
    v68[1] = 0;
    *(a3 + v65[9]) = 0;
    v69 = (a3 + v65[10]);
    *v69 = 0;
    v69[1] = 0xE000000000000000;
    v70 = (a3 + v65[12]);
    v70[2] = 0u;
    v70[3] = 0u;
    *v70 = 0u;
    v70[1] = 0u;
    return;
  }

  (*(v142 + 32))(v141, v16, v60);
  sub_220DBF2F0();
  v92 = round(v91);
  if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v92 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v92 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v150 = a3;
  v93 = v92;
  v94 = sub_220D44E2C(v92);
  v95 = v52;
  if (v94 == 5)
  {
    v96 = 0;
    v97 = 0;
  }

  else
  {
    v96 = UVIndex.ExposureCategory.localizedString.getter(v94);
    v97 = v98;
  }

  v99 = v152;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_220DC1CC0;
  v101 = MEMORY[0x277D83C10];
  *(v100 + 56) = MEMORY[0x277D83B88];
  *(v100 + 64) = v101;
  *(v100 + 32) = v93;
  v102 = MEMORY[0x277D837D0];
  *(v100 + 96) = MEMORY[0x277D837D0];
  v103 = sub_220CEFDB0();
  v146 = v96;
  if (v97)
  {
    v104 = v96;
  }

  else
  {
    v104 = 0;
  }

  v105 = 0xE000000000000000;
  if (v97)
  {
    v105 = v97;
  }

  *(v100 + 72) = v104;
  *(v100 + 80) = v105;
  *(v100 + 136) = v102;
  *(v100 + 144) = v103;
  *(v100 + 104) = v103;
  *(v100 + 112) = v99;
  *(v100 + 120) = v95;
  v106 = v95;

  v107 = sub_220DC05F0();
  v109 = v108;

  sub_220CEFE04();
  v110 = sub_220DC09E0();
  v111 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v112 = [v110 stringFromNumber_];

  if (v112)
  {
    sub_220DC0620();
  }

  else
  {
    v153 = v93;
    sub_220DC0C70();
  }

  v125 = v138;
  sub_220DBE250();
  v126 = v136;
  sub_220DBE220();
  v127 = v152;
  if (v97)
  {

    sub_220DBE250();
    sub_220DBE220();

    v128 = 0;
  }

  else
  {
    v128 = 1;
  }

  (*(v142 + 8))(v141, v147);
  v129 = v128;
  v130 = v149;
  __swift_storeEnumTagSinglePayload(v125, v129, 1, v149);
  v131 = v150;
  (*(v137 + 32))(v150, v126, v130);
  v132 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_220CEFF68(v125, v131 + *(v132 + 20));
  OUTLINED_FUNCTION_5_19();
  *v133 = v127;
  v133[1] = v106;
  OUTLINED_FUNCTION_2_17();
  *v134 = v107;
  v134[1] = v109;
  v135 = (v131 + *(v132 + 48));
  *v135 = xmmword_220DC4910;
  v135[1] = xmmword_220DC4920;
  v135[2] = 0u;
  v135[3] = 0u;
}

uint64_t sub_220D44E2C(uint64_t a1)
{
  v3 = 0;
  if (sub_220DBEF10() > a1 || v2 < a1)
  {
    v3 = 1;
    if (sub_220DBEF10() > a1 || v5 < a1)
    {
      v3 = 2;
      if (sub_220DBEF10() > a1 || v7 < a1)
      {
        v3 = 3;
        if (sub_220DBEF10() > a1 || v9 < a1)
        {
          v3 = 4;
          if (sub_220DBEF10() > a1 || v11 < a1)
          {
            if (qword_27CF94F50 != -1)
            {
              swift_once();
            }

            v13 = sub_220DBF410();
            __swift_project_value_buffer(v13, qword_27CF95F78);
            v14 = sub_220DBF3F0();
            v15 = sub_220DC0980();
            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              *v16 = 134217984;
              *(v16 + 4) = a1;
              _os_log_impl(&dword_220CD1000, v14, v15, "Unable to find UV Index for extrema value = %ld", v16, 0xCu);
              MEMORY[0x223D98FB0](v16, -1, -1);
            }

            return 5;
          }
        }
      }
    }
  }

  return v3;
}

double ChanceOfRainChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)@<D0>(uint64_t a1@<X8>)
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v2 = sub_220DBE240();
  v4 = v3;
  v5 = sub_220D4527C();
  v7 = v6;
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220DC17C0;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_220CEFDB0();
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = v5;
  *(v8 + 80) = v7;

  v11 = sub_220DC05F0();
  v13 = v12;

  sub_220DBE1D0();
  v14 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  v15 = v14[5];
  v16 = sub_220DBE210();
  __swift_storeEnumTagSinglePayload(a1 + v15, 1, 1, v16);
  v17 = (a1 + v14[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a1 + v14[7]);
  *v18 = v5;
  v18[1] = v7;
  v19 = (a1 + v14[8]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a1 + v14[11]);
  *v20 = 0;
  v20[1] = 0;
  *(a1 + v14[9]) = 0;
  v21 = (a1 + v14[10]);
  *v21 = v11;
  v21[1] = v13;
  v22 = (a1 + v14[12]);
  result = 0.0;
  v22[2] = 0u;
  v22[3] = 0u;
  *v22 = 0u;
  v22[1] = 0u;
  return result;
}

uint64_t sub_220D4527C()
{
  v1 = v0;
  v2 = sub_220DBE560();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220DBEC20();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220DBE830();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  v18 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D34C0C(v1, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v11;
      (*(v12 + 32))(v41, v21, v11);
      sub_220DBE810();
      v24 = *(type metadata accessor for ConditionDetailChartHeaderInput(0) + 32);
      v25 = sub_220DBE520();
      (*(v3 + 8))(v6, v2);
      switch(v25)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_25;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
LABEL_25:
            swift_once();
          }

          break;
      }

      sub_220DBE240();
      v34 = v41;
      sub_220DBE760();
      (*(v42 + 8))(v10, v43);
      sub_220DC07C0();
      v35 = sub_220DC07B0();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_220DC17A0;
      *(v38 + 56) = MEMORY[0x277D837D0];
      *(v38 + 64) = sub_220CEFDB0();
      *(v38 + 32) = v35;
      *(v38 + 40) = v37;
      v32 = sub_220DC05F0();

      (*(v12 + 8))(v34, v23);
    }

    else
    {
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v32 = sub_220DBE240();
      (*(v12 + 8))(v21, v11);
    }
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800);
    v27 = v11;
    (*(v12 + 32))(v17, &v21[*(v26 + 48)], v11);
    sub_220DBE760();
    (*(v42 + 8))(v10, v43);
    sub_220DC07C0();
    v28 = sub_220DC07B0();
    v30 = v29;
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_220DC17A0;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = sub_220CEFDB0();
    *(v31 + 32) = v28;
    *(v31 + 40) = v30;
    v32 = sub_220DC05F0();

    (*(v12 + 8))(v17, v27);
    v33 = sub_220DBEAD0();
    (*(*(v33 - 8) + 8))(v21, v33);
  }

  return v32;
}

_BYTE *storeEnumTagSinglePayload for ChanceOfRainChartHeaderStringBuilder(_BYTE *result, int a2, int a3)
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

uint64_t HourWeather.chanceOfRain.getter()
{
  sub_220DBE8B0();

  return sub_220DC07C0();
}

uint64_t HourWeather.SecondValueUseCase.hashValue.getter()
{
  v1 = *v0;
  sub_220DC0CE0();
  MEMORY[0x223D98920](v1);
  return sub_220DC0D20();
}

double HourWeather.secondValue(for:units:useCase:)(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v79 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95640, &qword_220DC45A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_4();
  v74 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v75 = &v73 - v20;
  v78 = sub_220DBEF00();
  v21 = OUTLINED_FUNCTION_0(v78);
  v76 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v27 = v25 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v73 = &v73 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = (&v73 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95258, &unk_220DC2CF0);
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4();
  v39 = v37 - v38;
  v41 = MEMORY[0x28223BE20](v40);
  v42 = MEMORY[0x28223BE20](v41);
  v43 = MEMORY[0x28223BE20](v42);
  v48 = &v73 - v47;
  v49 = *a1;
  v50 = *v45;
  if (v49 == 3)
  {
    sub_220DBE890();
LABEL_9:
    sub_220DBE130();
    v58 = *(v79 + 8);
    v58(v11, v4);
    sub_220DBE050();
    v51 = v59;
    v58(v14, v4);
    return v51;
  }

  if (v49 == 4)
  {
    sub_220DBE850();
    goto LABEL_9;
  }

  v51 = 0.0;
  if (v49 == 7)
  {
    v79 = v44;
    v52 = v43;
    v53 = (v76 + 8);
    if (*v77)
    {
      v77 = v45[3];
      sub_220DBE900();
      v54 = v74;
      sub_220DBEEE0();
      v55 = v78;
      v76 = *v53;
      (v76)(v27, v78);
      if (__swift_getEnumTagSinglePayload(v54, 1, v52) == 1)
      {
        sub_220D462DC(v54);
        sub_220DBE900();
        sub_220DBEEF0();
        (v76)(v32, v55);
        sub_220DBE130();
        v56 = OUTLINED_FUNCTION_2_18();
        v32(v56);
        sub_220DBE050();
        v51 = v57;
        (v32)(v48, v52);
      }

      else
      {
        sub_220DBE130();
        v69 = *(v79 + 8);
        v69(v54, v52);
        sub_220DBE050();
        v51 = v70;
        v69(v39, v52);
      }
    }

    else
    {
      v77 = v46;
      v61 = v45[2];
      sub_220DBE900();
      sub_220DBEEF0();
      v62 = *v53;
      v63 = v78;
      (*v53)(v32, v78);
      v76 = v61;
      sub_220DBE130();
      v64 = OUTLINED_FUNCTION_2_18();
      v32(v64);
      sub_220DBE050();
      v51 = v65;
      (v32)(v48, v52);
      v66 = v73;
      sub_220DBE900();
      v67 = v75;
      sub_220DBEEE0();
      (v62)(v66, v63);
      if (__swift_getEnumTagSinglePayload(v67, 1, v52) == 1)
      {
        sub_220D462DC(v67);
        v68 = v51;
      }

      else
      {
        v71 = v77;
        sub_220DBE130();
        (v32)(v67, v52);
        sub_220DBE050();
        v68 = v72;
        (v32)(v71, v52);
      }

      if (v51 <= v68)
      {
        return v68;
      }
    }
  }

  return v51;
}

uint64_t sub_220D462DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95640, &qword_220DC45A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220D46354()
{
  result = qword_27CF95B08;
  if (!qword_27CF95B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95B08);
  }

  return result;
}

uint64_t _s18SecondValueUseCaseOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s18SecondValueUseCaseOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220D4650C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_220DBF340();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x277D84F90];
  sub_220CFB724();
  v11 = v22;
  v12 = *(sub_220DBE960() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = v6 + 32;
  v17 = *(v12 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v11;
    v14 = *(v11 + 16);
    if (v14 >= *(v11 + 24) >> 1)
    {
      sub_220CFB724();
      v11 = v22;
    }

    *(v11 + 16) = v14 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v19);
    v13 += v17;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220D46710(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  sub_220CFB7F4(0, v5, 0);
  v6 = v19;
  v8 = *(sub_220DBEB60() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v16 = *(v8 + 72);
  while (1)
  {
    a1(v18, v9);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v10 = v18[0];
    v11 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_220CFB7F4((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    v9 += v16;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t CurrentMarkerValueCalculator.init(midpointInterpolator:detailChartDataPointValueCalculator:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_220DBF370();
  OUTLINED_FUNCTION_0_2(v6);
  (*(v7 + 32))(a3, a1);
  v8 = a3 + *(type metadata accessor for CurrentMarkerValueCalculator() + 20);

  return sub_220D33724(a2, v8);
}

uint64_t type metadata accessor for CurrentMarkerValueCalculator()
{
  result = qword_27CF95B20;
  if (!qword_27CF95B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double CurrentMarkerValueCalculator.value(for:hourlyWeather:currentWeather:dayWeather:units:timeZone:maxRange:interpolationMode:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a4;
  v42 = a2;
  v45 = sub_220DBE560();
  v11 = OUTLINED_FUNCTION_0(v45);
  v44 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B10, &qword_220DC4A50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - v17;
  v19 = sub_220DBF350();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = a5[1];
  v47[0] = *a5;
  v47[1] = v28;
  v47[2] = a5[2];
  v30 = v29;
  sub_220D47280(a7, v18, &qword_27CF95B10, &qword_220DC4A50);
  v46 = v30;
  if (__swift_getEnumTagSinglePayload(v18, 1, v30) == 1)
  {
    sub_220D46E50(v18);
    OUTLINED_FUNCTION_0_14();
    sub_220DC0790();
    return v31;
  }

  else
  {
    (*(v22 + 32))(v26, v18, v46);
    OUTLINED_FUNCTION_0_14();
    v33 = sub_220DC0790();
    MEMORY[0x28223BE20](v33);
    *(&v39 - 6) = v40;
    *(&v39 - 40) = v27;
    *(&v39 - 4) = v47;
    *(&v39 - 3) = a3;
    v34 = v43;
    *(&v39 - 2) = v41;
    *(&v39 - 1) = v34;
    sub_220D4650C(sub_220D4712C, (&v39 - 8), v42);
    sub_220DBEA60();
    sub_220DBF360();
    v35 = OUTLINED_FUNCTION_1_24();
    v36(v35);

    if (((1 << v27) & 0xE4) != 0 || ((1 << v27) & 0x1A) == 0)
    {
      sub_220DC0790();
    }

    sub_220DC0790();
    v32 = v37;
    (*(v22 + 8))(v26, v46);
  }

  return v32;
}

uint64_t sub_220D46E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B10, &qword_220DC4A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D46EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a8;
  v34 = a7;
  v14 = sub_220DBE560();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = type metadata accessor for WeatherValueCalculationContext();
  v17 = (v16 - 8);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_220DBE960();
  (*(*(v21 - 8) + 16))(v20, a1, v21);
  sub_220D47280(a2, &v20[v17[7]], &qword_27CF95A10, "Z");
  v22 = v17[10];
  v23 = sub_220DBEAD0();
  (*(*(v23 - 8) + 16))(&v20[v22], a5, v23);
  v24 = v17[11];
  v25 = sub_220DBE740();
  (*(*(v25 - 8) + 16))(&v20[v24], a6, v25);
  v20[v17[8]] = a3;
  v26 = &v20[v17[9]];
  v27 = a4[1];
  *v26 = *a4;
  *(v26 + 1) = v27;
  *(v26 + 2) = a4[2];
  v28 = (v34 + *(type metadata accessor for CurrentMarkerValueCalculator() + 20));
  v29 = v28[3];
  v30 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v31 = *(v30 + 8);
  sub_220D472DC(a4, v36);
  v31(v20, v29, v30);
  sub_220DBE8F0();
  sub_220DBF320();
  return sub_220D47338(v20);
}

unint64_t sub_220D471A0()
{
  result = sub_220DBF370();
  if (v1 <= 0x3F)
  {
    result = sub_220D47224();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_220D47224()
{
  result = qword_27CF95B30;
  if (!qword_27CF95B30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF95B30);
  }

  return result;
}

uint64_t sub_220D47280(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_2(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D47338(uint64_t a1)
{
  v2 = type metadata accessor for WeatherValueCalculationContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrecipitationTomorrowRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DBE6E0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v58 = v6;
  v59 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v56 = v10 - v9;
  v11 = sub_220DBE560();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_0();
  v53 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  v55 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v24);
  v54 = &v52 - v25;
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  v27 = OUTLINED_FUNCTION_6(PrecipitationEvent);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v52 - v34;
  v36 = v2[3];
  v37 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v36);
  v38 = *(v37 + 8);
  v57 = a2;
  v38(a2, v36, v37);
  OUTLINED_FUNCTION_6_12();
  sub_220D49724(v35, v32, v39);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v41 = v40[16];
    v42 = v40[20];
    (*(v14 + 32))(v54, v32 + v40[12], v11);
    sub_220CE1D80(v32 + v42, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1D80(v32 + v41, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220DBEA60();
    LODWORD(v41) = *(type metadata accessor for PrecipitationComponentDescriptionContext() + 28);
    v43 = v53;
    sub_220DBE480();
    v44 = *(v14 + 8);
    v44(v19, v11);
    v45 = v56;
    sub_220DBE600();
    v46 = v55;
    sub_220DBE390();
    (*(v58 + 8))(v45, v59);
    v44(v43, v11);
    v47 = sub_220DBE460();
    v44(v46, v11);
    v48 = OUTLINED_FUNCTION_39();
    (v44)(v48);
  }

  else
  {
    OUTLINED_FUNCTION_2_19();
    sub_220CE1D80(v35, v49);
    v47 = 0;
    v35 = v32;
  }

  OUTLINED_FUNCTION_2_19();
  sub_220CE1D80(v35, v50);
  return v47 & 1;
}

char *PrecipitationTomorrowRule.description(for:data:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTomorrowSentence();
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  v12 = OUTLINED_FUNCTION_18(PrecipitationEvent);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  v21 = v2[3];
  v22 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v21);
  (*(v22 + 8))(a2, v21, v22);
  OUTLINED_FUNCTION_6_12();
  sub_220D49724(v20, v17, v23);
  v28 = *(a2 + *(type metadata accessor for PrecipitationComponentDescriptionContext() + 32));
  sub_220D478DC(v17, &v28, v10);
  v24 = sub_220D47BF4();
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_2_19();
  sub_220CE1D80(v20, v25);
  return v24;
}

uint64_t type metadata accessor for PrecipitationTomorrowSentence()
{
  result = qword_27CF95B38;
  if (!qword_27CF95B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D478DC@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v14 = OUTLINED_FUNCTION_6(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v40 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  v26 = *a2;
  type metadata accessor for NextPrecipitationEvent();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v26;
    v27 = *a1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v29 = *(v28 + 64);
    v40 = v28;
    v30 = *(v28 + 80);
    sub_220D15FF4(&a1[v29], v25);
    sub_220D15FF4(&a1[v30], v23);
    if (v27 == 2)
    {
      v31 = v25;
    }

    else
    {
      v31 = v23;
    }

    if (v27 != 2)
    {
      v23 = v25;
    }

    sub_220CE1D80(v31, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D15FF4(v23, v19);
    sub_220D49724(v19 + *(v13 + 20), v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      OUTLINED_FUNCTION_6(v32);
      (*(v33 + 8))(v12);
    }

    else
    {
      sub_220CE1D80(v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
    }

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
    sub_220D15FF4(v19, a3);
    *(a3 + v34) = v27;
    type metadata accessor for PrecipitationTomorrowSentence();
    OUTLINED_FUNCTION_14_12();
    swift_storeEnumTagMultiPayload();
    v37 = *(v40 + 48);
    v38 = sub_220DBE560();
    OUTLINED_FUNCTION_6(v38);
    return (*(v39 + 8))(&a1[v37]);
  }

  else
  {
    type metadata accessor for PrecipitationTomorrowSentence();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_19();
    return sub_220CE1D80(a1, v35);
  }
}

char *sub_220D47BF4()
{
  v1 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = type metadata accessor for PrecipitationTomorrowSentence();
  v18 = OUTLINED_FUNCTION_6(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v23 = (v22 - v21);
  OUTLINED_FUNCTION_1_25();
  sub_220D49724(v0, v23, v24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0);
      v31 = OUTLINED_FUNCTION_9_12(v30);
      sub_220D15FF4(v31, v14);
      if (v7 == 2)
      {
        sub_220D48508(v14);
      }

      else
      {
        sub_220D48A0C(v14);
      }

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_0_15();
      v33 = v14;
      goto LABEL_21;
    case 2u:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0);
      v28 = OUTLINED_FUNCTION_9_12(v27);
      sub_220D15FF4(v28, v11);
      if (v7 == 2)
      {
        sub_220D48070(v11);
      }

      else
      {
        sub_220D48F10(v11);
      }

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_0_15();
      v33 = v11;
      goto LABEL_21;
    case 3u:
      v29 = v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48)];
      sub_220D15FF4(v23, v7);
      if (v29 == 2)
      {
        sub_220D48508(v7);
      }

      else
      {
        sub_220D48A0C(v7);
      }

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_0_15();
      v33 = v7;
      goto LABEL_21;
    case 4u:
      v23 = "y in the past.";
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      OUTLINED_FUNCTION_21();
      return v23;
    default:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0);
      v26 = OUTLINED_FUNCTION_9_12(v25);
      sub_220D15FF4(v26, v16);
      if (v7 == 2)
      {
        sub_220D48070(v16);
      }

      else
      {
        sub_220D482BC(v16);
      }

      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_0_15();
      v33 = v16;
LABEL_21:
      sub_220CE1D80(v33, v32);
      return v23;
  }
}

uint64_t sub_220D47F08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_220D47F48(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_220D47FA0()
{
  sub_220D48004();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_220D48004()
{
  if (!qword_27CF95B48)
  {
    type metadata accessor for PrecipitationTotalStringAmount(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF95B48);
    }
  }
}

uint64_t sub_220D48508(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v43[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v43[-1] - v7;
  v9 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43[-1] - v16;
  sub_220D49724(a1 + *(v2 + 20), v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v17, v12, v13);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220DC17C0;
    sub_220DBE050();
    v19 = MEMORY[0x277D83A80];
    *(v18 + 56) = MEMORY[0x277D839F8];
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
    v21 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 0, 0, v22, v23, v24, v25, v26, v42, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10]);
    v28 = v27;
    v30 = v29;

    *(v18 + 96) = MEMORY[0x277D837D0];
    *(v18 + 104) = sub_220CEFDB0();
    *(v18 + 72) = v28;
    *(v18 + 80) = v30;
    v31 = sub_220DC05F0();

    (*(v14 + 8))(v17, v13);
  }

  else
  {
    sub_220CE1D80(v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v32 = sub_220DBF410();
    __swift_project_value_buffer(v32, qword_27CF95F48);
    sub_220D49724(a1, v8, type metadata accessor for PrecipitationTotalStringAmount);
    v33 = sub_220DBF3F0();
    v34 = sub_220DC0980();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v35 = 136446210;
      sub_220D49724(v8, v6, type metadata accessor for PrecipitationTotalStringAmount);
      v37 = sub_220DC0630();
      v39 = v38;
      sub_220CE1D80(v8, type metadata accessor for PrecipitationTotalStringAmount);
      v40 = sub_220D3F210(v37, v39, v43);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_220CD1000, v33, v34, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223D98FB0](v36, -1, -1);
      MEMORY[0x223D98FB0](v35, -1, -1);
    }

    else
    {

      sub_220CE1D80(v8, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v31;
}

uint64_t sub_220D48A0C(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v43[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v43[-1] - v7;
  v9 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43[-1] - v16;
  sub_220D49724(a1 + *(v2 + 20), v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v17, v12, v13);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220DC17C0;
    sub_220DBE050();
    v19 = MEMORY[0x277D83A80];
    *(v18 + 56) = MEMORY[0x277D839F8];
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
    v21 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 0, 0, v22, v23, v24, v25, v26, v42, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10]);
    v28 = v27;
    v30 = v29;

    *(v18 + 96) = MEMORY[0x277D837D0];
    *(v18 + 104) = sub_220CEFDB0();
    *(v18 + 72) = v28;
    *(v18 + 80) = v30;
    v31 = sub_220DC05F0();

    (*(v14 + 8))(v17, v13);
  }

  else
  {
    sub_220CE1D80(v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v32 = sub_220DBF410();
    __swift_project_value_buffer(v32, qword_27CF95F48);
    sub_220D49724(a1, v8, type metadata accessor for PrecipitationTotalStringAmount);
    v33 = sub_220DBF3F0();
    v34 = sub_220DC0980();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v35 = 136446210;
      sub_220D49724(v8, v6, type metadata accessor for PrecipitationTotalStringAmount);
      v37 = sub_220DC0630();
      v39 = v38;
      sub_220CE1D80(v8, type metadata accessor for PrecipitationTotalStringAmount);
      v40 = sub_220D3F210(v37, v39, v43);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_220CD1000, v33, v34, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223D98FB0](v36, -1, -1);
      MEMORY[0x223D98FB0](v35, -1, -1);
    }

    else
    {

      sub_220CE1D80(v8, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v31;
}

uint64_t sub_220D4915C(uint64_t a1, uint64_t a2)
{
  v88 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v4 = OUTLINED_FUNCTION_6(v88);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v87 = (v7 - v8);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v86 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  v85 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v13);
  v84 = &v83 - v14;
  v15 = type metadata accessor for PrecipitationTomorrowSentence();
  v16 = OUTLINED_FUNCTION_6(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v21 = (v19 - v20);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v83 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v83 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v83 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B50, &qword_220DC4BA8);
  v32 = OUTLINED_FUNCTION_18(v31);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v83 - v36;
  v38 = &v83 + *(v35 + 56) - v36;
  sub_220D49724(a1, &v83 - v36, type metadata accessor for PrecipitationTomorrowSentence);
  sub_220D49724(a2, v38, type metadata accessor for PrecipitationTomorrowSentence);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_25();
      sub_220D49724(v37, v28, v60);
      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
      v62 = v28[v61];
      OUTLINED_FUNCTION_39();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v21 = v28;
        goto LABEL_21;
      }

      v63 = v38[v61];
      v64 = v85;
      sub_220D15FF4(v38, v85);
      if (*v28 == *v64)
      {
        OUTLINED_FUNCTION_12_12();
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        v66 = v65;
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v64, v67);
        if (v66)
        {
          OUTLINED_FUNCTION_0_15();
          sub_220CE1D80(v28, v68);
          v59 = v62 == v63;
          goto LABEL_26;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v64, v80);
      }

      OUTLINED_FUNCTION_0_15();
      v78 = v28;
      goto LABEL_38;
    case 2u:
      OUTLINED_FUNCTION_1_25();
      sub_220D49724(v37, v25, v43);
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
      v45 = v25[v44];
      OUTLINED_FUNCTION_39();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v21 = v25;
        goto LABEL_21;
      }

      v46 = v38[v44];
      v47 = v86;
      sub_220D15FF4(v38, v86);
      if (*v25 == *v47)
      {
        OUTLINED_FUNCTION_12_12();
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        v49 = v48;
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v47, v50);
        if (v49)
        {
          OUTLINED_FUNCTION_0_15();
          v52 = v25;
          goto LABEL_14;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v47, v76);
      }

      OUTLINED_FUNCTION_0_15();
      v78 = v25;
      goto LABEL_38;
    case 3u:
      OUTLINED_FUNCTION_1_25();
      sub_220D49724(v37, v21, v53);
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
      v45 = v21[v54];
      OUTLINED_FUNCTION_39();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_21;
      }

      v46 = v38[v54];
      v55 = v87;
      sub_220D15FF4(v38, v87);
      if (*v21 != *v55)
      {
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v55, v79);
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_12_12();
      static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
      v57 = v56;
      OUTLINED_FUNCTION_0_15();
      sub_220CE1D80(v55, v58);
      if ((v57 & 1) == 0)
      {
LABEL_33:
        OUTLINED_FUNCTION_0_15();
        v78 = v21;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_0_15();
      v52 = v21;
LABEL_14:
      sub_220CE1D80(v52, v51);
      v59 = v45 == v46;
LABEL_26:
      v42 = v59;
      sub_220CE1D80(v37, type metadata accessor for PrecipitationTomorrowSentence);
      return v42;
    case 4u:
      OUTLINED_FUNCTION_39();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_4_15();
      return 1;
    default:
      OUTLINED_FUNCTION_1_25();
      sub_220D49724(v37, v30, v39);
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
      v41 = v30[v40];
      OUTLINED_FUNCTION_39();
      if (swift_getEnumCaseMultiPayload())
      {
        v21 = v30;
LABEL_21:
        OUTLINED_FUNCTION_0_15();
        sub_220CE1D80(v21, v69);
LABEL_22:
        sub_220D496BC(v37);
      }

      else
      {
        v70 = v38[v40];
        v71 = v84;
        sub_220D15FF4(v38, v84);
        if (*v30 == *v71)
        {
          OUTLINED_FUNCTION_12_12();
          static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
          v73 = v72;
          OUTLINED_FUNCTION_0_15();
          sub_220CE1D80(v71, v74);
          if (v73)
          {
            OUTLINED_FUNCTION_0_15();
            sub_220CE1D80(v30, v75);
            v59 = v41 == v70;
            goto LABEL_26;
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_15();
          sub_220CE1D80(v71, v81);
        }

        OUTLINED_FUNCTION_0_15();
        v78 = v30;
LABEL_38:
        sub_220CE1D80(v78, v77);
        OUTLINED_FUNCTION_4_15();
      }

      return 0;
  }
}