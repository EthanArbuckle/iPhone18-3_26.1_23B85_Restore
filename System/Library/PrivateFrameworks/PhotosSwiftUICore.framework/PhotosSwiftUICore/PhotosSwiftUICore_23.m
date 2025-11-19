uint64_t PhotosMaterialTitleCellSpecs.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

unint64_t sub_1C11DB0F8()
{
  result = qword_1EBE96F30;
  if (!qword_1EBE96F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosMaterialTitleCellSpecs(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhotosLegibilityOverlay.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C12659A0();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F38);
  return sub_1C11DB298(a1 + *(v3 + 44));
}

uint64_t sub_1C11DB298@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F48);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v15 - v7);
  sub_1C1265160();
  v9 = sub_1C12651E0();

  v10 = *(v3 + 44);
  v11 = *MEMORY[0x1E6981DE8];
  v12 = sub_1C1265A90();
  (*(*(v12 - 8) + 104))(v8 + v10, v11, v12);
  *v8 = v9;
  sub_1C1265160();
  v13 = sub_1C12651E0();

  sub_1C11DB4CC(v8, v5);
  sub_1C11DB4CC(v5, a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F50) + 48)) = v13;

  sub_1C11DB53C(v8);

  return sub_1C11DB53C(v5);
}

unint64_t sub_1C11DB468()
{
  result = qword_1EDE7B7C0;
  if (!qword_1EDE7B7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B7C0);
  }

  return result;
}

uint64_t sub_1C11DB4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11DB53C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C11DB5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
    sub_1C11DF790();
    v4 = a2;
    v5 = 0;
    v6 = v3;
  }

  else
  {
    v6 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
    v4 = a2;
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
}

__n128 PhotosSearchBarWithSuggestionView.init(searchText:isEditing:canShowSearchSuggestions:selectedSuggestionIndex:selectedRange:placeholder:searchSuggestions:onSuggestionViewVisibilityChange:onSuggestionViewFrameChange:onSuggestionViewAdditionalOffsetXChange:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, __int128 *a12, __int128 a13, __int128 a14, __int128 a15, __n128 a16, uint64_t a17)
{
  v26 = *a12;
  v20 = *(a12 + 3);
  v25 = *(a12 + 2);
  v21 = *(a12 + 32);
  v22 = *(a12 + 5);
  *(a9 + 232) = swift_getKeyPath();
  type metadata accessor for PhotosSearchBarWithSuggestionViewModel(0);
  *(a9 + 256) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 271) = 0;
  swift_allocObject();
  PhotosSearchBarWithSuggestionViewModel.init(searchBarLeadingInset:searchBarTrailingInset:)();
  sub_1C1265410();
  v23 = *(a11 + 16);
  *(a9 + 72) = *a11;
  *(a9 + 280) = v33;
  *(a9 + 288) = v34;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 88) = v23;
  *(a9 + 104) = *(a11 + 32);
  *(a9 + 112) = v26;
  *(a9 + 128) = v25;
  *(a9 + 136) = v20;
  *(a9 + 144) = v21;
  *(a9 + 152) = v22;
  *(a9 + 160) = a13;
  *(a9 + 176) = a14;
  result = a16;
  *(a9 + 192) = a15;
  *(a9 + 208) = a16;
  *(a9 + 224) = a17;
  return result;
}

uint64_t sub_1C11DB828()
{
  v0 = sub_1C1263D00();
  __swift_allocate_value_buffer(v0, qword_1EBE96F58);
  __swift_project_value_buffer(v0, qword_1EBE96F58);
  return sub_1C1263F30();
}

uint64_t PhotosSearchBarWithSuggestionViewModel.__allocating_init(searchBarLeadingInset:searchBarTrailingInset:)()
{
  OUTLINED_FUNCTION_14_23();
  v0 = swift_allocObject();
  PhotosSearchBarWithSuggestionViewModel.init(searchBarLeadingInset:searchBarTrailingInset:)();
  return v0;
}

void PhotosSearchBarWithSuggestionView.body.getter()
{
  OUTLINED_FUNCTION_23();
  v60 = v1;
  v2 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v44.i64[0] = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  v8 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F70);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43.i8[-v14];
  memcpy(v65, v0, 0x128uLL);
  v61[0] = *v0;
  *&v61[1] = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0);
  sub_1C1265610();
  v57 = *&v64[0];
  v58 = *(v64 + 8);
  v61[0] = *(v0 + 24);
  LOBYTE(v61[1]) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  sub_1C1265610();
  v55 = *(&v64[0] + 1);
  v56 = *&v64[0];
  v54 = LOBYTE(v64[1]);
  v61[0] = v0[3];
  LOBYTE(v61[1]) = *(v0 + 64);
  sub_1C1265610();
  v52 = *(&v64[0] + 1);
  v53 = *&v64[0];
  v51 = LOBYTE(v64[1]);
  v16 = v0[8];
  v64[0] = v0[7];
  v64[1] = v16;
  v64[2] = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0);
  sub_1C1265610();
  v49 = *(&v61[0] + 1);
  v50 = *&v61[0];
  v47 = *(&v61[1] + 1);
  v48 = *&v61[1];
  v46 = LOBYTE(v61[2]);
  v45 = *(&v61[2] + 1);
  v18 = *(v0 + 232);
  *(&v64[1] + 11) = *(v0 + 259);
  v19 = *(v0 + 248);
  v64[0] = v18;
  v64[1] = v19;
  if (BYTE10(v64[2]) == 1)
  {
    v20 = WORD4(v64[2]);
    *v62 = *&v64[0];
    *&v62[8] = *(v64 + 8);
    *&v62[24] = *(&v64[1] + 8);
    v63 = WORD4(v64[2]);
    v17.i64[0] = v18;
    v43 = vzip1q_s64(vdupq_laneq_s64(*(v64 + 8), 1), *(&v64[1] + 8));
    v44 = vzip1q_s64(v17, *(v64 + 8));
    v21 = *&v64[2];
  }

  else
  {
    sub_1C10AF3D4();
    sub_1C1266420();
    v22 = v2;
    v23 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v64, &qword_1EBE96F78);
    (*(v44.i64[0] + 8))(v7, v22);
    v43 = *&v62[16];
    v44 = *v62;
    v21 = *&v62[32];
    v20 = v63;
  }

  v24 = v65[20];
  v25 = v65[21];
  v61[19] = *&v65[35];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F80);
  sub_1C1265420();
  v26 = v8[11];
  *(v12 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  v27 = v56;
  *v12 = v57;
  *(v12 + 8) = v58;
  v28 = v55;
  *(v12 + 24) = v27;
  *(v12 + 32) = v28;
  *(v12 + 40) = v54;
  v29 = v52;
  *(v12 + 48) = v53;
  *(v12 + 56) = v29;
  *(v12 + 64) = v51;
  v30 = v49;
  *(v12 + 72) = v50;
  *(v12 + 80) = v30;
  v31 = v47;
  *(v12 + 88) = v48;
  *(v12 + 96) = v31;
  *(v12 + 104) = v46;
  *(v12 + 112) = v45;
  v32 = v12 + v8[9];
  v33 = v43;
  *v32 = v44;
  *(v32 + 16) = v33;
  *(v32 + 32) = v21;
  *(v32 + 40) = v20;
  v34 = (v12 + v8[10]);
  *v34 = v24;
  v34[1] = v25;
  type metadata accessor for PhotosSearchBarWithSuggestionViewModel(0);
  OUTLINED_FUNCTION_2_57();
  sub_1C11DD054(v35, v36);
  sub_1C1265770();
  memcpy(v61, v65, 0x128uLL);
  v37 = sub_1C11DC014();
  v39 = v38;
  v40 = &v15[*(v59 + 36)];
  sub_1C11DC198(v65, v40);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F88) + 36));
  *v41 = v37;
  v41[1] = v39;
  sub_1C11DCF08(v12, v15);
  if (qword_1EBE8FD58 != -1)
  {
    swift_once();
  }

  v42 = sub_1C1263D00();
  __swift_project_value_buffer(v42, qword_1EBE96F58);
  sub_1C11DCF6C();
  sub_1C1264BA0();
  sub_1C0FC5224(v15);
  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosSearchBarWithSuggestionViewBase.init(searchText:isEditing:canShowSearchSuggestions:selectedRange:style:placeholder:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v29 = *a11;
  v17 = *(a11 + 2);
  v18 = *(a11 + 3);
  v19 = *(a11 + 32);
  v20 = *(a11 + 5);
  v33 = *(a12 + 32);
  v32 = *(a12 + 40);
  v21 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  v22 = v21[11];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = v29;
  *(a9 + 88) = v17;
  *(a9 + 96) = v18;
  *(a9 + 104) = v19;
  *(a9 + 112) = v20;
  v23 = a9 + v21[9];
  v24 = *(a12 + 16);
  *v23 = *a12;
  *(v23 + 16) = v24;
  *(v23 + 32) = v33;
  *(v23 + 40) = v32;
  v25 = (a9 + v21[10]);
  *v25 = a13;
  v25[1] = a14;
  type metadata accessor for PhotosSearchBarWithSuggestionViewModel(0);
  OUTLINED_FUNCTION_2_57();
  sub_1C11DD054(v26, v27);
  return sub_1C1265770();
}

uint64_t sub_1C11DC014()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 272);
  if ((*(v0 + 274) & 1) == 0)
  {
    v6 = *(v0 + 232);
    v13 = *(v0 + 240);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    v9 = *(v0 + 264);

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1022584(v6, v13, v7, v8, v9, v5, 0);
    (*(v2 + 8))(v4, v1);
    LOWORD(v5) = v14;
  }

  if ((v5 & 0x8000) != 0)
  {
    return sub_1C1265940();
  }

  else
  {
    return sub_1C1265960();
  }
}

uint64_t sub_1C11DC198@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97098);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v42[-v8];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE970A0);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v42[-v9];
  v10 = *(a1 + 88);
  *v59 = *(a1 + 72);
  *&v59[16] = v10;
  v59[32] = a1[104];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952D8);
  sub_1C1265610();
  v48 = *&v61[8];
  v49 = *v61;
  v46 = *&v61[24];
  v47 = *&v61[16];
  v57 = v61[32];
  v68 = *(a1 + 280);
  *v59 = *(a1 + 280);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F80);
  sub_1C1265420();
  v45 = *v61;
  *v59 = *a1;
  *&v59[16] = *(a1 + 2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0);
  MEMORY[0x1C68EEF20](v61, v11);
  v44 = *v61;
  v67 = *(a1 + 22);
  v65 = *(a1 + 3);
  v66 = a1[64];
  *v59 = *(a1 + 3);
  v59[16] = a1[64];
  sub_1C10AF3D4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  MEMORY[0x1C68EEF20](v61);
  v13 = &v64[24];
  if (v61[0] == 1)
  {
    *v59 = *(a1 + 24);
    v59[16] = a1[40];
    MEMORY[0x1C68EEF20](v61, v12);
    v43 = v61[0];
  }

  else
  {
    v43 = 0;
  }

  *&v64[11] = *(a1 + 259);
  v14 = *(a1 + 248);
  v63 = *(a1 + 232);
  *v64 = v14;
  if ((v64[26] & 1) == 0)
  {
    v13 = &v61[40];
    sub_1C10AF3D4();
    sub_1C1266420();
    v15 = v4;
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v63, &qword_1EBE96F78);
    (*(v15 + 8))(v6, v3);
  }

  if (*v13 < 0)
  {
    sub_1C1265B50();
  }

  else
  {
    sub_1C1265B40();
  }

  v19 = v17;
  v20 = v18;
  v22 = *(a1 + 23);
  v21 = *(a1 + 24);
  *v61 = 0;
  sub_1C0FCF1B4(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FA8);
  sub_1C1265410();
  v24 = *v59;
  v23 = *&v59[8];
  v62 = v57;
  v25 = v67;
  *v59 = v65;
  v59[16] = v66;
  MEMORY[0x1C68EEF20](v61, v12);
  v26 = 0;
  if (v61[0] == 1)
  {
    *v59 = v68;
    sub_1C1265420();
    PhotosSearchBarWithSuggestionViewModel.cappedAdditionalSuggestionViewOffsetX.getter();
    v26 = v27;
  }

  v28 = swift_allocObject();
  memcpy((v28 + 16), a1, 0x128uLL);
  v29 = swift_allocObject();
  memcpy((v29 + 16), a1, 0x128uLL);
  v60[0] = v49;
  v60[1] = v48;
  v60[2] = v47;
  v60[3] = v46;
  LOBYTE(v60[4]) = v57;
  v60[5] = v45;
  v60[6] = v44;
  v60[7] = v25;
  LOBYTE(v60[8]) = v43;
  *&v30 = v22;
  *(&v30 + 1) = v21;
  v60[9] = v19;
  v60[10] = v20;
  *&v31 = v24;
  *(&v31 + 1) = v23;
  *&v60[13] = v31;
  *&v60[11] = v30;
  v60[15] = v26;
  v60[16] = 0;
  v60[17] = sub_1C11E19C4;
  v60[18] = v28;
  v60[19] = sub_1C11E19CC;
  v60[20] = v29;
  *v61 = v68;
  sub_1C11E19D4(a1, v59);
  sub_1C11E19D4(a1, v59);
  sub_1C1265420();
  PhotosSearchBarWithSuggestionViewModel.cappedAdditionalSuggestionViewOffsetX.getter();
  v33 = v32;

  v58 = v33;
  v34 = swift_allocObject();
  memcpy((v34 + 16), a1, 0x128uLL);
  sub_1C11E19D4(a1, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE970A8);
  sub_1C11E1A14();
  sub_1C0FF9EE4();
  v35 = v52;
  sub_1C1265010();

  memcpy(v61, v60, sizeof(v61));
  sub_1C0FD1A5C(v61, &qword_1EBE970A8);
  memcpy(v59, a1, sizeof(v59));
  sub_1C11DCCCC();
  v37 = v36;
  v38 = swift_allocObject();
  memcpy((v38 + 16), a1, 0x128uLL);
  v39 = v50;
  (*(v53 + 32))(v50, v35, v54);
  v40 = &v39[*(v51 + 36)];
  *v40 = v37;
  v40[1] = sub_1C11E1CB8;
  v40[2] = v38;
  sub_1C0FC593C();
  return sub_1C11E19D4(a1, v59);
}

__n128 PhotosSearchBarWithSuggestionViewOverlay.init(selectedSuggestionIndex:viewModel:searchText:searchSuggestions:canShowSearchSuggestions:animationAnchor:onSuggestionViewVisibilityChange:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FA8);
  sub_1C1265410();
  *(a8 + 104) = v22;
  result = *a1;
  v21 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v21;
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 40) = a2;
  *(a8 + 48) = a3;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  *(a8 + 72) = a9;
  *(a8 + 80) = a10;
  *(a8 + 88) = a6;
  *(a8 + 96) = a7;
  return result;
}

uint64_t PhotosSearchBarWithSuggestionViewModel.cappedAdditionalSuggestionViewOffsetX.getter()
{
  v0 = sub_1C11DDB10();
  if (v0 != 2 && (v0 & 1) != 0)
  {
    return sub_1C11DD7B0();
  }

  sub_1C11DE49C(sub_1C11DD960, sub_1C11DDED4);
  sub_1C11DE49C(sub_1C11DE234, sub_1C11DE084);
  sub_1C11DE49C(sub_1C11DD960, sub_1C11DDED4);
  sub_1C11DE3E4();
  return sub_1C11DDC84();
}

void sub_1C11DCAE4(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 200))
  {
    if (qword_1EBE8FD58 != -1)
    {
      swift_once();
    }

    v3 = sub_1C1263D00();
    __swift_project_value_buffer(v3, qword_1EBE96F58);
    sub_1C1262D50();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
}

double *sub_1C11DCB8C(double *result, uint64_t a2)
{
  v2 = *(a2 + 200);
  if (v2)
  {
    return v2(*result, result[1], result[2], result[3]);
  }

  return result;
}

uint64_t sub_1C11DCBC8(uint64_t result)
{
  v1 = *(result + 216);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F80);
    sub_1C1265420();
    PhotosSearchBarWithSuggestionViewModel.cappedAdditionalSuggestionViewOffsetX.getter();
    v3 = v2;

    return v1(v4, v3);
  }

  return result;
}

uint64_t sub_1C11DCC58(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1C11DCCCC();
  return MEMORY[0x1C68EC9C0]();
}

void sub_1C11DCCCC()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  v12 = *(v0 + 272);
  if ((*(v0 + 274) & 1) == 0)
  {
    v13 = *(v0 + 232);
    v17 = *(v0 + 248);
    v18 = *(v0 + 240);
    v16 = *(v0 + 256);
    v14 = *(v0 + 264);

    sub_1C1266420();
    v15 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1022584(v13, v18, v17, v16, v14, v12, 0);
    (*(v7 + 8))(v11, v5);
    LOWORD(v12) = v19;
  }

  if ((v12 & 0x8000) != 0)
  {
    v4();
  }

  else
  {
    v2();
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosSearchBarWithSuggestionViewModel.init(searchBarLeadingInset:searchBarTrailingInset:)()
{
  OUTLINED_FUNCTION_14_23();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 513;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  *(v1 + 104) = 0x3FF0000000000000;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  *(v1 + 128) = 0;
  *(v1 + 136) = 1;
  *(v1 + 144) = 0;
  *(v1 + 152) = 1;
  sub_1C1261F60();
  sub_1C11DD14C(v4, v3 & 1);
  sub_1C11DD224(v2, v0 & 1);
  return v1;
}

uint64_t sub_1C11DCF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C11DCF6C()
{
  result = qword_1EBE96F90;
  if (!qword_1EBE96F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96F70);
    sub_1C11DD054(&qword_1EBE96F98, type metadata accessor for PhotosSearchBarWithSuggestionViewBase);
    sub_1C0FDB6D4(&qword_1EBE96FA0, &qword_1EBE96F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F90);
  }

  return result;
}

uint64_t sub_1C11DD054(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C11DD09C(double a1)
{
  if (*(v1 + 104) == a1)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C11DD558();
  }
}

uint64_t sub_1C11DD14C(uint64_t result, int a2)
{
  v3 = *(v2 + 48);
  if (v3 & 1) != 0 || (a2)
  {
    if (v3 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*(v2 + 40) == *&result)
  {
LABEL_4:
    *(v2 + 40) = *&result;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C11DD558();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_1C11DD224(uint64_t result, int a2)
{
  v3 = *(v2 + 64);
  if (v3 & 1) != 0 || (a2)
  {
    if (v3 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*(v2 + 56) == *&result)
  {
LABEL_4:
    *(v2 + 56) = *&result;
    *(v2 + 64) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C11DD558();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_1C11DD2FC()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();
}

uint64_t sub_1C11DD3CC(uint64_t a1)
{

  v4 = sub_1C11DD4C0(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C11DD558();
  }

  else
  {
    *(v1 + 16) = a1;
  }
}

BOOL sub_1C11DD4C0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for PhotosSearchBarTokenSizer();
    v3 = static PhotosSearchBarTokenSizer.== infix(_:_:)();
  }

  return !v3;
}

uint64_t sub_1C11DD51C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

uint64_t sub_1C11DD558()
{
  OUTLINED_FUNCTION_2_57();
  sub_1C11DD054(v0, v1);
  return sub_1C1261F20();
}

uint64_t sub_1C11DD600()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 24);
}

uint64_t sub_1C11DD6D8(uint64_t result, int a2)
{
  v3 = *(v2 + 32);
  if (v3 & 1) != 0 || (a2)
  {
    if (v3 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*(v2 + 24) == *&result)
  {
LABEL_4:
    *(v2 + 24) = *&result;
    *(v2 + 32) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C11DD558();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_1C11DD7B0()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 40);
}

uint64_t sub_1C11DD888()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 56);
}

uint64_t sub_1C11DD960()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 72);
}

uint64_t sub_1C11DDA38(uint64_t result, int a2)
{
  v3 = *(v2 + 80);
  if (v3 & 1) != 0 || (a2)
  {
    if (v3 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*(v2 + 72) == *&result)
  {
LABEL_4:
    *(v2 + 72) = *&result;
    *(v2 + 80) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C11DD558();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_1C11DDB10()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 81);
}

uint64_t sub_1C11DDBB0(uint64_t result)
{
  v2 = *(v1 + 81);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C11DD558();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 81) = result;
  return result;
}

uint64_t sub_1C11DDC84()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 88);
}

uint64_t sub_1C11DDD5C(uint64_t result, int a2)
{
  v3 = *(v2 + 96);
  if (v3 & 1) != 0 || (a2)
  {
    if (v3 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*(v2 + 88) == *&result)
  {
LABEL_4:
    *(v2 + 88) = *&result;
    *(v2 + 96) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C11DD558();
  *&result = COERCE_DOUBLE();
  return result;
}

double sub_1C11DDE34()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 104);
}

uint64_t sub_1C11DDED4()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 112);
}

uint64_t sub_1C11DDFAC(uint64_t result, int a2)
{
  v3 = *(v2 + 120);
  if (v3 & 1) != 0 || (a2)
  {
    if (v3 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*(v2 + 112) == *&result)
  {
LABEL_4:
    *(v2 + 112) = *&result;
    *(v2 + 120) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C11DD558();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_1C11DE084()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 128);
}

uint64_t sub_1C11DE15C(uint64_t result, int a2)
{
  v3 = *(v2 + 136);
  if (v3 & 1) != 0 || (a2)
  {
    if (v3 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*(v2 + 128) == *&result)
  {
LABEL_4:
    *(v2 + 128) = *&result;
    *(v2 + 136) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C11DD558();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_1C11DE234()
{
  swift_getKeyPath();
  sub_1C11DD054(&qword_1EDE790D8, type metadata accessor for PhotosSearchBarWithSuggestionViewModel);
  sub_1C1261F30();

  return *(v0 + 144);
}

uint64_t sub_1C11DE30C(uint64_t result, int a2)
{
  v3 = *(v2 + 152);
  if (v3 & 1) != 0 || (a2)
  {
    if (v3 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*(v2 + 144) == *&result)
  {
LABEL_4:
    *(v2 + 144) = *&result;
    *(v2 + 152) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C11DD558();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_1C11DE3E4()
{
  v0 = sub_1C11DD600();
  if (v1)
  {
    *&result = COERCE_DOUBLE(sub_1C11DD600());
  }

  else
  {
    v3 = *&v0;
    v4 = COERCE_DOUBLE(sub_1C11DD7B0());
    if (v5)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v4;
    }

    v7 = COERCE_DOUBLE(sub_1C11DD888());
    if (v8)
    {
      v7 = 0.0;
    }

    *&result = v3 - v6 - v7;
  }

  return result;
}

uint64_t sub_1C11DE458()
{
  *&result = COERCE_DOUBLE(sub_1C11DE3E4());
  if ((v1 & 1) == 0)
  {
    *&result = sub_1C11DDE34() * *&result;
  }

  return result;
}

double sub_1C11DE49C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = COERCE_DOUBLE(a1());
  if (v4)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  v6 = COERCE_DOUBLE(a2());
  if (v7)
  {
    v6 = 0.0;
  }

  return v5 - v6;
}

uint64_t sub_1C11DE4F4(Swift::Int a1, Swift::Int a2, char a3)
{
  result = sub_1C11DD2FC();
  if (result)
  {
    v11.is_nil = a3 & 1;
    v11.value.location = a1;
    v11.value.length = a2;
    v7 = PhotosSearchBarTokenSizer.tokenMatchingLeadingOffset(from:)(v11);
    v9 = v8;

    if ((v9 & 1) == 0)
    {

      return sub_1C11DE30C(v7, 0);
    }
  }

  return result;
}

uint64_t PhotosSearchBarWithSuggestionViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore38PhotosSearchBarWithSuggestionViewModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosSearchBarWithSuggestionViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore38PhotosSearchBarWithSuggestionViewModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C11DE688@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  sub_1C10AF3D4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C1263130();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void PhotosSearchBarWithSuggestionViewBase.body.getter()
{
  OUTLINED_FUNCTION_23();
  v107 = v1;
  v105 = sub_1C1263130();
  OUTLINED_FUNCTION_0();
  v106 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v102 = v5 - v4;
  *&v100 = type metadata accessor for PhotosOffsetReaderContainer(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6);
  *&v99 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v81 - v9;
  v10 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - v18;
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FB0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v81 - v26;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FB8);
  OUTLINED_FUNCTION_0();
  v104 = v28;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_34();
  v112 = v30;
  *v119 = *v0;
  *&v119[8] = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0);
  sub_1C1265610();
  v97 = *v116;
  v92 = 0x80000001C126CA90;
  v96 = *&v116[8];
  v31 = *(v0 + 32);
  v32 = *(v0 + 40);
  *v119 = *(v0 + 24);
  *&v119[8] = v31;
  v119[16] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  sub_1C1265610();
  v95 = *v116;
  v94 = *&v116[8];
  v93 = v116[16];
  v33 = *(v0 + 80);
  v34 = *(v0 + 104);
  v35 = *(v0 + 112);
  *v116 = *(v0 + 72);
  *&v116[8] = v33;
  *&v116[16] = *(v0 + 88);
  v117 = v34;
  v118 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0);
  sub_1C1265610();
  v91 = *v119;
  v90 = *&v119[16];
  v89 = *&v119[24];
  v88 = v120;
  v87 = v121;
  v36 = (v0 + *(v11 + 48));
  v38 = *v36;
  v37 = v36[1];
  v86 = v38;
  v82 = v37;
  v111 = v24;
  sub_1C11DF790();
  v39 = *(v12 + 80);
  v40 = (v39 + 16) & ~v39;
  v41 = v39;
  v84 = swift_allocObject();
  sub_1C11DCF08(v24, v84 + v40);
  sub_1C11DF790();
  v83 = swift_allocObject();
  sub_1C11DCF08(v19, v83 + v40);
  v113 = v0;
  v109 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase;
  sub_1C11DF790();
  v110 = v21;
  v108 = v41;
  v42 = swift_allocObject();
  sub_1C11DCF08(v16, v42 + v40);
  v43 = v85;
  sub_1C11DF790();
  v44 = swift_allocObject();
  sub_1C11DCF08(v43, v44 + v40);
  v45 = type metadata accessor for PhotosSearchBar();
  v46 = v45[12];
  *&v27[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v47 = &v27[v45[13]];
  *v47 = swift_getKeyPath();
  *(v47 + 8) = 0u;
  *(v47 + 24) = 0u;
  *(v47 + 39) = 0;
  v48 = &v27[v45[14]];
  v114 = 0;
  v115 = 1;
  v49 = v82;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690);
  sub_1C1265410();
  v50 = v116[8];
  v51 = *&v116[16];
  *v48 = *v116;
  v48[8] = v50;
  *(v48 + 2) = v51;
  v52 = v45[15];
  v114 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95890);
  sub_1C1265410();
  *&v27[v52] = *v116;
  *v116 = 0xD00000000000001ELL;
  *&v116[8] = v92;
  v53 = v98;
  sub_1C1263F30();
  *(v53 + *(v100 + 20)) = 0;
  sub_1C11DF790();
  sub_1C1265410();
  sub_1C11E1790(v53, type metadata accessor for PhotosOffsetReaderContainer);
  *v27 = v97;
  *(v27 + 8) = v96;
  v54 = v94;
  *(v27 + 3) = v95;
  *(v27 + 4) = v54;
  v27[40] = v93;
  *(v27 + 3) = v91;
  v55 = v89;
  *(v27 + 8) = v90;
  *(v27 + 9) = v55;
  v27[80] = v88;
  v56 = v86;
  *(v27 + 11) = v87;
  *(v27 + 12) = v56;
  *(v27 + 13) = v49;
  *(v27 + 14) = sub_1C11DF384;
  *(v27 + 15) = v84;
  *(v27 + 16) = sub_1C11DF5A0;
  *(v27 + 17) = v83;
  *(v27 + 18) = sub_1C11DF63C;
  *(v27 + 19) = v42;
  *(v27 + 20) = sub_1C11DF730;
  *(v27 + 21) = v44;
  v57 = (v113 + *(v11 + 44));
  v58 = *(v57 + 4);
  LOWORD(v42) = *(v57 + 20);
  v59 = v57[1];
  v100 = *v57;
  v99 = v59;
  KeyPath = swift_getKeyPath();
  v61 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC8) + 36)];
  *v61 = KeyPath;
  *(v61 + 24) = v99;
  *(v61 + 8) = v100;
  *(v61 + 5) = v58;
  *(v61 + 24) = v42;
  v62 = v111;
  sub_1C11DF790();
  v63 = swift_allocObject();
  sub_1C11DCF08(v62, v63 + v40);
  v64 = v101;
  v65 = &v27[*(v101 + 36)];
  *v65 = sub_1C1179DC8;
  *(v65 + 1) = 0;
  *(v65 + 2) = sub_1C11DF864;
  *(v65 + 3) = v63;
  v66 = v102;
  sub_1C11DE688(v102);
  sub_1C11DF790();
  v67 = swift_allocObject();
  sub_1C11DCF08(v62, v67 + v40);
  v68 = sub_1C11DF8C8();
  OUTLINED_FUNCTION_4_49();
  v71 = sub_1C11DD054(v69, v70);
  v72 = v66;
  v73 = v105;
  sub_1C1265010();

  (*(v106 + 8))(v72, v73);
  sub_1C0FD1A5C(v27, &qword_1EBE96FB0);
  v74 = *(v57 + 4);
  v75 = *(v57 + 20);
  v76 = v57[1];
  *v119 = *v57;
  *&v119[16] = v76;
  v120 = v74;
  LOWORD(v121) = v75;
  v77 = v111;
  sub_1C11DF790();
  v78 = swift_allocObject();
  sub_1C11DCF08(v77, v78 + v40);
  *v116 = v64;
  *&v116[8] = v73;
  *&v116[16] = v68;
  *&v116[24] = v71;
  OUTLINED_FUNCTION_3_47();
  swift_getOpaqueTypeConformance2();
  sub_1C10C8ACC();
  v79 = v103;
  v80 = v112;
  sub_1C1265010();

  (*(v104 + 8))(v80, v79);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11DF384()
{
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_17_24();

  return sub_1C11DF328();
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v2 + 104);
  if (v3 != 255)
  {
    sub_1C1154CB4(*(v2 + 88), *(v2 + 96), v3);
  }

  v4 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(v2 + v4);

  v6 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263130();
    OUTLINED_FUNCTION_3();
    (*(v7 + 8))(v2 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C11DF5B8()
{
  OUTLINED_FUNCTION_17_4();
  v2 = v1;
  type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0);
  sub_1C1265750();
  v0(v2, 0);
}

uint64_t sub_1C11DF654()
{
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_17_24();
  return sub_1C11DF5B8();
}

uint64_t sub_1C11DF6B8()
{
  type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0);
  sub_1C1265750();

  sub_1C11DD3CC(v0);
}

uint64_t sub_1C11DF730()
{
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_17_24();

  return sub_1C11DF6B8();
}

uint64_t sub_1C11DF790()
{
  OUTLINED_FUNCTION_17_4();
  v2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C11DF7EC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0);
  sub_1C1265750();
  sub_1C11DD6D8(v1, 0);
}

uint64_t sub_1C11DF864(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_17_24();

  return sub_1C11DF7EC(a1);
}

unint64_t sub_1C11DF8C8()
{
  result = qword_1EBE96FD0;
  if (!qword_1EBE96FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FB0);
    sub_1C11DF980();
    sub_1C0FDB6D4(&qword_1EDE7BAA0, &qword_1EBE94EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96FD0);
  }

  return result;
}

unint64_t sub_1C11DF980()
{
  result = qword_1EBE96FD8;
  if (!qword_1EBE96FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FC8);
    sub_1C11DD054(&qword_1EBE95878, type metadata accessor for PhotosSearchBar);
    sub_1C0FDB6D4(qword_1EBE93498, &qword_1EBE93490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96FD8);
  }

  return result;
}

uint64_t sub_1C11DFA68()
{
  v1 = sub_1C1263130();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for PhotosSearchBarWithSuggestionViewBase(0) + 36) + 40) < 0 && (sub_1C11DE688(v4), v5 = sub_1C1263120(), (*(v2 + 8))(v4, v1), (v5 & 1) == 0))
  {
    v6 = 0.85;
  }

  else
  {
    v6 = 1.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FC0);
  sub_1C1265750();
  sub_1C11DD09C(v6);
}

uint64_t sub_1C11DFBB8()
{
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_17_24();
  return sub_1C11DFA68();
}

void PhotosSearchBarWithSuggestionViewOverlay.body.getter()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v66 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FE0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v54 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FE8);
  OUTLINED_FUNCTION_0();
  v58 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FF0);
  OUTLINED_FUNCTION_0();
  v59 = v12;
  v60 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34();
  v55 = v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FF8);
  OUTLINED_FUNCTION_0();
  v62 = v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v61 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97000);
  OUTLINED_FUNCTION_0();
  v64 = v19;
  v65 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  v63 = v21;
  memcpy(v73, v1, 0x78uLL);
  *v6 = sub_1C12638E0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97008);
  v23 = sub_1C11E02C8(v73, &v6[*(v22 + 44)]);
  MEMORY[0x1C68EF360](v23, 0.5, 1.0, 0.0);
  sub_1C12659F0();

  v68 = v73;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97010);
  OUTLINED_FUNCTION_8_34();
  v26 = sub_1C0FDB6D4(v25, &qword_1EBE96FE0);
  v27 = sub_1C11E084C();
  v57 = v10;
  sub_1C1265030();

  sub_1C0FD1A5C(v6, &qword_1EBE96FE0);
  v28 = v73[7];
  if (v73[7])
  {
    v29 = *(v73[7] + 16);
    if (v29)
    {
      LOBYTE(v29) = v73[8];
    }
  }

  else
  {
    LOBYTE(v29) = 0;
  }

  LOBYTE(v69) = v29;
  OUTLINED_FUNCTION_12_23();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_10_32(v30);
  OUTLINED_FUNCTION_22_19();
  *&v70 = v3;
  *(&v70 + 1) = v24;
  v71 = v26;
  v72 = v27;
  OUTLINED_FUNCTION_5_33();
  v31 = OUTLINED_FUNCTION_21_13();
  v32 = MEMORY[0x1E69E6370];
  v33 = MEMORY[0x1E69E6388];
  OUTLINED_FUNCTION_18_29();
  v34 = v55;
  v35 = v56;
  v36 = v57;
  sub_1C1265010();

  (*(v58 + 8))(v36, v35);
  v69 = v28;
  OUTLINED_FUNCTION_12_23();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_10_32(v37);
  OUTLINED_FUNCTION_22_19();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96FA8);
  *&v70 = v35;
  *(&v70 + 1) = v32;
  v71 = v31;
  v72 = v33;
  OUTLINED_FUNCTION_3_47();
  v57 = v38;
  v58 = v39;
  v40 = OUTLINED_FUNCTION_21_13();
  v41 = sub_1C11E0BB4();
  OUTLINED_FUNCTION_18_29();
  v42 = v61;
  v43 = v28;
  v44 = v60;
  sub_1C1265010();

  (*(v59 + 8))(v34, v44);
  v69 = sub_1C11DD2FC();
  OUTLINED_FUNCTION_12_23();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_10_32(v45);
  OUTLINED_FUNCTION_22_19();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97060);
  *&v70 = v44;
  v47 = v43;
  *(&v70 + 1) = v57;
  v71 = v40;
  v72 = v41;
  v48 = OUTLINED_FUNCTION_21_13();
  v49 = sub_1C11E0D08();
  OUTLINED_FUNCTION_18_29();
  v50 = v63;
  v51 = v67;
  v60 = v46;
  sub_1C1265010();

  (*(v62 + 8))(v42, v51);
  if (v47 && *(v47 + 16))
  {
  }

  else
  {
    v70 = *&v73[13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97078);
    sub_1C1265420();
    if (v69)
    {
      v47 = v69;
    }

    else
    {
      v47 = MEMORY[0x1E69E7CC0];
    }
  }

  v69 = v47;
  OUTLINED_FUNCTION_12_23();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_10_32(v52);
  OUTLINED_FUNCTION_22_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94FC0);
  *&v70 = v67;
  *(&v70 + 1) = v60;
  v71 = v48;
  v72 = v49;
  OUTLINED_FUNCTION_3_47();
  OUTLINED_FUNCTION_21_13();
  sub_1C11E0C38();
  OUTLINED_FUNCTION_18_29();
  v53 = v65;
  sub_1C1265010();

  (*(v64 + 8))(v50, v53);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11E02C8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotosOffsetReaderContainer(0);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v21 = sub_1C11DE458();
  v20 = v8;
  v9 = *(a1 + 7);
  if (v9 && *(v9 + 16))
  {
  }

  else
  {
    v22[0] = *(a1 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97078);
    sub_1C1265420();
    if (v24)
    {
      v9 = v24;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }
  }

  v10 = *(a1 + 1);
  v22[0] = *a1;
  v22[1] = v10;
  v23 = a1[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952D8);
  sub_1C1265610();
  v19 = v24;
  v11 = v26;
  v18 = v25;
  HIDWORD(v17) = v27;
  v12 = swift_allocObject();
  memcpy((v12 + 16), a1, 0x78uLL);
  *(a2 + 80) = swift_getKeyPath();
  *(a2 + 88) = 0;
  v13 = *(type metadata accessor for PhotosSearchSuggestionView(0) + 36);
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  swift_storeEnumTagMultiPayload();
  *&v24 = 0xD000000000000029;
  *(&v24 + 1) = 0x80000001C126DAE0;
  sub_1C11E09E8(a1, v22);
  sub_1C1263F30();
  *&v7[*(v4 + 20)] = 0;
  sub_1C11DF790();
  sub_1C1265410();
  sub_1C11E1790(v7, type metadata accessor for PhotosOffsetReaderContainer);
  *a2 = v21;
  *(a2 + 8) = v20 & 1;
  *(a2 + 16) = v9;
  *(a2 + 24) = sub_1C11E1884;
  *(a2 + 32) = v12;
  *(a2 + 40) = v19;
  *(a2 + 56) = v18;
  *(a2 + 64) = v11;
  *(a2 + 72) = BYTE4(v17);
  v14 = swift_allocObject();
  memcpy((v14 + 16), a1, 0x78uLL);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97090) + 36));
  *v15 = sub_1C1179DC8;
  v15[1] = 0;
  v15[2] = sub_1C11E1900;
  v15[3] = v14;
  return sub_1C11E09E8(a1, v22);
}

uint64_t sub_1C11E0688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97030);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  if (v9 && *(v9 + 16) && (*(a2 + 64) & 1) != 0)
  {
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97040);
    (*(*(v13 - 8) + 16))(v8, a1, v13);
    v14 = &v8[*(v6 + 36)];
    __asm { FMOV            V0.2D, #1.0 }

    *v14 = _Q0;
    *(v14 + 2) = v11;
    *(v14 + 3) = v12;
  }

  else
  {
    v20 = *(a2 + 72);
    v21 = *(a2 + 80);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97040);
    (*(*(v22 - 8) + 16))(v8, a1, v22);
    v23 = &v8[*(v6 + 36)];
    __asm { FMOV            V0.2D, #0.5 }

    *v23 = _Q0;
    *(v23 + 2) = v20;
    *(v23 + 3) = v21;
    if (!v9)
    {
LABEL_8:
      v25 = 0.0;
      goto LABEL_9;
    }
  }

  if (!*(v9 + 16))
  {
    goto LABEL_8;
  }

  v25 = 1.0;
  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_1C11E1814(v8, a3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97010);
  *(a3 + *(result + 36)) = v25;
  return result;
}

unint64_t sub_1C11E084C()
{
  result = qword_1EBE97020;
  if (!qword_1EBE97020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97010);
    sub_1C11E08D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97020);
  }

  return result;
}

unint64_t sub_1C11E08D8()
{
  result = qword_1EBE97028;
  if (!qword_1EBE97028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97030);
    sub_1C0FDB6D4(&qword_1EBE97038, &qword_1EBE97040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97028);
  }

  return result;
}

uint64_t sub_1C11E0990(uint64_t result)
{
  v1 = *(result + 88);
  if (v1)
  {
    v2 = *(result + 56);
    if (v2 && *(v2 + 16))
    {
      v3 = *(result + 64);
    }

    else
    {
      v3 = 0;
    }

    return v1(v3);
  }

  return result;
}

uint64_t sub_1C11E0A20(uint64_t a1)
{
  v2 = type metadata accessor for PhotosSearchSuggestionView.Section(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 56);
  if (v5)
  {
    if (*(v5 + 16))
    {
      v13 = *(a1 + 104);
      v12[1] = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97078);
      sub_1C1265430();
      v6 = *(v5 + 16);
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    do
    {
      v9 = v8;
      if (v6 == v8)
      {
        break;
      }

      sub_1C11DF790();
      ++v8;
      v10 = v4[8];
      sub_1C11E1790(v4, type metadata accessor for PhotosSearchSuggestionView.Section);
    }

    while (v10 != 1);
    v7 = v6 != v9;
  }

  else
  {
    v7 = 2;
  }

  return sub_1C11DDBB0(v7);
}

unint64_t sub_1C11E0BB4()
{
  result = qword_1EBE97048;
  if (!qword_1EBE97048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96FA8);
    sub_1C11E0C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97048);
  }

  return result;
}

unint64_t sub_1C11E0C38()
{
  result = qword_1EBE97050;
  if (!qword_1EBE97050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94FC0);
    sub_1C11DD054(&qword_1EBE97058, type metadata accessor for PhotosSearchSuggestionView.Section);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97050);
  }

  return result;
}

unint64_t sub_1C11E0D08()
{
  result = qword_1EBE97068;
  if (!qword_1EBE97068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97060);
    sub_1C11DD054(&qword_1EBE97070, type metadata accessor for PhotosSearchBarTokenSizer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97068);
  }

  return result;
}

uint64_t sub_1C11E0DBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97080);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v18 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97088);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v18 - v5);
  v7 = *(v0 + 56);
  if (v7 && *(v7 + 16))
  {
  }

  else
  {
    v20 = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97078);
    sub_1C1265420();
    if (v19)
    {
      v7 = v19;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  sub_1C11DB5A4(v7, v3);

  v8 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
  {
    v9 = &qword_1EBE97080;
    v10 = v3;
  }

  else
  {
    v11 = *v3;

    sub_1C11E1790(v3, type metadata accessor for PhotosSearchSuggestionView.Section);
    *&v20 = v11;
    v12 = sub_1C11E1520(v11);
    MEMORY[0x1EEE9AC00](v12);
    *(&v18 - 2) = &v20;
    sub_1C11E1698(sub_1C11E1770, v14, v13 & 1, v6);

    v15 = type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v15) != 1)
    {
      v16 = v6[8];
      sub_1C11E1790(v6, type metadata accessor for PhotosSearchSuggestionView.Section.Item);
      return v16;
    }

    v9 = &qword_1EBE97088;
    v10 = v6;
  }

  sub_1C0FD1A5C(v10, v9);
  return 0;
}

uint64_t sub_1C11E1038(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = sub_1C11E0DBC();
  return sub_1C11DE4F4(v1, v3, v2 & 1);
}

uint64_t sub_1C11E10E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 296))
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

uint64_t sub_1C11E1124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C11E1224()
{
  sub_1C11E1404(319, &qword_1EDE76B78, sub_1C1160258, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1C11E13B8(319, &qword_1EDE76B80);
    if (v1 <= 0x3F)
    {
      sub_1C11E13B8(319, &qword_1EDE76B88);
      if (v2 <= 0x3F)
      {
        sub_1C11E1404(319, &qword_1EDE76B50, type metadata accessor for PhotosSearchBarWithSuggestionViewModel, MEMORY[0x1E6981AA0]);
        if (v3 <= 0x3F)
        {
          sub_1C11E1404(319, &qword_1EDE77578, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C11E13B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C1265640();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C11E1404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C11E1470(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1C11E14B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C11E150C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 144) = *(v0 + 24);
  *(v1 + 152) = v2;
}

uint64_t sub_1C11E1520(uint64_t a1)
{
  v2 = *(a1 + 16);
  do
  {
    if (!v2)
    {
      break;
    }

    --v2;
    v3 = *(type metadata accessor for PhotosSearchSuggestionView.Section.Item(0) - 8);
  }

  while ((*(a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2 + 80) & 1) != 0);
  return v2;
}

unint64_t sub_1C11E15D0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
    return sub_1C11DF790();
  }

  __break(1u);
  return result;
}

void *sub_1C11E1698@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
      return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
    }
  }

  return result;
}

uint64_t sub_1C11E1790(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C11E1814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_29Tm()
{

  if (*(v0 + 104))
  {
  }

  OUTLINED_FUNCTION_12_23();

  return swift_deallocObject();
}

void sub_1C11E1908()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 88) = *(v0 + 24);
  *(v1 + 96) = v2;
}

double sub_1C11E191C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 104) = result;
  return result;
}

void sub_1C11E192C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
}

void sub_1C11E1940()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 128) = *(v0 + 24);
  *(v1 + 136) = v2;
}

void sub_1C11E1954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 72) = *(v0 + 24);
  *(v1 + 80) = v2;
}

void sub_1C11E1968()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 56) = *(v0 + 24);
  *(v1 + 64) = v2;
}

uint64_t keypath_get_59Tm()
{
  OUTLINED_FUNCTION_13_1();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

void sub_1C11E19B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

unint64_t sub_1C11E1A14()
{
  result = qword_1EBE970B0;
  if (!qword_1EBE970B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE970A8);
    sub_1C11E1ACC();
    sub_1C0FDB6D4(&unk_1EDE7BA90, &qword_1EBE970D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE970B0);
  }

  return result;
}

unint64_t sub_1C11E1ACC()
{
  result = qword_1EBE970B8;
  if (!qword_1EBE970B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE970C0);
    sub_1C11E1B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE970B8);
  }

  return result;
}

unint64_t sub_1C11E1B58()
{
  result = qword_1EBE970C8;
  if (!qword_1EBE970C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE970C8);
  }

  return result;
}

uint64_t objectdestroy_117Tm()
{

  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_1C1154CB4(*(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 200))
  {
  }

  if (*(v0 + 216))
  {
  }

  if (*(v0 + 232))
  {
  }

  sub_1C1022584(*(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 290));

  return swift_deallocObject();
}

uint64_t PhotosMenuContent.init(menuElementsPromise:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double PhotosEnvironmentMenuContent.init(item:allowedActionTypes:)()
{
  OUTLINED_FUNCTION_17_4();
  v3 = v2;
  *(v2 + 16) = swift_getKeyPath();
  *(v3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C12A3AB0;
  *(v4 + 32) = v1;
  *v3 = v4;
  *(v3 + 8) = v0;
  return result;
}

uint64_t PhotosEnvironmentMenuContent.init(items:allowedActionTypes:)()
{
  OUTLINED_FUNCTION_17_4();
  v3 = v2;
  result = swift_getKeyPath();
  *(v3 + 8) = v0;
  *(v3 + 16) = result;
  *(v3 + 24) = 0;
  *v3 = v1;
  return result;
}

void PhotosEnvironmentMenuContent.body.getter()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v3 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = *(v0 + 24);

  if ((v10 & 1) == 0)
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v3);
  }

  v12 = sub_1C11FF37C();

  *v2 = v12;
  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosMenuContent.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = (*v1)();
  *a1 = result;
  return result;
}

uint64_t sub_1C11E1F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v12 = type metadata accessor for PhotosMenuElementsView.ActionButtonToggleStyle();
  MEMORY[0x1EEE9AC00](v12);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97298);
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = &v10 - v6;
  sub_1C11E21B8(a1);
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE972A0);
  sub_1C0FDB6D4(&qword_1EDE76CC8, &qword_1EBE972A0);
  sub_1C1265570();
  swift_getObjectType();
  sub_1C11E24EC(v4);
  sub_1C0FDB6D4(&qword_1EDE76C20, &qword_1EBE97298);
  sub_1C11E4E04(&qword_1EBE972A8, type metadata accessor for PhotosMenuElementsView.ActionButtonToggleStyle);
  v8 = v11;
  sub_1C1264AA0();
  sub_1C11E4AFC(v4);
  return (*(v5 + 8))(v7, v8);
}

uint64_t sub_1C11E21B8(uint64_t a1)
{
  sub_1C1266200();
  swift_unknownObjectRetain();
  v2 = sub_1C12661F0();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E85E0];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = a1;
  swift_unknownObjectRetain();
  v5 = sub_1C12661F0();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = a1;
  sub_1C1265620();
  return v8;
}

uint64_t sub_1C11E22A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE972B0);
  sub_1C11E4B68();
  return sub_1C1265380();
}

uint64_t sub_1C11E2344@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 title];
  sub_1C1265EA0();

  sub_1C0FDB9AC();
  result = sub_1C12648F0();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

void sub_1C11E23C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 image];
  if (v4)
  {
    v5 = v4;
    sub_1C12652D0();

    sub_1C1263C20();
  }

  else
  {
    v6 = [a1 systemImageName];
    if (v6)
    {
      v7 = v6;
      sub_1C1265EA0();
    }

    sub_1C1265320();
    sub_1C1263C20();
  }

  *a2 = v8;
  *(a2 + 8) = v9;
}

uint64_t sub_1C11E24EC@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 role];
  if (v3 == 2)
  {
    sub_1C1262850();
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    sub_1C1262840();
LABEL_5:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = 1;
LABEL_7:
  v5 = sub_1C1262860();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

uint64_t sub_1C11E257C(uint64_t a1)
{
  v2 = sub_1C12640E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE972C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C0FD0AC4();
  (*(v3 + 16))(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  v10 = a1;
  sub_1C12640C0();
  sub_1C11E4E04(&qword_1EDE76DB0, MEMORY[0x1E697C948]);
  return sub_1C1265470();
}

uint64_t sub_1C11E2794()
{
  v0 = sub_1C12640A0();
  *v1 = !*v1;
  return v0(&v3, 0);
}

uint64_t sub_1C11E27F4(uint64_t a1)
{
  sub_1C11E4338(a1, sub_1C0FF7688, &qword_1EBE97220);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE970F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE970F8);
  sub_1C0FDB6D4(&unk_1EDE76AB0, &qword_1EBE970F0);
  sub_1C11E3F3C(&qword_1EBE97108, &unk_1EBE970F8, &unk_1C12C4B18, sub_1C11E3FB8);
  return sub_1C1265680();
}

uint64_t sub_1C11E2944@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97168);
  v44 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v43 = &v38 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97180);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v38 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97150);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v38 - v5;
  v48 = sub_1C1265670();
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97140);
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97188);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97190);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v38 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97128);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v55 = &unk_1F40B5E98;
  v20 = swift_dynamicCastObjCProtocolConditional();
  if (v20)
  {
    *v16 = v20;
    swift_storeEnumTagMultiPayload();
    sub_1C11E40FC();
    sub_1C0FDB6D4(&qword_1EBE97138, &qword_1EBE97140);
    swift_unknownObjectRetain();
    sub_1C1263C20();
    sub_1C0FD0AC4();
    swift_storeEnumTagMultiPayload();
    sub_1C11E4044();
    sub_1C11E4150();
    v21 = v53;
    sub_1C1263C20();
    sub_1C0FD1A5C(v19, &qword_1EBE97128);
  }

  else
  {
    v39 = v10;
    v40 = v11;
    v22 = v51;
    v41 = v17;
    v42 = v13;
    v54 = &unk_1F40B6708;
    v23 = swift_dynamicCastObjCProtocolConditional();
    if (v23)
    {
      MEMORY[0x1EEE9AC00](v23);
      *(&v38 - 2) = v24;
      MEMORY[0x1EEE9AC00](v24);
      *(&v38 - 2) = v25;
      swift_unknownObjectRetain();
      v51 = a1;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE971F8);
      sub_1C0FDB6D4(&qword_1EDE76B30, &qword_1EBE971F8);
      sub_1C11E3760();
      v26 = v39;
      sub_1C1264750();
      v27 = v50;
      (*(v50 + 16))(v16, v26, v8);
      swift_storeEnumTagMultiPayload();
      sub_1C11E40FC();
      sub_1C0FDB6D4(&qword_1EBE97138, &qword_1EBE97140);
      sub_1C1263C20();
      sub_1C0FD0AC4();
      swift_storeEnumTagMultiPayload();
      sub_1C11E4044();
      sub_1C11E4150();
      v21 = v53;
      sub_1C1263C20();
      swift_unknownObjectRelease();
      sub_1C0FD1A5C(v19, &qword_1EBE97128);
      (*(v27 + 8))(v26, v8);
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1C1265660();
        v28 = v45;
        v29 = v48;
        (*(v45 + 16))(v47, v7, v48);
        swift_storeEnumTagMultiPayload();
        sub_1C11E4E04(&qword_1EDE76B68, MEMORY[0x1E697D6D0]);
        sub_1C11E420C();
        sub_1C1263C20();
        sub_1C0FD0AC4();
        swift_storeEnumTagMultiPayload();
        sub_1C11E4044();
        sub_1C11E4150();
        v21 = v53;
        sub_1C1263C20();
        sub_1C0FD1A5C(v22, &unk_1EBE97150);
        (*(v28 + 8))(v7, v29);
      }

      else
      {
        sub_1C12623A0();
        v30 = swift_dynamicCastClass();
        v31 = v49;
        if (!v30)
        {
          v35 = 1;
          v21 = v53;
          goto LABEL_10;
        }

        MEMORY[0x1EEE9AC00](v30);
        *(&v38 - 2) = v32;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97178);
        sub_1C11E429C();
        v33 = v43;
        sub_1C1265700();
        v34 = v44;
        (*(v44 + 16))(v47, v33, v31);
        swift_storeEnumTagMultiPayload();
        sub_1C11E4E04(&qword_1EDE76B68, MEMORY[0x1E697D6D0]);
        sub_1C11E420C();
        sub_1C1263C20();
        sub_1C0FD0AC4();
        swift_storeEnumTagMultiPayload();
        sub_1C11E4044();
        sub_1C11E4150();
        v21 = v53;
        sub_1C1263C20();
        swift_unknownObjectRelease();
        sub_1C0FD1A5C(v22, &unk_1EBE97150);
        (*(v34 + 8))(v33, v31);
      }
    }
  }

  v35 = 0;
LABEL_10:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97118);
  return __swift_storeEnumTagSinglePayload(v21, v35, 1, v36);
}

void sub_1C11E3338(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 childElements];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97200);
  v4 = sub_1C12660B0();

  *a2 = v4;
}

uint64_t sub_1C11E33A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 image];
  if (v4)
  {
    v5 = v4;
    sub_1C12652D0();

    sub_1C1263C20();
  }

  else
  {
    v6 = [a1 systemImageName];
    if (v6)
    {
      v7 = v6;
      sub_1C1265EA0();
    }

    sub_1C1265320();
    sub_1C1263C20();
  }

  v8 = [a1 title];
  sub_1C1265EA0();

  sub_1C0FDB9AC();
  v9 = sub_1C12648F0();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v13 &= 1u;
  sub_1C0FDB850(v9, v11, v13);

  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  sub_1C0FDB8E8(v9, v11, v13);
}

uint64_t sub_1C11E3590()
{
  v0 = sub_1C1262390();
  sub_1C11E4338(v0, sub_1C0FF7688, &qword_1EBE97218);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97208);
  sub_1C0FDB6D4(&qword_1EDE76AC0, &unk_1EBE97208);
  sub_1C11E40FC();
  return sub_1C1265680();
}

uint64_t sub_1C11E36B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11E36B0();
  *a1 = result;
  return result;
}

unint64_t sub_1C11E3760()
{
  result = qword_1EBE970D8;
  if (!qword_1EBE970D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE970D8);
  }

  return result;
}

void sub_1C11E37E0()
{
  OUTLINED_FUNCTION_23();
  v73 = v0;
  v67 = sub_1C1265730();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v65 = v5 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97250);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v59 - v11;
  v12 = sub_1C12639E0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D78);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v59 - v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97260);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  v70 = v7;
  v61 = *(v7 + 80);
  v60 = (v61 + 32) & ~v61;
  v72 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0] + v60;
  sub_1C0FD0AC4();
  (*(v14 + 32))(v18, v21, v12);
  v26 = MEMORY[0x1E697F4E0];
  sub_1C11E4E04(&unk_1EDE76F48, MEMORY[0x1E697F4E0]);
  v68 = v12;
  sub_1C1265F60();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97270) + 36);
  v28 = sub_1C11E4E04(&qword_1EDE76F40, v26);
  v73 = 0;
  v29 = 0;
  v63 = (v2 + 32);
  v64 = (v2 + 16);
  for (i = v24; ; v24 = i)
  {
    sub_1C1266310();
    if (*&v24[v27] == v74)
    {
      *&v24[*(v59 + 36)] = v73;
      sub_1C0FD1A5C(v24, &unk_1EBE97260);
      v56 = *(v72 + 3);
      if (v56 >= 2)
      {
        v57 = v56 >> 1;
        v55 = __OFSUB__(v57, v29);
        v58 = v57 - v29;
        if (v55)
        {
          goto LABEL_37;
        }

        *(v72 + 2) = v58;
      }

      OUTLINED_FUNCTION_22_0();
      return;
    }

    v30 = sub_1C12663A0();
    v31 = v65;
    v32 = v67;
    (*v64)(v65);
    v30(&v74, 0);
    v33 = v28;
    v34 = v27;
    v35 = v33;
    sub_1C1266320();
    v36 = *(v69 + 48);
    v37 = v66;
    v38 = v73;
    *v66 = v73;
    (*v63)(&v37[v36], v31, v32);
    if (__OFADD__(v38, 1))
    {
      break;
    }

    sub_1C1178F50();
    if (v29)
    {
      v39 = v72;
    }

    else
    {
      v40 = v72;
      OUTLINED_FUNCTION_7_39();
      if (v42)
      {
        goto LABEL_34;
      }

      v43 = v41 & 0xFFFFFFFFFFFFFFFELL;
      if (v43 <= 1)
      {
        v44 = 1;
      }

      else
      {
        v44 = v43;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97280);
      v45 = *(v70 + 72);
      v46 = v60;
      v39 = swift_allocObject();
      v47 = _swift_stdlib_malloc_size(v39);
      if (!v45)
      {
        goto LABEL_35;
      }

      v48 = v47 - v46;
      if (v47 - v46 == 0x8000000000000000 && v45 == -1)
      {
        goto LABEL_36;
      }

      v50 = v48 / v45;
      *(v39 + 2) = v44;
      *(v39 + 3) = 2 * (v48 / v45);
      v51 = &v39[v46];
      v52 = *(v40 + 3);
      v53 = (v52 >> 1) * v45;
      if (*(v40 + 2))
      {
        if (v39 < v40 || v51 >= &v40[v46 + v53])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v39 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        *(v40 + 2) = 0;
      }

      v25 = &v51[v53];
      v29 = (v50 & 0x7FFFFFFFFFFFFFFFLL) - (v52 >> 1);

      v27 = v34;
      v38 = v73;
    }

    v55 = __OFSUB__(v29--, 1);
    if (v55)
    {
      goto LABEL_33;
    }

    v28 = v35;
    sub_1C1178F50();
    v25 += *(v70 + 72);
    v72 = v39;
    v73 = v38 + 1;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1C11E3DB0(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
  while (v3 != v2)
  {
    *&v20[0] = v2;
    sub_1C0FDB0A8(v4, v20 + 8);
    v21 = v20[0];
    v22 = v20[1];
    v23 = v20[2];
    if (!v1)
    {
      OUTLINED_FUNCTION_7_39();
      if (v7)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_6_35();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97248);
      v8 = swift_allocObject();
      v9 = (_swift_stdlib_malloc_size(v8) - 32) / 48;
      v8[2] = v6;
      v8[3] = 2 * v9;
      v10 = (v8 + 4);
      v11 = v5[3];
      v12 = v11 >> 1;
      if (v5[2])
      {
        if (v8 != v5 || v10 >= &v5[6 * v12 + 4])
        {
          memmove(v8 + 4, v5 + 4, 48 * v12);
        }

        v5[2] = 0;
      }

      v6 = (v10 + 48 * v12);
      v1 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - (v11 >> 1);

      v5 = v8;
    }

    v14 = __OFSUB__(v1--, 1);
    if (v14)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v15 = v21;
    v16 = v23;
    v6[1] = v22;
    v6[2] = v16;
    *v6 = v15;
    v6 += 3;
    v4 += 40;
    ++v2;
  }

  v17 = v5[3];
  if (v17 < 2)
  {
    return;
  }

  v18 = v17 >> 1;
  v14 = __OFSUB__(v18, v1);
  v19 = v18 - v1;
  if (!v14)
  {
    v5[2] = v19;
    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1C11E3F3C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1C11E3FB8()
{
  result = qword_1EBE97110;
  if (!qword_1EBE97110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97118);
    sub_1C11E4044();
    sub_1C11E4150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97110);
  }

  return result;
}

unint64_t sub_1C11E4044()
{
  result = qword_1EBE97120;
  if (!qword_1EBE97120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97128);
    sub_1C11E40FC();
    sub_1C0FDB6D4(&qword_1EBE97138, &qword_1EBE97140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97120);
  }

  return result;
}

unint64_t sub_1C11E40FC()
{
  result = qword_1EBE97130;
  if (!qword_1EBE97130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97130);
  }

  return result;
}

unint64_t sub_1C11E4150()
{
  result = qword_1EBE97148;
  if (!qword_1EBE97148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE97150);
    sub_1C11E4E04(&qword_1EDE76B68, MEMORY[0x1E697D6D0]);
    sub_1C11E420C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97148);
  }

  return result;
}

unint64_t sub_1C11E420C()
{
  result = qword_1EBE97160;
  if (!qword_1EBE97160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97168);
    sub_1C11E429C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97160);
  }

  return result;
}

unint64_t sub_1C11E429C()
{
  result = qword_1EBE97170;
  if (!qword_1EBE97170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97178);
    sub_1C11E40FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97170);
  }

  return result;
}

void sub_1C11E4338(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = a2();
  v5 = 0;
  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = (MEMORY[0x1E69E7CC0] + 32);
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1;
  while (v4 != v5)
  {
    if (v7)
    {
      v11 = MEMORY[0x1C68F02D0](v5, a1);
    }

    else
    {
      if (v5 >= *(v10 + 16))
      {
        goto LABEL_29;
      }

      v11 = *(a1 + 8 * v5 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!v6)
    {
      OUTLINED_FUNCTION_7_39();
      if (v13)
      {
        goto LABEL_31;
      }

      v14 = v4;
      v15 = v7;
      v16 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      v18 = swift_allocObject();
      v19 = (_swift_stdlib_malloc_size(v18) - 32) / 16;
      v18[2] = v17;
      v18[3] = 2 * v19;
      v20 = (v18 + 4);
      v21 = v8[3];
      v22 = v21 >> 1;
      if (v8[2])
      {
        if (v18 != v8 || v20 >= &v8[2 * v22 + 4])
        {
          memmove(v18 + 4, v8 + 4, 16 * v22);
        }

        v8[2] = 0;
      }

      v9 = (v20 + 16 * v22);
      v6 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - (v21 >> 1);

      v8 = v18;
      v7 = v15;
      v4 = v14;
      v10 = v28;
      a1 = v29;
    }

    v24 = __OFSUB__(v6--, 1);
    if (v24)
    {
      goto LABEL_30;
    }

    *v9 = v5;
    v9[1] = v11;
    v9 += 2;
    ++v5;
  }

  v25 = v8[3];
  if (v25 < 2)
  {
    return;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v6);
  v27 = v26 - v6;
  if (!v24)
  {
    v8[2] = v27;
    return;
  }

LABEL_32:
  __break(1u);
}

void sub_1C11E44EC()
{
  OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97238);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_50();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_58(v6, v7, v8, v9, v10, v11, v12, v13, v27);
  v14 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_13_26(v15);
  while (1)
  {
    if (v28 == v1)
    {
      v24 = v14[3];
      if (v24 >= 2)
      {
        v25 = v24 >> 1;
        v23 = __OFSUB__(v25, v0);
        v26 = v25 - v0;
        if (v23)
        {
          goto LABEL_31;
        }

        v14[2] = v26;
      }

      OUTLINED_FUNCTION_22_0();
      return;
    }

    type metadata accessor for PhotosSearchSuggestionView.Section(0);
    *v2 = v1;
    sub_1C11E4974();
    OUTLINED_FUNCTION_18_30();
    if (!v0)
    {
      OUTLINED_FUNCTION_7_39();
      if (v16)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_6_35();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97240);
      v17 = OUTLINED_FUNCTION_11_31();
      v18 = _swift_stdlib_malloc_size(v17);
      if (!&unk_1C12C4BC0)
      {
        goto LABEL_29;
      }

      if (v18 - v3 == 0x8000000000000000 && &unk_1C12C4BC1 == 0)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_3_48(v18 - v3);
      if (v20)
      {
        OUTLINED_FUNCTION_12_24();
        v22 = !v22 || v3 >= v21;
        if (v22)
        {
          OUTLINED_FUNCTION_14_24();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v17 != v14)
        {
          OUTLINED_FUNCTION_14_24();
          swift_arrayInitWithTakeBackToFront();
        }

        v14[2] = 0;
      }

      OUTLINED_FUNCTION_15_27();
    }

    v23 = __OFSUB__(v0--, 1);
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_19_19();
    OUTLINED_FUNCTION_9_33();
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1C11E4730()
{
  OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97228);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_50();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_58(v6, v7, v8, v9, v10, v11, v12, v13, v27);
  v14 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_13_26(v15);
  while (1)
  {
    if (v28 == v1)
    {
      v24 = v14[3];
      if (v24 >= 2)
      {
        v25 = v24 >> 1;
        v23 = __OFSUB__(v25, v0);
        v26 = v25 - v0;
        if (v23)
        {
          goto LABEL_31;
        }

        v14[2] = v26;
      }

      OUTLINED_FUNCTION_22_0();
      return;
    }

    type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
    *v2 = v1;
    sub_1C11E4974();
    OUTLINED_FUNCTION_18_30();
    if (!v0)
    {
      OUTLINED_FUNCTION_7_39();
      if (v16)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_6_35();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97230);
      v17 = OUTLINED_FUNCTION_11_31();
      v18 = _swift_stdlib_malloc_size(v17);
      if (!&unk_1C12C4BB0)
      {
        goto LABEL_29;
      }

      if (v18 - v3 == 0x8000000000000000 && &unk_1C12C4BB1 == 0)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_3_48(v18 - v3);
      if (v20)
      {
        OUTLINED_FUNCTION_12_24();
        v22 = !v22 || v3 >= v21;
        if (v22)
        {
          OUTLINED_FUNCTION_14_24();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v17 != v14)
        {
          OUTLINED_FUNCTION_14_24();
          swift_arrayInitWithTakeBackToFront();
        }

        v14[2] = 0;
      }

      OUTLINED_FUNCTION_15_27();
    }

    v23 = __OFSUB__(v0--, 1);
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_19_19();
    OUTLINED_FUNCTION_9_33();
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1C11E4974()
{
  OUTLINED_FUNCTION_17_4();
  v1(0);
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_18();
  v3(v2);
  return v0;
}

unint64_t sub_1C11E49DC()
{
  result = qword_1EBE97288;
  if (!qword_1EBE97288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97290);
    sub_1C11E3F3C(&qword_1EBE97108, &unk_1EBE970F8, &unk_1C12C4B18, sub_1C11E3FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97288);
  }

  return result;
}

uint64_t type metadata accessor for PhotosMenuElementsView.ActionButtonToggleStyle()
{
  result = qword_1EBE972D0;
  if (!qword_1EBE972D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C11E4AFC(uint64_t a1)
{
  v2 = type metadata accessor for PhotosMenuElementsView.ActionButtonToggleStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C11E4B68()
{
  result = qword_1EDE76E48;
  if (!qword_1EDE76E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE972B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E48);
  }

  return result;
}

id sub_1C11E4BE4@<X0>(BOOL *a1@<X8>)
{
  result = [*(v1 + 32) state];
  *a1 = result == 1;
  return result;
}

uint64_t objectdestroyTm_20()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1C11E4CA0()
{
  sub_1C11E4D0C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C11E4D0C()
{
  if (!qword_1EDE776D0)
  {
    sub_1C1262860();
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE776D0);
    }
  }
}

uint64_t sub_1C11E4D80()
{
  sub_1C12640E0();

  return sub_1C11E2794();
}

uint64_t sub_1C11E4E04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_31()
{

  return swift_allocObject();
}

id UIView.photosVirtualViewport(frame:)@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v11 = objc_allocWithZone(type metadata accessor for PXPlatformViewVirtualViewport());
  result = sub_1C11E4FB4(v5, a2, a3, a4, a5);
  *a1 = result;
  return result;
}

id sub_1C11E4FB4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC17PhotosSwiftUICoreP33_B045C13261241D2D6D7950A59C12EF9D29PXPlatformViewVirtualViewport_view] = a1;
  v6 = &v5[OBJC_IVAR____TtC17PhotosSwiftUICoreP33_B045C13261241D2D6D7950A59C12EF9D29PXPlatformViewVirtualViewport_frame];
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for PXPlatformViewVirtualViewport();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C11E5020(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICoreP33_B045C13261241D2D6D7950A59C12EF9D29PXPlatformViewVirtualViewport_view);
  sub_1C1266580();

  return [v3 convertRect:a1 toCoordinateSpace:?];
}

uint64_t sub_1C11E5098(uint64_t a1)
{
  [*(v1 + OBJC_IVAR____TtC17PhotosSwiftUICoreP33_B045C13261241D2D6D7950A59C12EF9D29PXPlatformViewVirtualViewport_view) convertRect:a1 fromCoordinateSpace:?];
  sub_1C1266670();

  return sub_1C1266580();
}

id sub_1C11E5178()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPlatformViewVirtualViewport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PhotosFavoriteButtonStyle.init(isFavorite:tint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static ButtonStyle<>.photosMaterialLabelButtonStyle(onlyIcon:background:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for PhotosMaterialLabelButtonStyle(0) + 24);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE950D0);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
}

void PhotosInteractiveButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  OUTLINED_FUNCTION_22_20();
  v3 = sub_1C1264060();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97318);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_8();
  sub_1C1264070();
  if (sub_1C1264080())
  {
    v11 = 0.9;
  }

  else
  {
    v11 = 1.0;
  }

  sub_1C1265B90();
  v13 = v12;
  v15 = v14;
  (*(v5 + 32))(v2, v9, v3);
  v16 = v2 + *(v1 + 44);
  *v16 = v11;
  *(v16 + 8) = v11;
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  v17 = sub_1C1265A30();
  v18 = sub_1C1264080();
  sub_1C0FFC488(v2, v0, &qword_1EBE97318);
  v19 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97320) + 36);
  *v19 = v17;
  *(v19 + 8) = v18 & 1;
  OUTLINED_FUNCTION_13_27();
}

uint64_t PhotosMaterialTextButtonStyle.makeBody(configuration:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97328);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30_9();
  *v0 = sub_1C12659A0();
  v0[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97330);
  sub_1C11E5A28(v0 + *(v6 + 44));
  v7 = sub_1C12659A0();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97338);
  OUTLINED_FUNCTION_48_6(v10);
  v11 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97340) + 36));
  *v11 = v7;
  v11[1] = v9;
  LOBYTE(v7) = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97348);
  OUTLINED_FUNCTION_38_9();
  *v12 = v7;
  OUTLINED_FUNCTION_7_40(v12);
  LOBYTE(v7) = sub_1C12644D0();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97350);
  OUTLINED_FUNCTION_38_9();
  *v13 = v7;
  OUTLINED_FUNCTION_7_40(v13);
  if (qword_1EBE8FD60 != -1)
  {
    OUTLINED_FUNCTION_5_34();
  }

  v14 = sub_1C1265900();
  v15 = __swift_project_value_buffer(v14, qword_1EBE97300);
  v16 = sub_1C1264470();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97358);
  OUTLINED_FUNCTION_35_9();
  (*(v17 + 16))(v2, v15, v14);
  *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97360) + 36)) = v16;
  v18 = v0 + *(v3 + 36);
  v19 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_0_10();
  (*(v20 + 104))(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88);
  OUTLINED_FUNCTION_19_20();
  *&v18[v21] = v22;
  sub_1C1264080();
  v23 = OUTLINED_FUNCTION_2();
  sub_1C0FFC488(v23, v24, v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97368);
  return OUTLINED_FUNCTION_15_28(v26);
}

void PhotosMaterialTintedTextButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_38_0();
  *v0 = sub_1C12659A0();
  v0[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97330);
  sub_1C11E5A28(v0 + *(v5 + 44));
  v6 = sub_1C12659A0();
  v8 = v7;
  v9 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97338) + 36);
  sub_1C11E83BC(v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97340) + 36));
  *v10 = v6;
  v10[1] = v8;
  LOBYTE(v6) = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  v11 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97348) + 36);
  *v11 = v6;
  OUTLINED_FUNCTION_7_40(v11);
  LOBYTE(v6) = sub_1C12644D0();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  v12 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97350) + 36);
  *v12 = v6;
  OUTLINED_FUNCTION_7_40(v12);
  v13 = sub_1C1265190();
  *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97378) + 36)) = v13;
  v14 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97380) + 36);
  sub_1C1263060();
  LOBYTE(v8) = sub_1C1264470();
  v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B38) + 36)] = v8;
  v15 = v0 + *(v2 + 44);
  v16 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_0_10();
  (*(v17 + 104))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88);
  OUTLINED_FUNCTION_19_20();
  *&v15[v18] = v19;
  sub_1C1264080();
  OUTLINED_FUNCTION_27_12();
  sub_1C0FFC488(v20, v21, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97388);
  OUTLINED_FUNCTION_12_25(v23);
  OUTLINED_FUNCTION_13_27();
}

uint64_t sub_1C11E5A28@<X0>(uint64_t a1@<X8>)
{
  v40[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_30();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v43 = v40 - v8;
  v9 = sub_1C1263130();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v40 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97440);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_30_9();
  sub_1C1264070();
  v24 = sub_1C1264570();
  KeyPath = swift_getKeyPath();
  v40[2] = v22;
  v41 = v1;
  v26 = (v1 + *(v22 + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = v11[13];
  v27(v18, *MEMORY[0x1E697E718], v9);
  v27(v15, *MEMORY[0x1E697E728], v9);
  OUTLINED_FUNCTION_9_34();
  sub_1C11EC3E0(v28, v29);
  result = OUTLINED_FUNCTION_37_6();
  if (result)
  {
    v31 = v11[4];
    v32 = v43;
    v31(v43, v18, v9);
    v31((v32 + *(v2 + 48)), v15, v9);
    sub_1C0FFC424(v32, v6, &qword_1EBE96B88);
    v33 = *(v2 + 48);
    v31(v21, v6, v9);
    v34 = v11[1];
    v34(v6 + v33, v9);
    sub_1C0FFC488(v32, v6, &qword_1EBE96B88);
    v31(&v21[*(v42 + 36)], (v6 + *(v2 + 48)), v9);
    v34(v6, v9);
    sub_1C11EE280();
    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_14_6();
    sub_1C10239B0(v35, v36);
    v37 = v41;
    sub_1C1264BC0();
    OUTLINED_FUNCTION_14_6();
    sub_1C0F9E27C(v38, v39);
    return sub_1C0F9E27C(v37, &qword_1EBE97440);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PhotosMaterialSymbolButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_34_10();
  v2 = v1;
  v93 = v3;
  sub_1C1263070();
  OUTLINED_FUNCTION_0();
  v90 = v5;
  v91 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v89 = (v7 - v6);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v87 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v80 - v12;
  sub_1C1263130();
  OUTLINED_FUNCTION_0();
  v97 = v14;
  v98 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v96 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v80 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  v84 = v20;
  v94 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_30();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v80 - v28;
  v30 = sub_1C1264060();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97390);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_8();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97398);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_34();
  v81 = v40;
  v92 = v2;
  sub_1C1264070();
  sub_1C1263020();
  sub_1C1262FE0();
  v41 = *(v22 + 8);
  v42 = v29;
  v43 = v94;
  v41(v42, v94);
  OUTLINED_FUNCTION_2_59();
  sub_1C11EC3E0(v44, v45);
  sub_1C1264B20();
  v46 = v26;
  v47 = v95;
  v41(v46, v43);
  v49 = v96;
  v48 = v97;
  v51 = *(v32 + 8);
  v50 = v32 + 8;
  v51(v36, v30);
  v52 = sub_1C1264570();
  KeyPath = swift_getKeyPath();
  v82 = v37;
  v54 = *(v37 + 36);
  v94 = v0;
  v55 = (v0 + v54);
  *v55 = KeyPath;
  v55[1] = v52;
  v56 = v48;
  v57 = *(v48 + 104);
  v58 = v98;
  v57(v47, *MEMORY[0x1E697E718], v98);
  v57(v49, *MEMORY[0x1E697E728], v58);
  OUTLINED_FUNCTION_9_34();
  sub_1C11EC3E0(v59, v60);
  if ((sub_1C1265DA0() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v61 = *(v56 + 32);
  v62 = v85;
  v61(v85, v47, v58);
  v63 = v88;
  v61((v62 + *(v88 + 48)), v49, v58);
  v64 = v87;
  sub_1C0FFC424(v62, v87, &qword_1EBE96B88);
  v65 = *(v63 + 48);
  v66 = v84;
  v61(v84, v64, v58);
  v67 = *(v56 + 8);
  v67(v64 + v65, v58);
  sub_1C0FFC488(v62, v64, &qword_1EBE96B88);
  v61(&v66[*(v86 + 36)], (v64 + *(v63 + 48)), v58);
  v67(v64, v58);
  sub_1C11EC428();
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_14_6();
  sub_1C10239B0(v68, v69);
  v50 = v81;
  v70 = v94;
  sub_1C1264BC0();
  OUTLINED_FUNCTION_14_6();
  sub_1C0F9E27C(v71, v72);
  sub_1C0F9E27C(v70, &qword_1EBE97390);
  v47 = v89;
  sub_1C1263060();
  if (qword_1EBE8FD60 != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_5_34();
  }

  v73 = sub_1C1265900();
  v74 = __swift_project_value_buffer(v73, qword_1EBE97300);
  v75 = v50 + *(v83 + 36);
  v77 = v90;
  v76 = v91;
  (*(v90 + 16))(v75, v47, v91);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973A8);
  (*(*(v73 - 8) + 16))(v75 + *(v78 + 52), v74, v73);
  (*(v77 + 8))(v47, v76);
  sub_1C1264080();
  sub_1C0FFC488(v50, v93, &qword_1EBE97398);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973B0);
  OUTLINED_FUNCTION_15_28(v79);
  OUTLINED_FUNCTION_33();
}

uint64_t PhotosMaterialLabelButtonStyle.init(onlyIcon:background:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for PhotosMaterialLabelButtonStyle(0) + 24);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE950D0);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1C11E65F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE950D0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PhotosMaterialLabelButtonStyle(0);
  sub_1C0FFC424(v1 + *(v10 + 24), v9, &qword_1EBE950D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1262A10();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C11E6824()
{
  sub_1C1262A10();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_13();
  v3 = v2 - v1;
  v4 = OUTLINED_FUNCTION_2();
  v5(v4);
  return MEMORY[0x1C68ECE20](v3);
}

void PhotosMaterialLabelButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v6 = v0;
  v8 = v7;
  v53 = v9;
  sub_1C1265900();
  OUTLINED_FUNCTION_0();
  v47 = v11;
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v46 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973B8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v46 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973C0);
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_38_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973C8) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973D0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15_4();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973D8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_26_11();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973E0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_7();
  *v16 = sub_1C12659A0();
  v16[1] = v25;
  v26 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973E8) + 44);
  v52 = v8;
  sub_1C11E6DC4(v8, v6, v26);
  LOBYTE(v8) = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  sub_1C0FFC488(v16, v2, &qword_1EBE973B8);
  v27 = (v2 + *(v5 + 44));
  *v27 = v8;
  OUTLINED_FUNCTION_7_40(v27);
  LOBYTE(v16) = sub_1C12644D0();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  sub_1C0FFC488(v2, v21, &qword_1EBE973C0);
  v28 = &v21[*(v18 + 44)];
  *v28 = v16;
  OUTLINED_FUNCTION_7_40(v28);
  if (*(v6 + 8))
  {
    v29 = *(v6 + 8);
  }

  else
  {
    v31 = v46;
    v30 = v47;
    v32 = v48;
    if (qword_1EBE8FD60 != -1)
    {
      OUTLINED_FUNCTION_5_34();
    }

    v33 = __swift_project_value_buffer(v32, qword_1EBE97300);
    (*(v30 + 16))(v31, v33, v32);
    OUTLINED_FUNCTION_2();
    v29 = sub_1C1262C90();
  }

  v34 = sub_1C1264470();
  sub_1C0FFC488(v21, v4, &qword_1EBE973C8);
  v35 = v4 + *(v51 + 36);
  *v35 = v29;
  *(v35 + 8) = v34;
  v36 = v1 + *(v49 + 36);
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v38 = *(v37 + 104);
  v39 = OUTLINED_FUNCTION_18();
  v38(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88);
  OUTLINED_FUNCTION_19_20();
  *(v36 + v40) = v41;
  sub_1C0FFC488(v4, v1, &qword_1EBE973D0);
  v42 = v3 + *(v50 + 36);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F80);
  sub_1C1263410();
  v44 = OUTLINED_FUNCTION_18();
  v38(v44);
  *(v42 + *(v43 + 36)) = 0;
  sub_1C0FFC488(v1, v3, &qword_1EBE973D8);
  sub_1C1264080();
  sub_1C0FFC488(v3, v53, &qword_1EBE973E0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973F0);
  OUTLINED_FUNCTION_12_25(v45);
  OUTLINED_FUNCTION_13_27();
}

uint64_t sub_1C11E6DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v88 = a1;
  v80 = a3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97440);
  MEMORY[0x1EEE9AC00](v94);
  v91 = v69 - v3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97828);
  MEMORY[0x1EEE9AC00](v78);
  v79 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v69 - v12;
  v14 = sub_1C1263130();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v95 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v69 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00);
  MEMORY[0x1EEE9AC00](v92);
  v89 = v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D20);
  v86 = *(v21 - 8);
  v87 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v69 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97830);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v77 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v69 - v27;
  v100 = xmmword_1C12C4D90;
  v101 = 0;
  if (qword_1EDE7AFB8 != -1)
  {
    swift_once();
  }

  v93 = v28;
  v98 = qword_1EDE7AFC0;
  v99 = dword_1EDE7AFC8;
  if (qword_1EDE7AEC0 != -1)
  {
    swift_once();
  }

  v96 = word_1EDE7AEC8;
  v97 = byte_1EBE9468C | HIBYTE(word_1EDE7AEC8);
  v81 = v23;
  PhotosPrefetchableImage(_:font:symbolVariant:)();
  sub_1C100DC0C();
  v29 = v15;
  v30 = v15 + 104;
  v31 = *(v15 + 104);
  v83 = *MEMORY[0x1E697E6E8];
  v31(v19);
  v32 = v95;
  v82 = *MEMORY[0x1E697E720];
  v84 = v31;
  v85 = v30;
  v31(v95);
  v33 = sub_1C11EC3E0(&qword_1EDE7BF98, MEMORY[0x1E697E730]);
  result = sub_1C1265DA0();
  if (result)
  {
    v74 = v7;
    v76 = v33;
    v35 = *(v29 + 32);
    v36 = v13;
    v35(v13, v19, v14);
    v35(&v13[*(v8 + 48)], v32, v14);
    v75 = v19;
    v37 = v13;
    v38 = v10;
    sub_1C0FFC424(v37, v10, &qword_1EBE96B88);
    v39 = *(v8 + 48);
    v40 = v89;
    v35(v89, v38, v14);
    v41 = *(v29 + 8);
    v41(v38 + v39, v14);
    sub_1C0FFC488(v36, v38, &qword_1EBE96B88);
    v71 = v8;
    v42 = *(v8 + 48);
    v43 = v40;
    v44 = &v40[*(v92 + 36)];
    v72 = v35;
    v35(v44, (v38 + v42), v14);
    v73 = v29 + 8;
    v70 = v41;
    v41(v38, v14);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91D80);
    v46 = sub_1C1062140();
    *&v100 = v45;
    *(&v100 + 1) = v46;
    swift_getOpaqueTypeConformance2();
    v47 = sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00);
    v48 = v87;
    v69[1] = v47;
    v49 = v81;
    sub_1C1264BC0();
    v50 = v95;
    v51 = v91;
    sub_1C0F9E27C(v43, &qword_1EBE96B00);
    (*(v86 + 8))(v49, v48);
    sub_1C1264070();
    sub_1C11E77D0();
    v52 = sub_1C1264540();

    KeyPath = swift_getKeyPath();
    v54 = &v51[*(v94 + 36)];
    *v54 = KeyPath;
    v54[1] = v52;
    v55 = v75;
    v56 = v84;
    (v84)(v75, v83, v14);
    (v56)(v50, v82, v14);
    result = sub_1C1265DA0();
    if (result)
    {
      v57 = v55;
      v58 = v72;
      v72(v36, v57, v14);
      v59 = v71;
      v58(v36 + *(v71 + 48), v50, v14);
      sub_1C0FFC424(v36, v38, &qword_1EBE96B88);
      v60 = *(v59 + 48);
      v58(v43, v38, v14);
      v61 = v70;
      v70(v38 + v60, v14);
      sub_1C0FFC488(v36, v38, &qword_1EBE96B88);
      v58(v43 + *(v92 + 36), (v38 + *(v59 + 48)), v14);
      v61(v38, v14);
      sub_1C11EE280();
      v62 = v74;
      v63 = v91;
      sub_1C1264BC0();
      sub_1C0F9E27C(v43, &qword_1EBE96B00);
      sub_1C0F9E27C(v63, &qword_1EBE97440);
      sub_1C1263060();
      v64 = v93;
      v65 = v77;
      sub_1C0FFC424(v93, v77, &qword_1EBE97830);
      v66 = v79;
      sub_1C0FFC424(v62, v79, &qword_1EBE97828);
      v67 = v80;
      sub_1C0FFC424(v65, v80, &qword_1EBE97830);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97838);
      sub_1C0FFC424(v66, v67 + *(v68 + 48), &qword_1EBE97828);
      sub_1C0F9E27C(v62, &qword_1EBE97828);
      sub_1C0F9E27C(v64, &qword_1EBE97830);
      sub_1C0F9E27C(v66, &qword_1EBE97828);
      return sub_1C0F9E27C(v65, &qword_1EBE97830);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C11E77D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_1C1262A10();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = sub_1C1264700();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C11E65F8(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E697DC20], v3);
  v14 = sub_1C1262A00();
  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);
  v16 = MEMORY[0x1E6980F30];
  if ((v14 & 1) == 0)
  {
    v16 = MEMORY[0x1E6980EF0];
  }

  (*(v11 + 104))(v13, *v16, v10);
  v17 = sub_1C1264590();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v17);
  v18 = sub_1C1264640();
  sub_1C0F9E27C(v2, &qword_1EBE96550);
  (*(v11 + 8))(v13, v10);
  return v18;
}

uint64_t static PhotosMaterialLabelButtonStyle.labelTextStyle(controlSize:)()
{
  OUTLINED_FUNCTION_22_20();
  v2 = sub_1C1262A10();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26_11();
  (*(v4 + 104))(v1, *MEMORY[0x1E697DC20], v2);
  v6 = sub_1C1262A00();
  (*(v4 + 8))(v1, v2);
  sub_1C1264700();
  OUTLINED_FUNCTION_0_10();
  v8 = MEMORY[0x1E6980F30];
  if ((v6 & 1) == 0)
  {
    v8 = MEMORY[0x1E6980EF0];
  }

  return (*(v7 + 104))(v0, *v8);
}

void PhotosMaterialCircleImageButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE973F8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30_9();
  *v0 = sub_1C12659A0();
  v0[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97400);
  sub_1C11E7E70(v0 + *(v6 + 44));
  v7 = sub_1C12659A0();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97408);
  OUTLINED_FUNCTION_48_6(v10);
  v11 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97340) + 36));
  *v11 = v7;
  v11[1] = v9;
  LOBYTE(v7) = sub_1C1264470();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97410);
  OUTLINED_FUNCTION_38_9();
  *v12 = v7;
  OUTLINED_FUNCTION_7_40(v12);
  if (qword_1EBE8FD60 != -1)
  {
    OUTLINED_FUNCTION_5_34();
  }

  v13 = sub_1C1265900();
  v14 = __swift_project_value_buffer(v13, qword_1EBE97300);
  v15 = sub_1C1264470();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97418);
  OUTLINED_FUNCTION_35_9();
  (*(v16 + 16))(v2, v14, v13);
  *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97360) + 36)) = v15;
  v17 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97420) + 36);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v21 = *(v20 + 104);
  v21(v17, v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88);
  OUTLINED_FUNCTION_19_20();
  *&v17[v22] = v23;
  v24 = v0 + *(v3 + 36);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F80);
  sub_1C1263410();
  v21(v24, v18, v19);
  v24[*(v25 + 36)] = 0;
  sub_1C1264080();
  v26 = OUTLINED_FUNCTION_2();
  sub_1C0FFC488(v26, v27, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97428);
  OUTLINED_FUNCTION_12_25(v29);
  OUTLINED_FUNCTION_13_27();
}

uint64_t sub_1C11E7E70@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - v4;
  v6 = sub_1C1263130();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D20);
  v35 = *(v16 - 8);
  v36 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v41 = xmmword_1C12C4D90;
  v42 = 0;
  if (qword_1EDE7AFB8 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDE7AFC0;
  v40 = dword_1EDE7AFC8;
  if (qword_1EDE7AEC0 != -1)
  {
    swift_once();
  }

  v37 = word_1EDE7AEC8;
  v38 = byte_1EBE9468C | HIBYTE(word_1EDE7AEC8);
  PhotosPrefetchableImage(_:font:symbolVariant:)();
  sub_1C100DC0C();
  v19 = *MEMORY[0x1E697E718];
  v32 = v18;
  v20 = v7[13];
  v20(v12, v19, v6);
  v20(v9, *MEMORY[0x1E697E728], v6);
  sub_1C11EC3E0(&qword_1EDE7BF98, MEMORY[0x1E697E730]);
  result = sub_1C1265DA0();
  if (result)
  {
    v22 = v7[4];
    v22(v5, v12, v6);
    v22(&v5[*(v1 + 48)], v9, v6);
    v23 = v33;
    sub_1C0FFC424(v5, v33, &qword_1EBE96B88);
    v31 = v13;
    v24 = *(v1 + 48);
    v22(v15, v23, v6);
    v25 = v7[1];
    v25(v23 + v24, v6);
    sub_1C0FFC488(v5, v23, &qword_1EBE96B88);
    v22(&v15[*(v31 + 36)], (v23 + *(v1 + 48)), v6);
    v25(v23, v6);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91D80);
    v27 = sub_1C1062140();
    *&v41 = v26;
    *(&v41 + 1) = v27;
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00);
    v28 = v36;
    v29 = v32;
    sub_1C1264BC0();
    sub_1C0F9E27C(v15, &qword_1EBE96B00);
    return (*(v35 + 8))(v29, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C11E83BC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_30();
  v40 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v38 - v7;
  v9 = sub_1C1263130();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v38 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  v38[0] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97440);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_26_11();
  sub_1C1264070();
  sub_1C1264510();
  v23 = sub_1C1264540();

  KeyPath = swift_getKeyPath();
  v38[1] = v21;
  v39 = v1;
  v25 = (v1 + *(v21 + 36));
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = v11;
  v27 = *(v11 + 104);
  v27(v18, *MEMORY[0x1E697E718], v9);
  v27(v15, *MEMORY[0x1E697E728], v9);
  OUTLINED_FUNCTION_9_34();
  sub_1C11EC3E0(v28, v29);
  result = OUTLINED_FUNCTION_37_6();
  if (result)
  {
    v31 = *(v11 + 32);
    v31(v8, v18, v9);
    v31(&v8[*(v2 + 48)], v15, v9);
    v32 = v40;
    sub_1C0FFC424(v8, v40, &qword_1EBE96B88);
    v33 = *(v2 + 48);
    v34 = v38[0];
    v31(v38[0], v32, v9);
    v35 = *(v26 + 8);
    v35(v32 + v33, v9);
    sub_1C0FFC488(v8, v32, &qword_1EBE96B88);
    v31((v34 + *(v42 + 36)), (v32 + *(v2 + 48)), v9);
    v35(v32, v9);
    sub_1C11EE280();
    OUTLINED_FUNCTION_4_6();
    sub_1C10239B0(v36, &qword_1EBE96B00);
    v37 = v39;
    sub_1C1264BC0();
    sub_1C0F9E27C(v34, &qword_1EBE96B00);
    return sub_1C0F9E27C(v37, &qword_1EBE97440);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C11E87B0()
{
  v0 = sub_1C1265900();
  __swift_allocate_value_buffer(v0, qword_1EBE97300);
  __swift_project_value_buffer(v0, qword_1EBE97300);
  return sub_1C12658C0();
}

void PhotosOpaqueBannerPrimaryTextButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v25 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97430);
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97438) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_4();
  sub_1C1264070();
  sub_1C1264690();
  v7 = sub_1C1264540();

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97440);
  OUTLINED_FUNCTION_23_14();
  *v9 = KeyPath;
  v9[1] = v7;
  v10 = sub_1C1265190();
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97448) + 36)) = v10;
  LOBYTE(v10) = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97450);
  OUTLINED_FUNCTION_23_14();
  *v11 = v10;
  OUTLINED_FUNCTION_7_40(v11);
  LOBYTE(v10) = sub_1C12644D0();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97458);
  OUTLINED_FUNCTION_23_14();
  *v12 = v10;
  OUTLINED_FUNCTION_7_40(v12);
  v13 = sub_1C1265130();
  LOBYTE(v7) = sub_1C1264470();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97460);
  OUTLINED_FUNCTION_23_14();
  *v14 = v13;
  *(v14 + 8) = v7;
  v15 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97468) + 36);
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v17 = *(v16 + 104);
  OUTLINED_FUNCTION_16_3();
  v17(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88);
  OUTLINED_FUNCTION_19_20();
  *(v15 + v19) = v20;
  v21 = v1 + *(v2 + 44);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F80);
  sub_1C1263410();
  OUTLINED_FUNCTION_16_3();
  v17(v23);
  *(v21 + *(v22 + 36)) = 0;
  sub_1C12659A0();
  OUTLINED_FUNCTION_17_27();
  sub_1C0FFC488(v1, v0, &qword_1EBE97430);
  memcpy((v0 + *(v5 + 44)), v26, 0x70uLL);
  sub_1C1264080();
  sub_1C0FFC488(v0, v25, &qword_1EBE97438);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97470);
  OUTLINED_FUNCTION_12_25(v24);
  OUTLINED_FUNCTION_13_27();
}

void PhotosTransparentBannerPrimaryTextButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v34 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97478);
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_8();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97480) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  v32 = v5;
  sub_1C1264070();
  sub_1C1264530();
  v6 = sub_1C1264540();

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97440);
  OUTLINED_FUNCTION_23_14();
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = sub_1C1265190();
  *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97448) + 36)) = v9;
  LOBYTE(v9) = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97450);
  OUTLINED_FUNCTION_23_14();
  *v10 = v9;
  OUTLINED_FUNCTION_7_40(v10);
  LOBYTE(v9) = sub_1C12644D0();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97458);
  OUTLINED_FUNCTION_23_14();
  *v11 = v9;
  OUTLINED_FUNCTION_7_40(v11);
  v12 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97488) + 36);
  sub_1C12658D0();
  LOBYTE(v6) = sub_1C1264470();
  *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97360) + 36)) = v6;
  v13 = swift_getKeyPath();
  v14 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97490) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D70) + 28);
  v16 = *MEMORY[0x1E697DBA8];
  sub_1C12629F0();
  OUTLINED_FUNCTION_0_10();
  (*(v17 + 104))(v14 + v15, v16);
  *v14 = v13;
  v18 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97498) + 36));
  sub_1C1263320();
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v20 = *(v19 + 104);
  OUTLINED_FUNCTION_16_3();
  v20();
  __asm { FMOV            V0.2D, #5.0 }

  v31 = _Q0;
  *v18 = _Q0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40);
  OUTLINED_FUNCTION_19_20();
  *(v18 + v26) = v27;
  v28 = (v0 + *(v1 + 44));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96748);
  sub_1C1263410();
  OUTLINED_FUNCTION_16_3();
  v20();
  *v28 = v31;
  *(v28 + *(v29 + 36)) = 0;
  sub_1C12659A0();
  OUTLINED_FUNCTION_17_27();
  sub_1C0FFC488(v0, v32, &qword_1EBE97478);
  memcpy((v32 + *(v33 + 44)), v35, 0x70uLL);
  sub_1C1264080();
  sub_1C0FFC488(v32, v34, &qword_1EBE97480);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974A0);
  OUTLINED_FUNCTION_12_25(v30);
  OUTLINED_FUNCTION_13_27();
}

double static ButtonStyle<>.photosDismissSymbolButtonStyle.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EDE7AB18 != -1)
  {
    OUTLINED_FUNCTION_20_21();
  }

  result = *&qword_1EDE9B648;
  *a1 = qword_1EDE9B648;
  return result;
}

double PhotosDismissSymbolButtonStyle.makeBody(configuration:)@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C12659A0();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974A8);
  sub_1C11E9024((a1 + *(v3 + 44)));
  sub_1C12659A0();
  sub_1C1262C80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974B0);
  OUTLINED_FUNCTION_38_9();
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_1C11E9024@<X0>(void *a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97800);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97808);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  sub_1C1264070();
  v14 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97810) + 36)];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0) + 28);
  v16 = *MEMORY[0x1E69816E0];
  v17 = sub_1C1265340();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  v18 = sub_1C1265150();
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97818) + 36)] = v18;
  v19 = sub_1C1264590();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v19);
  v20 = sub_1C1264630();
  sub_1C0F9E27C(v3, &qword_1EBE96550);
  KeyPath = swift_getKeyPath();
  v22 = &v6[*(v4 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_1C12645B0();
  sub_1C11EFD38();
  sub_1C1264990();
  sub_1C0F9E27C(v6, &qword_1EBE97800);
  v23 = *(v8 + 16);
  v23(v10, v13, v7);
  v24 = v30;
  *v30 = 1;
  *(v24 + 4) = 256;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97820);
  v23(&v25[*(v26 + 48)], v10, v7);
  v27 = *(v8 + 8);
  v27(v13, v7);
  return (v27)(v10, v7);
}

void PhotosBannerDismissSymbolButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_34_10();
  v31 = v3;
  v32 = v4;
  v30 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_30();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = sub_1C1264060();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974B8);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_7();
  sub_1C1264070();
  sub_1C1263020();
  sub_1C1262FE0();
  v19 = *(v6 + 8);
  v20 = v13;
  v21 = v30;
  v19(v20, v30);
  OUTLINED_FUNCTION_2_59();
  sub_1C11EC3E0(v22, v23);
  sub_1C1264B20();
  v19(v10, v21);
  (*(v16 + 8))(v0, v14);
  v24 = sub_1C1264570();
  KeyPath = swift_getKeyPath();
  v26 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97390) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = [objc_opt_self() systemGrayColor];
  *(v1 + *(v2 + 44)) = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  sub_1C1264080();
  sub_1C0FFC488(v1, v32, &qword_1EBE974B8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974C0);
  OUTLINED_FUNCTION_15_28(v28);
  OUTLINED_FUNCTION_33();
}

uint64_t PhotosFavoriteButtonStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v3 ^ sub_1C1264080();
  if (v5)
  {
    v6 = 0xEA00000000006C6CLL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = qword_1EDE833C0;

  if (v7 != -1)
  {
    swift_once();
  }

  if (v5)
  {
    v8 = 0x69662E7472616568;
  }

  else
  {
    v8 = 0x7472616568;
  }

  *&v12 = v8;
  *(&v12 + 1) = v6;
  v13 = 262912;
  v14 = 0;
  v15 = 65280;

  sub_1C12192C4(&v12);

  v9 = sub_1C12652F0();

  KeyPath = swift_getKeyPath();
  *a1 = v9;
  a1[1] = KeyPath;
  a1[2] = v4;
}

uint64_t sub_1C11E97AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C0FFC424(v2, &v14 - v9, &unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void PhotosToggleStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C11E9A48(a1, v2, a2);
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974C8) + 36);
  sub_1C12639D0();
  OUTLINED_FUNCTION_0_10();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88);
  OUTLINED_FUNCTION_19_20();
  *(v4 + v7) = v8;
}

uint64_t sub_1C11E9A48@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97720);
  MEMORY[0x1EEE9AC00](v60);
  v52 = &v50 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97770);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v50 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97710);
  MEMORY[0x1EEE9AC00](v57);
  v51 = &v50 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97700);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v50 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97778);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v50 - v10;
  v11 = sub_1C12629F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97780);
  v54 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE976E0);
  MEMORY[0x1EEE9AC00](v53);
  v61 = &v50 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE976D0);
  MEMORY[0x1EEE9AC00](v62);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v55 = &v50 - v25;
  if (sub_1C12640B0())
  {
    v58 = v23;
    v60 = a3;
    sub_1C11EA228(a1, v20);
    v59 = a2;
    sub_1C11E97AC(v17);
    v26 = *(v12 + 104);
    LODWORD(v57) = *MEMORY[0x1E697DBA8];
    v56 = v26;
    v26(v14);
    v27 = sub_1C12629D0();
    v28 = *(v12 + 8);
    v28(v14, v11);
    v28(v17, v11);
    v29 = v18;
    if (v27)
    {
      v30 = sub_1C1265190();
    }

    else
    {
      v30 = sub_1C1265160();
    }

    v37 = v30;
    v38 = v61;
    (*(v54 + 32))(v61, v20, v29);
    *(v38 + *(v53 + 36)) = v37;
    sub_1C11E97AC(v17);
    v56(v14, v57, v11);
    LOBYTE(v37) = sub_1C12629D0();
    v28(v14, v11);
    v28(v17, v11);
    if (v37)
    {
      sub_1C1265150();
    }

    else
    {
      sub_1C1265160();
    }

    v44 = sub_1C12651E0();
    v45 = v58;

    v46 = sub_1C1264470();
    sub_1C0FFC488(v61, v45, &qword_1EBE976E0);
    v47 = v45 + *(v62 + 36);
    *v47 = v44;
    *(v47 + 8) = v46;
    v42 = &qword_1EBE976D0;
    v48 = v55;
    sub_1C0FFC488(v45, v55, &qword_1EBE976D0);
    sub_1C0FFC424(v48, v64, &qword_1EBE976D0);
    swift_storeEnumTagMultiPayload();
    sub_1C11EEB24();
    sub_1C11EED54();
    sub_1C1263C20();
    v43 = v48;
  }

  else
  {
    if (MEMORY[0x1C68F0CE0]())
    {
      v31 = v51;
      sub_1C11EA228(a1, v51);
      v32 = sub_1C1263E40();
      v33 = v58;
      *(v31 + *(v57 + 36)) = v32;
      v34 = &qword_1EBE97710;
      sub_1C0FFC424(v31, v33, &qword_1EBE97710);
      swift_storeEnumTagMultiPayload();
      sub_1C11EEDE0();
      sub_1C11EEF58();
      v35 = v59;
      sub_1C1263C20();
      v36 = v31;
    }

    else
    {
      v39 = v52;
      sub_1C11EA228(a1, v52);
      *(v39 + *(v57 + 36)) = sub_1C1263E40();
      v40 = sub_1C1264470();
      v41 = v39 + *(v60 + 36);
      *v41 = 1;
      *(v41 + 8) = v40;
      v34 = &qword_1EBE97720;
      sub_1C0FFC424(v39, v58, &qword_1EBE97720);
      swift_storeEnumTagMultiPayload();
      sub_1C11EEDE0();
      sub_1C11EEF58();
      v35 = v59;
      sub_1C1263C20();
      v36 = v39;
    }

    sub_1C0F9E27C(v36, v34);
    v42 = &qword_1EBE97700;
    sub_1C0FFC424(v35, v64, &qword_1EBE97700);
    swift_storeEnumTagMultiPayload();
    sub_1C11EEB24();
    sub_1C11EED54();
    sub_1C1263C20();
    v43 = v35;
  }

  return sub_1C0F9E27C(v43, v42);
}

uint64_t sub_1C11EA228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1C12632E0();
  OUTLINED_FUNCTION_0();
  v24 = v4;
  v25 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = sub_1C12640E0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE976E8);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_38_0();
  (*(v11 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  (*(v11 + 32))(v20 + v19, &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v27 = a1;
  v28 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97788);
  sub_1C11EFAB4();
  sub_1C1265480();
  sub_1C12632D0();
  sub_1C10239B0(&qword_1EBE976F0, &qword_1EBE976E8);
  sub_1C11EC3E0(&qword_1EDE7BCF0, MEMORY[0x1E697C248]);
  OUTLINED_FUNCTION_4_4();
  v21 = v24;
  sub_1C12649F0();
  (*(v25 + 8))(v8, v21);
  return (*(v17 + 8))(v2, v15);
}

uint64_t sub_1C11EA534@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C12659A0();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977C8);
  sub_1C11EA610(a1 + *(v3 + 44));
  v4 = sub_1C12659A0();
  v6 = v5;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977A0) + 36);
  sub_1C11EAE14(v7);
  v8 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977C0) + 36));
  *v8 = v4;
  v8[1] = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97788);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1C11EA610@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88);
  MEMORY[0x1EEE9AC00](v1);
  v60 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v56 - v4;
  v5 = sub_1C1263130();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00);
  MEMORY[0x1EEE9AC00](v70);
  v62 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977D0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977D8);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v17 = &v56 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977E8);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v56 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977F0);
  MEMORY[0x1EEE9AC00](v66);
  v20 = &v56 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977F8);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v56 - v21;
  sub_1C12640D0();
  v22 = sub_1C12646E0();
  KeyPath = swift_getKeyPath();
  v24 = &v15[*(v13 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  sub_1C1264600();
  v25 = sub_1C11EFC50();
  v61 = v17;
  v59 = v13;
  v58 = v25;
  sub_1C1264990();
  sub_1C0F9E27C(v15, &qword_1EBE977D0);
  v26 = v6[13];
  v26(v11, *MEMORY[0x1E697E6F0], v5);
  v26(v8, *MEMORY[0x1E697E728], v5);
  sub_1C11EC3E0(&qword_1EDE7BF98, MEMORY[0x1E697E730]);
  result = sub_1C1265DA0();
  if (result)
  {
    v57 = v20;
    v28 = v1;
    v29 = v6[4];
    v30 = v68;
    v29(v68, v11, v5);
    v29((v30 + *(v1 + 48)), v8, v5);
    v31 = v60;
    sub_1C0FFC424(v30, v60, &qword_1EBE96B88);
    v32 = *(v28 + 48);
    v33 = v62;
    v29(v62, v31, v5);
    v34 = v6[1];
    v34(v31 + v32, v5);
    sub_1C0FFC488(v30, v31, &qword_1EBE96B88);
    v29((v33 + *(v70 + 36)), (v31 + *(v28 + 48)), v5);
    v34(v31, v5);
    __src[0] = v59;
    __src[1] = v58;
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00);
    v35 = v67;
    v36 = v65;
    v37 = v61;
    sub_1C1264BC0();
    sub_1C0F9E27C(v33, &qword_1EBE96B00);
    (*(v64 + 8))(v37, v36);
    v38 = sub_1C12644D0();
    sub_1C12628A0();
    v39 = v35 + *(v63 + 36);
    *v39 = v38;
    *(v39 + 8) = v40;
    *(v39 + 16) = v41;
    *(v39 + 24) = v42;
    *(v39 + 32) = v43;
    *(v39 + 40) = 0;
    v44 = sub_1C1264460();
    MEMORY[0x1C68F0CE0]();
    sub_1C12628A0();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = v57;
    sub_1C0FFC488(v35, v57, &qword_1EBE977E8);
    v54 = v53 + *(v66 + 36);
    *v54 = v44;
    *(v54 + 8) = v46;
    *(v54 + 16) = v48;
    *(v54 + 24) = v50;
    *(v54 + 32) = v52;
    *(v54 + 40) = 0;
    sub_1C12659A0();
    sub_1C1263390();
    v55 = v72;
    sub_1C0FFC488(v53, v72, &qword_1EBE977F0);
    memcpy((v55 + *(v71 + 36)), __src, 0x70uLL);
    return sub_1C0FFC488(v55, v69, &qword_1EBE977F8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C11EAE14@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88);
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v35 - v4;
  v5 = sub_1C1263130();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977D0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE977D8);
  v40 = *(v17 - 8);
  v41 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  sub_1C12640D0();
  v20 = sub_1C12646E0();
  KeyPath = swift_getKeyPath();
  v22 = &v16[*(v14 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_1C1264600();
  v23 = sub_1C11EFC50();
  v39 = v19;
  v36 = v23;
  v37 = v14;
  sub_1C1264990();
  sub_1C0F9E27C(v16, &qword_1EBE977D0);
  v24 = v6;
  v25 = *(v6 + 104);
  v25(v11, *MEMORY[0x1E697E6F0], v5);
  v25(v8, *MEMORY[0x1E697E728], v5);
  sub_1C11EC3E0(&qword_1EDE7BF98, MEMORY[0x1E697E730]);
  result = sub_1C1265DA0();
  if (result)
  {
    v35 = v12;
    v27 = *(v6 + 32);
    v28 = v42;
    v27(v42, v11, v5);
    v27((v28 + *(v1 + 48)), v8, v5);
    v29 = v43;
    sub_1C0FFC424(v28, v43, &qword_1EBE96B88);
    v30 = *(v1 + 48);
    v31 = v38;
    v27(v38, v29, v5);
    v32 = *(v24 + 8);
    v32(v29 + v30, v5);
    sub_1C0FFC488(v28, v29, &qword_1EBE96B88);
    v27((v31 + *(v35 + 36)), (v29 + *(v1 + 48)), v5);
    v32(v29, v5);
    v45 = v37;
    v46 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00);
    v33 = v41;
    v34 = v39;
    sub_1C1264BC0();
    sub_1C0F9E27C(v31, &qword_1EBE96B00);
    return (*(v40 + 8))(v34, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ToggleStyle<>.photosToggleStyle.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);

  return swift_storeEnumTagMultiPayload();
}

void PhotosToolbarLabelButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_14_25();
  v47 = v2;
  v3 = sub_1C1264680();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = sub_1C1264700();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974D0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974D8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_7();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974E0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  v46 = v21;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974E8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_34();
  v45 = v23;
  sub_1C1264070();
  type metadata accessor for PhotosToolbarLabel(0);
  if (qword_1EDE7AB18 != -1)
  {
    OUTLINED_FUNCTION_20_21();
  }

  (*(v12 + 104))(v16, *MEMORY[0x1E6980F30], v10);
  sub_1C100D418();
  sub_1C1262BD0();
  sub_1C12646E0();
  (*(v5 + 104))(v9, *MEMORY[0x1E6980EA8], v3);
  OUTLINED_FUNCTION_18();
  v24 = sub_1C12646C0();

  (*(v5 + 8))(v9, v3);
  KeyPath = swift_getKeyPath();
  v26 = (v1 + *(v17 + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  sub_1C12645B0();
  sub_1C11EC560();
  sub_1C1264990();
  sub_1C0F9E27C(v1, &qword_1EBE974D0);
  v27 = sub_1C1264460();
  sub_1C12628A0();
  OUTLINED_FUNCTION_5_1();
  v28 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974F0) + 36));
  *v28 = v27;
  OUTLINED_FUNCTION_7_40(v28);
  v29 = sub_1C1263060();
  MEMORY[0x1C68F0CE0](v29);
  v30 = OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30);
  sub_1C10239B0(&qword_1EDE76D58, &qword_1EBE94AB8);
  v31 = sub_1C1262C90();
  v32 = sub_1C1264470();
  sub_1C0FFC488(v0, v46, &qword_1EBE974D8);
  v33 = v46 + *(v44 + 36);
  *v33 = v31;
  *(v33 + 8) = v32;
  v34 = v45 + *(v43 + 36);
  sub_1C12639D0();
  OUTLINED_FUNCTION_0_10();
  v35 = OUTLINED_FUNCTION_18();
  v36(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88);
  OUTLINED_FUNCTION_19_20();
  *(v34 + v37) = v38;
  v39 = OUTLINED_FUNCTION_4_4();
  sub_1C0FFC488(v39, v40, v41);
  sub_1C1264080();
  sub_1C0FFC488(v45, v47, &qword_1EBE974E8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE974F8);
  OUTLINED_FUNCTION_12_25(v42);
  OUTLINED_FUNCTION_13_27();
}

double sub_1C11EB8DC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotosToolbarLabel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30);
  sub_1C1262BF0();
  sub_1C12659A0();
  sub_1C1262C80();
  v3 = sub_1C1264060();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97740) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

void PhotosShelfLabelButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_34_10();
  OUTLINED_FUNCTION_22_20();
  v1 = sub_1C1264700();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_4_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38_0();
  sub_1C1264070();
  *(v0 + *(type metadata accessor for PhotosShelfLabel(0) + 20)) = 0;
  (*(v3 + 104))(v7, *MEMORY[0x1E6980F30], v1);
  sub_1C10D9AFC();
  sub_1C1262BD0();
  v11 = v0 + *(v9 + 44);
  v12 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_0_10();
  (*(v13 + 104))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88);
  OUTLINED_FUNCTION_19_20();
  *(v11 + v14) = v15;
  sub_1C1264080();
  OUTLINED_FUNCTION_27_12();
  sub_1C0FFC488(v16, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97508);
  OUTLINED_FUNCTION_15_28(v19);
  OUTLINED_FUNCTION_33();
}

void PhotosShelfLabelSquareButtonStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_34_10();
  OUTLINED_FUNCTION_22_20();
  v2 = sub_1C1264700();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_8();
  sub_1C1264070();
  *(v1 + *(type metadata accessor for PhotosShelfLabel(0) + 20)) = 1;
  (*(v4 + 104))(v8, *MEMORY[0x1E6980F30], v2);
  sub_1C10D9AFC();
  sub_1C1262BD0();
  *(v1 + *(v0 + 44)) = 256;
  sub_1C1264080();
  OUTLINED_FUNCTION_27_12();
  sub_1C0FFC488(v11, v12, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97518);
  OUTLINED_FUNCTION_15_28(v14);
  OUTLINED_FUNCTION_33();
}

uint64_t sub_1C11EBD70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_1C1264680();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1264060();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97740);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v47 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97748);
  MEMORY[0x1EEE9AC00](v49);
  v12 = &v47 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97750);
  MEMORY[0x1EEE9AC00](v55);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97758);
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v47 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97760);
  v17 = MEMORY[0x1EEE9AC00](v51);
  v56 = &v47 - v18;
  v19 = *(v6 + 16);
  v50 = v8;
  v19(v8, v2, v5, v17);
  if (*(v2 + *(type metadata accessor for PhotosShelfLabel(0) + 20)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8);
    sub_1C1262BF0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8);
  sub_1C1262BF0();
  sub_1C12659A0();
  sub_1C1262C80();
  (*(v6 + 32))(v10, v50, v5);
  v20 = &v10[*(v48 + 36)];
  v21 = v63;
  *v20 = v62;
  *(v20 + 1) = v21;
  *(v20 + 2) = v64;
  v22 = sub_1C1264460();
  sub_1C12628A0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1C0FFC488(v10, v12, &qword_1EBE97740);
  v31 = &v12[*(v49 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_1C12646E0();
  v33 = v57;
  v32 = v58;
  v34 = v59;
  (*(v58 + 104))(v57, *MEMORY[0x1E6980EA8], v59);
  v35 = sub_1C12646C0();

  (*(v32 + 8))(v33, v34);
  KeyPath = swift_getKeyPath();
  sub_1C0FFC488(v12, v14, &qword_1EBE97748);
  v37 = &v14[*(v55 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  sub_1C12645B0();
  sub_1C11EF8B4();
  v38 = v52;
  sub_1C1264990();
  sub_1C0F9E27C(v14, &qword_1EBE97750);
  v39 = v56;
  sub_1C1263060();
  v40 = (*(v53 + 32))(v39, v38, v54);
  if (MEMORY[0x1C68F0CE0](v40))
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  v61 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AB8);
  sub_1C10239B0(&qword_1EDE76D58, &qword_1EBE94AB8);
  v42 = sub_1C1262C90();
  v43 = sub_1C1264470();
  v44 = v60;
  sub_1C0FFC488(v39, v60, &qword_1EBE97760);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97768);
  v46 = v44 + *(result + 36);
  *v46 = v42;
  *(v46 + 8) = v43;
  return result;
}

uint64_t sub_1C11EC3E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C11EC428()
{
  result = qword_1EBE973A0;
  if (!qword_1EBE973A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97390);
    sub_1C1264060();
    sub_1C11EC3E0(&qword_1EDE7BA80, MEMORY[0x1E697C8D0]);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE973A0);
  }

  return result;
}

unint64_t sub_1C11EC560()
{
  result = qword_1EDE774C0;
  if (!qword_1EDE774C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974D0);
    sub_1C11EC3E0(&unk_1EDE7AE10, type metadata accessor for PhotosToolbarLabel);
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774C0);
  }

  return result;
}

void sub_1C11EC8A0()
{
  sub_1C11EC950();
  if (v0 <= 0x3F)
  {
    sub_1C11ECAD0(319, &unk_1EDE77580, MEMORY[0x1E697DC30]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C11EC950()
{
  if (!qword_1EDE77508)
  {
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77508);
    }
  }
}

void sub_1C11ECA48()
{
  sub_1C11ECAD0(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C11ECAD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *sub_1C11ECB44(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C11ECBF0()
{
  result = qword_1EDE77230;
  if (!qword_1EDE77230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97320);
    sub_1C11EFA18(&qword_1EDE773F0, &qword_1EBE97318);
    sub_1C10239B0(&qword_1EDE7BC78, &qword_1EBE91210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77230);
  }

  return result;
}

unint64_t sub_1C11ECCC8()
{
  result = qword_1EBE97538;
  if (!qword_1EBE97538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97368);
    sub_1C11ECD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97538);
  }

  return result;
}

unint64_t sub_1C11ECD54()
{
  result = qword_1EBE97540;
  if (!qword_1EBE97540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97328);
    sub_1C11ECE0C();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97540);
  }

  return result;
}

unint64_t sub_1C11ECE0C()
{
  result = qword_1EBE97548;
  if (!qword_1EBE97548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97358);
    sub_1C11ECEC4();
    sub_1C10239B0(&qword_1EBE97580, &qword_1EBE97360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97548);
  }

  return result;
}

unint64_t sub_1C11ECEC4()
{
  result = qword_1EBE97550;
  if (!qword_1EBE97550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97350);
    sub_1C11ECF50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97550);
  }

  return result;
}

unint64_t sub_1C11ECF50()
{
  result = qword_1EBE97558;
  if (!qword_1EBE97558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97348);
    sub_1C11ECFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97558);
  }

  return result;
}

unint64_t sub_1C11ECFDC()
{
  result = qword_1EBE97560;
  if (!qword_1EBE97560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97338);
    sub_1C10239B0(&qword_1EBE97568, &unk_1EBE97570);
    sub_1C10239B0(&qword_1EBE97578, &qword_1EBE97340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97560);
  }

  return result;
}

unint64_t sub_1C11ED0C0()
{
  result = qword_1EBE97588;
  if (!qword_1EBE97588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97388);
    sub_1C11ED14C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97588);
  }

  return result;
}

unint64_t sub_1C11ED14C()
{
  result = qword_1EBE97590;
  if (!qword_1EBE97590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97370);
    sub_1C11ED204();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97590);
  }

  return result;
}

unint64_t sub_1C11ED204()
{
  result = qword_1EBE97598;
  if (!qword_1EBE97598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97380);
    sub_1C11ED2BC();
    sub_1C10239B0(&qword_1EDE76D88, &qword_1EBE96B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97598);
  }

  return result;
}

unint64_t sub_1C11ED2BC()
{
  result = qword_1EBE975A0;
  if (!qword_1EBE975A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97378);
    sub_1C11ECEC4();
    sub_1C10239B0(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975A0);
  }

  return result;
}

unint64_t sub_1C11ED374()
{
  result = qword_1EBE975A8;
  if (!qword_1EBE975A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973B0);
    sub_1C11ED400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975A8);
  }

  return result;
}

unint64_t sub_1C11ED400()
{
  result = qword_1EBE975B0;
  if (!qword_1EBE975B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B00);
    sub_1C11EC428();
    sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EBE975B8, &qword_1EBE973A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975B0);
  }

  return result;
}

unint64_t sub_1C11ED554()
{
  result = qword_1EDE76FF0;
  if (!qword_1EDE76FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973F0);
    sub_1C11ED5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FF0);
  }

  return result;
}

unint64_t sub_1C11ED5E0()
{
  result = qword_1EDE77010;
  if (!qword_1EDE77010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973E0);
    sub_1C11ED698();
    sub_1C10239B0(&qword_1EDE7BA30, &qword_1EBE91F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77010);
  }

  return result;
}

unint64_t sub_1C11ED698()
{
  result = qword_1EDE77040;
  if (!qword_1EDE77040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973D8);
    sub_1C11ED750();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77040);
  }

  return result;
}

unint64_t sub_1C11ED750()
{
  result = qword_1EDE770B8;
  if (!qword_1EDE770B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973D0);
    sub_1C11ED808();
    sub_1C10239B0(&qword_1EDE7BA78, &unk_1EBE975C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770B8);
  }

  return result;
}

unint64_t sub_1C11ED808()
{
  result = qword_1EDE77170;
  if (!qword_1EDE77170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973C8);
    sub_1C11ED894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77170);
  }

  return result;
}

unint64_t sub_1C11ED894()
{
  result = qword_1EDE772D0;
  if (!qword_1EDE772D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973C0);
    sub_1C10239B0(&qword_1EDE76B98, &qword_1EBE973B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772D0);
  }

  return result;
}

unint64_t sub_1C11ED94C()
{
  result = qword_1EBE975C8;
  if (!qword_1EBE975C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97428);
    sub_1C11ED9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975C8);
  }

  return result;
}

unint64_t sub_1C11ED9D8()
{
  result = qword_1EBE975D0;
  if (!qword_1EBE975D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE973F8);
    sub_1C11EDA90();
    sub_1C10239B0(&qword_1EDE7BA30, &qword_1EBE91F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975D0);
  }

  return result;
}

unint64_t sub_1C11EDA90()
{
  result = qword_1EBE975D8;
  if (!qword_1EBE975D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97420);
    sub_1C11EDB48();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975D8);
  }

  return result;
}

unint64_t sub_1C11EDB48()
{
  result = qword_1EBE975E0;
  if (!qword_1EBE975E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97418);
    sub_1C11EDC00();
    sub_1C10239B0(&qword_1EBE97580, &qword_1EBE97360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975E0);
  }

  return result;
}

unint64_t sub_1C11EDC00()
{
  result = qword_1EBE975E8;
  if (!qword_1EBE975E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97410);
    sub_1C11EDC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975E8);
  }

  return result;
}

unint64_t sub_1C11EDC8C()
{
  result = qword_1EBE975F0;
  if (!qword_1EBE975F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97408);
    sub_1C10239B0(&qword_1EBE975F8, &unk_1EBE97600);
    sub_1C10239B0(&qword_1EBE97578, &qword_1EBE97340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE975F0);
  }

  return result;
}

unint64_t sub_1C11EDD70()
{
  result = qword_1EBE97608;
  if (!qword_1EBE97608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97470);
    sub_1C11EDDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97608);
  }

  return result;
}

unint64_t sub_1C11EDDFC()
{
  result = qword_1EBE97610;
  if (!qword_1EBE97610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97438);
    sub_1C11EDE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97610);
  }

  return result;
}

unint64_t sub_1C11EDE88()
{
  result = qword_1EBE97618;
  if (!qword_1EBE97618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97430);
    sub_1C11EDF40();
    sub_1C10239B0(&qword_1EDE7BA30, &qword_1EBE91F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97618);
  }

  return result;
}

unint64_t sub_1C11EDF40()
{
  result = qword_1EBE97620;
  if (!qword_1EBE97620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97468);
    sub_1C11EDFF8();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97620);
  }

  return result;
}

unint64_t sub_1C11EDFF8()
{
  result = qword_1EBE97628;
  if (!qword_1EBE97628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97460);
    sub_1C11EE0B0();
    sub_1C10239B0(&qword_1EDE7BA68, qword_1EBE92178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97628);
  }

  return result;
}

unint64_t sub_1C11EE0B0()
{
  result = qword_1EBE97630;
  if (!qword_1EBE97630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97458);
    sub_1C11EE13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97630);
  }

  return result;
}

unint64_t sub_1C11EE13C()
{
  result = qword_1EBE97638;
  if (!qword_1EBE97638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97450);
    sub_1C11EE1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97638);
  }

  return result;
}

unint64_t sub_1C11EE1C8()
{
  result = qword_1EBE97640;
  if (!qword_1EBE97640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97448);
    sub_1C11EE280();
    sub_1C10239B0(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97640);
  }

  return result;
}

unint64_t sub_1C11EE280()
{
  result = qword_1EDE7BEC0;
  if (!qword_1EDE7BEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97440);
    sub_1C11EC3E0(&qword_1EDE7BA80, MEMORY[0x1E697C8D0]);
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BEC0);
  }

  return result;
}

unint64_t sub_1C11EE368()
{
  result = qword_1EBE97648;
  if (!qword_1EBE97648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974A0);
    sub_1C11EE3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97648);
  }

  return result;
}

unint64_t sub_1C11EE3F4()
{
  result = qword_1EBE97650;
  if (!qword_1EBE97650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97480);
    sub_1C11EE480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97650);
  }

  return result;
}

unint64_t sub_1C11EE480()
{
  result = qword_1EBE97658;
  if (!qword_1EBE97658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97478);
    sub_1C11EE538();
    sub_1C10239B0(&qword_1EDE7BA38, &qword_1EBE96748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97658);
  }

  return result;
}

unint64_t sub_1C11EE538()
{
  result = qword_1EBE97660;
  if (!qword_1EBE97660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97498);
    sub_1C11EE5F0();
    sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97660);
  }

  return result;
}

unint64_t sub_1C11EE5F0()
{
  result = qword_1EBE97668;
  if (!qword_1EBE97668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97490);
    sub_1C11EE6A8();
    sub_1C10239B0(&qword_1EDE7B960, &qword_1EBE93D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97668);
  }

  return result;
}

unint64_t sub_1C11EE6A8()
{
  result = qword_1EBE97670;
  if (!qword_1EBE97670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97488);
    sub_1C11EE0B0();
    sub_1C10239B0(&qword_1EBE97580, &qword_1EBE97360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97670);
  }

  return result;
}

unint64_t sub_1C11EE760()
{
  result = qword_1EDE772F0;
  if (!qword_1EDE772F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974B0);
    sub_1C10239B0(&qword_1EDE76BC0, &unk_1EBE97678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772F0);
  }

  return result;
}

unint64_t sub_1C11EE818()
{
  result = qword_1EBE97680;
  if (!qword_1EBE97680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974C0);
    sub_1C11EE8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97680);
  }

  return result;
}

unint64_t sub_1C11EE8A4()
{
  result = qword_1EBE97688;
  if (!qword_1EBE97688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974B8);
    sub_1C11EC428();
    sub_1C10239B0(&qword_1EBE97690, &unk_1EBE97698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97688);
  }

  return result;
}

unint64_t sub_1C11EE95C()
{
  result = qword_1EBE976A0;
  if (!qword_1EBE976A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974C8);
    sub_1C11EEA14();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE976A0);
  }

  return result;
}

unint64_t sub_1C11EEA14()
{
  result = qword_1EBE976A8;
  if (!qword_1EBE976A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE976B0);
    sub_1C11EEA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE976A8);
  }

  return result;
}

unint64_t sub_1C11EEA98()
{
  result = qword_1EBE976B8;
  if (!qword_1EBE976B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE976C0);
    sub_1C11EEB24();
    sub_1C11EED54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE976B8);
  }

  return result;
}

unint64_t sub_1C11EEB24()
{
  result = qword_1EBE976C8;
  if (!qword_1EBE976C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE976D0);
    sub_1C11EEBDC();
    sub_1C10239B0(&qword_1EDE7BA68, qword_1EBE92178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE976C8);
  }

  return result;
}

unint64_t sub_1C11EEBDC()
{
  result = qword_1EBE976D8;
  if (!qword_1EBE976D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE976E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE976E8);
    sub_1C12632E0();
    sub_1C10239B0(&qword_1EBE976F0, &qword_1EBE976E8);
    sub_1C11EC3E0(&qword_1EDE7BCF0, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE976D8);
  }

  return result;
}

unint64_t sub_1C11EED54()
{
  result = qword_1EBE976F8;
  if (!qword_1EBE976F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97700);
    sub_1C11EEDE0();
    sub_1C11EEF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE976F8);
  }

  return result;
}

unint64_t sub_1C11EEDE0()
{
  result = qword_1EBE97708;
  if (!qword_1EBE97708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE976E8);
    sub_1C12632E0();
    sub_1C10239B0(&qword_1EBE976F0, &qword_1EBE976E8);
    sub_1C11EC3E0(&qword_1EDE7BCF0, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7BA60, &qword_1EBE91888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97708);
  }

  return result;
}

unint64_t sub_1C11EEF58()
{
  result = qword_1EBE97718;
  if (!qword_1EBE97718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97720);
    sub_1C11EEDE0();
    sub_1C10239B0(&qword_1EDE76D98, &unk_1EBE97728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97718);
  }

  return result;
}

unint64_t sub_1C11EF010()
{
  result = qword_1EDE77020;
  if (!qword_1EDE77020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974F8);
    sub_1C11EF09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77020);
  }

  return result;
}

unint64_t sub_1C11EF09C()
{
  result = qword_1EDE77080;
  if (!qword_1EDE77080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974E8);
    sub_1C11EF154();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77080);
  }

  return result;
}

unint64_t sub_1C11EF154()
{
  result = qword_1EDE77118;
  if (!qword_1EDE77118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974E0);
    sub_1C11EF20C();
    sub_1C10239B0(&qword_1EDE7BA78, &unk_1EBE975C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77118);
  }

  return result;
}

unint64_t sub_1C11EF20C()
{
  result = qword_1EDE77208;
  if (!qword_1EDE77208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974D8);
    sub_1C11EF2C4();
    sub_1C10239B0(&qword_1EDE76D78, &unk_1EBE97730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77208);
  }

  return result;
}

unint64_t sub_1C11EF2C4()
{
  result = qword_1EDE773B0;
  if (!qword_1EDE773B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE974D0);
    sub_1C11EC560();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773B0);
  }

  return result;
}

unint64_t sub_1C11EF38C()
{
  result = qword_1EDE772A8;
  if (!qword_1EDE772A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97508);
    sub_1C11EF418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772A8);
  }

  return result;
}

unint64_t sub_1C11EF418()
{
  result = qword_1EDE774C8;
  if (!qword_1EDE774C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97500);
    sub_1C11EC3E0(qword_1EDE7B370, type metadata accessor for PhotosShelfLabel);
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774C8);
  }

  return result;
}

unint64_t sub_1C11EF500()
{
  result = qword_1EDE772B0;
  if (!qword_1EDE772B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97518);
    sub_1C11EF58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772B0);
  }

  return result;
}

unint64_t sub_1C11EF58C()
{
  result = qword_1EDE774D0;
  if (!qword_1EDE774D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97510);
    sub_1C11EC3E0(qword_1EDE7B370, type metadata accessor for PhotosShelfLabel);
    sub_1C10239B0(&qword_1EDE77520, &unk_1EBE97738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774D0);
  }

  return result;
}

void sub_1C11EF69C()
{
  sub_1C1264060();
  if (v0 <= 0x3F)
  {
    sub_1C11EF81C(319, &qword_1EDE7BFE0, sub_1C10D9AFC);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C11EF774()
{
  sub_1C1264060();
  if (v0 <= 0x3F)
  {
    sub_1C11EF81C(319, &qword_1EDE7BFE8, sub_1C100D418);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C11EF81C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1C1262C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C11EF8B4()
{
  result = qword_1EDE77130;
  if (!qword_1EDE77130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97750);
    sub_1C11EF96C();
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77130);
  }

  return result;
}

unint64_t sub_1C11EF96C()
{
  result = qword_1EDE77238;
  if (!qword_1EDE77238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97748);
    sub_1C11EFA18(&qword_1EDE773F8, &qword_1EBE97740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77238);
  }

  return result;
}

uint64_t sub_1C11EFA18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_2_59();
    sub_1C11EC3E0(v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C11EFAB4()
{
  result = qword_1EBE97790;
  if (!qword_1EBE97790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97788);
    sub_1C11EFB6C();
    sub_1C10239B0(&unk_1EDE7BB80, &qword_1EBE90C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97790);
  }

  return result;
}

unint64_t sub_1C11EFB6C()
{
  result = qword_1EBE97798;
  if (!qword_1EBE97798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE977A0);
    sub_1C10239B0(&qword_1EBE977A8, &unk_1EBE977B0);
    sub_1C10239B0(&qword_1EBE977B8, &qword_1EBE977C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97798);
  }

  return result;
}

unint64_t sub_1C11EFC50()
{
  result = qword_1EBE977E0;
  if (!qword_1EBE977E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE977D0);
    sub_1C11EC3E0(&qword_1EDE76DB0, MEMORY[0x1E697C948]);
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE977E0);
  }

  return result;
}

unint64_t sub_1C11EFD38()
{
  result = qword_1EDE77128;
  if (!qword_1EDE77128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97800);
    sub_1C11EFDF0();
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77128);
  }

  return result;
}

unint64_t sub_1C11EFDF0()
{
  result = qword_1EDE77228;
  if (!qword_1EDE77228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97818);
    sub_1C11EFEA8();
    sub_1C10239B0(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77228);
  }

  return result;
}

unint64_t sub_1C11EFEA8()
{
  result = qword_1EDE773E8;
  if (!qword_1EDE773E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97810);
    sub_1C11EC3E0(&qword_1EDE7BA80, MEMORY[0x1E697C8D0]);
    sub_1C10239B0(&qword_1EDE76D28, &qword_1EBE933A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773E8);
  }

  return result;
}

unint64_t sub_1C11EFF90()
{
  result = qword_1EDE77200;
  if (!qword_1EDE77200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97768);
    sub_1C11F0048();
    sub_1C10239B0(&qword_1EDE7BA78, &unk_1EBE975C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77200);
  }

  return result;
}

unint64_t sub_1C11F0048()
{
  result = qword_1EDE77398;
  if (!qword_1EDE77398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97750);
    sub_1C11EF8B4();
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE76D78, &unk_1EBE97730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77398);
  }

  return result;
}

uint64_t PhotosListCellAccessoryType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

unint64_t sub_1C11F0220()
{
  result = qword_1EBE97840;
  if (!qword_1EBE97840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97840);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosListCellAccessoryType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhotosMockBackground.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t PhotosMockBackground.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v5 = sub_1C1265150();
    sub_1C0FDB76C();
    sub_1C1265270();
  }

  else
  {
    v3 = [objc_opt_self() systemBackgroundColor];
    _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  }

  result = sub_1C1263C20();
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

unint64_t sub_1C11F0560()
{
  result = qword_1EBE97848;
  if (!qword_1EBE97848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97848);
  }

  return result;
}

_BYTE *sub_1C11F05E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C11F06C0()
{
  result = qword_1EBE97850;
  if (!qword_1EBE97850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97850);
  }

  return result;
}

uint64_t PhotosCustomImageAlignmentCell.init(systemImage:localizedString:imageWidthToAlignWith:imageInsetToAlignWith:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  sub_1C1265410();
  *(a5 + 48) = v15;
  *(a5 + 56) = v16;
  result = swift_getKeyPath();
  *(a5 + 64) = result;
  *(a5 + 72) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  *(a5 + 40) = a7;
  return result;
}

uint64_t PhotosCustomImageAlignmentCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v51 = sub_1C1263070();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v50 = v4 - v3;
  v49 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v48 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = sub_1C1264680();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97860);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v47 - v19);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97868);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  memcpy(__dst, v1, 0x49uLL);
  v24 = __dst[2];
  v58 = v1[3];
  v54 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  v25 = *(&v24 + 1) + (*&v24 - v56) * 0.5;
  *v20 = sub_1C12638E0();
  v20[1] = v25;
  *(v20 + 16) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97870);
  sub_1C11F0E80(__dst, v20 + *(v26 + 44));
  sub_1C1264530();
  (*(v12 + 104))(v16, *MEMORY[0x1E6980EA8], v10);
  v27 = sub_1C12646C0();

  (*(v12 + 8))(v16, v10);
  KeyPath = swift_getKeyPath();
  v29 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97878) + 36));
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = swift_getKeyPath();
  v31 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97880) + 36);
  *v31 = v30;
  *(v31 + 1) = 0;
  v31[16] = 1;
  v32 = swift_getKeyPath();
  v33 = v20 + *(v18 + 44);
  *v33 = v32;
  v33[8] = 0;
  v57 = BYTE8(__dst[4]);
  v56 = *&__dst[4];
  if (BYTE8(__dst[4]) != 1)
  {

    sub_1C1266420();
    v34 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v56, &qword_1EBE96D30);
    (*(v48 + 8))(v9, v49);
    if (v54 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C1263060();
    goto LABEL_6;
  }

  if (__dst[4])
  {
    goto LABEL_5;
  }

LABEL_3:
  *&v54 = sub_1C1265150();
LABEL_6:
  v35 = sub_1C1262C90();
  sub_1C1012024(v20, v23, &qword_1EBE97860);
  *&v23[*(v52 + 36)] = v35;
  LOBYTE(v35) = sub_1C1264460();
  v54 = v58;
  sub_1C1265420();
  sub_1C12628A0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v53;
  sub_1C1012024(v23, v53, &qword_1EBE97868);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97888);
  v46 = v44 + *(result + 36);
  *v46 = v35;
  *(v46 + 8) = v37;
  *(v46 + 16) = v39;
  *(v46 + 24) = v41;
  *(v46 + 32) = v43;
  *(v46 + 40) = 0;
  return result;
}

uint64_t sub_1C11F0E80@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE978C8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28[-v9];

  v11 = sub_1C12652F0();
  v12 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0) + 28);
  v14 = *MEMORY[0x1E69816E0];
  v15 = sub_1C1265340();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v10 = v11;
  v16 = swift_allocObject();
  memcpy((v16 + 16), a1, 0x49uLL);
  v17 = (v10 + *(v5 + 44));
  *v17 = sub_1C0FBFBE4;
  v17[1] = 0;
  v17[2] = sub_1C11F16B0;
  v17[3] = v16;
  v29 = a1[1];
  v30 = v29;
  sub_1C11F16B8(a1, v28);
  sub_1C11F16F0(&v30, v28);
  sub_1C0FDB9AC();
  v18 = sub_1C12648F0();
  v20 = v19;
  LOBYTE(v16) = v21;
  v23 = v22;
  sub_1C11F174C(v10, v7);
  sub_1C11F174C(v7, a2);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE978D0);
  v25 = a2 + *(v24 + 48);
  *v25 = v18;
  *(v25 + 8) = v20;
  LOBYTE(v16) = v16 & 1;
  *(v25 + 16) = v16;
  *(v25 + 24) = v23;
  v26 = a2 + *(v24 + 64);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_1C0FDB850(v18, v20, v16);

  sub_1C0FD1A5C(v10, &qword_1EBE978C8);
  sub_1C0FDB8E8(v18, v20, v16);

  return sub_1C0FD1A5C(v7, &qword_1EBE978C8);
}

uint64_t sub_1C11F11A0()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C12636D0();
  *v0 = result;
  return result;
}

uint64_t sub_1C11F11F0()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C12637B0();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C11F1274(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1C11F12B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C11F1318()
{
  result = qword_1EBE97890;
  if (!qword_1EBE97890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97888);
    sub_1C11F13A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97890);
  }

  return result;
}

unint64_t sub_1C11F13A4()
{
  result = qword_1EBE97898;
  if (!qword_1EBE97898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97868);
    sub_1C11F145C();
    sub_1C0FDB6D4(&qword_1EDE7BA58, &qword_1EBE94B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97898);
  }

  return result;
}

unint64_t sub_1C11F145C()
{
  result = qword_1EBE978A0;
  if (!qword_1EBE978A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97860);
    sub_1C11F1514();
    sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE978A0);
  }

  return result;
}

unint64_t sub_1C11F1514()
{
  result = qword_1EBE978A8;
  if (!qword_1EBE978A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97880);
    sub_1C11F15CC();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE978A8);
  }

  return result;
}

unint64_t sub_1C11F15CC()
{
  result = qword_1EBE978B0;
  if (!qword_1EBE978B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97878);
    sub_1C0FDB6D4(&qword_1EBE978B8, &qword_1EBE978C0);
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE978B0);
  }

  return result;
}

uint64_t sub_1C11F174C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE978C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11F17BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C1190B2C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1263130();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PhotosFeaturedPhotosCell.init(_:content:attribution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  __src[0] = a6;
  __src[1] = a7;
  __src[2] = a8;
  *&__src[3] = a10;
  *&__src[5] = a11;
  __src[7] = a12;
  v21 = type metadata accessor for PhotosFeaturedPhotosCell();
  v22 = v21[24];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(a9 + v22, __src, 0xD1uLL);
  v23 = (a9 + v21[22]);
  *v23 = a2;
  v23[1] = a3;
  result = (*(*(a6 - 8) + 32))(a9 + v21[21], a1, a6);
  v25 = (a9 + v21[23]);
  *v25 = a4;
  v25[1] = a5;
  return result;
}

uint64_t sub_1C11F1B10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 96);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    v10 = nullsub_1(v15);
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, 0xD1uLL);
    v11 = nullsub_1(v16);
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    nullsub_1(v15);
    memcpy(v16, v17, 0xD1uLL);
    nullsub_1(v16);

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosFeaturedPhotosCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33 = *(a1 + 32);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v31 = *(a1 + 64);
  v3 = a1;
  v30 = a1;
  v51 = v31;
  v52 = MEMORY[0x1E697F568];
  v4 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v50 = OUTLINED_FUNCTION_6_36(&unk_1EDE7B940);
  v32 = v4;
  v47 = swift_getWitnessTable();
  v48 = OUTLINED_FUNCTION_4_51(&qword_1EDE7C030);
  v5 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v45 = v5;
  v46 = sub_1C0FDB6D4(v6, &unk_1EBE92ED0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92EE8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  sub_1C1263190();
  v7 = *(v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE978D8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263C30();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE978E0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  v8 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C08);
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1C1263AB0();
  v36 = *(v30 + 16);
  v37 = v33;
  v38 = v7;
  v39 = *(v30 + 48);
  v23 = *(v30 + 72);
  v40 = v31;
  v41 = v23;
  v42 = v34;
  sub_1C1265590();
  OUTLINED_FUNCTION_1_1();
  v24 = swift_getWitnessTable();
  sub_1C100AE3C();
  OUTLINED_FUNCTION_2_1();
  sub_1C1264AC0();
  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_3_7();
  v26 = sub_1C0FDB6D4(v25, &qword_1EBE90C08);
  v43 = v24;
  v44 = v26;
  v27 = swift_getWitnessTable();
  sub_1C0FDBA4C(v19, v14, v27);
  v28 = *(v16 + 8);
  v28(v19, v14);
  sub_1C0FDBA4C(v22, v14, v27);
  return (v28)(v22, v14);
}

uint64_t sub_1C11F2308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v79 = a8;
  *&v98 = a7;
  v110 = a2;
  v111 = a6;
  v94 = a5;
  v96 = a3;
  v87 = a1;
  v106 = a9;
  v97 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE978D8);
  sub_1C1263190();
  sub_1C1263C30();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v12 = sub_1C12655A0();
  v112 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  v100 = v12;
  v99 = sub_1C1263190();
  v13 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE978E0);
  v101 = v13;
  v105 = sub_1C1263190();
  v102 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v78 - v16;
  v80 = a4;
  v89 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C1263190();
  v93 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v78 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v22 = sub_1C1263190();
  v91 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v78 - v23;
  v125 = a8;
  v126 = MEMORY[0x1E697F568];
  v95 = v20;
  WitnessTable = swift_getWitnessTable();
  v25 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v83 = WitnessTable;
  v123 = WitnessTable;
  v124 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v121 = v26;
  v122 = v27;
  v28 = swift_getWitnessTable();
  v29 = v87;
  v30 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v119 = v28;
  v120 = v30;
  v31 = swift_getWitnessTable();
  v92 = v22;
  v82 = v31;
  v32 = type metadata accessor for PhotosDetailsPresentationSourceView();
  v86 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v84 = &v78 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92EE8);
  v34 = sub_1C1263190();
  v88 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v85 = &v78 - v35;
  v109 = sub_1C1263190();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v78 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v112 = &v78 - v38;
  *&v130[0] = v110;
  *(&v130[0] + 1) = v96;
  v39 = v80;
  *&v130[1] = v80;
  *(&v130[1] + 1) = v94;
  *&v130[2] = v111;
  *(&v130[2] + 1) = v98;
  *&v130[3] = v79;
  *(&v130[3] + 1) = v97;
  v40 = type metadata accessor for PhotosFeaturedPhotosCell();
  (*(v29 + *(v40 + 88)))();
  v41 = v81;
  sub_1C12649E0();
  (*(v89 + 8))(v19, v39);
  sub_1C11F1B10(v40, v127);
  memcpy(v118, v128, sizeof(v118));
  sub_1C100D690(v127, v130);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDE82B08;
  v43 = qword_1EDE82B10;
  v98 = xmmword_1EDE82B18;
  v44 = qword_1EDE82B28;

  sub_1C100C7D0(v127);

  *&v130[0] = v42;
  *(&v130[0] + 1) = v43;
  v130[1] = v98;
  *&v130[2] = v44;
  memcpy(&v130[2] + 8, v118, 0xA8uLL);
  v45 = v90;
  v46 = v95;
  View.cellStyle(for:)(v130, v83, v90);
  memcpy(v129, v130, sizeof(v129));
  sub_1C100C7D0(v129);
  (*(v93 + 8))(v41, v46);
  LOBYTE(v115[0]) = 2;
  LOBYTE(v113) = 0;
  sub_1C11F1B10(v40, v130);
  v47 = v130[0];
  v98 = v130[1];
  v48 = *&v130[2];

  sub_1C100C7D0(v130);
  v116[0] = v47;
  v116[1] = v98;
  v117 = v48;
  v49 = v84;
  v50 = v92;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(v115, 0, 0, v92, v84);

  (*(v91 + 8))(v45, v50);
  *&v116[0] = 0x3FF0000000000000;
  BYTE8(v116[0]) = 0;
  v51 = swift_getWitnessTable();
  sub_1C10B8244();
  v52 = v85;
  sub_1C12649C0();
  (*(v86 + 8))(v49, v32);
  v53 = sub_1C0FDB6D4(&qword_1EDE7B9C8, &qword_1EBE92EE8);
  v115[10] = v51;
  v115[11] = v53;
  v54 = swift_getWitnessTable();
  v55 = v108;
  sub_1C1264B60();
  (*(v88 + 8))(v52, v34);
  v95 = sub_1C0FDB6D4(&qword_1EDE7BB68, &unk_1EBE93030);
  v115[8] = v54;
  v115[9] = v95;
  v56 = v109;
  v96 = swift_getWitnessTable();
  sub_1C0FDBA4C(v55, v56, v96);
  v57 = *(v107 + 8);
  v97 = v107 + 8;
  *&v98 = v57;
  v57(v55, v56);
  v59 = v110;
  v58 = v111;
  v60 = (*(v111 + 40))(v110, v111);
  v62 = v61;
  v63 = (*(v58 + 48))(v59, v58);
  v64 = v104;
  sub_1C11F3054(v60, v62, v63, v65, v40, v104);

  v115[6] = swift_getWitnessTable();
  v115[7] = v95;
  v115[4] = swift_getWitnessTable();
  v115[5] = MEMORY[0x1E697EBF8];
  v66 = swift_getWitnessTable();
  v67 = sub_1C0FDB6D4(&qword_1EDE7C020, &qword_1EBE978E0);
  v115[2] = v66;
  v115[3] = v67;
  v68 = v105;
  v69 = swift_getWitnessTable();
  v70 = v103;
  v71 = v64;
  sub_1C0FDBA4C(v64, v68, v69);
  v72 = v102;
  v73 = *(v102 + 8);
  v73(v64, v68);
  v74 = v108;
  v75 = v109;
  (*(v107 + 16))(v108, v112, v109);
  *&v116[0] = v74;
  (*(v72 + 16))(v71, v70, v68);
  *(&v116[0] + 1) = v71;
  v115[0] = v75;
  v115[1] = v68;
  v113 = v96;
  v114 = v69;
  sub_1C119EE80(v116, 2, v115);
  v73(v70, v68);
  v76 = v98;
  (v98)(v112, v75);
  v73(v71, v68);
  return v76(v74, v75);
}

uint64_t sub_1C11F3054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v37 = a3;
  v35 = a2;
  v34 = a1;
  v43 = a6;
  v32 = *(a5 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE978D8);
  sub_1C1263190();
  sub_1C1263C30();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v31[1] = swift_getWitnessTable();
  v7 = sub_1C12655A0();
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  v10 = sub_1C1263190();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  v13 = sub_1C1263190();
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE978E0);
  v16 = sub_1C1263190();
  v42 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v38 = v31 - v20;
  sub_1C1263AB0();
  v44 = *(a5 + 16);
  v45 = *(a5 + 32);
  v46 = v32;
  v21 = *(a5 + 64);
  v47 = *(a5 + 48);
  v48 = v21;
  v49 = v36;
  v50 = v34;
  v51 = v35;
  v52 = v37;
  v53 = v39;
  sub_1C1265590();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264B60();
  (*(v33 + 8))(v9, v7);
  sub_1C1265940();
  v23 = sub_1C0FDB6D4(&qword_1EDE7BB68, &unk_1EBE93030);
  v58 = WitnessTable;
  v59 = v23;
  v30 = swift_getWitnessTable();
  sub_1C1264EA0();
  (*(v40 + 8))(v12, v10);
  v56 = v30;
  v57 = MEMORY[0x1E697EBF8];
  v24 = swift_getWitnessTable();
  sub_1C100AE3C();
  sub_1C1009334();
  sub_1C1265050();
  (*(v41 + 8))(v15, v13);
  v25 = sub_1C0FDB6D4(&qword_1EDE7C020, &qword_1EBE978E0);
  v54 = v24;
  v55 = v25;
  v26 = swift_getWitnessTable();
  v27 = v38;
  sub_1C0FDBA4C(v18, v16, v26);
  v28 = *(v42 + 8);
  v28(v18, v16);
  sub_1C0FDBA4C(v27, v16, v26);
  return (v28)(v27, v16);
}

uint64_t sub_1C11F36B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v98 = a8;
  v97 = a6;
  v107 = a5;
  v106 = a4;
  v108 = a3;
  v105 = a2;
  v99 = a1;
  v109 = a9;
  v91 = *(a10 - 8);
  v96 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v84 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v78 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE978D8);
  v17 = sub_1C1263190();
  v86 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v78 - v20;
  v89 = sub_1C1263130();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v78 - v23;
  v104 = v17;
  v24 = sub_1C1263C30();
  v94 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v92 = &v78 - v27;
  v28 = sub_1C1266790();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v78 - v30;
  v100 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v110 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1C1266790();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v102 = &v78 - v37;
  v128 = v97;
  v129 = a7;
  v130 = v98;
  v131 = a10;
  v98 = a10;
  v132 = v96;
  v133 = a12;
  v134 = a13;
  v38 = type metadata accessor for PhotosFeaturedPhotosCell();
  v39 = v99;
  sub_1C11F1D2C(v38);
  if (__swift_getEnumTagSinglePayload(v31, 1, a7) == 1)
  {
    (*(v29 + 8))(v31, v28);
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v24);
    v40 = sub_1C0FDB6D4(&qword_1EDE76D30, &qword_1EBE978D8);
    v41 = a13;
    v127[4] = a13;
    v127[5] = v40;
    v127[2] = swift_getWitnessTable();
    v127[3] = a13;
    swift_getWitnessTable();
  }

  else
  {
    *&v96 = v35;
    v82 = v24;
    v97 = a13;
    v42 = *(v100 + 32);
    v81 = a7;
    v42(v110, v31, a7);
    v43 = v95;
    v44 = v39;
    sub_1C11F17BC(v95);
    v45 = v88;
    v46 = *(v88 + 104);
    v47 = v87;
    v80 = *MEMORY[0x1E697E6E8];
    v48 = v89;
    v79 = v46;
    v46(v87);
    sub_1C11F54E8();
    v49 = sub_1C1265D90();
    v50 = *(v45 + 8);
    v50(v47, v48);
    v50(v43, v48);
    v51 = *(v44 + *(v38 + 92));
    if (v49)
    {
      v52 = v90;
      v51(v110);
      swift_getKeyPath();
      v53 = v95;
      v79(v95, v80, v48);
      v54 = v85;
      v55 = v98;
      v41 = v97;
      sub_1C1264A30();

      v50(v53, v48);
      (*(v91 + 8))(v52, v55);
      v56 = sub_1C0FDB6D4(&qword_1EDE76D30, &qword_1EBE978D8);
      v111 = v41;
      v112 = v56;
      v57 = v104;
      WitnessTable = swift_getWitnessTable();
      v59 = v83;
      sub_1C0FDBA4C(v54, v57, WitnessTable);
      v60 = *(v86 + 8);
      v60(v54, v57);
      sub_1C0FDBA4C(v59, v57, WitnessTable);
      v61 = v92;
      sub_1C1112D68();
      v60(v54, v57);
      v60(v59, v57);
    }

    else
    {
      v62 = v84;
      v51(v110);
      v63 = v90;
      v64 = v98;
      v41 = v97;
      sub_1C0FDBA4C(v62, v98, v97);
      v65 = *(v91 + 8);
      v65(v62, v64);
      sub_1C0FDBA4C(v63, v64, v41);
      v66 = sub_1C0FDB6D4(&qword_1EDE76D30, &qword_1EBE978D8);
      v117 = v41;
      v118 = v66;
      swift_getWitnessTable();
      v61 = v92;
      sub_1C1112E18();
      v65(v62, v64);
      v65(v63, v64);
    }

    (*(v100 + 8))(v110, v81);
    v67 = sub_1C0FDB6D4(&qword_1EDE76D30, &qword_1EBE978D8);
    v115 = v41;
    v116 = v67;
    v113 = swift_getWitnessTable();
    v114 = v41;
    v68 = v82;
    v69 = swift_getWitnessTable();
    v70 = v93;
    sub_1C0FDBA4C(v61, v68, v69);
    v71 = v94;
    (*(v94 + 8))(v61, v68);
    v35 = v96;
    (*(v71 + 32))(v96, v70, v68);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v68);
  }

  v72 = v102;
  sub_1C1170030(v35, v102);
  v73 = v101;
  v74 = *(v101 + 8);
  v75 = v103;
  v74(v35, v103);
  (*(v73 + 16))(v35, v72, v75);
  v128 = v105;
  v129 = v108;
  v130 = v106;
  v131 = v107;
  v127[0] = v35;
  v127[1] = &v128;

  v126[0] = v75;
  v126[1] = &type metadata for TitleSubtitleView;
  v76 = sub_1C0FDB6D4(&qword_1EDE76D30, &qword_1EBE978D8);
  v122 = v41;
  v123 = v76;
  v120 = swift_getWitnessTable();
  v121 = v41;
  v119 = swift_getWitnessTable();
  v124 = swift_getWitnessTable();
  v125 = sub_1C11F5494();
  sub_1C119EE80(v127, 2, v126);
  v74(v72, v75);

  return (v74)(v35, v75);
}

__n128 sub_1C11F43FC@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1C1263AB0();
  v13 = 1;
  sub_1C11F4498(a1, v10);
  v5 = v11;
  v6 = v12;
  result = v10[0];
  v8 = v10[1];
  v9 = v13;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = result;
  *(a2 + 40) = v8;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  return result;
}

double sub_1C11F4498@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE978E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE978F0);
  sub_1C0FDB6D4(&qword_1EDE7B778, &qword_1EBE978E8);
  sub_1C0FDB6D4(&qword_1EDE76B40, &qword_1EBE978F0);
  sub_1C1263C20();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_1C11F45FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1C1264700();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E6980EF0], v3, v5);
  v8 = *MEMORY[0x1E6980E20];
  v9 = sub_1C1264590();
  (*(*(v9 - 8) + 104))(v2, v8, v9);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v9);
  sub_1C1264620();
  v10 = sub_1C1264640();
  sub_1C0F9E21C(v2, &qword_1EBE96550);
  (*(v4 + 8))(v7, v3);
  return v10;
}

uint64_t sub_1C11F47D0@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1C1264680();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97900);
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - v6;

  sub_1C11F45FC();
  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v1);
  sub_1C12646C0();

  (*(v2 + 8))(v4, v1);
  v8 = sub_1C1264870();
  v10 = v9;
  LOBYTE(v1) = v11;
  v13 = v12;

  KeyPath = swift_getKeyPath();
  v22 = v8;
  v23 = v10;
  v24 = v1 & 1;
  v25 = v13;
  v26 = KeyPath;
  v27 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936B8);
  v16 = sub_1C10D8034();
  sub_1C1265090();
  sub_1C0FDB8E8(v8, v10, v1 & 1);

  v22 = v15;
  v23 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  sub_1C1265080();
  return (*(v5 + 8))(v7, v17);
}

uint64_t sub_1C11F4AB4()
{
  v0 = sub_1C1264680();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C1264510();
  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA8], v0);
  sub_1C12646C0();

  (*(v1 + 8))(v3, v0);
  v4 = sub_1C1264870();
  v6 = v5;
  v8 = v7;

  LODWORD(v18[0]) = sub_1C1263E50();
  v9 = sub_1C1264850();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1C0FDB8E8(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  v18[0] = v9;
  v18[1] = v11;
  v13 &= 1u;
  v19 = v13;
  v20 = v15;
  v21 = KeyPath;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936B8);
  sub_1C10D8034();
  sub_1C1265090();
  sub_1C0FDB8E8(v9, v11, v13);
}

uint64_t (*PhotosFeaturedPhotosCell<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10))()
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  __src[0] = a4;
  __src[1] = a5;
  __src[2] = a6;
  __src[3] = MEMORY[0x1E6981E70];
  __src[4] = a7;
  __src[5] = a8;
  __src[6] = a10;
  __src[7] = MEMORY[0x1E6981E60];
  v17 = type metadata accessor for PhotosFeaturedPhotosCell();
  v18 = v17[24];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(a9 + v18, __src, 0xD1uLL);
  v19 = (a9 + v17[22]);
  *v19 = a2;
  v19[1] = a3;
  (*(*(a4 - 8) + 32))(a9 + v17[21], a1, a4);
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v20[7] = a10;
  result = swift_allocObject();
  *(result + 2) = a4;
  *(result + 3) = a5;
  *(result + 4) = a6;
  *(result + 5) = a7;
  *(result + 6) = a8;
  *(result + 7) = a10;
  *(result + 8) = nullsub_1;
  *(result + 9) = v20;
  v22 = (a9 + v17[23]);
  *v22 = sub_1C11F4EC0;
  v22[1] = result;
  return result;
}

void sub_1C11F4F34()
{
  sub_1C100D364();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C1007F88();
      if (v2 <= 0x3F)
      {
        sub_1C107032C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C11F4FEC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C1263130();
  v8 = *(v6 - 8);
  result = v6 - 8;
  v9 = *(v8 + 64);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  if (v9 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v11 + 84);
  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  v17 = v12 + v15 + 1;
  v18 = v16 + 7;
  if (v14 >= a2)
  {
LABEL_29:
    v26 = &a1[v17] & ~v15;
    if (v13 < 0x7FFFFFFF)
    {
      v27 = *((v18 + v26) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(v26, v13, v10);
    }
  }

  else
  {
    v19 = ((((((v18 + (v17 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 209;
    if (v19 <= 3)
    {
      v20 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    switch(v22)
    {
      case 1:
        v23 = a1[v19];
        if (!a1[v19])
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 2:
        v23 = *&a1[v19];
        if (!*&a1[v19])
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v23 = *&a1[v19];
        if (!v23)
        {
          goto LABEL_29;
        }

LABEL_25:
        v24 = (v23 - 1) << (8 * (((((((v18 + (v17 & ~v15)) & 0xF8) + 23) & 0xF8) + 23) & 0xF8) - 47));
        if (v19 <= 3)
        {
          v25 = *a1;
        }

        else
        {
          v24 = 0;
          v25 = *a1;
        }

        result = v14 + (v25 | v24) + 1;
        break;
      default:
        goto LABEL_29;
    }
  }

  return result;
}

void sub_1C11F51D8(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1C1263130() - 8) + 64);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = v8 + v13 + 1;
  v15 = *(v10 + 64) + 7;
  v16 = ((((((v15 + (v14 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v12 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (v12 >= a2)
  {
    v22 = ~v13;
    switch(v19)
    {
      case 1:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_46:
        __break(1u);
        break;
      case 4:
        *(a1 + v16) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          v23 = (a1 + v14) & v22;
          if (v11 < 0x7FFFFFFF)
          {
            v24 = ((v15 + v23) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v25 = a2 & 0x7FFFFFFF;
              v24[1] = 0;
            }

            else
            {
              v25 = (a2 - 1);
            }

            *v24 = v25;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v23, a2, v11, v9);
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    bzero(a1, v16);
    if (v16 <= 3)
    {
      v21 = (v20 >> 8) + 1;
    }

    else
    {
      v21 = 1;
    }

    if (v16 > 3)
    {
      *a1 = v20;
    }

    else
    {
      *a1 = v20;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v16) = v21;
        break;
      case 2:
        *(a1 + v16) = v21;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *(a1 + v16) = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C11F5450@<X0>(uint64_t a1@<X8>)
{
  *v3 = *(v1 + 40);
  *&v3[16] = *(v1 + 56);
  return sub_1C11F36B4(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 16), *(v1 + 24), *(v1 + 32), a1, *(v1 + 40), *&v3[8], *(v1 + 64), *(v1 + 72));
}

unint64_t sub_1C11F5494()
{
  result = qword_1EDE78A20;
  if (!qword_1EDE78A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78A20);
  }

  return result;
}

unint64_t sub_1C11F54E8()
{
  result = qword_1EDE7BF98;
  if (!qword_1EDE7BF98)
  {
    sub_1C1263130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF98);
  }

  return result;
}

uint64_t PhotosTestableScrollView.init(_:accessibilityIdentifier:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  v36 = 0;
  v13 = swift_getKeyPath();
  v35 = 0;
  v14 = swift_getKeyPath();
  v34 = 0;
  memset(&v37[3], 0, 32);
  v38 = 1;
  sub_1C11F5BFC(v37);
  *&v33[7] = v37[0];
  *&v33[23] = v37[1];
  *&v33[39] = v37[2];
  sub_1C11F5D50(v31);
  v15 = sub_1C11F5F18();
  v17 = v16;
  v19 = v18;
  v20 = v15;
  result = sub_1C11F5F18();
  v24 = v36;
  v25 = v35;
  v26 = 0xE000000000000000;
  if (a3)
  {
    v26 = a3;
  }

  v27 = v34;
  if (a3)
  {
    v28 = a2;
  }

  else
  {
    v28 = 0;
  }

  *a6 = KeyPath;
  *(a6 + 8) = v24;
  *(a6 + 16) = v13;
  *(a6 + 24) = v25;
  *(a6 + 32) = v14;
  *(a6 + 40) = v27;
  v29 = *&v33[16];
  *(a6 + 41) = *v33;
  *(a6 + 57) = v29;
  *(a6 + 73) = *&v33[32];
  *(a6 + 88) = *&v33[47];
  *(a6 + 128) = v32;
  v30 = v31[1];
  *(a6 + 96) = v31[0];
  *(a6 + 112) = v30;
  *(a6 + 136) = v17;
  *(a6 + 144) = v19;
  *(a6 + 152) = v20;
  *(a6 + 160) = v22;
  *(a6 + 168) = v23;
  *(a6 + 176) = result;
  *(a6 + 184) = a1;
  *(a6 + 192) = v28;
  *(a6 + 200) = v26;
  *(a6 + 208) = a4;
  *(a6 + 216) = a5;
  *(a6 + 224) = 0x4024000000000000;
  return result;
}

uint64_t sub_1C11F5738()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosSelection.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C11F578C()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosSelectModeEnabled.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C11F57E0()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosSelectionCoordinator.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C11F5834()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C11F5974()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C11F5AB4()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

double sub_1C11F5BFC@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97920);
  sub_1C1265410();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

double sub_1C11F5C70@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97928);
  sub_1C1265420();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1C11F5D50@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CGRect(0);
  sub_1C1265410();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1C11F5DA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE96690);
  sub_1C1265420();
  return v1;
}

double sub_1C11F5E64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97930);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C11F5F18()
{
  type metadata accessor for CGPoint(0);
  sub_1C1265410();
  return v1;
}

double sub_1C11F5F58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97930);
  sub_1C1265420();
  return v1;
}

uint64_t PhotosTestableScrollView.body.getter(uint64_t a1)
{
  v2 = v1;
  memcpy(__dst, v2, 0xE8uLL);
  v4 = __dst[25];
  v5 = __dst[26];
  v6 = __dst[27];
  v19 = __dst[24];
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  v7[2] = *(a1 + 16);
  v7[3] = v8;
  memcpy(v7 + 4, v2, 0xE8uLL);
  v7[33] = v5;
  v7[34] = v6;
  type metadata accessor for PhotosScrollView();
  OUTLINED_FUNCTION_0_79();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94168);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_52();
  sub_1C0FDB6D4(v9, &qword_1EBE94168);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97920);
  swift_getOpaqueTypeConformance2();
  sub_1C11F7898();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGPoint(255);
  v12 = v11;
  v13 = OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_6_37();
  *(&v21 + 1) = v13;
  v22 = sub_1C11F8D90(v14, v15);
  swift_getOpaqueTypeMetadata2();
  v20 = OpaqueTypeMetadata2;
  *&v21 = v12;
  OUTLINED_FUNCTION_11_32();
  v25[0] = v19;
  v25[1] = v4;
  v25[2] = sub_1C11F6DB8;
  v25[3] = v7;
  v25[4] = swift_getKeyPath();
  v26 = 0;
  v16 = type metadata accessor for PhotosTestableScrollViewReader();
  OUTLINED_FUNCTION_3_49();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v25, v16, WitnessTable);

  (*(*(a1 - 8) + 16))(&v20, __dst, a1);

  v20 = v27;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v24 = v31;
  sub_1C0FDBA4C(&v20, v16, WitnessTable);
}

uint64_t sub_1C11F63A0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v110 = a7;
  v111 = a6;
  v114 = a5;
  v96 = a3;
  v97 = a4;
  v90 = a2;
  v93 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94168);
  v109 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v77[-v8];
  v80 = sub_1C1263240();
  v9 = *(v80 - 8);
  v79 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v11 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PhotosScrollView();
  WitnessTable = swift_getWitnessTable();
  v117[0] = v12;
  v14 = v12;
  v81 = v12;
  v117[1] = WitnessTable;
  v15 = WitnessTable;
  v91 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v105 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v92 = &v77[-v17];
  v117[0] = v14;
  v117[1] = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_1C0FDB6D4(&qword_1EDE774F8, &qword_1EBE94168);
  v117[0] = OpaqueTypeMetadata2;
  v86 = v7;
  v87 = OpaqueTypeMetadata2;
  v117[1] = v7;
  v117[2] = OpaqueTypeConformance2;
  v88 = v19;
  v89 = OpaqueTypeConformance2;
  v117[3] = v19;
  v20 = v19;
  v21 = swift_getOpaqueTypeMetadata2();
  v106 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v77[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97920);
  v117[0] = OpaqueTypeMetadata2;
  v117[1] = v7;
  v117[2] = OpaqueTypeConformance2;
  v117[3] = v20;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_1C11F7898();
  v117[0] = v21;
  v26 = v21;
  v84 = v23;
  v85 = v21;
  v117[1] = v23;
  v117[2] = v24;
  v27 = v24;
  v82 = v25;
  v83 = v24;
  v117[3] = v25;
  v28 = v25;
  v29 = swift_getOpaqueTypeMetadata2();
  v101 = v29;
  v107 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v113 = &v77[-v30];
  type metadata accessor for CGPoint(255);
  v32 = v31;
  v94 = v31;
  v117[0] = v26;
  v117[1] = v23;
  v117[2] = v27;
  v117[3] = v28;
  v33 = swift_getOpaqueTypeConformance2();
  v100 = v33;
  v98 = sub_1C11F8D90(&unk_1EDE76958, type metadata accessor for CGPoint);
  v117[0] = v29;
  v117[1] = v32;
  v117[2] = v33;
  v117[3] = v98;
  v102 = MEMORY[0x1E697D340];
  v34 = swift_getOpaqueTypeMetadata2();
  v35 = *(v34 - 8);
  v103 = v34;
  v104 = v35;
  MEMORY[0x1EEE9AC00](v34);
  v95 = &v77[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x1EEE9AC00](v37);
  v99 = &v77[-v39];
  v40 = v9;
  v41 = *(v9 + 16);
  v42 = v90;
  v78 = v90[184];
  v43 = v11;
  v44 = v11;
  v45 = v80;
  v41(v44, v93, v80, v38);
  v46 = (*(v40 + 80) + 48) & ~*(v40 + 80);
  v47 = swift_allocObject();
  v48 = v111;
  *(v47 + 2) = v114;
  *(v47 + 3) = v48;
  v49 = v97;
  *(v47 + 4) = v96;
  *(v47 + 5) = v49;
  (*(v40 + 32))(&v47[v46], v43, v45);
  v50 = OUTLINED_FUNCTION_15_6();
  PhotosScrollView.init(_:showsIndicators:content:)(v78, v50 & 1, sub_1C11F8CE4, v47, v116);
  memcpy(v117, v42, sizeof(v117));
  v51 = v48;
  v52 = type metadata accessor for PhotosTestableScrollView();

  sub_1C11F5834();
  PhotosSelection.isSelectionBandActive.getter();

  v53 = swift_checkMetadataState();
  v54 = v92;
  sub_1C1264B70();
  v118[0] = *v116;
  v118[1] = *&v116[16];
  v118[2] = *&v116[32];
  v119 = v116[48];
  (*(*(v53 - 8) + 8))(v118, v53);
  memcpy(v117, v42, sizeof(v117));
  v55 = v108;
  sub_1C11F6F04(v52, v108);
  v56 = v42;
  memcpy(v116, v42, sizeof(v116));
  v57 = sub_1C11F5AB4();
  v59 = v86;
  v58 = v87;
  sub_1C11F731C(v55, v57 & 1);
  (*(v109 + 8))(v55, v59);
  (*(v105 + 8))(v54, v58);
  memcpy(v117, v56, sizeof(v117));
  sub_1C11F5C70(&v115);
  v60 = swift_allocObject();
  v60[2] = v114;
  v60[3] = v51;
  memcpy(v60 + 4, v56, 0xE8uLL);
  v61 = v85;
  OUTLINED_FUNCTION_2_1();
  v96 = v52;
  v62 = *(*(v52 - 8) + 16);
  v62(v116, v56, v52);
  v63 = v112;
  sub_1C1265000();

  (*(v106 + 8))(v63, v61);
  v64 = swift_checkMetadataState();
  v65 = swift_allocObject();
  v66 = v111;
  v65[2] = v114;
  v65[3] = v66;
  memcpy(v65 + 4, v56, 0xE8uLL);
  v62(v117, v56, v96);
  v67 = v98;
  v68 = v95;
  v70 = v100;
  v69 = v101;
  v71 = v113;
  sub_1C1264DE0();

  (*(v107 + 8))(v71, v69);
  v117[0] = v69;
  v117[1] = v64;
  v117[2] = v70;
  v117[3] = v67;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v99;
  v74 = v103;
  sub_1C0FDBA4C(v68, v103, v72);
  v75 = *(v104 + 8);
  v75(v68, v74);
  sub_1C0FDBA4C(v73, v74, v72);
  return (v75)(v73, v74);
}

uint64_t sub_1C11F6DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v14(v13);
  sub_1C0FDBA4C(v10, a4, a5);
  v15 = *(v7 + 8);
  v15(v10, a4);
  sub_1C0FDBA4C(v12, a4, a5);
  return (v15)(v12, a4);
}

uint64_t sub_1C11F6F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_1C1263380();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C1263D00();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C1262A60();
  v8 = *(v7 - 8);
  v24 = v7;
  v25 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94160);
  v12 = *(v11 - 8);
  v26 = v11;
  v27 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v23 = &v22 - v13;
  memcpy(v30, v3, 0xE8uLL);
  sub_1C1263F20();
  sub_1C1263370();
  sub_1C1262A20();
  v14 = swift_allocObject();
  v15 = *(a1 + 24);
  v22 = *(a1 + 16);
  v14[2] = v22;
  v14[3] = v15;
  memcpy(v14 + 4, v30, 0xE8uLL);
  v16 = *(*(a1 - 8) + 16);
  v16(v29, v30, a1);
  sub_1C11F8D90(&qword_1EDE77670, MEMORY[0x1E697BEA8]);
  sub_1C11F8D90(&qword_1EDE77678, MEMORY[0x1E697BE90]);
  v18 = v23;
  v17 = v24;
  sub_1C12656C0();

  (*(v25 + 8))(v10, v17);
  v19 = swift_allocObject();
  v19[2] = v22;
  v19[3] = v15;
  memcpy(v19 + 4, v30, 0xE8uLL);
  v16(v29, v30, a1);
  sub_1C0FDB6D4(&qword_1EDE76FD0, &qword_1EBE94160);
  v20 = v26;
  sub_1C12656B0();

  return (*(v27 + 8))(v18, v20);
}

uint64_t sub_1C11F731C(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1C1262A90();
  }

  else
  {
    sub_1C1262AA0();
  }

  return sub_1C1264D30();
}

uint64_t sub_1C11F73A4(int a1, uint64_t a2, void *__src)
{
  if ((*(a2 + 32) & 1) == 0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    type metadata accessor for PhotosTestableScrollView();
    sub_1C11F5974();
    sub_1C112DD2C();
  }

  return result;
}

uint64_t sub_1C11F7458@<X0>(void *a1@<X8>)
{
  result = sub_1C1262FA0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double *sub_1C11F7484(double *result, double *a2, void *__src)
{
  if (*result != *a2 || result[1] != a2[1])
  {
    memcpy(__dst, __src, sizeof(__dst));
    v5 = type metadata accessor for PhotosTestableScrollView();
    v6 = *(v5 - 8);
    (*(v6 + 16))(v7, __src, v5);
    sub_1C11F5EBC();
    memcpy(v9, __dst, sizeof(v9));
    (*(v6 + 8))(v9, v5);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C11F5834();
    LOBYTE(v6) = PhotosSelection.isSelectionBandActive.getter();

    if (v6)
    {
      memcpy(__dst, __src, sizeof(__dst));
      return sub_1C11F75D8(v5);
    }
  }

  return result;
}

uint64_t sub_1C11F75D8(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v21, v1, sizeof(v21));
  v3 = sub_1C11F5F58();
  memcpy(v20, __dst, sizeof(v20));
  v4 = v3 - sub_1C11F5E64();
  memcpy(v21, __dst, sizeof(v21));
  sub_1C11F5F58();
  v6 = v5;
  memcpy(v20, __dst, sizeof(v20));
  sub_1C11F5E64();
  v8 = v6 - v7;
  memcpy(v21, __dst, sizeof(v21));
  v9 = v4 + sub_1C11F5DA8();
  v11 = v8 + v10;
  memcpy(v21, __dst, sizeof(v21));
  sub_1C11F5DA8();
  v13 = v12 - v4;
  v15 = v14 - v8;
  memcpy(v21, __dst, sizeof(v21));
  sub_1C11F5834();
  memcpy(v20, __dst, sizeof(v20));
  sub_1C11F5974();
  v16 = sub_1C112DE10();

  PhotosSelection.isSelectionBandActive.setter(v16 & 1);

  memcpy(v21, __dst, sizeof(v21));
  sub_1C11F5834();
  v17 = PhotosSelection.isSelectionBandActive.getter();

  if (v17)
  {
    memcpy(v20, __dst, sizeof(v20));
    v22 = v9;
    v23 = v11;
    v24 = v13;
    v25 = v15;
    v26 = 0;
    v19 = *(a1 - 8);
    (*(v19 + 16))(v21, __dst, a1);
    sub_1C11F5CE0();
    memcpy(v21, v20, sizeof(v21));
    return (*(v19 + 8))(v21, a1);
  }

  return result;
}