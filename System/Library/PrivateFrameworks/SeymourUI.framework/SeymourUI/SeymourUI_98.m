uint64_t sub_20C0307FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v50 - v5;
  v71 = sub_20C134014();
  v6 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_20C134A74();
  v8 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768E58);
  MEMORY[0x28223BE20](v70);
  v12 = (&v50 - v11);
  v13 = a1;
  v14 = *(a1 + 152);
  v15 = *(v14 + 16);
  v16 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_mediaTagStringBuilder;
  v59 = v14;

  v69 = v15;
  if (v15)
  {
    v18 = 0;
    v55 = (a2 + v16);
    v54 = (v6 + 32);
    v53 = (v6 + 16);
    v52 = (v6 + 8);
    v72 = MEMORY[0x277D84F90];
    v19 = v59;
    v56 = v13;
    v67 = v12;
    v51 = v8;
    while (v18 < *(v19 + 16))
    {
      v20 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18;
      v21 = *(v70 + 48);
      *v12 = v18;
      sub_20B864C34(v20, v12 + v21);
      sub_20B864C34(v12 + v21, v10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = v57;
        (*v54)(v57, v10, v71);
        v66 = *(v13 + 144);
        v23 = v55[3];
        v24 = v55[4];
        __swift_project_boxed_opaque_existential_1(v55, v23);
        v25 = sub_20C136194();
        v26 = v58;
        (*(*(v25 - 8) + 56))(v58, 1, 1, v25);
        MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v26, v23, v24, v73);
        sub_20B520158(v26, &unk_27C765110);
        v63 = v73[1];
        v64 = v73[0];
        v62 = v73[2];
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
        v65 = swift_allocBox();
        v29 = v28;
        v30 = v27[12];
        v31 = v10;
        v32 = (v28 + v27[16]);
        v33 = v28 + v27[20];
        v34 = v28 + v27[24];
        v60 = v27[28];
        v61 = v27[32];
        v35 = v22;
        v36 = v71;
        (*v53)(v28, v22, v71);
        *(v29 + v30) = v66;
        v19 = v59;
        v37 = v63;
        *v32 = v64;
        v32[1] = v37;
        v32[2] = v62;
        v10 = v31;
        *(v33 + 32) = 0;
        *v33 = 0u;
        *(v33 + 16) = 0u;
        *(v33 + 40) = 513;
        v8 = v51;
        *v34 = 3;
        *(v34 + 8) = 3;
        *(v29 + v60) = 0;
        v13 = v56;
        v38 = sub_20B6B2348(MEMORY[0x277D84F90]);
        *(v29 + v61) = v38;
        v39 = v65 | 0x4000000000000000;
        (*v52)(v35, v36);
      }

      else
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28);
        v41 = swift_allocBox();
        v43 = v42;
        v44 = *(v40 + 48);
        v45 = *(v40 + 64);
        v46 = sub_20C136594();
        (*(*(v46 - 8) + 32))(v43, v10, v46);
        *(v43 + v44) = *(v13 + 144);
        *(v43 + v45) = *(v13 + 145);
        v39 = v41 | 0x4000000000000001;
      }

      v12 = v67;
      sub_20B520158(v67, &qword_27C768E58);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v72 + 2) + 1, 1, v72);
        v72 = result;
      }

      v48 = *(v72 + 2);
      v47 = *(v72 + 3);
      if (v48 >= v47 >> 1)
      {
        result = sub_20BC05D3C((v47 > 1), v48 + 1, 1, v72);
        v72 = result;
      }

      ++v18;
      v49 = v72;
      *(v72 + 2) = v48 + 1;
      *&v49[8 * v48 + 32] = v39;
      if (v69 == v18)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v72 = MEMORY[0x277D84F90];
LABEL_14:

    return v72;
  }

  return result;
}

uint64_t sub_20C030E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v55 - v7;
  v73 = sub_20C134014();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134A74();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768E58);
  MEMORY[0x28223BE20](v74);
  v75 = (&v55 - v14);
  v15 = *(a1 + 152);
  v16 = *(v15 + 16);
  v17 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_mediaTagStringBuilder;

  v72 = v16;
  if (v16)
  {
    v19 = 0;
    v58 = (a3 + v17);
    v62 = (v8 + 32);
    v57 = (v8 + 16);
    v56 = (v8 + 8);
    v77 = (a2 + 36);
    v78 = MEMORY[0x277D84F90];
    v61 = a2;
    v60 = v11;
    v59 = v12;
    v20 = v64;
    v71 = v15;
    while (v19 < *(v15 + 16))
    {
      v76 = v19 + 1;
      v21 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v19;
      v22 = v75;
      v23 = *(v74 + 48);
      *v75 = v19;
      sub_20B864C34(v21, v22 + v23);
      sub_20B864C34(v22 + v23, v20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        result = (*v62)(v10, v20, v73);
        if (v19 >= *(a2 + 16))
        {
          goto LABEL_20;
        }

        v24 = *(v77 - 1);
        if (*v77)
        {
          v25 = dbl_20C18A540[v24];
          v26 = 0x3030301030300uLL >> (8 * v24);
        }

        else
        {
          v25 = *&v24;
          v26 = 2;
        }

        v70 = v26;
        v69 = *(a1 + 144);
        v35 = v58[3];
        v36 = v58[4];
        __swift_project_boxed_opaque_existential_1(v58, v35);
        v37 = sub_20C136194();
        v38 = v63;
        (*(*(v37 - 8) + 56))(v63, 1, 1, v37);
        MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v38, v35, v36, v79);
        sub_20B520158(v38, &unk_27C765110);
        v67 = v79[0];
        v66 = v79[1];
        v65 = v79[2];
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
        v68 = swift_allocBox();
        v41 = v40;
        v42 = v39[12];
        v43 = v10;
        v44 = (v40 + v39[16]);
        v45 = v40 + v39[20];
        v46 = a1;
        v47 = v40 + v39[24];
        v48 = v39[28];
        v49 = v39[32];
        v50 = v73;
        (*v57)(v40, v43, v73);
        *(v41 + v42) = v69;
        v51 = v66;
        *v44 = v67;
        v44[1] = v51;
        v44[2] = v65;
        v10 = v43;
        *v45 = 0u;
        *(v45 + 16) = 0u;
        *(v45 + 32) = v76;
        *(v45 + 40) = 512;
        *v47 = v25;
        *(v47 + 8) = v70;
        a1 = v46;
        *(v41 + v48) = 0;
        *(v41 + v49) = sub_20B6B2348(MEMORY[0x277D84F90]);
        v34 = v68 | 0x4000000000000000;
        (*v56)(v43, v50);
        a2 = v61;
        v12 = v59;
        v20 = v64;
      }

      else
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28);
        v28 = swift_allocBox();
        v30 = v29;
        v31 = *(v27 + 48);
        v32 = *(v27 + 64);
        v33 = sub_20C136594();
        (*(*(v33 - 8) + 32))(v30, v20, v33);
        *(v30 + v31) = *(a1 + 144);
        *(v30 + v32) = *(a1 + 145);
        v34 = v28 | 0x4000000000000001;
      }

      sub_20B520158(v75, &qword_27C768E58);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v78 + 2) + 1, 1, v78);
        v78 = result;
      }

      v15 = v71;
      v53 = *(v78 + 2);
      v52 = *(v78 + 3);
      if (v53 >= v52 >> 1)
      {
        result = sub_20BC05D3C((v52 > 1), v53 + 1, 1, v78);
        v78 = result;
      }

      v54 = v78;
      *(v78 + 2) = v53 + 1;
      *&v54[8 * v53 + 32] = v34;
      v77 += 8;
      v19 = v76;
      if (v72 == v76)
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
    v78 = MEMORY[0x277D84F90];
LABEL_18:

    return v78;
  }

  return result;
}

uint64_t sub_20C0314D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v62 = a5;
  v61 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v52 - v9;
  v75 = sub_20C134014();
  v10 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_20C134A74();
  v12 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768E58);
  MEMORY[0x28223BE20](v72);
  v16 = (&v52 - v15);
  v17 = *(*(a1 + 152) + 16);
  v18 = *a3;
  v63 = *(a1 + 152);

  v71 = v17;
  if (v17)
  {
    v20 = 0;
    v58 = (a2 + v18);
    v57 = (v10 + 32);
    v56 = (v10 + 16);
    v55 = (v10 + 8);
    v54 = xmmword_20C157520;
    v76 = MEMORY[0x277D84F90];
    v21 = v63;
    v59 = a1;
    v70 = v16;
    v53 = v14;
    while (v20 < *(v21 + 16))
    {
      v22 = v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20;
      v23 = *(v72 + 48);
      *v16 = v20;
      sub_20B864C34(v22, v16 + v23);
      sub_20B864C34(v16 + v23, v14);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v57)(v74, v14, v75);
        v69 = *(a1 + 144);
        v24 = v58[3];
        v25 = v58[4];
        __swift_project_boxed_opaque_existential_1(v58, v24);
        v26 = sub_20C136194();
        v27 = v60;
        (*(*(v26 - 8) + 56))(v60, 1, 1, v26);
        MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v27, v24, v25, v77);
        sub_20B520158(v27, &unk_27C765110);
        v66 = v77[1];
        v67 = v77[0];
        v65 = v77[2];
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
        v68 = swift_allocBox();
        v30 = v29;
        v31 = v12;
        v32 = v28[12];
        v33 = (v29 + v28[16]);
        v34 = v29 + v28[20];
        v35 = v29 + v28[24];
        v36 = v28[28];
        v64 = v28[32];
        v38 = v74;
        v37 = v75;
        (*v56)(v29, v74, v75);
        *(v30 + v32) = v69;
        v12 = v31;
        v21 = v63;
        v39 = v66;
        *v33 = v67;
        v33[1] = v39;
        v33[2] = v65;
        *v34 = v54;
        *(v34 + 24) = 0;
        *(v34 + 32) = 0;
        *(v34 + 16) = 0;
        *(v34 + 40) = 0;
        v14 = v53;
        *v35 = v61;
        *(v35 + 8) = v62;
        a1 = v59;
        *(v30 + v36) = 0;
        v40 = sub_20B6B2348(MEMORY[0x277D84F90]);
        *(v30 + v64) = v40;
        v41 = v68 | 0x4000000000000000;
        (*v55)(v38, v37);
      }

      else
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28);
        v43 = swift_allocBox();
        v45 = v44;
        v46 = *(v42 + 48);
        v47 = *(v42 + 64);
        v48 = sub_20C136594();
        (*(*(v48 - 8) + 32))(v45, v14, v48);
        *(v45 + v46) = *(a1 + 144);
        *(v45 + v47) = *(a1 + 145);
        v41 = v43 | 0x4000000000000001;
      }

      v16 = v70;
      sub_20B520158(v70, &qword_27C768E58);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v76 + 2) + 1, 1, v76);
        v76 = result;
      }

      v50 = *(v76 + 2);
      v49 = *(v76 + 3);
      if (v50 >= v49 >> 1)
      {
        result = sub_20BC05D3C((v49 > 1), v50 + 1, 1, v76);
        v76 = result;
      }

      ++v20;
      v51 = v76;
      *(v76 + 2) = v50 + 1;
      *&v51[8 * v50 + 32] = v41;
      if (v71 == v20)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
LABEL_14:

    return v76;
  }

  return result;
}

uint64_t sub_20C031AF8(uint64_t a1, int a2, uint64_t a3)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = *(a3 + 120);
  v9 = *(a3 + 128);
  __swift_project_boxed_opaque_existential_1((a3 + 96), v8);
  v10 = sub_20C136194();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v7, v8, v9, v28);
  sub_20B520158(v7, &unk_27C765110);
  v25 = v28[1];
  v26 = v28[0];
  v24 = v28[2];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  v12 = swift_allocBox();
  v14 = v13;
  v15 = v11[12];
  v16 = (v13 + v11[16]);
  v17 = v13 + v11[20];
  v18 = v13 + v11[24];
  v19 = v11[28];
  v20 = v11[32];
  v21 = sub_20C134014();
  (*(*(v21 - 8) + 16))(v14, a1, v21);
  *(v14 + v15) = v27;
  v22 = v25;
  *v16 = v26;
  v16[1] = v22;
  v16[2] = v24;
  *v17 = xmmword_20C157520;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 16) = 0;
  *(v17 + 40) = 0;
  *(v14 + v19) = *(a3 + 145);
  *v18 = 3;
  *(v18 + 8) = 3;
  *(v14 + v20) = sub_20B6B2348(MEMORY[0x277D84F90]);
  return v12 | 0x4000000000000000;
}

uint64_t sub_20C031D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v55 - v7;
  v73 = sub_20C134014();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134A74();
  v75 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768E58);
  MEMORY[0x28223BE20](v74);
  v77 = (&v55 - v13);
  v14 = *(a1 + 152);
  v15 = *(v14 + 16);
  v16 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutGalleryShelf_mediaTagStringBuilder;

  v72 = v15;
  if (v15)
  {
    v18 = 0;
    v58 = (a3 + v16);
    v61 = (v8 + 32);
    v57 = (v8 + 16);
    v56 = (v8 + 8);
    v19 = (a2 + 36);
    v55 = xmmword_20C157520;
    v78 = MEMORY[0x277D84F90];
    v60 = a2;
    v59 = v11;
    v20 = v63;
    v71 = v14;
    while (v18 < *(v14 + 16))
    {
      v21 = v14 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v18;
      v22 = *(v74 + 48);
      v23 = v77;
      *v77 = v18;
      sub_20B864C34(v21, v23 + v22);
      sub_20B864C34(v23 + v22, v20);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v76 = v19;
      if (EnumCaseMultiPayload == 1)
      {
        result = (*v61)(v10, v20, v73);
        if (v18 >= *(a2 + 16))
        {
          goto LABEL_20;
        }

        v25 = *(v19 - 1);
        if (*v19)
        {
          v26 = dbl_20C18A508[v25];
          v27 = 0x3030301030300uLL >> (8 * v25);
        }

        else
        {
          v26 = *&v25;
          v27 = 2;
        }

        v70 = v27;
        v69 = *(a1 + 144);
        v36 = v58[3];
        v37 = v58[4];
        __swift_project_boxed_opaque_existential_1(v58, v36);
        v38 = sub_20C136194();
        v39 = v62;
        (*(*(v38 - 8) + 56))(v62, 1, 1, v38);
        MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v39, v36, v37, v79);
        sub_20B520158(v39, &unk_27C765110);
        v67 = v79[0];
        v66 = v79[1];
        v65 = v79[2];
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
        v68 = swift_allocBox();
        v42 = v41;
        v43 = v40[12];
        v44 = a1;
        v45 = (v41 + v40[16]);
        v46 = v41 + v40[20];
        v47 = v41 + v40[24];
        v48 = v40[28];
        v64 = v40[32];
        v49 = v73;
        (*v57)(v41, v10, v73);
        *(v42 + v43) = v69;
        v50 = v66;
        *v45 = v67;
        v45[1] = v50;
        v45[2] = v65;
        a1 = v44;
        *v46 = v55;
        *(v46 + 24) = 0;
        *(v46 + 32) = 0;
        *(v46 + 16) = 0;
        *(v46 + 40) = 0;
        *v47 = v26;
        *(v47 + 8) = v70;
        *(v42 + v48) = 0;
        v51 = sub_20B6B2348(MEMORY[0x277D84F90]);
        *(v42 + v64) = v51;
        v35 = v68 | 0x4000000000000000;
        (*v56)(v10, v49);
        a2 = v60;
        v20 = v63;
      }

      else
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28);
        v29 = swift_allocBox();
        v31 = v30;
        v32 = *(v28 + 48);
        v33 = *(v28 + 64);
        v34 = sub_20C136594();
        (*(*(v34 - 8) + 32))(v31, v20, v34);
        *(v31 + v32) = *(a1 + 144);
        *(v31 + v33) = *(a1 + 145);
        v35 = v29 | 0x4000000000000001;
      }

      sub_20B520158(v77, &qword_27C768E58);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v78 + 2) + 1, 1, v78);
        v78 = result;
      }

      v14 = v71;
      v53 = *(v78 + 2);
      v52 = *(v78 + 3);
      if (v53 >= v52 >> 1)
      {
        result = sub_20BC05D3C((v52 > 1), v53 + 1, 1, v78);
        v78 = result;
      }

      ++v18;
      v54 = v78;
      *(v78 + 2) = v53 + 1;
      *&v54[8 * v53 + 32] = v35;
      v19 = v76 + 8;
      if (v72 == v18)
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
    v78 = MEMORY[0x277D84F90];
LABEL_18:

    return v78;
  }

  return result;
}

uint64_t sub_20C0323A4(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v3 - 8);
  v75 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771DF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  v92 = sub_20C134014();
  v11 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v93 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C134A74();
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768E58);
  MEMORY[0x28223BE20](v90);
  v17 = (&v67 - v16);
  v18 = *(a1 + 152);
  v19 = *(v18 + 16);
  v74 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_recommendations;
  v20 = OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_mediaTagStringBuilder;

  v89 = v19;
  if (v19)
  {
    v22 = 0;
    v84 = 0;
    v70 = (v76 + v20);
    v69 = (v11 + 32);
    v68 = (v11 + 16);
    v67 = (v11 + 8);
    v94 = MEMORY[0x277D84F90];
    v88 = v10;
    v23 = v76;
    v73 = a1;
    v72 = v7;
    v71 = v13;
    v86 = v18;
    v87 = v15;
    v85 = v17;
    while (v22 < *(v18 + 16))
    {
      v24 = v18 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v22;
      v25 = *(v90 + 48);
      *v17 = v22;
      sub_20B864C34(v24, v17 + v25);
      sub_20B864C34(v17 + v25, v15);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v93;
        v27 = (*v69)(v93, v15, v92);
        v83 = *(a1 + 144);
        v28 = *(v23 + v74);
        MEMORY[0x28223BE20](v27);
        *(&v67 - 2) = v26;

        v29 = v88;
        v30 = v84;
        sub_20B6B7834(sub_20C034274, v28, v88);
        v84 = v30;

        sub_20B52F9E8(v29, v7, &qword_27C771DF8);
        v31 = sub_20C134614();
        v32 = *(v31 - 8);
        if ((*(v32 + 48))(v7, 1, v31) == 1)
        {
          sub_20B520158(v7, &qword_27C771DF8);
          v81 = 0;
          v82 = 0;
        }

        else
        {
          v42 = sub_20C134604();
          v81 = v43;
          v82 = v42;
          (*(v32 + 8))(v7, v31);
        }

        v44 = v70[3];
        v45 = v70[4];
        __swift_project_boxed_opaque_existential_1(v70, v44);
        v46 = sub_20C136194();
        v47 = v75;
        (*(*(v46 - 8) + 56))(v75, 1, 1, v46);
        v48 = v93;
        MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v47, v44, v45, v95);
        sub_20B520158(v47, &unk_27C765110);
        v79 = v95[0];
        v78 = v95[1];
        v77 = v95[2];
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
        v80 = swift_allocBox();
        v51 = v50;
        v52 = v49[12];
        v53 = (v50 + v49[16]);
        v54 = v50 + v49[20];
        v55 = v50 + v49[24];
        v56 = v49[28];
        v57 = v49[32];
        v58 = v50;
        v59 = v48;
        v60 = v92;
        (*v68)(v58, v59, v92);
        *(v51 + v52) = v83;
        v61 = v78;
        *v53 = v79;
        v53[1] = v61;
        v53[2] = v77;
        v62 = v81;
        *v54 = v82;
        *(v54 + 8) = v62;
        *(v54 + 24) = 0;
        *(v54 + 32) = 0;
        *(v54 + 16) = 0;
        *(v54 + 40) = 513;
        *v55 = 3;
        *(v55 + 8) = 3;
        *(v51 + v56) = 0;
        v63 = sub_20B6B2348(MEMORY[0x277D84F90]);
        sub_20B520158(v88, &qword_27C771DF8);
        *(v51 + v57) = v63;
        v41 = v80 | 0x4000000000000000;
        (*v67)(v93, v60);
        v23 = v76;
        a1 = v73;
        v7 = v72;
      }

      else
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28);
        v34 = swift_allocBox();
        v35 = v15;
        v37 = v36;
        v38 = *(v33 + 48);
        v39 = *(v33 + 64);
        v40 = sub_20C136594();
        (*(*(v40 - 8) + 32))(v37, v35, v40);
        *(v37 + v38) = *(a1 + 144);
        *(v37 + v39) = *(a1 + 145);
        v41 = v34 | 0x4000000000000001;
      }

      v17 = v85;
      sub_20B520158(v85, &qword_27C768E58);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v94 + 2) + 1, 1, v94);
        v94 = result;
      }

      v18 = v86;
      v65 = *(v94 + 2);
      v64 = *(v94 + 3);
      if (v65 >= v64 >> 1)
      {
        result = sub_20BC05D3C((v64 > 1), v65 + 1, 1, v94);
        v94 = result;
      }

      ++v22;
      v66 = v94;
      *(v94 + 2) = v65 + 1;
      *&v66[8 * v65 + 32] = v41;
      v15 = v87;
      if (v89 == v22)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v94 = MEMORY[0x277D84F90];
LABEL_17:

    return v94;
  }

  return result;
}

uint64_t sub_20C032BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v55 - v7;
  v73 = sub_20C134014();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134A74();
  v75 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768E58);
  MEMORY[0x28223BE20](v74);
  v77 = (&v55 - v13);
  v14 = *(a1 + 152);
  v15 = *(v14 + 16);
  v16 = OBJC_IVAR____TtC9SeymourUI14BookmarksShelf_mediaTagStringBuilder;

  v72 = v15;
  if (v15)
  {
    v18 = 0;
    v58 = (a3 + v16);
    v61 = (v8 + 32);
    v57 = (v8 + 16);
    v56 = (v8 + 8);
    v19 = (a2 + 36);
    v55 = xmmword_20C157520;
    v78 = MEMORY[0x277D84F90];
    v60 = a2;
    v59 = v11;
    v20 = v63;
    v71 = v14;
    while (v18 < *(v14 + 16))
    {
      v21 = v14 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v18;
      v22 = *(v74 + 48);
      v23 = v77;
      *v77 = v18;
      sub_20B864C34(v21, v23 + v22);
      sub_20B864C34(v23 + v22, v20);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v76 = v19;
      if (EnumCaseMultiPayload == 1)
      {
        result = (*v61)(v10, v20, v73);
        if (v18 >= *(a2 + 16))
        {
          goto LABEL_20;
        }

        v25 = *(v19 - 1);
        if (*v19)
        {
          v26 = dbl_20C18A540[v25];
          v27 = 0x3030301030300uLL >> (8 * v25);
        }

        else
        {
          v26 = *&v25;
          v27 = 2;
        }

        v70 = v27;
        v69 = *(a1 + 144);
        v36 = v58[3];
        v37 = v58[4];
        __swift_project_boxed_opaque_existential_1(v58, v36);
        v38 = sub_20C136194();
        v39 = v62;
        (*(*(v38 - 8) + 56))(v62, 1, 1, v38);
        MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v39, v36, v37, v79);
        sub_20B520158(v39, &unk_27C765110);
        v67 = v79[0];
        v66 = v79[1];
        v65 = v79[2];
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
        v68 = swift_allocBox();
        v42 = v41;
        v43 = v40[12];
        v44 = a1;
        v45 = (v41 + v40[16]);
        v46 = v41 + v40[20];
        v47 = v41 + v40[24];
        v48 = v40[28];
        v64 = v40[32];
        v49 = v73;
        (*v57)(v41, v10, v73);
        *(v42 + v43) = v69;
        v50 = v66;
        *v45 = v67;
        v45[1] = v50;
        v45[2] = v65;
        a1 = v44;
        *v46 = v55;
        *(v46 + 24) = 0;
        *(v46 + 32) = 0;
        *(v46 + 16) = 0;
        *(v46 + 40) = 0;
        *v47 = v26;
        *(v47 + 8) = v70;
        *(v42 + v48) = 0;
        v51 = sub_20B6B2348(MEMORY[0x277D84F90]);
        *(v42 + v64) = v51;
        v35 = v68 | 0x4000000000000000;
        (*v56)(v10, v49);
        a2 = v60;
        v20 = v63;
      }

      else
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28);
        v29 = swift_allocBox();
        v31 = v30;
        v32 = *(v28 + 48);
        v33 = *(v28 + 64);
        v34 = sub_20C136594();
        (*(*(v34 - 8) + 32))(v31, v20, v34);
        *(v31 + v32) = *(a1 + 144);
        *(v31 + v33) = *(a1 + 145);
        v35 = v29 | 0x4000000000000001;
      }

      sub_20B520158(v77, &qword_27C768E58);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v78 + 2) + 1, 1, v78);
        v78 = result;
      }

      v14 = v71;
      v53 = *(v78 + 2);
      v52 = *(v78 + 3);
      if (v53 >= v52 >> 1)
      {
        result = sub_20BC05D3C((v52 > 1), v53 + 1, 1, v78);
        v78 = result;
      }

      ++v18;
      v54 = v78;
      *(v78 + 2) = v53 + 1;
      *&v54[8 * v53 + 32] = v35;
      v19 = v76 + 8;
      if (v72 == v18)
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
    v78 = MEMORY[0x277D84F90];
LABEL_18:

    return v78;
  }

  return result;
}

uint64_t sub_20C033244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v55 - v7;
  v73 = sub_20C134014();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134A74();
  v75 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768E58);
  MEMORY[0x28223BE20](v74);
  v77 = (&v55 - v13);
  v14 = *(a1 + 152);
  v15 = *(v14 + 16);
  v16 = OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_mediaTagStringBuilder;

  v72 = v15;
  if (v15)
  {
    v18 = 0;
    v58 = (a3 + v16);
    v61 = (v8 + 32);
    v57 = (v8 + 16);
    v56 = (v8 + 8);
    v19 = (a2 + 36);
    v55 = xmmword_20C157520;
    v78 = MEMORY[0x277D84F90];
    v60 = a2;
    v59 = v11;
    v20 = v63;
    v71 = v14;
    while (v18 < *(v14 + 16))
    {
      v21 = v14 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v18;
      v22 = *(v74 + 48);
      v23 = v77;
      *v77 = v18;
      sub_20B864C34(v21, v23 + v22);
      sub_20B864C34(v23 + v22, v20);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v76 = v19;
      if (EnumCaseMultiPayload == 1)
      {
        result = (*v61)(v10, v20, v73);
        if (v18 >= *(a2 + 16))
        {
          goto LABEL_20;
        }

        v25 = *(v19 - 1);
        if (*v19)
        {
          v26 = dbl_20C18A540[v25];
          v27 = 0x3030301030300uLL >> (8 * v25);
        }

        else
        {
          v26 = *&v25;
          v27 = 2;
        }

        v70 = v27;
        v69 = *(a1 + 144);
        v36 = v58[3];
        v37 = v58[4];
        __swift_project_boxed_opaque_existential_1(v58, v36);
        v38 = sub_20C136194();
        v39 = v62;
        (*(*(v38 - 8) + 56))(v62, 1, 1, v38);
        MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v39, v36, v37, v79);
        sub_20B520158(v39, &unk_27C765110);
        v67 = v79[0];
        v66 = v79[1];
        v65 = v79[2];
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
        v68 = swift_allocBox();
        v42 = v41;
        v43 = v40[12];
        v44 = a1;
        v45 = (v41 + v40[16]);
        v46 = v41 + v40[20];
        v47 = v41 + v40[24];
        v48 = v40[28];
        v64 = v40[32];
        v49 = v73;
        (*v57)(v41, v10, v73);
        *(v42 + v43) = v69;
        v50 = v66;
        *v45 = v67;
        v45[1] = v50;
        v45[2] = v65;
        a1 = v44;
        *v46 = v55;
        *(v46 + 24) = 0;
        *(v46 + 32) = 0;
        *(v46 + 16) = 0;
        *(v46 + 40) = 0;
        *v47 = v26;
        *(v47 + 8) = v70;
        *(v42 + v48) = 0;
        v51 = sub_20B6B2348(MEMORY[0x277D84F90]);
        *(v42 + v64) = v51;
        v35 = v68 | 0x4000000000000000;
        (*v56)(v10, v49);
        a2 = v60;
        v20 = v63;
      }

      else
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28);
        v29 = swift_allocBox();
        v31 = v30;
        v32 = *(v28 + 48);
        v33 = *(v28 + 64);
        v34 = sub_20C136594();
        (*(*(v34 - 8) + 32))(v31, v20, v34);
        *(v31 + v32) = *(a1 + 144);
        *(v31 + v33) = *(a1 + 145);
        v35 = v29 | 0x4000000000000001;
      }

      sub_20B520158(v77, &qword_27C768E58);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v78 + 2) + 1, 1, v78);
        v78 = result;
      }

      v14 = v71;
      v53 = *(v78 + 2);
      v52 = *(v78 + 3);
      if (v53 >= v52 >> 1)
      {
        result = sub_20BC05D3C((v52 > 1), v53 + 1, 1, v78);
        v78 = result;
      }

      ++v18;
      v54 = v78;
      *(v78 + 2) = v53 + 1;
      *&v54[8 * v53 + 32] = v35;
      v19 = v76 + 8;
      if (v72 == v18)
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
    v78 = MEMORY[0x277D84F90];
LABEL_18:

    return v78;
  }

  return result;
}

uint64_t sub_20C0338E0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_20C134014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C134A74();
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768E58);
  MEMORY[0x28223BE20](v41);
  v11 = (&v35 - v10);
  v12 = *(a1 + 152);
  v13 = *(v12 + 16);
  v43 = a1;
  v44 = v13;
  v14 = (v4 + 32);
  v15 = (v4 + 8);

  v17 = 0;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = v17;
    if (v44 == v17)
    {

      return v39;
    }

    if (v17 >= *(v12 + 16))
    {
      break;
    }

    v19 = v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17;
    v20 = *(v41 + 48);
    *v11 = v17;
    sub_20B864C34(v19, v11 + v20);
    sub_20B864C34(v11 + v20, v9);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28);
      v23 = swift_allocBox();
      v24 = *(v22 + 48);
      v35 = v25;
      v36 = v24;
      v37 = *(v22 + 64);
      v38 = v23;
      v26 = sub_20C136594();
      v27 = v35;
      (*(*(v26 - 8) + 32))(v35, v9, v26);
      v28 = v43;
      *(v27 + v36) = *(v43 + 144);
      v29 = *(v28 + 145);
      v30 = v38;
      *(v27 + v37) = v29;
      v21 = v30 | 0x4000000000000001;
      sub_20B520158(v11, &qword_27C768E58);
      goto LABEL_8;
    }

    (*v14)(v6, v9, v3);
    v21 = sub_20C0774A8(v6, *(v43 + 144), v40);
    (*v15)(v6, v3);
    result = sub_20B520158(v11, &qword_27C768E58);
    v17 = v18 + 1;
    if ((~v21 & 0xF000000000000007) != 0)
    {
LABEL_8:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v39 + 2) + 1, 1, v39);
        v39 = result;
      }

      v32 = *(v39 + 2);
      v31 = *(v39 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v37 = *(v39 + 2);
        v38 = v32 + 1;
        result = sub_20BC05D3C((v31 > 1), v32 + 1, 1, v39);
        v32 = v37;
        v33 = v38;
        v39 = result;
      }

      v17 = v18 + 1;
      v34 = v39;
      *(v39 + 2) = v33;
      *&v34[8 * v32 + 32] = v21;
    }
  }

  __break(1u);
  return result;
}

void sub_20C033CB8(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = sub_20C134014();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928);
  MEMORY[0x28223BE20](v8);
  v41 = (v37 - v11);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 48);
    v39 = v5;
    v40 = v13;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    v43 = (v42 + 32);
    v37[2] = v42 + 40;
    v38 = v15;
    while (1)
    {
      v44 = v12;
      v17 = v41;
      sub_20B52F9E8(v14, v41, &qword_27C763928);
      v19 = *v17;
      v18 = v17[1];
      v20 = *v43;
      v21 = v7;
      (*v43)(v7, v17 + v40, v5);
      v22 = *v45;
      v24 = sub_20B65AA60(v19, v18);
      v25 = v22[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        break;
      }

      v28 = v23;
      if (v22[3] >= v27)
      {
        if ((a2 & 1) == 0)
        {
          sub_20BA114B8();
        }
      }

      else
      {
        sub_20BA0C3EC(v27, a2 & 1);
        v29 = sub_20B65AA60(v19, v18);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_17;
        }

        v24 = v29;
      }

      v31 = *v45;
      if (v28)
      {

        v16 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        (*(v42 + 40))(v16, v21, v39);
      }

      else
      {
        v31[(v24 >> 6) + 8] |= 1 << v24;
        v32 = (v31[6] + 16 * v24);
        *v32 = v19;
        v32[1] = v18;
        v33 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        v20(v33, v21, v39);
        v34 = v31[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_16;
        }

        v31[2] = v36;
      }

      v14 += v38;
      a2 = 1;
      v12 = v44 - 1;
      if (v44 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_20C13E054();
    __break(1u);
  }
}

uint64_t sub_20C033FF8(uint64_t a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928);
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = (&v17 - v4);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = v1;
    v21 = MEMORY[0x277D84F90];
    sub_20BB5E784(0, v6, 0);
    v7 = v21;
    v19 = sub_20C134014();
    v8 = *(v19 - 8);
    v18 = *(v8 + 16);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v18(v5 + *(v20 + 48), v9, v19);
      *v5 = sub_20C133E44();
      v5[1] = v11;
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_20BB5E784(v12 > 1, v13 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v13 + 1;
      sub_20BBAEB10(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
      v9 += v10;
      --v6;
    }

    while (v6);
    v1 = v17;
  }

  v14 = *(v1 + 160);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v14;
  sub_20C033CB8(v7, isUniquelyReferenced_nonNull_native, &v21);

  return v21;
}

unint64_t sub_20C034220()
{
  result = qword_27C771DF0;
  if (!qword_27C771DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771DF0);
  }

  return result;
}

unint64_t sub_20C0342A8()
{
  result = qword_27C771E00;
  if (!qword_27C771E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771E00);
  }

  return result;
}

uint64_t sub_20C0342FC()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C138184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_20C13A694();
    if ((sub_20C138174() & 0x100000000) != 0 && (v10 = sub_20C138164(), v10 == sub_20C138164()) && (sub_20C13B564(), sub_20C13BB64(), (*(v1 + 8))(v3, v0), *(v9 + 120) == 1) && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      [Strong dismissViewControllerAnimated:1 completion:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_20C034540()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 120) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong dismissViewControllerAnimated:1 completion:0];
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_20C0345D4()
{
  sub_20B583E6C(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_20C034688(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9SeymourUI23SessionActiveEnergyView_presenter] = a1;
  v14.receiver = v2;
  v14.super_class = ObjectType;

  v5 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = objc_allocWithZone(MEMORY[0x277D75348]);
  v7 = v5;
  v8 = [v6 initWithWhite:0.921568627 alpha:{1.0, v14.receiver, v14.super_class}];
  [*&v7[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel] setTextColor_];
  v9 = v7;

  v10 = [objc_opt_self() energyColors];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 nonGradientTextColor];

    if (v12)
    {
      [*&v9[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel] setTextColor_];

      *(a1 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_display + 8) = &off_2822D0928;
      swift_unknownObjectWeakAssign();
      v13 = v9;
      sub_20BA1CBD4();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_20C034A88(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [a1 metricsOverlay];
    if (v10)
    {
      v11 = v10;
      v12 = sub_20C13C754();
    }

    else
    {
      v12 = 0;
    }

    a4(a2, a3, v12);
  }

  return result;
}

void sub_20C034B88(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, a4, a5);
}

id sub_20C034C90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingDynamicOfferCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C034D34(char a1, id a2)
{
  v3 = [a2 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_20C1380F4();
  if (v5)
  {
    if (v5 != 1)
    {
      result = sub_20C13DE24();
      __break(1u);
      return result;
    }

    v9 = sub_20C13D424();
    v10 = v9;
    if (a1)
    {
      if (v9)
      {

        return 2;
      }

      v14 = sub_20C13D434();

      v11 = (v14 & 1) == 0;
      v12 = 3;
    }

    else
    {

      v11 = (v10 & 1) == 0;
      v12 = 2;
    }
  }

  else
  {
    v6 = sub_20C13D424();
    v7 = v6;
    if (a1)
    {
      if (v6)
      {

        return 1;
      }

      v13 = sub_20C13D434();

      v11 = (v13 & 1) == 0;
      v12 = 2;
    }

    else
    {

      v11 = (v7 & 1) == 0;
      v12 = 1;
    }
  }

  if (v11)
  {
    return v12 + 1;
  }

  else
  {
    return v12;
  }
}

char *sub_20C034EB0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_indexPath;
  v10 = sub_20C133244();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_shelf];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_headerLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setNumberOfLines_];
  v14 = [objc_opt_self() preferredFontForTextStyle_];
  [v13 setFont_];

  v15 = [objc_opt_self() systemGrayColor];
  [v13 setTextColor_];

  v16 = v13;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v17];

  *&v4[v12] = v16;
  v50.receiver = v4;
  v50.super_class = type metadata accessor for TVShelfHeaderAnnotatedTitleView();
  v18 = objc_msgSendSuper2(&v50, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_headerLabel;
  v20 = *&v18[OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_headerLabel];
  v21 = v18;
  [v21 addSubview_];
  v22 = objc_opt_self();
  v23 = *MEMORY[0x277D768C8];
  v24 = *(MEMORY[0x277D768C8] + 8);
  v25 = *(MEMORY[0x277D768C8] + 16);
  v26 = *(MEMORY[0x277D768C8] + 24);
  v27 = *&v18[v19];
  v28 = [v27 leadingAnchor];
  v29 = [v21 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v24];

  LODWORD(v31) = 1148846080;
  [v30 setPriority_];
  v32 = v30;
  v33 = [v27 trailingAnchor];
  v34 = [v21 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:-v26];

  LODWORD(v36) = 1148846080;
  [v35 setPriority_];
  v37 = v35;
  v38 = [v27 topAnchor];
  v39 = [v21 topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:v23];

  LODWORD(v41) = 1148846080;
  [v40 setPriority_];
  v42 = [v27 bottomAnchor];
  v43 = [v21 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:-v25];

  LODWORD(v45) = 1148846080;
  [v44 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14FE90;
  *(v46 + 32) = v32;
  *(v46 + 40) = v37;
  *(v46 + 48) = v40;
  *(v46 + 56) = v44;
  v47 = v40;

  sub_20B5E29D0();
  v48 = sub_20C13CC54();

  [v22 activateConstraints_];

  return v21;
}

id sub_20C03558C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVShelfHeaderAnnotatedTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVShelfHeaderAnnotatedTitleView()
{
  result = qword_27C771E20;
  if (!qword_27C771E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C035684()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_20C035750()
{
  if (qword_27C760660 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() itemWithLayoutSize_];

  return v0;
}

void sub_20C0357E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (v3 + OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_shelf);
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (((a3 >> 57) & 0x78 | a3 & 7) == 0x1C)
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v7 = *(v3 + OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_headerLabel);
    if (v6)
    {
      v8 = sub_20C13C914();
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v7 setText_];
  }
}

uint64_t sub_20C0358BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_indexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

uint64_t sub_20C035914(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_20C035964(unint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for TVShelfHeaderAnnotatedTitleView()) initWithFrame_];
  v5 = v4;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x1C)
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v7 = *&v4[OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_headerLabel];
    if (v6)
    {
      v8 = sub_20C13C914();
    }

    else
    {
      v8 = 0;
    }

    [v7 setText_];
  }

  [objc_msgSend(a2 container)];
  v10 = v9;
  swift_unknownObjectRelease();
  LODWORD(v11) = 1112014848;
  LODWORD(v12) = 1112014848;
  [v5 systemLayoutSizeFittingSize:v10 withHorizontalFittingPriority:COERCE_DOUBLE(1) verticalFittingPriority:{v11, v12}];
  v14 = v13;
  v15 = objc_opt_self();
  v16 = [v15 fractionalWidthDimension_];
  v17 = [v15 absoluteDimension_];
  v18 = [objc_opt_self() sizeWithWidthDimension:v16 heightDimension:v17];

  v19 = [v18 heightDimension];
  [v19 dimension];
  v21 = v20;

  v22 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{0.0, -4.0 - v21}];
  v23 = sub_20C13C914();
  v24 = [objc_opt_self() supplementaryItemWithLayoutSize:v18 elementKind:v23 containerAnchor:v22];

  return v24;
}

void sub_20C035BD0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_indexPath;
  v2 = sub_20C133244();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_shelf);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_headerLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v5 setNumberOfLines_];
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v5 setFont_];

  v7 = [objc_opt_self() systemGrayColor];
  [v5 setTextColor_];

  v8 = v5;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v9];

  *(v0 + v4) = v8;
  sub_20C13DE24();
  __break(1u);
}

void sub_20C035E48(uint64_t a1, void *a2, void *a3)
{
  v5 = v3;
  v7 = *&v3[*a2];
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  sub_20C133AA4();
  v8 = objc_allocWithZone(type metadata accessor for UpNextQueueViewController());
  v9 = sub_20B6837D4(v7, v7, v45, v46, v45, 37, 0, 11, v8);
  v10 = v9;
  v11 = v3[*a3];
  if (v11 <= 1)
  {
    if (v3[*a3])
    {
      v37 = [objc_allocWithZone(type metadata accessor for UpNextPopoverNavigationController()) initWithRootViewController_];
      [v37 setModalPresentationStyle_];
      v38 = [v37 popoverPresentationController];
      if (v38)
      {
        v39 = v38;
        [v38 setPermittedArrowDirections_];
      }

      v40 = [v37 popoverPresentationController];
      if (v40)
      {
        v41 = v40;
        type metadata accessor for UpNextQueuePopOverBackgroundView();
        [v41 setPopoverBackgroundViewClass_];
      }

      v42 = [v37 popoverPresentationController];

      [v42 setSourceView_];
      [v5 presentViewController:v37 animated:1 completion:0];
    }

    else
    {
      v12 = [v9 sheetPresentationController];
      if (v12)
      {
        v13 = v12;
        [v12 setPrefersScrollingExpandsWhenScrolledToEdge_];
        [v13 setSmu:1 wantsFullScreen:?];
        [v13 setSmu:1 allowsInteractiveDismissWhenFullScreen:?];
        [v13 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];
        [v13 setPrefersGrabberVisible_];
      }

      [v5 presentViewController:v10 animated:1 completion:0];
    }

    goto LABEL_20;
  }

  if (v11 == 3)
  {
    swift_retain_n();
    sub_20C133AA4();
    v14 = v46;
    v43 = v45;
    sub_20C133AA4();
    v15 = v45;
    QueueViewController = type metadata accessor for TVUpNextQueueViewController();
    v17 = objc_allocWithZone(QueueViewController);
    v18 = &v17[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_layout];
    *v18 = xmmword_20C153DC0;
    *(v18 + 1) = xmmword_20C153DD0;
    type metadata accessor for TVUpNextQueuePresenter();
    swift_allocObject();

    v20 = sub_20B91BCA8(v19, 0, 0xB);
    *&v17[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_presenter] = v20;
    v21 = *(v20 + 24);
    v22 = objc_allocWithZone(type metadata accessor for TVUpNextQueueListViewController());

    v23 = sub_20B683F5C(v7, v21, v7, v43, v14, v15, v22);

    *&v17[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_listViewController] = v23;
    objc_allocWithZone(type metadata accessor for TVQueueFocusedWorkoutViewController());

    *&v17[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_focusedWorkoutController] = sub_20BC1C728(v24);
    v44.receiver = v17;
    v44.super_class = QueueViewController;
    v25 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0);

    v26 = [v5 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 snapshotViewAfterScreenUpdates_];

      objc_allocWithZone(type metadata accessor for BlurViewController());
      v29 = v25;
      sub_20BADB764(v29, v28);
      v31 = v30;

      v32 = [v5 splitViewController];
      if (!v32 || (v33 = v32, v34 = [v32 navigationController], v33, !v34))
      {
        v35 = [v5 navigationController];
        if (!v35)
        {

          goto LABEL_19;
        }

        v34 = v35;
      }

      v36 = v34;
      [v36 pushViewController:v31 animated:1];

LABEL_19:
      v10 = v29;
LABEL_20:

      return;
    }

    __break(1u);
  }

  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C0363BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_upNextQueueButtonPresenter);
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_20B6383D0(0, 0, v3, &unk_20C18AA00, v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v4 + 48);
  *(v4 + 48) = sub_20C048014;
  *(v4 + 56) = v7;

  sub_20B583ECC(v8);
}

uint64_t sub_20C03652C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_upNextQueueButtonPresenter);
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_20B6383D0(0, 0, v3, &unk_20C18A9F8, v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v4 + 48);
  *(v4 + 48) = sub_20C047FD4;
  *(v4 + 56) = v7;

  sub_20B583ECC(v8);
}

uint64_t sub_20C03669C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButtonPresenter);
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_20B6383D0(0, 0, v3, &unk_20C18A9E8, v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v4 + 48);
  *(v4 + 48) = sub_20C047DC0;
  *(v4 + 56) = v7;

  sub_20B583ECC(v8);
}

uint64_t sub_20C03680C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_upNextQueueButtonPresenter);
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_20B6383D0(0, 0, v3, &unk_20C18A9D8, v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v4 + 48);
  *(v4 + 48) = sub_20C047D80;
  *(v4 + 56) = v7;

  sub_20B583ECC(v8);
}

uint64_t sub_20C03697C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_upNextQueueButtonPresenter);
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_20B6383D0(0, 0, v3, &unk_20C18A9D0, v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v4 + 48);
  *(v4 + 48) = sub_20C047D40;
  *(v4 + 56) = v7;

  sub_20B583ECC(v8);
}

uint64_t sub_20C036AEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_upNextQueueButtonPresenter);
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_20B6383D0(0, 0, v3, &unk_20C18A9C8, v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v4 + 48);
  *(v4 + 48) = sub_20C047C70;
  *(v4 + 56) = v7;

  sub_20B583ECC(v8);
}

uint64_t sub_20C036C5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_upNextQueueButtonPresenter);
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_20B6383D0(0, 0, v3, &unk_20C181438, v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v4 + 48);
  *(v4 + 48) = sub_20C04797C;
  *(v4 + 56) = v7;

  sub_20B583ECC(v8);
}

void sub_20C036DC8(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_20C035E48(a1, a3, a4);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    a5();
  }
}

uint64_t sub_20C036E7C()
{
  v1 = sub_20C1333A4();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_20C1352E4();
  v22 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C134F24();
  v11 = *(v23 - 8);
  v12 = MEMORY[0x28223BE20](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v0;
  (*(v11 + 104))(v14, *MEMORY[0x277D51488], v12);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v15 = *MEMORY[0x277D52390];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  v19 = v24;
  v18 = v25;
  (*(v24 + 16))(v3, *(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_metricPage, v25);
  type metadata accessor for GuidedWorkoutGalleryViewController();
  sub_20C048054(&qword_27C771F18, 255, type metadata accessor for GuidedWorkoutGalleryViewController);
  sub_20C138D94();
  (*(v19 + 8))(v3, v18);
  sub_20B520158(v6, &unk_27C7621D0);
  (*(v8 + 8))(v10, v22);
  return (*(v11 + 8))(v14, v23);
}

uint64_t sub_20C037274()
{
  v1 = sub_20C1333A4();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_20C1352E4();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C134F24();
  v11 = *(v21 - 8);
  v12 = MEMORY[0x28223BE20](v21);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v0;
  (*(v11 + 104))(v14, *MEMORY[0x277D51488], v12);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v15 = *MEMORY[0x277D52390];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_20BF7EB60(v3);
  type metadata accessor for TrainerDetailViewController();
  sub_20C048054(&qword_27C771F10, 255, type metadata accessor for TrainerDetailViewController);
  sub_20C138D94();
  (*(v22 + 8))(v3, v23);
  sub_20B520158(v6, &unk_27C7621D0);
  (*(v8 + 8))(v10, v20);
  return (*(v11 + 8))(v14, v21);
}

uint64_t sub_20C037640()
{
  v1 = sub_20C1333A4();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_20C1352E4();
  v22 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C134F24();
  v11 = *(v23 - 8);
  v12 = MEMORY[0x28223BE20](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v0;
  (*(v11 + 104))(v14, *MEMORY[0x277D51488], v12);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v15 = *MEMORY[0x277D52390];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  v19 = v24;
  v18 = v25;
  (*(v24 + 16))(v3, *(v0 + OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_metricPage, v25);
  type metadata accessor for LibraryGalleryViewController();
  sub_20C048054(&qword_27C771F08, 255, type metadata accessor for LibraryGalleryViewController);
  sub_20C138D94();
  (*(v19 + 8))(v3, v18);
  sub_20B520158(v6, &unk_27C7621D0);
  (*(v8 + 8))(v10, v22);
  return (*(v11 + 8))(v14, v23);
}

uint64_t sub_20C037A38()
{
  v1 = sub_20C1333A4();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_20C1352E4();
  v22 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C134F24();
  v11 = *(v23 - 8);
  v12 = MEMORY[0x28223BE20](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v0;
  (*(v11 + 104))(v14, *MEMORY[0x277D51488], v12);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v15 = *MEMORY[0x277D52390];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  v19 = v24;
  v18 = v25;
  (*(v24 + 16))(v3, *(v0 + OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPage, v25);
  type metadata accessor for ChartGalleryViewController();
  sub_20C048054(&qword_27C771F00, 255, type metadata accessor for ChartGalleryViewController);
  sub_20C138D94();
  (*(v19 + 8))(v3, v18);
  sub_20B520158(v6, &unk_27C7621D0);
  (*(v8 + 8))(v10, v22);
  return (*(v11 + 8))(v14, v23);
}

uint64_t sub_20C037E30()
{
  v1 = sub_20C1333A4();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_20C1352E4();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C134F24();
  v11 = *(v21 - 8);
  v12 = MEMORY[0x28223BE20](v21);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v0;
  (*(v11 + 104))(v14, *MEMORY[0x277D51488], v12);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v15 = *MEMORY[0x277D52390];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_20BF659E4(v3);
  type metadata accessor for CatalogEditorialCollectionDetailViewController();
  sub_20C048054(&qword_27C771EF8, 255, type metadata accessor for CatalogEditorialCollectionDetailViewController);
  sub_20C138D94();
  (*(v22 + 8))(v3, v23);
  sub_20B520158(v6, &unk_27C7621D0);
  (*(v8 + 8))(v10, v20);
  return (*(v11 + 8))(v14, v21);
}

uint64_t sub_20C0381FC()
{
  v1 = sub_20C1333A4();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_20C1352E4();
  v22 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C134F24();
  v11 = *(v23 - 8);
  v12 = MEMORY[0x28223BE20](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v0;
  (*(v11 + 104))(v14, *MEMORY[0x277D51488], v12);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v15 = *MEMORY[0x277D52390];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  v19 = v24;
  v18 = v25;
  (*(v24 + 16))(v3, *(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_metricPage, v25);
  type metadata accessor for EditorialGalleryViewController();
  sub_20C048054(&qword_27C771EF0, 255, type metadata accessor for EditorialGalleryViewController);
  sub_20C138D94();
  (*(v19 + 8))(v3, v18);
  sub_20B520158(v6, &unk_27C7621D0);
  (*(v8 + 8))(v10, v22);
  return (*(v11 + 8))(v14, v23);
}

uint64_t sub_20C0385F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v37 - v7;
  v8 = sub_20C1333A4();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v10 - 8);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = sub_20C1352E4();
  v16 = *(v15 - 8);
  v41 = v15;
  v42 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v18;
  v19 = sub_20C134F24();
  v20 = *(v19 - 8);
  v43 = v19;
  v44 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v1;
  (*(v24 + 104))(v23, *MEMORY[0x277D51488], v21);
  (*(v16 + 104))(v18, *MEMORY[0x277D51768], v15);
  v25 = *MEMORY[0x277D52390];
  v26 = sub_20C135ED4();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v14, v25, v26);
  v28 = *(v27 + 56);
  v28(v14, 0, 1, v26);
  v37 = *(*(*(v1 + OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider) + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v29 = *MEMORY[0x277D517F0];
  v30 = sub_20C1352F4();
  v31 = *(v30 - 8);
  v32 = v40;
  (*(v31 + 104))(v40, v29, v30);
  (*(v31 + 56))(v32, 0, 1, v30);

  sub_20C132C04();
  v28(v38, 1, 1, v26);
  v33 = sub_20C136914();
  (*(*(v33 - 8) + 56))(v47, 1, 1, v33);
  v34 = v45;
  sub_20C133384();
  type metadata accessor for RootViewController();
  sub_20C048054(&qword_27C771F20, 255, type metadata accessor for RootViewController);
  v35 = v39;
  sub_20C138D94();
  (*(v48 + 8))(v34, v49);
  sub_20B520158(v14, &unk_27C7621D0);
  (*(v42 + 8))(v35, v41);
  return (*(v44 + 8))(v23, v43);
}

uint64_t sub_20C038C44()
{
  v1 = sub_20C1333A4();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_20C1352E4();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C134F24();
  v11 = *(v21 - 8);
  v12 = MEMORY[0x28223BE20](v21);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v0;
  (*(v11 + 104))(v14, *MEMORY[0x277D51488], v12);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v15 = *MEMORY[0x277D52390];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_20C10FB64(v3);
  type metadata accessor for CatalogWorkoutDetailViewController();
  sub_20C048054(&qword_27C771EE8, 255, type metadata accessor for CatalogWorkoutDetailViewController);
  sub_20C138D94();
  (*(v22 + 8))(v3, v23);
  sub_20B520158(v6, &unk_27C7621D0);
  (*(v8 + 8))(v10, v20);
  return (*(v11 + 8))(v14, v21);
}

uint64_t sub_20C039010()
{
  v1 = sub_20C1333A4();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_20C1352E4();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C134F24();
  v11 = *(v21 - 8);
  v12 = MEMORY[0x28223BE20](v21);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v0;
  (*(v11 + 104))(v14, *MEMORY[0x277D51488], v12);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v15 = *MEMORY[0x277D52390];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_20BB9D2F0(v3);
  type metadata accessor for CatalogModalityDetailViewController();
  sub_20C048054(&qword_27C771EE0, 255, type metadata accessor for CatalogModalityDetailViewController);
  sub_20C138D94();
  (*(v22 + 8))(v3, v23);
  sub_20B520158(v6, &unk_27C7621D0);
  (*(v8 + 8))(v10, v20);
  return (*(v11 + 8))(v14, v21);
}

uint64_t sub_20C0393DC()
{
  v1 = sub_20C1333A4();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_20C1352E4();
  v21 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C134F24();
  v11 = *(v22 - 8);
  v12 = MEMORY[0x28223BE20](v22);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v0;
  (*(v11 + 104))(v14, *MEMORY[0x277D51488], v12);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v15 = *MEMORY[0x277D52390];
  v16 = sub_20C135ED4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_20BC93190(v3);
  type metadata accessor for CatalogProgramDetailViewController();
  sub_20C048054(&qword_27C771ED8, v18, type metadata accessor for CatalogProgramDetailViewController);
  sub_20C138D94();
  (*(v23 + 8))(v3, v24);
  sub_20B520158(v6, &unk_27C7621D0);
  (*(v8 + 8))(v10, v21);
  return (*(v11 + 8))(v14, v22);
}

uint64_t sub_20C03979C(void *a1, int a2)
{
  v103 = a2;
  v104 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v105 = *(v3 - 8);
  v106 = v3;
  MEMORY[0x28223BE20](v3);
  v97 = v4;
  v98 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = &v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7671C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v94 - v8;
  v10 = sub_20C137F24();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68);
  v14 = *(v96 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v94 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v113 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v101 = &v94 - v21;
  MEMORY[0x28223BE20](v22);
  v111 = &v94 - v23;
  MEMORY[0x28223BE20](v24);
  v110 = &v94 - v25;
  v95 = v26;
  MEMORY[0x28223BE20](v27);
  v112 = &v94 - v28;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v108 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  v107 = swift_allocBox();
  v31 = v30;
  v32 = sub_20C135734();
  (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  v109 = v2;
  v33 = *(v2 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider);
  v34 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_trainer;
  swift_beginAccess();
  sub_20B52F9E8(v33 + v34, v9, &qword_27C7671C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &qword_27C7671C0);
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D84F90];
    *(v35 + 16) = MEMORY[0x277D84F90];
    *(v35 + 24) = v36;
    sub_20C137CA4();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_20BC30188(*(v33 + 248));
    v38 = v37;
    v40 = v39;
    v41 = swift_allocObject();
    *(v41 + 16) = v38;
    *(v41 + 24) = v40;
    sub_20C137CA4();
    (*(v11 + 8))(v13, v10);
  }

  v42 = swift_allocObject();
  v43 = v108;
  *(v42 + 16) = sub_20C0480B4;
  *(v42 + 24) = v43;
  v44 = v94;
  v45 = v96;
  (*(v14 + 16))(v94, v18, v96);
  v46 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v47 = swift_allocObject();
  (*(v14 + 32))(v47 + v46, v44, v45);
  v48 = (v47 + ((v15 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v48 = sub_20B62EA58;
  v48[1] = v42;

  sub_20C137C94();
  (*(v14 + 8))(v18, v45);
  __swift_project_boxed_opaque_existential_1((v109 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_serviceSubscriptionCache), *(v109 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_serviceSubscriptionCache + 24));
  v49 = v99;
  sub_20C1392E4();
  v50 = swift_allocObject();
  v52 = v106;
  v51 = v107;
  *(v50 + 16) = sub_20C0480CC;
  *(v50 + 24) = v51;
  v53 = v105;
  v54 = v98;
  (*(v105 + 16))(v98, v49, v52);
  v55 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v56 = (v97 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  (*(v53 + 32))(v57 + v55, v54, v52);
  v58 = (v57 + v56);
  *v58 = sub_20B5DF4C8;
  v58[1] = v50;

  v59 = v111;
  sub_20C137C94();
  (*(v53 + 8))(v49, v52);
  v60 = swift_allocObject();
  v60[2] = 0xD00000000000002FLL;
  v60[3] = 0x800000020C19E960;
  v60[4] = 39;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v113;
  v105 = *(v113 + 16);
  v106 = v113 + 16;
  v63 = v101;
  v64 = v102;
  (v105)(v101, v59, v102);
  v65 = *(v62 + 80);
  v97 = (v65 + 16) & ~v65;
  v95 = (v95 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v95;
  v67 = swift_allocObject();
  v96 = *(v62 + 32);
  v98 = (v62 + 32);
  (v96)(v67 + ((v65 + 16) & ~v65), v63, v64);
  v68 = (v67 + v66);
  *v68 = sub_20B5DF4B0;
  v68[1] = v61;
  v69 = v110;
  sub_20C137C94();
  v70 = *(v62 + 8);
  v62 += 8;
  v99 = v70;
  (v70)(v59, v64);
  v113 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v71 = *(v62 + 64);
  v94 = v65;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_20C14F320;
  v73 = v72 + ((v65 + 32) & ~v65);
  v74 = v105;
  (v105)(v73, v112, v64);
  v74(v73 + v71, v69, v64);
  sub_20B51C88C(0, &qword_281100530);
  v75 = sub_20C13D374();
  sub_20C13A7C4();
  v76 = v63;
  sub_20C137C74();

  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = swift_allocObject();
  v79 = v107;
  *(v78 + 16) = v108;
  *(v78 + 24) = v79;
  v80 = v64;
  v81 = v104;
  *(v78 + 32) = v77;
  *(v78 + 40) = v81;
  *(v78 + 48) = v103 & 1;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_20C047E54;
  *(v82 + 24) = v78;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_20B849B38;
  *(v83 + 24) = v82;
  v84 = v100;
  (v105)(v100, v76, v64);
  v85 = v95;
  v86 = swift_allocObject();
  (v96)(v86 + v97, v84, v80);
  v87 = (v86 + v85);
  *v87 = sub_20B66A8B4;
  v87[1] = v83;

  v88 = v81;
  v89 = v111;
  sub_20C137C94();
  v90 = v99;
  (v99)(v76, v80);
  v91 = sub_20C137CB4();
  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  *(v92 + 24) = 0;
  v91(sub_20B5DF6DC, v92);

  v90(v89, v80);
  v90(v110, v80);
  v90(v112, v80);
}

uint64_t sub_20C03A3E4(void *a1, int a2)
{
  v3 = v2;
  v95 = a2;
  v94 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v89 = *(v4 - 8);
  v90 = v4;
  v88 = v89[8];
  MEMORY[0x28223BE20](v4);
  v86 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v81 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68);
  v8 = *(v83 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v83);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v100 = *(v92 - 8);
  v84 = v100[8];
  MEMORY[0x28223BE20](v92);
  v93 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v99 = &v81 - v18;
  MEMORY[0x28223BE20](v19);
  v98 = &v81 - v20;
  MEMORY[0x28223BE20](v21);
  v101 = &v81 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  v96 = swift_allocBox();
  v26 = v25;
  v27 = sub_20C135734();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v87 = v3;
  sub_20B722838();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20C0480B4;
  *(v28 + 24) = v24;
  v91 = v24;
  v29 = v83;
  (*(v8 + 16))(v10, v13, v83);
  v30 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v31 = (v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v8 + 32))(v32 + v30, v10, v29);
  v33 = (v32 + v31);
  *v33 = sub_20B62EA58;
  v33[1] = v28;

  sub_20C137C94();
  (*(v8 + 8))(v13, v29);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_serviceSubscriptionCache), *(v3 + OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_serviceSubscriptionCache + 24));
  v34 = v85;
  sub_20C1392E4();
  v35 = swift_allocObject();
  v36 = v96;
  *(v35 + 16) = sub_20C0480CC;
  *(v35 + 24) = v36;
  v37 = v89;
  v38 = v90;
  v39 = v86;
  (v89[2])(v86, v34, v90);
  v40 = v37;
  v41 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v42 = (v88 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (v40[4])(v43 + v41, v39, v38);
  v44 = (v43 + v42);
  *v44 = sub_20B5DF4C8;
  v44[1] = v35;

  v45 = v99;
  sub_20C137C94();
  (v40[1])(v34, v38);
  v46 = swift_allocObject();
  v46[2] = 0xD00000000000002FLL;
  v46[3] = 0x800000020C19E960;
  v46[4] = 39;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF5EC;
  *(v47 + 24) = v46;
  v48 = v100;
  v49 = v100[2];
  v81 = v100 + 2;
  v50 = v97;
  v51 = v92;
  v49(v97, v45, v92);
  v52 = *(v48 + 80);
  v53 = v48;
  v88 = (v52 + 16) & ~v52;
  v54 = (v84 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = v54;
  v55 = swift_allocObject();
  v86 = v53[4];
  v89 = v53 + 4;
  (v86)(v55 + ((v52 + 16) & ~v52), v50, v51);
  v56 = (v55 + v54);
  *v56 = sub_20B5DF4B0;
  v56[1] = v47;
  v57 = v98;
  sub_20C137C94();
  v90 = v53[1];
  v58 = v51;
  v90(v99, v51);
  v100 = v53 + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v59 = v53[9];
  v83 = v52;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_20C14F320;
  v61 = v60 + ((v52 + 32) & ~v52);
  v82 = v49;
  v49(v61, v101, v58);
  v49((v61 + v59), v57, v58);
  sub_20B51C88C(0, &qword_281100530);
  v62 = sub_20C13D374();
  sub_20C13A7C4();
  v63 = v97;
  sub_20C137C74();

  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = swift_allocObject();
  v66 = v96;
  *(v65 + 16) = v91;
  *(v65 + 24) = v66;
  v67 = v94;
  *(v65 + 32) = v64;
  *(v65 + 40) = v67;
  *(v65 + 48) = v95 & 1;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_20C047CB0;
  *(v68 + 24) = v65;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_20B849B38;
  *(v69 + 24) = v68;
  v70 = v93;
  v82(v93, v63, v58);
  v71 = v85;
  v72 = swift_allocObject();
  (v86)(v72 + v88, v70, v58);
  v73 = &v71[v72];
  *v73 = sub_20B66A8B4;
  v73[1] = v69;

  v74 = v67;
  v75 = v99;
  sub_20C137C94();
  v76 = v63;
  v77 = v90;
  v90(v76, v58);
  v78 = sub_20C137CB4();
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  v78(sub_20B5DF6DC, v79);

  v77(v75, v58);
  v77(v98, v58);
  v77(v101, v58);
}

uint64_t sub_20C03AE14(void *a1, int a2)
{
  v3 = v2;
  v95 = a2;
  v94 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v89 = *(v4 - 8);
  v90 = v4;
  v88 = v89[8];
  MEMORY[0x28223BE20](v4);
  v86 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v81 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68);
  v8 = *(v83 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v83);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v100 = *(v92 - 8);
  v84 = v100[8];
  MEMORY[0x28223BE20](v92);
  v93 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v99 = &v81 - v18;
  MEMORY[0x28223BE20](v19);
  v98 = &v81 - v20;
  MEMORY[0x28223BE20](v21);
  v101 = &v81 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  v96 = swift_allocBox();
  v26 = v25;
  v27 = sub_20C135734();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v87 = v3;
  sub_20B62BDC4(v13);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20C0480B4;
  *(v28 + 24) = v24;
  v91 = v24;
  v29 = v83;
  (*(v8 + 16))(v10, v13, v83);
  v30 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v31 = (v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v8 + 32))(v32 + v30, v10, v29);
  v33 = (v32 + v31);
  *v33 = sub_20B62EA58;
  v33[1] = v28;

  sub_20C137C94();
  (*(v8 + 8))(v13, v29);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_serviceSubscriptionCache), *(v3 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_serviceSubscriptionCache + 24));
  v34 = v85;
  sub_20C1392E4();
  v35 = swift_allocObject();
  v36 = v96;
  *(v35 + 16) = sub_20C0480CC;
  *(v35 + 24) = v36;
  v37 = v89;
  v38 = v90;
  v39 = v86;
  (v89[2])(v86, v34, v90);
  v40 = v37;
  v41 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v42 = (v88 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (v40[4])(v43 + v41, v39, v38);
  v44 = (v43 + v42);
  *v44 = sub_20B5DF4C8;
  v44[1] = v35;

  v45 = v99;
  sub_20C137C94();
  (v40[1])(v34, v38);
  v46 = swift_allocObject();
  v46[2] = 0xD00000000000002FLL;
  v46[3] = 0x800000020C19E960;
  v46[4] = 39;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF5EC;
  *(v47 + 24) = v46;
  v48 = v100;
  v49 = v100[2];
  v81 = v100 + 2;
  v50 = v97;
  v51 = v92;
  v49(v97, v45, v92);
  v52 = *(v48 + 80);
  v53 = v48;
  v88 = (v52 + 16) & ~v52;
  v54 = (v84 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = v54;
  v55 = swift_allocObject();
  v86 = v53[4];
  v89 = v53 + 4;
  (v86)(v55 + ((v52 + 16) & ~v52), v50, v51);
  v56 = (v55 + v54);
  *v56 = sub_20B5DF4B0;
  v56[1] = v47;
  v57 = v98;
  sub_20C137C94();
  v90 = v53[1];
  v58 = v51;
  v90(v99, v51);
  v100 = v53 + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v59 = v53[9];
  v83 = v52;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_20C14F320;
  v61 = v60 + ((v52 + 32) & ~v52);
  v82 = v49;
  v49(v61, v101, v58);
  v49((v61 + v59), v57, v58);
  sub_20B51C88C(0, &qword_281100530);
  v62 = sub_20C13D374();
  sub_20C13A7C4();
  v63 = v97;
  sub_20C137C74();

  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = swift_allocObject();
  v66 = v96;
  *(v65 + 16) = v91;
  *(v65 + 24) = v66;
  v67 = v94;
  *(v65 + 32) = v64;
  *(v65 + 40) = v67;
  *(v65 + 48) = v95 & 1;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_20C047B58;
  *(v68 + 24) = v65;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_20B849B38;
  *(v69 + 24) = v68;
  v70 = v93;
  v82(v93, v63, v58);
  v71 = v85;
  v72 = swift_allocObject();
  (v86)(v72 + v88, v70, v58);
  v73 = &v71[v72];
  *v73 = sub_20B66A8B4;
  v73[1] = v69;

  v74 = v67;
  v75 = v99;
  sub_20C137C94();
  v76 = v63;
  v77 = v90;
  v90(v76, v58);
  v78 = sub_20C137CB4();
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  v78(sub_20B5DF6DC, v79);

  v77(v75, v58);
  v77(v98, v58);
  v77(v101, v58);
}

uint64_t sub_20C03B844(void *a1, int a2)
{
  v103 = a2;
  v104 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v105 = *(v3 - 8);
  v106 = v3;
  MEMORY[0x28223BE20](v3);
  v97 = v4;
  v98 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = &v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v94 - v8;
  v10 = sub_20C134734();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68);
  v14 = *(v96 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v94 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v113 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v101 = &v94 - v21;
  MEMORY[0x28223BE20](v22);
  v111 = &v94 - v23;
  MEMORY[0x28223BE20](v24);
  v110 = &v94 - v25;
  v95 = v26;
  MEMORY[0x28223BE20](v27);
  v112 = &v94 - v28;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v108 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  v107 = swift_allocBox();
  v31 = v30;
  v32 = sub_20C135734();
  (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  v109 = v2;
  v33 = *(v2 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider);
  v34 = OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_modality;
  swift_beginAccess();
  sub_20B52F9E8(v33 + v34, v9, &unk_27C7710A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &unk_27C7710A0);
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D84F90];
    *(v35 + 16) = MEMORY[0x277D84F90];
    *(v35 + 24) = v36;
    sub_20C137CA4();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_20BC301D0(*(v33 + 248));
    v38 = v37;
    v40 = v39;
    v41 = swift_allocObject();
    *(v41 + 16) = v38;
    *(v41 + 24) = v40;
    sub_20C137CA4();
    (*(v11 + 8))(v13, v10);
  }

  v42 = swift_allocObject();
  v43 = v108;
  *(v42 + 16) = sub_20C0480B4;
  *(v42 + 24) = v43;
  v44 = v94;
  v45 = v96;
  (*(v14 + 16))(v94, v18, v96);
  v46 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v47 = swift_allocObject();
  (*(v14 + 32))(v47 + v46, v44, v45);
  v48 = (v47 + ((v15 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v48 = sub_20B62EA58;
  v48[1] = v42;

  sub_20C137C94();
  (*(v14 + 8))(v18, v45);
  __swift_project_boxed_opaque_existential_1((v109 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_serviceSubscriptionCache), *(v109 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_serviceSubscriptionCache + 24));
  v49 = v99;
  sub_20C1392E4();
  v50 = swift_allocObject();
  v52 = v106;
  v51 = v107;
  *(v50 + 16) = sub_20C0480CC;
  *(v50 + 24) = v51;
  v53 = v105;
  v54 = v98;
  (*(v105 + 16))(v98, v49, v52);
  v55 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v56 = (v97 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  (*(v53 + 32))(v57 + v55, v54, v52);
  v58 = (v57 + v56);
  *v58 = sub_20B5DF4C8;
  v58[1] = v50;

  v59 = v111;
  sub_20C137C94();
  (*(v53 + 8))(v49, v52);
  v60 = swift_allocObject();
  v60[2] = 0xD00000000000002FLL;
  v60[3] = 0x800000020C19E960;
  v60[4] = 39;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v113;
  v105 = *(v113 + 16);
  v106 = v113 + 16;
  v63 = v101;
  v64 = v102;
  (v105)(v101, v59, v102);
  v65 = *(v62 + 80);
  v97 = (v65 + 16) & ~v65;
  v95 = (v95 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v95;
  v67 = swift_allocObject();
  v96 = *(v62 + 32);
  v98 = (v62 + 32);
  (v96)(v67 + ((v65 + 16) & ~v65), v63, v64);
  v68 = (v67 + v66);
  *v68 = sub_20B5DF4B0;
  v68[1] = v61;
  v69 = v110;
  sub_20C137C94();
  v70 = *(v62 + 8);
  v62 += 8;
  v99 = v70;
  (v70)(v59, v64);
  v113 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v71 = *(v62 + 64);
  v94 = v65;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_20C14F320;
  v73 = v72 + ((v65 + 32) & ~v65);
  v74 = v105;
  (v105)(v73, v112, v64);
  v74(v73 + v71, v69, v64);
  sub_20B51C88C(0, &qword_281100530);
  v75 = sub_20C13D374();
  sub_20C13A7C4();
  v76 = v63;
  sub_20C137C74();

  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = swift_allocObject();
  v79 = v107;
  *(v78 + 16) = v108;
  *(v78 + 24) = v79;
  v80 = v64;
  v81 = v104;
  *(v78 + 32) = v77;
  *(v78 + 40) = v81;
  *(v78 + 48) = v103 & 1;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_20C047AA0;
  *(v82 + 24) = v78;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_20B849B38;
  *(v83 + 24) = v82;
  v84 = v100;
  (v105)(v100, v76, v64);
  v85 = v95;
  v86 = swift_allocObject();
  (v96)(v86 + v97, v84, v80);
  v87 = (v86 + v85);
  *v87 = sub_20B66A8B4;
  v87[1] = v83;

  v88 = v81;
  v89 = v111;
  sub_20C137C94();
  v90 = v99;
  (v99)(v76, v80);
  v91 = sub_20C137CB4();
  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  *(v92 + 24) = 0;
  v91(sub_20B5DF6DC, v92);

  v90(v89, v80);
  v90(v110, v80);
  v90(v112, v80);
}

uint64_t sub_20C03C48C(void *a1, int a2)
{
  v3 = v2;
  v95 = a2;
  v94 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v89 = *(v4 - 8);
  v90 = v4;
  v88 = v89[8];
  MEMORY[0x28223BE20](v4);
  v86 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v81 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68);
  v8 = *(v83 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v83);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v100 = *(v92 - 8);
  v84 = v100[8];
  MEMORY[0x28223BE20](v92);
  v93 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v99 = &v81 - v18;
  MEMORY[0x28223BE20](v19);
  v98 = &v81 - v20;
  MEMORY[0x28223BE20](v21);
  v101 = &v81 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  v96 = swift_allocBox();
  v26 = v25;
  v27 = sub_20C135734();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v87 = v3;
  sub_20BE8019C(v13);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20C047814;
  *(v28 + 24) = v24;
  v91 = v24;
  v29 = v83;
  (*(v8 + 16))(v10, v13, v83);
  v30 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v31 = (v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v8 + 32))(v32 + v30, v10, v29);
  v33 = (v32 + v31);
  *v33 = sub_20B62E604;
  v33[1] = v28;

  sub_20C137C94();
  (*(v8 + 8))(v13, v29);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_serviceSubscriptionCache), *(v3 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_serviceSubscriptionCache + 24));
  v34 = v85;
  sub_20C1392E4();
  v35 = swift_allocObject();
  v36 = v96;
  *(v35 + 16) = sub_20C047858;
  *(v35 + 24) = v36;
  v37 = v89;
  v38 = v90;
  v39 = v86;
  (v89[2])(v86, v34, v90);
  v40 = v37;
  v41 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v42 = (v88 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (v40[4])(v43 + v41, v39, v38);
  v44 = (v43 + v42);
  *v44 = sub_20B5D9E70;
  v44[1] = v35;

  v45 = v99;
  sub_20C137C94();
  (v40[1])(v34, v38);
  v46 = swift_allocObject();
  v46[2] = 0xD00000000000002FLL;
  v46[3] = 0x800000020C19E960;
  v46[4] = 39;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5D9EA0;
  *(v47 + 24) = v46;
  v48 = v100;
  v49 = v100[2];
  v81 = v100 + 2;
  v50 = v97;
  v51 = v92;
  v49(v97, v45, v92);
  v52 = *(v48 + 80);
  v53 = v48;
  v88 = (v52 + 16) & ~v52;
  v54 = (v84 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = v54;
  v55 = swift_allocObject();
  v86 = v53[4];
  v89 = v53 + 4;
  (v86)(v55 + ((v52 + 16) & ~v52), v50, v51);
  v56 = (v55 + v54);
  *v56 = sub_20B5D9EC0;
  v56[1] = v47;
  v57 = v98;
  sub_20C137C94();
  v90 = v53[1];
  v58 = v51;
  v90(v99, v51);
  v100 = v53 + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v59 = v53[9];
  v83 = v52;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_20C14F320;
  v61 = v60 + ((v52 + 32) & ~v52);
  v82 = v49;
  v49(v61, v101, v58);
  v49((v61 + v59), v57, v58);
  sub_20B51C88C(0, &qword_281100530);
  v62 = sub_20C13D374();
  sub_20C13A7C4();
  v63 = v97;
  sub_20C137C74();

  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = swift_allocObject();
  v66 = v96;
  *(v65 + 16) = v91;
  *(v65 + 24) = v66;
  v67 = v94;
  *(v65 + 32) = v64;
  *(v65 + 40) = v67;
  *(v65 + 48) = v95 & 1;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_20C0478C4;
  *(v68 + 24) = v65;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_20B622D08;
  *(v69 + 24) = v68;
  v70 = v93;
  v82(v93, v63, v58);
  v71 = v85;
  v72 = swift_allocObject();
  (v86)(v72 + v88, v70, v58);
  v73 = &v71[v72];
  *v73 = sub_20B5DF3D4;
  v73[1] = v69;

  v74 = v67;
  v75 = v99;
  sub_20C137C94();
  v76 = v63;
  v77 = v90;
  v90(v76, v58);
  v78 = sub_20C137CB4();
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  v78(sub_20B52347C, v79);

  v77(v75, v58);
  v77(v98, v58);
  v77(v101, v58);
}

void sub_20C03CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v86 = a5;
  v87 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v77 - v10;
  v94 = sub_20C134014();
  v88 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_20C134F24();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v77 - v18;
  v19 = sub_20C132E94();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C135734();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_projectBox();
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    v32 = sub_20C133C44();
    sub_20C048054(&qword_27C7662C8, 255, MEMORY[0x277D50320]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D50318], v32);
    swift_willThrow();
    return;
  }

  v80 = a4;
  v28 = *(a1 + 24);
  swift_beginAccess();
  if ((*(v24 + 48))(v27, 1, v23))
  {

    v29 = v93;
    v30 = v94;
    v31 = v28;
  }

  else
  {
    (*(v24 + 16))(v26, v27, v23);

    sub_20C132E84();
    v34 = sub_20C135704();
    (*(v20 + 8))(v22, v19);
    (*(v24 + 8))(v26, v23);
    v29 = v93;
    v30 = v94;
    v31 = v28;
    if (v34)
    {
      v35 = MEMORY[0x277D84F90];
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C14F980;
  v36 = *MEMORY[0x277D54790];
  *(v35 + 32) = *MEMORY[0x277D54790];
  v37 = v36;
LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    (*(v88 + 56))(v29, 1, 1, v30);
    v40 = *(v90 + 104);
    v79 = *MEMORY[0x277D51390];
    v78 = v40;
    v40(v89);
    v41 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v42 = sub_20C13CC54();
    sub_20B51C88C(0, &qword_27C7670A8);
    v87 = v31;
    v43 = sub_20C13CC54();
    v44 = [v41 initWithActivityItems:v42 applicationActivities:v43];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C1517D0;
    v46 = *MEMORY[0x277D54778];
    v47 = *MEMORY[0x277D54718];
    *(inited + 32) = *MEMORY[0x277D54778];
    *(inited + 40) = v47;
    v48 = *MEMORY[0x277D54780];
    *(inited + 48) = *MEMORY[0x277D54780];
    v49 = qword_27C760900;
    v50 = v46;
    v51 = v47;
    v52 = v48;
    if (v49 != -1)
    {
      swift_once();
    }

    aBlock[24] = qword_27C79B2E0;

    sub_20B8DA2C0(inited);
    sub_20B8DA2C0(v35);
    type metadata accessor for ActivityType(0);
    v53 = sub_20C13CC54();

    [v44 setExcludedActivityTypes_];

    v54 = [v44 popoverPresentationController];
    if (v54)
    {
      v55 = &selRef_setSourceView_;
      if ((v86 & 1) == 0)
      {
        v55 = &selRef_setBarButtonItem_;
      }

      v56 = v54;
      [v54 *v55];
    }

    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_20C047D08;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B8AE2E8;
    aBlock[3] = &block_descriptor_272;
    v58 = _Block_copy(aBlock);

    [v44 setCompletionWithItemsHandler_];
    _Block_release(v58);
    v59 = [v39 navigationController];
    v60 = v93;
    v61 = v85;
    v62 = v94;
    if (v59)
    {
      v63 = v59;
      [v59 presentViewController:v44 animated:1 completion:0];
    }

    sub_20B52F9E8(v60, v61, &unk_27C769C20);
    v64 = v88;
    if ((*(v88 + 48))(v61, 1, v62) == 1)
    {
      sub_20B520158(v61, &unk_27C769C20);
      v65 = sub_20C136664();
      v66 = v84;
      (*(*(v65 - 8) + 56))(v84, 1, 1, v65);
      v67 = v81;
      v68 = v91;
      v78(v81, v79, v91);
      sub_20C041E70(v67, v66);

      v69 = *(v90 + 8);
      v69(v67, v68);
      sub_20B520158(v66, &unk_27C7622E0);
      v69(v89, v68);
      v70 = v60;
    }

    else
    {
      v71 = v82;
      (*(v64 + 32))(v82, v61, v62);
      v72 = sub_20C136664();
      v73 = *(v72 - 8);
      v74 = MEMORY[0x277D52B28];
      if ((v86 & 1) == 0)
      {
        v74 = MEMORY[0x277D52B30];
      }

      v75 = v83;
      (*(*(v72 - 8) + 104))(v83, *v74, v72);
      (*(v73 + 56))(v75, 0, 1, v72);
      v76 = v89;
      sub_20C0431F0(v71, v89, v75);

      sub_20B520158(v75, &unk_27C7622E0);
      (*(v64 + 8))(v71, v94);
      (*(v90 + 8))(v76, v91);
      v70 = v60;
    }

    sub_20B520158(v70, &unk_27C769C20);
  }

  else
  {
  }
}

void sub_20C03DAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v83 = a5;
  v81 = a4;
  v84 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = &v76 - v9;
  v90 = sub_20C134014();
  v86 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v78 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_20C134F24();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v77 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = &v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  MEMORY[0x28223BE20](v14 - 8);
  v82 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v91 = &v76 - v17;
  v18 = sub_20C132E94();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C135734();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_projectBox();
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    v30 = sub_20C133C44();
    sub_20C048054(&qword_27C7662C8, 255, MEMORY[0x277D50320]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D50318], v30);
    swift_willThrow();
    return;
  }

  v27 = *(a1 + 24);
  swift_beginAccess();
  v28 = (*(v23 + 48))(v26, 1, v22);
  v85 = v27;
  if (v28)
  {

    v29 = v91;
  }

  else
  {
    (*(v23 + 16))(v25, v26, v22);

    sub_20C132E84();
    v32 = sub_20C135704();
    (*(v19 + 8))(v21, v18);
    (*(v23 + 8))(v25, v22);
    v29 = v91;
    if (v32)
    {
      v33 = MEMORY[0x277D84F90];
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_20C14F980;
  v34 = *MEMORY[0x277D54790];
  *(v33 + 32) = *MEMORY[0x277D54790];
  v35 = v34;
LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    (*(v86 + 56))(v29, 1, 1, v90);
    v38 = *(v88 + 104);
    LODWORD(v84) = *MEMORY[0x277D51390];
    v76 = v38;
    v38(v87);
    v39 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v40 = sub_20C13CC54();
    sub_20B51C88C(0, &qword_27C7670A8);
    v41 = sub_20C13CC54();
    v42 = [v39 initWithActivityItems:v40 applicationActivities:v41];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C1517D0;
    v44 = *MEMORY[0x277D54778];
    v45 = *MEMORY[0x277D54718];
    *(inited + 32) = *MEMORY[0x277D54778];
    *(inited + 40) = v45;
    v46 = *MEMORY[0x277D54780];
    *(inited + 48) = *MEMORY[0x277D54780];
    v47 = qword_27C760900;
    v48 = v44;
    v49 = v45;
    v50 = v46;
    if (v47 != -1)
    {
      swift_once();
    }

    aBlock[24] = qword_27C79B2E0;

    sub_20B8DA2C0(inited);
    sub_20B8DA2C0(v33);
    type metadata accessor for ActivityType(0);
    v51 = sub_20C13CC54();

    [v42 setExcludedActivityTypes_];

    v52 = [v42 popoverPresentationController];
    if (v52)
    {
      v53 = &selRef_setSourceView_;
      if ((v83 & 1) == 0)
      {
        v53 = &selRef_setBarButtonItem_;
      }

      v54 = v52;
      [v52 *v53];
    }

    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_20C047B84;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B8AE2E8;
    aBlock[3] = &block_descriptor_207;
    v56 = _Block_copy(aBlock);

    [v42 setCompletionWithItemsHandler_];
    _Block_release(v56);
    v57 = [v37 navigationController];
    v58 = v91;
    v59 = v82;
    if (v57)
    {
      v60 = v57;
      [v57 presentViewController:v42 animated:1 completion:0];
    }

    sub_20B52F9E8(v58, v59, &unk_27C769C20);
    v61 = v86;
    v62 = v90;
    if ((*(v86 + 48))(v59, 1, v90) == 1)
    {
      sub_20B520158(v59, &unk_27C769C20);
      v63 = sub_20C136664();
      v64 = v79;
      (*(*(v63 - 8) + 56))(v79, 1, 1, v63);
      v65 = v77;
      v66 = v89;
      v76(v77, v84, v89);
      sub_20C04281C(v65, v64);

      v67 = *(v88 + 8);
      v67(v65, v66);
      sub_20B520158(v64, &unk_27C7622E0);
      v67(v87, v66);
      v68 = v91;
    }

    else
    {
      v69 = v78;
      (*(v61 + 32))(v78, v59, v62);
      v70 = v61;
      v71 = sub_20C136664();
      v72 = *(v71 - 8);
      v73 = MEMORY[0x277D52B28];
      if ((v83 & 1) == 0)
      {
        v73 = MEMORY[0x277D52B30];
      }

      v74 = v80;
      (*(*(v71 - 8) + 104))(v80, *v73, v71);
      (*(v72 + 56))(v74, 0, 1, v71);
      v75 = v87;
      sub_20C043B9C(v69, v87, v74, sub_20C10FB64, sub_20C044E90);

      sub_20B520158(v74, &unk_27C7622E0);
      (*(v70 + 8))(v69, v90);
      (*(v88 + 8))(v75, v89);
      v68 = v91;
    }

    sub_20B520158(v68, &unk_27C769C20);
  }

  else
  {
  }
}

void sub_20C03E73C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), unsigned int *a11)
{
  v93 = a8;
  v92 = a7;
  v91 = a6;
  v94 = a5;
  v90 = a4;
  v95 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v12 - 8);
  v89 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v88 = &v83 - v15;
  v99 = sub_20C134014();
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v87 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C134F24();
  v98 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v86 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = &v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  MEMORY[0x28223BE20](v21 - 8);
  v96 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = &v83 - v24;
  v25 = sub_20C132E94();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C135734();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_projectBox();
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    v39 = sub_20C133C44();
    sub_20C048054(&qword_27C7662C8, 255, MEMORY[0x277D50320]);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D50318], v39);
    swift_willThrow();
    return;
  }

  v34 = *(a1 + 24);
  swift_beginAccess();
  if ((*(v30 + 48))(v33, 1, v29))
  {

    v35 = v17;
    v36 = v101;
    v37 = v100;
    v38 = v96;
  }

  else
  {
    (*(v30 + 16))(v32, v33, v29);

    sub_20C132E84();
    v41 = sub_20C135704();
    (*(v26 + 8))(v28, v25);
    (*(v30 + 8))(v32, v29);
    v35 = v17;
    v36 = v101;
    v37 = v100;
    v38 = v96;
    if (v41)
    {
      v42 = MEMORY[0x277D84F90];
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C14F980;
  v43 = *MEMORY[0x277D54790];
  *(v42 + 32) = *MEMORY[0x277D54790];
  v44 = v43;
LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46 = Strong;
    (*(v37 + 56))(v36, 1, 1, v99);
    v47 = *(v98 + 104);
    v85 = *MEMORY[0x277D51390];
    v95 = v35;
    v84 = v47;
    v47(v97);
    v48 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v49 = sub_20C13CC54();
    sub_20B51C88C(0, &qword_27C7670A8);
    v96 = v34;
    v50 = sub_20C13CC54();
    v51 = [v48 initWithActivityItems:v49 applicationActivities:v50];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C1517D0;
    v53 = *MEMORY[0x277D54778];
    v54 = *MEMORY[0x277D54718];
    *(inited + 32) = *MEMORY[0x277D54778];
    *(inited + 40) = v54;
    v55 = *MEMORY[0x277D54780];
    *(inited + 48) = *MEMORY[0x277D54780];
    v56 = qword_27C760900;
    v57 = v53;
    v58 = v54;
    v59 = v55;
    if (v56 != -1)
    {
      swift_once();
    }

    aBlock[24] = qword_27C79B2E0;

    sub_20B8DA2C0(inited);
    sub_20B8DA2C0(v42);
    type metadata accessor for ActivityType(0);
    v60 = sub_20C13CC54();

    [v51 setExcludedActivityTypes_];

    v61 = [v51 popoverPresentationController];
    if (v61)
    {
      v62 = &selRef_setSourceView_;
      if ((v94 & 1) == 0)
      {
        v62 = &selRef_setBarButtonItem_;
      }

      v63 = v61;
      [v61 *v62];
    }

    v90 = a10;
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = v92;
    aBlock[5] = v64;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B8AE2E8;
    aBlock[3] = v93;
    v65 = _Block_copy(aBlock);

    [v51 setCompletionWithItemsHandler_];
    _Block_release(v65);
    v66 = [v46 navigationController];
    v67 = v101;
    v68 = v99;
    if (v66)
    {
      v69 = v66;
      [v66 presentViewController:v51 animated:1 completion:0];
    }

    sub_20B52F9E8(v67, v38, &unk_27C769C20);
    v70 = v100;
    if ((*(v100 + 48))(v38, 1, v68) == 1)
    {
      sub_20B520158(v38, &unk_27C769C20);
      v71 = sub_20C136664();
      v72 = v89;
      (*(*(v71 - 8) + 56))(v89, 1, 1, v71);
      v73 = v86;
      v74 = v95;
      v84(v86, v85, v95);
      sub_20C042CF8(v73, v72, a11, v90);

      v75 = *(v98 + 8);
      v75(v73, v74);
      sub_20B520158(v72, &unk_27C7622E0);
      v75(v97, v74);
      v76 = v67;
    }

    else
    {
      v77 = v87;
      (*(v70 + 32))(v87, v38, v68);
      v78 = sub_20C136664();
      v79 = *(v78 - 8);
      v80 = MEMORY[0x277D52B28];
      if ((v94 & 1) == 0)
      {
        v80 = MEMORY[0x277D52B30];
      }

      v81 = v88;
      (*(*(v78 - 8) + 104))(v88, *v80, v78);
      (*(v79 + 56))(v81, 0, 1, v78);
      v82 = v97;
      sub_20C043B9C(v77, v97, v81, v90, sub_20C045580);

      sub_20B520158(v81, &unk_27C7622E0);
      (*(v70 + 8))(v77, v99);
      (*(v98 + 8))(v82, v95);
      v76 = v67;
    }

    sub_20B520158(v76, &unk_27C769C20);
  }

  else
  {
  }
}

void sub_20C03F3E4(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(id))
{
  if ((a2 & 1) != 0 && a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = a1;

      a7(v11);
    }
  }
}

void sub_20C03F4B0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, void (*a8)(uint64_t))
{
  if ((a2 & 1) != 0 && a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = a1;

      sub_20C040F08(v13, a7, a8);
    }
  }
}

uint64_t sub_20C03F564(uint64_t a1)
{
  v29[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v1 - 8);
  v32 = v29 - v2;
  v31 = sub_20C1352E4();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v29 - v9;
  v11 = sub_20C134F24();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v29 - v15;
  v29[0] = sub_20C133654();
  v17 = *(v29[0] - 8);
  MEMORY[0x28223BE20](v29[0]);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *MEMORY[0x277D52B30];
  v21 = sub_20C136664();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v16, v20, v21);
  (*(v22 + 56))(v16, 0, 1, v21);
  sub_20BD97058(v13);
  v23 = sub_20C132C14();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  v24 = *MEMORY[0x277D52408];
  v25 = sub_20C135ED4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v7, v24, v25);
  (*(v26 + 56))(v7, 0, 1, v25);
  (*(v3 + 104))(v30, *MEMORY[0x277D51768], v31);
  v27 = sub_20C136E94();
  (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  sub_20C133644();
  sub_20C044E90(v19, sub_20B5893F4);
  return (*(v17 + 8))(v19, v29[0]);
}

uint64_t sub_20C03FA4C(uint64_t a1)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v1 - 8);
  v40 = &v33 - v2;
  v3 = sub_20C1352E4();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v36 = &v33 - v9;
  v10 = sub_20C134F24();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_20C133654();
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v33 - v20;
  sub_20C134414();
  v22 = sub_20C135B04();
  v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
  result = sub_20B520158(v21, &qword_27C763250);
  if (v23 == 1)
  {
    v25 = *MEMORY[0x277D52B30];
    v26 = sub_20C136664();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v15, v25, v26);
    (*(v27 + 56))(v15, 0, 1, v26);
    sub_20BD97058(v12);
    v28 = sub_20C132C14();
    (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
    v35 = sub_20C134324();
    v29 = *MEMORY[0x277D52408];
    v30 = sub_20C135ED4();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v7, v29, v30);
    (*(v31 + 56))(v7, 0, 1, v30);
    (*(v37 + 104))(v39, *MEMORY[0x277D51768], v38);
    v32 = sub_20C136E94();
    (*(*(v32 - 8) + 56))(v40, 1, 1, v32);
    sub_20C133644();
    sub_20C044070(v18, sub_20BFB4810, &OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_dependencies);
    return (*(v33 + 8))(v18, v34);
  }

  return result;
}

uint64_t sub_20C04002C(uint64_t a1)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v29 - v2;
  v3 = sub_20C1352E4();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v29 = &v29 - v9;
  v11 = sub_20C134F24();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - v15;
  v30 = sub_20C133654();
  v17 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *MEMORY[0x277D52B30];
  v21 = sub_20C136664();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v16, v20, v21);
  (*(v22 + 56))(v16, 0, 1, v21);
  sub_20BD97058(v13);
  v23 = sub_20C132C14();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  v24 = *MEMORY[0x277D523C8];
  v25 = sub_20C135ED4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v7, v24, v25);
  (*(v26 + 56))(v7, 0, 1, v25);
  (*(v33 + 104))(v32, *MEMORY[0x277D51768], v34);
  v27 = sub_20C136E94();
  (*(*(v27 - 8) + 56))(v35, 1, 1, v27);

  sub_20C133644();
  sub_20C044070(v19, sub_20BF659E4, &OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_dependencies);
  return (*(v17 + 8))(v19, v30);
}

uint64_t sub_20C04053C(uint64_t a1)
{
  v29[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v1 - 8);
  v32 = v29 - v2;
  v31 = sub_20C1352E4();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v29 - v9;
  v11 = sub_20C134F24();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v29 - v15;
  v29[0] = sub_20C133654();
  v17 = *(v29[0] - 8);
  MEMORY[0x28223BE20](v29[0]);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *MEMORY[0x277D52B30];
  v21 = sub_20C136664();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v16, v20, v21);
  (*(v22 + 56))(v16, 0, 1, v21);
  sub_20BD97058(v13);
  v23 = sub_20C132C14();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  v24 = *MEMORY[0x277D52408];
  v25 = sub_20C135ED4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v7, v24, v25);
  (*(v26 + 56))(v7, 0, 1, v25);
  (*(v3 + 104))(v30, *MEMORY[0x277D51768], v31);
  v27 = sub_20C136E94();
  (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  sub_20C133644();
  sub_20C044770(v19);
  return (*(v17 + 8))(v19, v29[0]);
}

uint64_t sub_20C040A10(uint64_t a1)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - v3;
  v4 = sub_20C1352E4();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v30 = &v30 - v10;
  v12 = sub_20C134F24();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v32 = sub_20C133654();
  v18 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *MEMORY[0x277D52B30];
  v22 = sub_20C136664();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v17, v21, v22);
  (*(v23 + 56))(v17, 0, 1, v22);
  sub_20BD97058(v14);
  v24 = sub_20C132C14();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v31 = v1;
  v25 = *MEMORY[0x277D52408];
  v26 = sub_20C135ED4();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v8, v25, v26);
  (*(v27 + 56))(v8, 0, 1, v26);
  (*(v35 + 104))(v34, *MEMORY[0x277D51768], v36);
  v28 = sub_20C136E94();
  (*(*(v28 - 8) + 56))(v37, 1, 1, v28);

  sub_20C133644();
  sub_20C044E90(v20, sub_20C10FB64);
  return (*(v18 + 8))(v20, v32);
}

uint64_t sub_20C040F08(uint64_t a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v41 = a3;
  v35 = a1;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v32 - v5;
  v6 = sub_20C1352E4();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v32 = &v32 - v12;
  v14 = sub_20C134F24();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v32 - v18;
  v34 = sub_20C133654();
  v20 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *MEMORY[0x277D52B30];
  v24 = sub_20C136664();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v19, v23, v24);
  (*(v25 + 56))(v19, 0, 1, v24);
  sub_20BD97058(v16);
  v26 = sub_20C132C14();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  v33 = v3;
  v27 = *v36;
  v28 = sub_20C135ED4();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v10, v27, v28);
  (*(v29 + 56))(v10, 0, 1, v28);
  (*(v38 + 104))(v37, *MEMORY[0x277D51768], v39);
  v30 = sub_20C136E94();
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);

  sub_20C133644();
  sub_20C045580(v22, v41);
  return (*(v20 + 8))(v22, v34);
}

uint64_t sub_20C0413F0(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v28 - v3;
  v4 = sub_20C1352E4();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_20C134F24();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  v28 = sub_20C133654();
  v19 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v29, v18, &unk_27C7622E0);
  (*(v13 + 16))(v15, v30, v12);
  v22 = sub_20C132C14();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = *MEMORY[0x277D52408];
  v24 = sub_20C135ED4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v8, v23, v24);
  (*(v25 + 56))(v8, 0, 1, v24);
  (*(v32 + 104))(v31, *MEMORY[0x277D51768], v33);
  v26 = sub_20C136E94();
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  sub_20C133644();
  sub_20C044E90(v21, sub_20B5893F4);
  return (*(v19 + 8))(v21, v28);
}

uint64_t sub_20C0418B8(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v31 - v3;
  v4 = sub_20C1352E4();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v36 = &v31 - v9;
  v10 = sub_20C134F24();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_20C133654();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v31 - v20;
  sub_20C134414();
  v22 = sub_20C135B04();
  v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
  result = sub_20B520158(v21, &qword_27C763250);
  if (v23 == 1)
  {
    sub_20B52F9E8(v34, v15, &unk_27C7622E0);
    (*(v11 + 16))(v42, v35, v10);
    v25 = sub_20C132C14();
    (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
    sub_20C134324();
    v26 = *MEMORY[0x277D52408];
    v27 = sub_20C135ED4();
    v28 = *(v27 - 8);
    v29 = v37;
    (*(v28 + 104))(v37, v26, v27);
    (*(v28 + 56))(v29, 0, 1, v27);
    (*(v38 + 104))(v40, *MEMORY[0x277D51768], v39);
    v30 = sub_20C136E94();
    (*(*(v30 - 8) + 56))(v41, 1, 1, v30);
    sub_20C133644();
    sub_20C044070(v18, sub_20BFB4810, &OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_dependencies);
    return (*(v32 + 8))(v18, v33);
  }

  return result;
}

uint64_t sub_20C041E70(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = v28 - v3;
  v4 = sub_20C1352E4();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - v10;
  v28[1] = v28 - v10;
  v12 = sub_20C134F24();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v28 - v17;
  v29 = sub_20C133654();
  v19 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v30, v18, &unk_27C7622E0);
  (*(v13 + 16))(v15, v31, v12);
  v22 = sub_20C132C14();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v31 = *(v32 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier);
  v23 = *MEMORY[0x277D523C8];
  v24 = sub_20C135ED4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v8, v23, v24);
  (*(v25 + 56))(v8, 0, 1, v24);
  (*(v34 + 104))(v33, *MEMORY[0x277D51768], v35);
  v26 = sub_20C136E94();
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);

  sub_20C133644();
  sub_20C044070(v21, sub_20BF659E4, &OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_dependencies);
  return (*(v19 + 8))(v21, v29);
}

uint64_t sub_20C042368(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v28 - v3;
  v4 = sub_20C1352E4();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_20C134F24();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  v28 = sub_20C133654();
  v19 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v29, v18, &unk_27C7622E0);
  (*(v13 + 16))(v15, v30, v12);
  v22 = sub_20C132C14();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = *MEMORY[0x277D52408];
  v24 = sub_20C135ED4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v8, v23, v24);
  (*(v25 + 56))(v8, 0, 1, v24);
  (*(v32 + 104))(v31, *MEMORY[0x277D51768], v33);
  v26 = sub_20C136E94();
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  sub_20C133644();
  sub_20C044770(v21);
  return (*(v19 + 8))(v21, v28);
}

uint64_t sub_20C04281C(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v28 - v3;
  v4 = sub_20C1352E4();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_20C134F24();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  v28 = sub_20C133654();
  v19 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v29, v18, &unk_27C7622E0);
  (*(v13 + 16))(v15, v30, v12);
  v22 = sub_20C132C14();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v30 = *(v35 + 464);
  v23 = *MEMORY[0x277D52408];
  v24 = sub_20C135ED4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v8, v23, v24);
  (*(v25 + 56))(v8, 0, 1, v24);
  (*(v32 + 104))(v31, *MEMORY[0x277D51768], v33);
  v26 = sub_20C136E94();
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);

  sub_20C133644();
  sub_20C044E90(v21, sub_20C10FB64);
  return (*(v19 + 8))(v21, v28);
}

uint64_t sub_20C042CF8(uint64_t a1, uint64_t a2, unsigned int *a3, void (*a4)(uint64_t))
{
  v37 = a4;
  v34 = a3;
  v30 = a2;
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v29 - v5;
  v35 = sub_20C1352E4();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_20C134F24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v29 = sub_20C133654();
  v20 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v30, v19, &unk_27C7622E0);
  (*(v14 + 16))(v16, v31, v13);
  v23 = sub_20C132C14();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v31 = *(v38 + 32);
  v24 = *v34;
  v25 = sub_20C135ED4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v9, v24, v25);
  (*(v26 + 56))(v9, 0, 1, v25);
  (*(v33 + 104))(v32, *MEMORY[0x277D51768], v35);
  v27 = sub_20C136E94();
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);

  sub_20C133644();
  sub_20C045580(v22, v37);
  return (*(v20 + 8))(v22, v29);
}

uint64_t sub_20C0431F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v29 - v4;
  v5 = sub_20C1352E4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_20C134F24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v30 = sub_20C133654();
  v20 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v31, v19, &unk_27C7622E0);
  (*(v14 + 16))(v16, v32, v13);
  v23 = sub_20C132C14();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v34 = sub_20C133E44();
  v24 = *MEMORY[0x277D52408];
  v25 = sub_20C135ED4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v9, v24, v25);
  (*(v26 + 56))(v9, 0, 1, v25);
  (*(v35 + 104))(v33, *MEMORY[0x277D51768], v36);
  v27 = sub_20C136E94();
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  sub_20C133644();
  sub_20C044070(v22, sub_20BF659E4, &OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_dependencies);
  return (*(v20 + 8))(v22, v30);
}

uint64_t sub_20C0436D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v29 - v4;
  v5 = sub_20C1352E4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_20C134F24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v30 = sub_20C133654();
  v20 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v31, v19, &unk_27C7622E0);
  (*(v14 + 16))(v16, v32, v13);
  v23 = sub_20C132C14();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v34 = sub_20C133E44();
  v24 = *MEMORY[0x277D52408];
  v25 = sub_20C135ED4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v9, v24, v25);
  (*(v26 + 56))(v9, 0, 1, v25);
  (*(v35 + 104))(v33, *MEMORY[0x277D51768], v36);
  v27 = sub_20C136E94();
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  sub_20C133644();
  sub_20C044770(v22);
  return (*(v20 + 8))(v22, v30);
}

uint64_t sub_20C043B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v40 = a4;
  v41 = a5;
  v33 = a3;
  v34 = a2;
  v36 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v31 - v6;
  v7 = sub_20C1352E4();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v15 = sub_20C134F24();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v31 - v20;
  v32 = sub_20C133654();
  v22 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v33, v21, &unk_27C7622E0);
  (*(v16 + 16))(v18, v34, v15);
  v25 = sub_20C132C14();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v36 = sub_20C133E44();
  v26 = *MEMORY[0x277D52408];
  v27 = sub_20C135ED4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v11, v26, v27);
  (*(v28 + 56))(v11, 0, 1, v27);
  (*(v37 + 104))(v35, *MEMORY[0x277D51768], v38);
  v29 = sub_20C136E94();
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  sub_20C133644();
  v41(v24, v40);
  return (*(v22 + 8))(v24, v32);
}

uint64_t sub_20C044070(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v53 = a3;
  v49 = a1;
  v4 = sub_20C1391E4();
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  MEMORY[0x28223BE20](v4);
  v52 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C134C44();
  MEMORY[0x28223BE20](v7 - 8);
  v51 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v46 - v17;
  v46[1] = v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v46 - v20;
  v22 = sub_20C135D24();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20C134F74();
  v26 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v28 = v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v46 - v30;
  v32 = sub_20C133654();
  (*(*(v32 - 8) + 16))(v25, v49, v32);
  v33 = (*(v23 + 104))(v25, *MEMORY[0x277D52120], v22);
  a2(v33);
  v34 = sub_20C1333A4();
  (*(*(v34 - 8) + 56))(v21, 0, 1, v34);
  v35 = sub_20C135664();
  (*(*(v35 - 8) + 56))(v18, 1, 1, v35);
  v36 = sub_20C135674();
  (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
  v37 = v48;
  sub_20C134F94();
  v38 = sub_20C134FB4();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
  v40 = sub_20C135F14();
  (*(*(v40 - 8) + 56))(v51, 1, 1, v40);
  sub_20C134F54();
  v41 = v47;
  (*(v26 + 16))(v28, v31, v47);
  v42 = v52;
  sub_20C1391F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  swift_getObjectType();
  sub_20C048054(&qword_281103B30, 255, MEMORY[0x277D542C0]);
  v43 = v42;
  v44 = v54;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v55 + 8))(v43, v44);
  return (*(v26 + 8))(v31, v41);
}

uint64_t sub_20C044770(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1391E4();
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  MEMORY[0x28223BE20](v4);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C134C44();
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v13 - 8);
  v47 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v46 - v19;
  v21 = sub_20C135D24();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C134F74();
  v48 = *(v25 - 8);
  v49 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v46 - v29;
  v31 = sub_20C133654();
  (*(*(v31 - 8) + 16))(v24, a1, v31);
  (*(v22 + 104))(v24, *MEMORY[0x277D52120], v21);
  v32 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage;
  v33 = sub_20C1333A4();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v20, v2 + v32, v33);
  (*(v34 + 56))(v20, 0, 1, v33);
  v35 = sub_20C135664();
  (*(*(v35 - 8) + 56))(v17, 1, 1, v35);
  v36 = sub_20C135674();
  (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
  v37 = v50;
  sub_20C134F94();
  v38 = sub_20C134FB4();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v39 - 8) + 56))(v51, 1, 1, v39);
  v40 = sub_20C135F14();
  (*(*(v40 - 8) + 56))(v52, 1, 1, v40);
  sub_20C134F54();
  v41 = v48;
  v42 = v49;
  (*(v48 + 16))(v27, v30, v49);
  v43 = v53;
  sub_20C1391F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  swift_getObjectType();
  sub_20C048054(&qword_281103B30, 255, MEMORY[0x277D542C0]);
  v44 = v54;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v55 + 8))(v43, v44);
  return (*(v41 + 8))(v30, v42);
}

uint64_t sub_20C044E90(uint64_t a1, void (*a2)(uint64_t))
{
  v47 = a1;
  v3 = sub_20C1391E4();
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x28223BE20](v3);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134C44();
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - v16;
  v44 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v44 - v19;
  v21 = sub_20C135D24();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C134F74();
  v25 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v44 - v29;
  v31 = sub_20C133654();
  (*(*(v31 - 8) + 16))(v24, v47, v31);
  v32 = (*(v22 + 104))(v24, *MEMORY[0x277D52120], v21);
  a2(v32);
  v33 = sub_20C1333A4();
  (*(*(v33 - 8) + 56))(v20, 0, 1, v33);
  v34 = sub_20C135664();
  (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
  v35 = sub_20C135674();
  (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
  v36 = v46;
  sub_20C134F94();
  v37 = sub_20C134FB4();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
  v39 = sub_20C135F14();
  (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
  sub_20C134F54();
  v40 = v45;
  (*(v25 + 16))(v27, v30, v45);
  v41 = v50;
  sub_20C1391F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  swift_getObjectType();
  sub_20C048054(&qword_281103B30, 255, MEMORY[0x277D542C0]);
  v42 = v51;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v52 + 8))(v41, v42);
  return (*(v25 + 8))(v30, v40);
}

uint64_t sub_20C045580(uint64_t a1, void (*a2)(uint64_t))
{
  v47 = a1;
  v3 = sub_20C1391E4();
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x28223BE20](v3);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134C44();
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - v16;
  v44 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v44 - v19;
  v21 = sub_20C135D24();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C134F74();
  v25 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v44 - v29;
  v31 = sub_20C133654();
  (*(*(v31 - 8) + 16))(v24, v47, v31);
  v32 = (*(v22 + 104))(v24, *MEMORY[0x277D52120], v21);
  a2(v32);
  v33 = sub_20C1333A4();
  (*(*(v33 - 8) + 56))(v20, 0, 1, v33);
  v34 = sub_20C135664();
  (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
  v35 = sub_20C135674();
  (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
  v36 = v46;
  sub_20C134F94();
  v37 = sub_20C134FB4();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
  v39 = sub_20C135F14();
  (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
  sub_20C134F54();
  v40 = v45;
  (*(v25 + 16))(v27, v30, v45);
  v41 = v50;
  sub_20C1391F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  swift_getObjectType();
  sub_20C048054(&qword_281103B30, 255, MEMORY[0x277D542C0]);
  v42 = v51;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v52 + 8))(v41, v42);
  return (*(v25 + 8))(v30, v40);
}

void sub_20C045C98()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CatalogProgramDetailViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_20C036C5C();
  sub_20C0467DC();
  sub_20B795E30(0);
  sub_20BAD60BC();
  v1 = *(*(*&v0[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 48);
      swift_unknownObjectRetain();
      v6(ObjectType, v4);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_20C045DD8(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CatalogProgramDetailViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentNavigationBarTintColor];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentNavigationBarTintColor];
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_standardNavigationBarTintColor];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  v9 = v1[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentContentInsetBehavior + 16];
  if (v9 <= 0xFB)
  {
    if (v9 >> 6)
    {
      if (v9 >> 6 != 1)
      {
        sub_20C13DC94();
        MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
        sub_20C13DDF4();
        sub_20C1380E4();

        goto LABEL_12;
      }

      v9 = 0;
    }

    sub_20BE8F76C(v9);
  }

LABEL_12:
}

uint64_t sub_20C046068(char a1)
{
  v2 = v1;
  v19 = sub_20C1333A4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for CatalogProgramDetailViewController();
  v21.receiver = v2;
  v21.super_class = v10;
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1 & 1);
  v11 = *&v2[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dataProvider];
  sub_20BC93798();
  v12 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_programDetail;
  swift_beginAccess();
  sub_20B52F9E8(v11 + v12, v9, &qword_27C763090);
  v13 = sub_20C135974();
  v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
  sub_20B520158(v9, &qword_27C763090);
  if (v14 == 1)
  {
    *(v11 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramPageDataProvider_shouldPublishPageEventWhenAvailable) = 1;
  }

  else
  {
    v20 = v11;
    sub_20BC93190(v6);
    type metadata accessor for CatalogProgramPageDataProvider();
    sub_20C048054(&qword_27C76CF60, 255, type metadata accessor for CatalogProgramPageDataProvider);
    sub_20C138C54();
    (*(v4 + 8))(v6, v19);
  }

  sub_20C048054(&qword_27C771EC0, v15, type metadata accessor for CatalogProgramDetailViewController);
  sub_20C048054(&qword_27C771EC8, v16, type metadata accessor for CatalogProgramDetailViewController);
  return sub_20C139364();
}

void sub_20C046394(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CatalogProgramDetailViewController();
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, sel_viewWillDisappear_, a1 & 1);
  v17 = v2;
  sub_20C132E84();
  sub_20C048054(&qword_27C771EC0, v9, type metadata accessor for CatalogProgramDetailViewController);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v13 = sub_20C13CC74();

    v17 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v16 - 2) = &v17;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v16 - 4), v13);

    if ((v12 & 1) == 0)
    {
      v17 = v2;
      sub_20C048054(&qword_27C771ED0, v15, type metadata accessor for CatalogProgramDetailViewController);
      sub_20C138C64();
    }
  }
}

void sub_20C0467DC()
{
  v36[3] = type metadata accessor for CatalogProgramDetailViewController();
  v36[0] = v0;
  type metadata accessor for MoreOptionsButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = v0;
  v3 = [ObjCClassFromMetadata buttonWithType_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = &v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance];
  [v3 setTintColor_];
  v5 = *(v4 + 10);
  v6 = *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor];
  *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor] = v5;
  v7 = v5;

  *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors] = MEMORY[0x277D84FA0];

  sub_20BCC01CC(v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary], 0);
  sub_20B52F9E8(v36, v34, &unk_27C768A00);
  v8 = v35;
  if (v35)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v34, v35);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_20C13DFD4();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v14 = 0;
  }

  [v3 addTarget:v14 action:sel_moreOptionsButtonTapped_ forControlEvents:0x2000];
  swift_unknownObjectRelease();
  sub_20B520158(v36, &unk_27C768A00);
  v15 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v17 = v3;
  *(v17 + 1) = &off_2822DD228;
  v33.receiver = v16;
  v33.super_class = v15;
  v18 = v3;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  [v19 setCustomView_];

  v20 = *&v2[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_upNextQueueButton];
  v21 = objc_allocWithZone(v15);
  v22 = &v21[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v22 = v20;
  *(v22 + 1) = &off_2822C8C68;
  v32.receiver = v21;
  v32.super_class = v15;
  v23 = v20;
  v24 = objc_msgSendSuper2(&v32, sel_init);
  [v24 setCustomView_];

  if (v2[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_platform] == 1)
  {
    v25 = [v2 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C150040;
    *(v28 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    *(v28 + 40) = v19;
    v27 = (v28 + 48);
    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_platform])
  {
    v25 = [v2 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20C151490;
    *(v26 + 32) = v19;
    v27 = (v26 + 40);
LABEL_8:
    *v27 = v24;
    sub_20B51C88C(0, &qword_27C770510);
    v29 = v19;
    v30 = v24;
    v31 = sub_20C13CC54();

    [v25 setRightBarButtonItems_];
  }
}

void sub_20C046C3C()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItems];

  if (!v2)
  {
    return;
  }

  sub_20B51C88C(0, &qword_27C770510);
  v3 = sub_20C13CC74();

  if (v3 >> 62)
  {
LABEL_21:
    v4 = sub_20C13DB34();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_22:

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F2F5430](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v10 = [v7 customView];
    if (v10)
    {
      break;
    }

    v6 = v8;
LABEL_6:

    ++v5;
    if (v9 == v4)
    {
      goto LABEL_22;
    }
  }

  v6 = v10;
  type metadata accessor for MoreOptionsButton();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  v11 = v8;
  sub_20C03C48C(v8, 0);
}

id sub_20C046ED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogProgramDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20C04701C(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_standardNavigationBarTintColor];
    }

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentNavigationBarTintColor] = v2;
    v4 = v2;

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v10[4] = sub_20B7C9A90;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20B7B548C;
    v10[3] = &block_descriptor_175;
    v7 = _Block_copy(v10);
    v8 = v4;
    v9 = v1;

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }
}

uint64_t sub_20C0471CC(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_20C047334(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20C0473EC()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20C047450()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

id sub_20C0474E4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v22[3] = a5;
  v22[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v12 = &a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentContentInsetBehavior];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = -4;
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isTransitioningContentInset] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_visibility] = 1;
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_resignActiveObserver] = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_standardNavigationBarTintColor;
  *&a4[v13] = [objc_opt_self() whiteColor];
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentNavigationBarTintColor] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isBeyondScrollBoundary] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dependencies] = a1;
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_eventHub] = v21[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763C20);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_localeAnalyzer] = v21[0];
  sub_20B51CC64(v22, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_platform] = v21[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v21, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v21, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_storefrontLocalizer]);
  v14 = &a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_contentInsetInitialBehavior];
  *v14 = 0;
  v14[8] = 3;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_upNextQueueButtonPresenter] = sub_20B887320();
  v15 = sub_20BE8C450(&unk_28228D4F8);

  v17 = sub_20BAB9360(v16, v15, 0);

  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_upNextQueueButton] = v17;
  v20.receiver = a4;
  v20.super_class = type metadata accessor for CatalogProgramDetailViewController();
  v18 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v22);
  *(a2 + 24) = &off_282301B70;
  swift_unknownObjectWeakAssign();
  return v18;
}

void sub_20C0479BC()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_visibility) = 1;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_resignActiveObserver) = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_standardNavigationBarTintColor;
  *(v0 + v2) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C047BBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B887644();
}

uint64_t objectdestroy_62Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20C047ECC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20C048054(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_20C048114(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28TVSessionContinueOnWatchView_blurView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = type metadata accessor for SessionBlurView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC9SeymourUI15SessionBlurView_blurEffect] = v4;
  v63.receiver = v6;
  v63.super_class = v5;
  v7 = objc_msgSendSuper2(&v63, sel_initWithEffect_, 0);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI28TVSessionContinueOnWatchView_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760848 != -1)
  {
    swift_once();
  }

  v10 = sub_20C13C914();
  [v9 setText_];

  v11 = [objc_opt_self() preferredFontForTextStyle_];
  [v9 setFont_];

  v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v9 setTextColor_];

  [v9 setTextAlignment_];
  [v9 setLineBreakMode_];
  [v9 setNumberOfLines_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v8] = v9;
  v62.receiver = v1;
  v62.super_class = type metadata accessor for TVSessionContinueOnWatchView();
  v13 = objc_msgSendSuper2(&v62, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + 24) = &off_282302A60;
  swift_unknownObjectWeakAssign();
  v14 = OBJC_IVAR____TtC9SeymourUI28TVSessionContinueOnWatchView_blurView;
  v15 = *&v13[OBJC_IVAR____TtC9SeymourUI28TVSessionContinueOnWatchView_blurView];
  v16 = *&v15[OBJC_IVAR____TtC9SeymourUI15SessionBlurView_blurEffect];
  v17 = v13;
  [v15 setEffect_];
  v18 = *&v13[v14];
  v19 = v17;
  [v19 addSubview_];
  v20 = OBJC_IVAR____TtC9SeymourUI28TVSessionContinueOnWatchView_titleLabel;
  [v19 addSubview_];
  v61 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C14FE90;
  v22 = [*&v19[v20] centerXAnchor];
  v23 = [v19 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v21 + 32) = v24;
  v25 = [*&v19[v20] centerYAnchor];
  v26 = [v19 centerYAnchor];

  v27 = [v25 constraintEqualToAnchor_];
  *(v21 + 40) = v27;
  v28 = [*&v19[v20] leadingAnchor];
  v29 = [v19 leadingAnchor];

  v30 = [v28 constraintGreaterThanOrEqualToAnchor:v29 constant:20.0];
  *(v21 + 48) = v30;
  v31 = [*&v19[v20] trailingAnchor];
  v32 = [v19 trailingAnchor];

  v33 = [v31 constraintLessThanOrEqualToAnchor:v32 constant:-20.0];
  *(v21 + 56) = v33;
  v35 = *MEMORY[0x277D768C8];
  v34 = *(MEMORY[0x277D768C8] + 8);
  v36 = *(MEMORY[0x277D768C8] + 16);
  v37 = *(MEMORY[0x277D768C8] + 24);
  v38 = *&v13[v14];
  v39 = [v38 leadingAnchor];
  v40 = [v19 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:v34];

  LODWORD(v42) = 1148846080;
  [v41 setPriority_];
  v43 = v41;
  v44 = [v38 trailingAnchor];
  v45 = [v19 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-v37];

  LODWORD(v47) = 1148846080;
  [v46 setPriority_];
  v48 = v46;
  v49 = [v38 topAnchor];
  v50 = [v19 topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:v35];

  LODWORD(v52) = 1148846080;
  [v51 setPriority_];
  v53 = [v38 bottomAnchor];
  v54 = [v19 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-v36];

  LODWORD(v56) = 1148846080;
  [v55 setPriority_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v43;
  *(inited + 40) = v48;
  *(inited + 48) = v51;
  *(inited + 56) = v55;
  v58 = v51;

  sub_20B8D9310(inited);
  sub_20B5E29D0();
  v59 = sub_20C13CC54();

  [v61 activateConstraints_];

  [v19 setAlpha_];

  return v19;
}

id sub_20C0488C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSessionContinueOnWatchView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20C048968(char a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_20B6302C0;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_20B7B548C;
  v6[3] = &block_descriptor_176;
  v5 = _Block_copy(v6);

  [v2 animateWithDuration:v5 animations:0.2];
  _Block_release(v5);
}

void sub_20C048A78()
{
  v1 = OBJC_IVAR____TtC9SeymourUI28TVSessionContinueOnWatchView_blurView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = type metadata accessor for SessionBlurView();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9SeymourUI15SessionBlurView_blurEffect] = v2;
  v11.receiver = v4;
  v11.super_class = v3;
  v5 = objc_msgSendSuper2(&v11, sel_initWithEffect_, 0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI28TVSessionContinueOnWatchView_titleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760848 != -1)
  {
    swift_once();
  }

  v8 = sub_20C13C914();
  [v7 setText_];

  v9 = [objc_opt_self() preferredFontForTextStyle_];
  [v7 setFont_];

  v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v7 setTextColor_];

  [v7 setTextAlignment_];
  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  sub_20C13DE24();
  __break(1u);
}

char *TVTrainerDetailViewController.__allocating_init(dependencies:pageNavigator:trainerIdentifier:currentFilter:currentResult:rootResult:options:pageContext:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, char *a3, objc_class *a4, char *a5, char *a6, char *a7, uint64_t a8, void (*a9)(void, void), unint64_t a10)
{
  v11 = v10;
  v134 = a8;
  v135 = a7;
  v136 = a6;
  v131 = a5;
  v137 = a3;
  v133 = a2;
  v124 = a1;
  v128 = a9;
  v127 = a10;
  v144 = sub_20C135914();
  v146 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v119 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v138 = &v109 - v16;
  v139 = sub_20C135524();
  v132 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v118 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v115 = &v109 - v19;
  MEMORY[0x28223BE20](v20);
  v140 = &v109 - v21;
  MEMORY[0x28223BE20](v22);
  v126 = &v109 - v23;
  v141 = sub_20C133E24();
  v143 = *(v141 - 8);
  v24 = v143;
  MEMORY[0x28223BE20](v141);
  v125 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v109 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = (&v109 - v30);
  v32 = sub_20C134EC4();
  v142 = *(v32 - 8);
  v33 = v142;
  MEMORY[0x28223BE20](v32);
  v114 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v109 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v109 - v39;
  v120 = objc_allocWithZone(v11);
  *v31 = a3;
  v31[1] = a4;
  v116 = a4;
  v41 = sub_20C135C84();
  swift_storeEnumTagMultiPayload();
  (*(*(v41 - 8) + 56))(v31, 0, 1, v41);

  sub_20C13CA04();
  v130 = v40;
  sub_20C134E94();
  v110 = *(v33 + 16);
  v111 = v33 + 16;
  v145 = v32;
  v110(v37, v40, v32);
  v122 = *(v24 + 16);
  v123 = v24 + 16;
  v42 = v131;
  v43 = v141;
  v122(v28, v131, v141);
  type metadata accessor for TVTrainerDetailFilterResultPageDataProvider();
  swift_allocObject();
  v44 = v124;

  v45 = v128;
  v46 = v127;
  sub_20B58C2C8(v128, v127);
  v47 = v37;
  v129 = v28;
  v137 = sub_20BEBE070(v44, v137, v116, v37, v45, v46, v28);

  sub_20B51CC64(v133, v152);
  v122(v28, v42, v43);
  v48 = *(v132 + 16);
  v49 = v126;
  v50 = v139;
  v48(v126, v136, v139);
  v112 = v48;
  v51 = v110;
  v110(v47, v130, v145);
  v48(v140, v135, v50);
  v113 = *(v146 + 16);
  v113(v138, v134, v144);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C38);
  v52 = objc_allocWithZone(v116);
  *&v52[qword_27C79C038 + 8] = 0;
  swift_unknownObjectWeakInit();

  v53 = v137;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v52[qword_27C76D2D0] = v149;
  v54 = &v52[qword_27C79C000];
  v55 = v52;
  v109 = v52;
  v56 = v47;
  v117 = v47;
  v57 = v145;
  v51(v54, v47, v145);
  *&v55[qword_27C79C018] = v53;
  v122(v125, v129, v141);
  v58 = v115;
  v59 = v49;
  v60 = v139;
  v61 = v112;
  v112(v115, v59, v139);
  v62 = v114;
  v51(v114, v56, v57);
  v63 = v118;
  v61(v118, v140, v60);
  v64 = v119;
  v113(v119, v138, v144);
  type metadata accessor for TVFilterOptionsListDataProvider();
  swift_allocObject();
  v65 = v124;

  v66 = v137;

  v67 = sub_20BDF8288(v65, v125, v58, v62, v63, v64, 0, 0);

  v68 = v109;
  *&v109[qword_27C79C020] = v67;
  sub_20B51CC64(v152, &v149);
  v69 = objc_allocWithZone(type metadata accessor for TVFilterOptionsListViewController());
  v70 = v150;
  v71 = v151;
  v72 = __swift_mutable_project_boxed_opaque_existential_1(&v149, v150);
  v73 = MEMORY[0x28223BE20](v72);
  v75 = &v109 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v76 + 16))(v75, v73);

  v77 = sub_20B61354C(v65, v67, v75, v69, v70, v71);

  __swift_destroy_boxed_opaque_existential_1(&v149);
  sub_20B51CC64(v152, &v149);
  v78 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765FE0));
  v79 = v150;
  v80 = v151;
  v81 = __swift_mutable_project_boxed_opaque_existential_1(&v149, v150);
  v82 = MEMORY[0x28223BE20](v81);
  v84 = &v109 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v85 + 16))(v84, v82);

  v86 = sub_20B7FC628(v65, v66, v84, v78, v79, v80);

  __swift_destroy_boxed_opaque_existential_1(&v149);
  v87 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v68[qword_27C79C008] = v87;
  *&v68[qword_27C79C010] = v86;
  *&v68[qword_27C79C030] = v87;
  v88 = &v68[qword_27C79C028];
  v89 = v127;
  *v88 = v128;
  *(v88 + 1) = v89;
  v148.receiver = v68;
  v148.super_class = v116;
  v90 = v87;
  v91 = v86;
  v92 = objc_msgSendSuper2(&v148, sel_init);
  [v90 setDelegate_];

  v93 = *(v146 + 8);
  v146 += 8;
  v128 = v93;
  v93(v138, v144);
  v94 = *(v132 + 8);
  v95 = v139;
  v94(v140, v139);
  v96 = *(v142 + 8);
  v142 += 8;
  v140 = v96;
  (v96)(v117, v145);
  v94(v126, v95);
  v97 = *(v143 + 8);
  v143 += 8;
  v98 = v141;
  v97(v129, v141);
  __swift_destroy_boxed_opaque_existential_1(v152);
  *&v91[qword_27C79A4C0 + 8] = &off_2822DCE00;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  v99 = v120;
  *&v120[OBJC_IVAR____TtC9SeymourUI29TVTrainerDetailViewController_coordinator] = v92;
  v147.receiver = v99;
  v147.super_class = v121;
  v100 = objc_msgSendSuper2(&v147, sel_initWithStyle_, 1);
  v101 = *&v100[OBJC_IVAR____TtC9SeymourUI29TVTrainerDetailViewController_coordinator];
  v102 = objc_opt_self();
  v103 = v100;
  v104 = v101;
  v105 = [v102 mainScreen];
  [v105 bounds];
  v107 = v106;

  [v103 setPreferredPrimaryColumnWidthFraction_];
  [v103 setPrimaryBackgroundStyle_];
  [v103 setViewController:*&v104[qword_27C79C008] forColumn:0];

  v128(v134, v144);
  v94(v135, v95);
  v94(v136, v95);
  v97(v131, v98);
  __swift_destroy_boxed_opaque_existential_1(v133);
  (v140)(v130, v145);

  return v103;
}

char *TVTrainerDetailViewController.init(dependencies:pageNavigator:trainerIdentifier:currentFilter:currentResult:rootResult:options:pageContext:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, char *a3, objc_class *a4, uint64_t a5, char *a6, char *a7, uint64_t a8, void (*a9)(void, void), unint64_t a10)
{
  v135 = a8;
  v136 = a7;
  v134 = a6;
  v131 = a5;
  v137 = a3;
  v133 = a2;
  v123 = a1;
  v127 = a9;
  v126 = a10;
  v12 = sub_20C135914();
  v13 = *(v12 - 8);
  v145 = v12;
  v146 = v13;
  MEMORY[0x28223BE20](v12);
  v119 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v138 = &v109 - v16;
  v139 = sub_20C135524();
  v132 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v118 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v116 = &v109 - v19;
  MEMORY[0x28223BE20](v20);
  v144 = &v109 - v21;
  MEMORY[0x28223BE20](v22);
  v140 = &v109 - v23;
  v141 = sub_20C133E24();
  v143 = *(v141 - 8);
  v24 = v143;
  MEMORY[0x28223BE20](v141);
  v124 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v109 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = (&v109 - v30);
  v32 = sub_20C134EC4();
  v142 = *(v32 - 8);
  v33 = v142;
  MEMORY[0x28223BE20](v32);
  v115 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v109 - v36;
  v125 = &v109 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v109 - v39;
  *v31 = a3;
  v31[1] = a4;
  v117 = a4;
  v41 = sub_20C135C84();
  swift_storeEnumTagMultiPayload();
  (*(*(v41 - 8) + 56))(v31, 0, 1, v41);

  sub_20C13CA04();
  v130 = v40;
  sub_20C134E94();
  v111 = *(v33 + 16);
  v112 = v33 + 16;
  v42 = v32;
  v111(v37, v40, v32);
  v121 = *(v24 + 16);
  v122 = v24 + 16;
  v43 = v28;
  v44 = v28;
  v45 = v131;
  v46 = v141;
  v121(v44, v131, v141);
  type metadata accessor for TVTrainerDetailFilterResultPageDataProvider();
  swift_allocObject();
  v47 = v123;

  v48 = v127;
  v49 = v126;
  sub_20B58C2C8(v127, v126);
  v50 = v125;
  v128 = v43;
  v137 = sub_20BEBE070(v47, v137, v117, v125, v48, v49, v43);

  sub_20B51CC64(v133, v152);
  v121(v43, v45, v46);
  v51 = *(v132 + 16);
  v52 = v139;
  v51(v140, v134, v139);
  v113 = v51;
  v53 = v111;
  v111(v50, v130, v42);
  v51(v144, v136, v52);
  v114 = *(v146 + 16);
  v114(v138, v135, v145);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C38);
  v54 = objc_allocWithZone(v117);
  *&v54[qword_27C79C038 + 8] = 0;
  swift_unknownObjectWeakInit();

  v55 = v137;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v54[qword_27C76D2D0] = v149;
  v110 = v54;
  v56 = v50;
  v57 = v42;
  v129 = v42;
  v53(&v54[qword_27C79C000], v50, v42);
  *&v54[qword_27C79C018] = v55;
  v121(v124, v128, v141);
  v58 = v116;
  v59 = v139;
  v60 = v113;
  v113(v116, v140, v139);
  v61 = v115;
  v53(v115, v56, v57);
  v62 = v118;
  v60(v118, v144, v59);
  v63 = v119;
  v114(v119, v138, v145);
  type metadata accessor for TVFilterOptionsListDataProvider();
  swift_allocObject();
  v64 = v123;

  v65 = v137;

  v66 = sub_20BDF8288(v64, v124, v58, v61, v62, v63, 0, 0);

  v67 = v110;
  *&v110[qword_27C79C020] = v66;
  sub_20B51CC64(v152, &v149);
  v68 = objc_allocWithZone(type metadata accessor for TVFilterOptionsListViewController());
  v69 = v150;
  v70 = v151;
  v71 = __swift_mutable_project_boxed_opaque_existential_1(&v149, v150);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = &v109 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v75 + 16))(v74, v72);

  v76 = sub_20B61354C(v64, v66, v74, v68, v69, v70);

  __swift_destroy_boxed_opaque_existential_1(&v149);
  sub_20B51CC64(v152, &v149);
  v77 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765FE0));
  v78 = v150;
  v79 = v151;
  v80 = __swift_mutable_project_boxed_opaque_existential_1(&v149, v150);
  v81 = MEMORY[0x28223BE20](v80);
  v83 = &v109 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v84 + 16))(v83, v81);

  v85 = sub_20B7FC628(v64, v65, v83, v77, v78, v79);

  __swift_destroy_boxed_opaque_existential_1(&v149);
  v86 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v67[qword_27C79C008] = v86;
  *&v67[qword_27C79C010] = v85;
  *&v67[qword_27C79C030] = v86;
  v87 = &v67[qword_27C79C028];
  v88 = v126;
  *v87 = v127;
  *(v87 + 1) = v88;
  v148.receiver = v67;
  v148.super_class = v117;
  v89 = v86;
  v90 = v85;
  v91 = objc_msgSendSuper2(&v148, sel_init);
  [v89 setDelegate_];

  v92 = *(v146 + 8);
  v146 += 8;
  v127 = v92;
  v92(v138, v145);
  v93 = *(v132 + 8);
  v94 = v139;
  v93(v144, v139);
  v95 = *(v142 + 8);
  v142 += 8;
  v144 = v95;
  (v95)(v125, v129);
  v93(v140, v94);
  v96 = *(v143 + 8);
  v143 += 8;
  v97 = v141;
  v96(v128, v141);
  __swift_destroy_boxed_opaque_existential_1(v152);
  *&v90[qword_27C79A4C0 + 8] = &off_2822DCE00;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  v98 = v120;
  *&v120[OBJC_IVAR____TtC9SeymourUI29TVTrainerDetailViewController_coordinator] = v91;
  v99 = type metadata accessor for TVTrainerDetailViewController();
  v147.receiver = v98;
  v147.super_class = v99;
  v100 = objc_msgSendSuper2(&v147, sel_initWithStyle_, 1);
  v101 = *&v100[OBJC_IVAR____TtC9SeymourUI29TVTrainerDetailViewController_coordinator];
  v102 = objc_opt_self();
  v103 = v100;
  v104 = v101;
  v105 = [v102 mainScreen];
  [v105 bounds];
  v107 = v106;

  [v103 setPreferredPrimaryColumnWidthFraction_];
  [v103 setPrimaryBackgroundStyle_];
  [v103 setViewController:*&v104[qword_27C79C008] forColumn:0];

  v127(v135, v145);
  v93(v136, v94);
  v93(v134, v94);
  v96(v131, v97);
  __swift_destroy_boxed_opaque_existential_1(v133);
  (v144)(v130, v129);

  return v103;
}

uint64_t sub_20C04AB54(char a1)
{
  v3 = sub_20C1390B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1333A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for TVTrainerDetailViewController();
  v17.receiver = v1;
  v17.super_class = v14;
  objc_msgSendSuper2(&v17, sel_viewDidAppear_, a1 & 1);
  v15 = *(v8 + 16);
  v15(v13, *(*&v1[OBJC_IVAR____TtC9SeymourUI29TVTrainerDetailViewController_coordinator] + qword_27C79C018) + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_metricPage, v7);
  v15(v10, v13, v7);
  sub_20C1390C4();
  swift_getObjectType();
  sub_20B7A81BC(&qword_281103B40, MEMORY[0x277D54270]);
  swift_unknownObjectRetain();
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v13, v7);
}

void sub_20C04AE3C(char a1)
{
  v3 = sub_20C1393E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C132E94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TVTrainerDetailViewController();
  v19.receiver = v1;
  v19.super_class = v11;
  objc_msgSendSuper2(&v19, sel_viewWillDisappear_, a1 & 1);
  sub_20C132E84();
  sub_20BECFB10(v10);
  (*(v8 + 8))(v10, v7);
  v12 = [v1 navigationController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 viewControllers];
    sub_20B62BB28();
    v15 = sub_20C13CC74();

    v18 = v1;
    MEMORY[0x28223BE20](v16);
    *(&v17 - 2) = &v18;
    LOBYTE(v14) = sub_20B79AEEC(sub_20B5978BC, (&v17 - 4), v15);

    if (v14)
    {
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_20C1393D4();
      sub_20B7A81BC(&unk_281103B20, MEMORY[0x277D54388]);
      sub_20C13A764();

      swift_unknownObjectRelease();
      (*(v4 + 8))(v6, v3);
    }
  }
}

id TVTrainerDetailViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TVTrainerDetailViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

id TVTrainerDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVTrainerDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_20C04B448()
{
  qword_27C79D0A0 = 0x3F80000000000000;
  dword_27C79D0F4 = 0;
  dword_27C79D144 = 0;
  dword_27C79D194 = 0;
  xmmword_27C79D100 = 0u;
  unk_27C79D110 = 0u;
  xmmword_27C79D120 = 0u;
  unk_27C79D130 = 0u;
  word_27C79D140 = 0;
  xmmword_27C79D150 = 0u;
  unk_27C79D160 = 0u;
  xmmword_27C79D170 = 0u;
  unk_27C79D180 = 0u;
  word_27C79D190 = 0;
  unk_27C79D0A8 = 0u;
  unk_27C79D0B8 = 0u;
  unk_27C79D0C8 = 0u;
  unk_27C79D0D8 = 0u;
  unk_27C79D0E2 = 0u;
  qword_27C79D1A0 = 0x3F80000000000000;
  xmmword_27C79D1A8 = 0u;
  unk_27C79D1B8 = 0u;
  qword_27C79D1C8 = 0;
  xmmword_27C79D1D0 = xmmword_20C1732E0;
  unk_27C79D1E0 = xmmword_20C1732F0;
  result = 0.0;
  xmmword_27C79D1F0 = xmmword_20C14BFF0;
  unk_27C79D200 = xmmword_20C173320;
  qword_27C79D210 = 0;
  unk_27C79D218 = 0;
  return result;
}

unint64_t sub_20C04B4D8(uint64_t a1)
{
  result = sub_20C04B500();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_20C04B500()
{
  result = qword_27C764A48;
  if (!qword_27C764A48)
  {
    sub_20C133A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764A48);
  }

  return result;
}

unint64_t sub_20C04B594()
{
  result = qword_27C771F40;
  if (!qword_27C771F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771F40);
  }

  return result;
}

double sub_20C04B5E8(unsigned __int8 a1, float a2)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v6 = 0.209;
      v7 = 0.015;
      goto LABEL_9;
    }

    v3 = 0.209;
    v4 = 0.403;
    v5 = 0.05;
    v8 = -1119040307;
LABEL_11:
    v2 = *&v8;
    goto LABEL_12;
  }

  if (a1 == 2)
  {
    v3 = 0.403;
    v4 = 0.597;
    v5 = 0.4;
    v8 = -1110651699;
    goto LABEL_11;
  }

  if (a1 == 3)
  {
    v2 = -0.5;
    v3 = 0.597;
    v4 = 0.791;
    v5 = 0.3;
LABEL_12:
    v9 = (v2 + a2) / v5;
    v10 = v4 - v3;
    return (v3 + (v9 * v10));
  }

  v6 = 0.985;
  v7 = 0.791;
LABEL_9:
  v3 = v7;
  v9 = v6 - v7;
  v10 = 0.5;
  return (v3 + (v9 * v10));
}

uint64_t sub_20C04B7F4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v46 = *(a5 + 8);
  v7 = v46(a1, a5);
  v8 = *&v7[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  v9 = [v8 visibleCells];
  sub_20B51C88C(0, &qword_27C772960);
  v10 = sub_20C13CC74();

  if (v10 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F2F5430](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      swift_getObjectType();
      v16 = swift_conformsToProtocol2();
      if (v16 && v14)
      {
        v17 = v16;
        ObjectType = swift_getObjectType();
        (*(v17 + 8))(ObjectType, v17, a2, a3);
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v19 = v46(a1, a5);
  v20 = *&v19[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  v21 = sub_20C13C914();
  v22 = [v20 visibleSupplementaryViewsOfKind_];

  sub_20B51C88C(0, &unk_27C768240);
  v23 = sub_20C13CC74();

  if (v23 >> 62)
  {
    goto LABEL_30;
  }

  for (j = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_20C13DB34())
  {
    v25 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x20F2F5430](v25, v23);
      }

      else
      {
        if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      swift_getObjectType();
      v29 = swift_conformsToProtocol2();
      if (v29 && v27)
      {
        v30 = v29;
        v31 = swift_getObjectType();
        (*(v30 + 8))(v31, v30, a2, a3);
      }

      ++v25;
      if (v28 == j)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_31:

  v32 = v46(a1, a5);
  v33 = *&v32[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  v34 = sub_20C13C914();
  v35 = [v33 visibleSupplementaryViewsOfKind_];

  v36 = sub_20C13CC74();
  if (v36 >> 62)
  {
    goto LABEL_45;
  }

  for (k = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_20C13DB34())
  {
    for (m = 0; ; ++m)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x20F2F5430](m, v36);
      }

      else
      {
        if (m >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v39 = *(v36 + 8 * m + 32);
      }

      v40 = v39;
      v41 = m + 1;
      if (__OFADD__(m, 1))
      {
        break;
      }

      swift_getObjectType();
      v42 = swift_conformsToProtocol2();
      if (v42 && v40)
      {
        v43 = v42;
        v44 = swift_getObjectType();
        (*(v43 + 8))(v44, v43, a2, a3);
      }

      if (v41 == k)
      {
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }
}

void sub_20C04BD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  sub_20C04B7F4(a1, a5, a6, a2, a3);
  v35[0] = v6;
  (*(a4 + 40))(a1, a4);
  if (v12)
  {
    v13 = 0.0;
    if (a6 <= 0.0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = v11;
    if (v11 >= a6)
    {
      if (a6 > 0.0)
      {
        v35[0] = v6;
        v14 = (*(a4 + 24))(a1, a4);
        [v14 setAlpha_];
        goto LABEL_11;
      }

LABEL_3:
      v35[0] = v6;
      v14 = (*(a4 + 24))(a1, a4);
      [v14 setAlpha_];
LABEL_11:

      v35[0] = v7;
      v16 = *(a4 + 56);
      v23 = v16(a1, a4);
      [v23 setAlpha_];
LABEL_13:

      goto LABEL_14;
    }
  }

  v35[0] = v6;
  v15 = (*(a4 + 24))(a1, a4);
  [v15 setAlpha_];

  v35[0] = v7;
  v16 = *(a4 + 56);
  v17 = v16(a1, a4);
  [v17 setAlpha_];

  v35[0] = v7;
  v18 = *(a4 + 8);
  v18(v32, a1, a4);
  v34[0] = v7;
  v18(v33, a1, a4);
  v35[0] = v7;
  v19 = COERCE_DOUBLE((*(a4 + 48))(a1, a4));
  if (v20)
  {
    v19 = 0.0;
  }

  if (*&v32[5] - *&v33[6] - v19 <= a6)
  {
    v35[0] = v7;
    v23 = v16(a1, a4);
    [v23 setAlpha_];
    goto LABEL_13;
  }

  v21 = v16(a1, a4);
  v18(v34, a1, a4);
  v22 = *&v34[5];
  v18(v35, a1, a4);
  [v21 setAlpha_];

LABEL_14:
  v24 = (*(a4 + 64))(a1, a4);
  v25 = v16(a1, a4);
  [v25 alpha];
  v27 = v26;

  [v24 setAlpha_];
  v28 = (*(a4 + 72))(a1, a4);
  v29 = v16(a1, a4);
  [v29 alpha];
  v31 = v30;

  [v28 setAlpha_];
}

uint64_t sub_20C04C158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x20F2F58E0](a2);
  v7 = *(a3 + 16);
  MEMORY[0x20F2F58E0](v7);
  if (v7)
  {
    v8 = *(sub_20C132EE4() - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    sub_20BCF46A0();
    do
    {
      sub_20C13C7C4();
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return sub_20BDA7D60(a1, a4);
}

uint64_t sub_20C04C250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](a1);
  v6 = *(a2 + 16);
  MEMORY[0x20F2F58E0](v6);
  if (v6)
  {
    v7 = *(sub_20C132EE4() - 8);
    v8 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    sub_20BCF46A0();
    do
    {
      sub_20C13C7C4();
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  sub_20BDA7D60(v11, a3);
  return sub_20C13E1B4();
}

uint64_t sub_20C04C36C()
{
  v1 = sub_20C132EE4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v5);
  MEMORY[0x20F2F58E0](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v11 = *(v2 + 16);
    v9 = v2 + 16;
    v10 = v11;
    v12 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v4, v12, v1);
      sub_20BCF46A0();
      sub_20C13C7C4();
      (*(v9 - 8))(v4, v1);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  sub_20BDA7D60(v16, v7);
  return sub_20C13E1B4();
}

uint64_t sub_20C04C4E0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if ((sub_20BB803E0(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_20BB80638(v3, v2);
}

unint64_t sub_20C04C548()
{
  result = qword_27C771F48;
  if (!qword_27C771F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771F48);
  }

  return result;
}

void sub_20C04C59C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_magicPocketView);
  sub_20BA99960((a1 & 1) == 0);
}

void sub_20C04C604(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_magicPocketView);
  sub_20BA99960((a1 & 1) == 0);
}

void sub_20C04C66C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_magicPocketView);
  sub_20BA99960((a1 & 1) == 0);
}

unint64_t sub_20C04C6D4()
{
  result = qword_27C771F50;
  if (!qword_27C771F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771F50);
  }

  return result;
}

uint64_t sub_20C04C74C@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20C04C904(*a1);
  *a2 = result;
  return result;
}

double sub_20C04C778@<D0>(double *a1@<X8>)
{
  result = dbl_20C18ADA8[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_20C04C86C(double a1)
{
  if (a1 <= 374.0)
  {
    return 0;
  }

  if (a1 <= 460.0)
  {
    return 1;
  }

  if (a1 > 1194.0)
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (a1 > 981.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (a1 > 726.0)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_20C04C904(double a1)
{
  if (a1 == 374.0)
  {
    return 0;
  }

  if (a1 == 460.0)
  {
    return 1;
  }

  if (a1 == 726.0)
  {
    return 2;
  }

  if (a1 == 1366.0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  if (a1 == 1194.0)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 981.0)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void UISheetPresentationController.configureCustomDetents(multiplier:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  sub_20C04CAE0();
  *(swift_allocObject() + 16) = a1;
  v4 = sub_20C13D4C4();

  *(v3 + 32) = v4;
  v5 = sub_20C13CC54();

  [v1 setDetents_];
}

unint64_t sub_20C04CAE0()
{
  result = qword_27C771098;
  if (!qword_27C771098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C771098);
  }

  return result;
}

double sub_20C04CB64(void *a1)
{
  v2 = *(v1 + 16);
  [a1 maximumDetentValue];
  return v2 * v3;
}

id UIButton.forDynamicType()()
{
  v1 = [v0 titleLabel];
  if (v1)
  {
    v2 = v1;
    [v1 setAdjustsFontForContentSizeCategory_];
  }

  return v4;
}

id UIButton.withTitleLabelFont(_:)(uint64_t a1)
{
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setFont_];
  }

  return v6;
}

id UIButton.withTouchInsets(_:)()
{
  [v0 setSmu_touchInsets_];

  return v2;
}

id UIButton.withBackgroundImage(_:for:)(uint64_t a1, uint64_t a2)
{
  [v2 setBackgroundImage:a1 forState:a2];

  return v4;
}

id UIButton.withTitle(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C13C914();
  [v6 setTitle:v4 forState:a3];

  return v6;
}

id UIButton.withTitleColor(_:for:)(uint64_t a1, uint64_t a2)
{
  [v2 setTitleColor:a1 forState:a2];

  return v4;
}

id UIButton.withContentEdgeInsets(_:)()
{
  [v0 setContentEdgeInsets_];

  return v2;
}

id UIButton.withImage(_:for:)(uint64_t a1, uint64_t a2)
{
  [v2 setImage:a1 forState:a2];

  return v4;
}

uint64_t sub_20C04CE54()
{
  v0 = sub_20C1368D4();
  v2 = v1;
  v4 = v3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771F58);
  sub_20C133BD4();
  sub_20B583F4C(v0, v2, v4);
  v5 = sub_20C1368E4();
  v7 = v6;
  LOBYTE(v2) = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771F60);
  sub_20C133BD4();
  sub_20B583F4C(v5, v7, v2);
  result = MEMORY[0x277D84FA0];
  if ((v11 & 1) != 0 && v10 != 3)
  {
    return sub_20BE8C680(*(&off_277D98200 + v10));
  }

  return result;
}

uint64_t type metadata accessor for DurationFilterUpdated()
{
  result = qword_27C771F68;
  if (!qword_27C771F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C04CFC4()
{
  sub_20C134EC4();
  if (v0 <= 0x3F)
  {
    sub_20B7F7218();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20C04D048()
{
  v0 = sub_20C136084();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B234();
    sub_20C04D42C(v2);

    return sub_20B8600EC(v2);
  }

  return result;
}

uint64_t sub_20C04D108()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_20C13B464();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    if (*(v5 + OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_state) == 1)
    {
      *(v5 + OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_state) = 3;
    }
  }

  return result;
}

uint64_t sub_20C04D250()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_20C13B464();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    v6 = OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_state;
    if (*(v5 + OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_state) == 3)
    {
      swift_getObjectType();
      sub_20BA158F4();
      sub_20C13A764();
      *(v5 + v6) = 2;
    }
  }

  return result;
}

uint64_t sub_20C04D3CC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_20C04D42C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_20C136084();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B464();
  sub_20C13BB64();
  (*(v15 + 8))(v17, v14);
  sub_20B860148(a1, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10);
  if ((*(*(v18 - 8) + 48))(v13, 1, v18) == 1)
  {
    v19 = sub_20C135734();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    v20 = OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_serviceSubscription;
    swift_beginAccess();
    sub_20B88109C(v10, v2 + v20);
    return swift_endAccess();
  }

  else
  {
    (*(v5 + 32))(v7, &v13[*(v18 + 48)], v4);
    sub_20C136AF4();
    (*(v5 + 8))(v7, v4);
    v22 = OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_serviceSubscription;
    swift_beginAccess();
    sub_20B88109C(v10, v2 + v22);
    swift_endAccess();
    *(v2 + OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_state) = 1;
    v23 = sub_20C135174();
    return (*(*(v23 - 8) + 8))(v13, v23);
  }
}

uint64_t sub_20C04D7E4()
{
  v1 = v0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771FA0);
  MEMORY[0x28223BE20](v55);
  v56 = &v45 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v45 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v13 = sub_20C135734();
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v52 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v45 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v45 - v18;
  v20 = sub_20C136C64();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v58 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C13BB84();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B464();
  sub_20C13BB64();
  result = (*(v24 + 8))(v26, v23);
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_state) == 2)
  {
    v51 = OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_state;
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_20C13B174();
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      v28 = &qword_27C768690;
      v29 = v19;
      return sub_20B520158(v29, v28);
    }

    v30 = v58;
    (*(v21 + 32))(v58, v19, v20);
    sub_20C136AF4();
    v31 = v59;
    v32 = *(v59 + 48);
    if (v32(v12, 1, v13) == 1)
    {
      (*(v21 + 8))(v30, v20);
      v28 = &unk_27C762390;
      v29 = v12;
      return sub_20B520158(v29, v28);
    }

    v49 = v21;
    v50 = v20;
    v33 = v57;
    v45 = v31[4];
    v46 = v31 + 4;
    v45(v57, v12, v13);
    v34 = OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_serviceSubscription;
    swift_beginAccess();
    v48 = v31[2];
    v48(v9, v33, v13);
    v47 = v31[7];
    v47(v9, 0, 1, v13);
    v35 = *(v55 + 48);
    v55 = v34;
    v36 = v1 + v34;
    v37 = v56;
    sub_20C04E3A0(v36, v56);
    sub_20C04E3A0(v9, v37 + v35);
    if (v32(v37, 1, v13) == 1)
    {
      sub_20B520158(v9, &unk_27C762390);
      if (v32((v37 + v35), 1, v13) == 1)
      {
        sub_20B520158(v37, &unk_27C762390);
        (*(v59 + 8))(v57, v13);
LABEL_16:
        result = (*(v49 + 8))(v58, v50);
        *(v1 + v51) = 0;
        return result;
      }
    }

    else
    {
      v38 = v53;
      sub_20C04E3A0(v37, v53);
      if (v32((v37 + v35), 1, v13) != 1)
      {
        v42 = (v37 + v35);
        v43 = v52;
        v45(v52, v42, v13);
        sub_20C04E410();
        LODWORD(v46) = sub_20C13C894();
        v44 = *(v59 + 8);
        v44(v43, v13);
        sub_20B520158(v9, &unk_27C762390);
        v44(v38, v13);
        sub_20B520158(v37, &unk_27C762390);
        if (v46)
        {
          v44(v57, v13);
          goto LABEL_16;
        }

        goto LABEL_13;
      }

      sub_20B520158(v9, &unk_27C762390);
      (*(v59 + 8))(v38, v13);
    }

    sub_20B520158(v37, &qword_27C771FA0);
LABEL_13:
    v39 = v54;
    v40 = v57;
    v48(v54, v57, v13);
    v47(v39, 0, 1, v13);
    v41 = v55;
    swift_beginAccess();
    sub_20B88109C(v39, v1 + v41);
    swift_endAccess();
    swift_getObjectType();
    sub_20B52E43C();
    sub_20C13A764();
    (*(v59 + 8))(v40, v13);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_20C04DFC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B464();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  v9 = sub_20C135734();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_serviceSubscription;
  swift_beginAccess();
  sub_20B88109C(v4, v1 + v10);
  result = swift_endAccess();
  *(v1 + OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_state) = 0;
  return result;
}

uint64_t sub_20C04E19C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_serviceSubscription, &unk_27C762390);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteBrowsingSubscriptionObserver()
{
  result = qword_27C771F88;
  if (!qword_27C771F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C04E27C()
{
  sub_20B87D5A8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_20C04E34C()
{
  result = qword_27C771F98;
  if (!qword_27C771F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771F98);
  }

  return result;
}

uint64_t sub_20C04E3A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C04E410()
{
  result = qword_27C771FA8;
  if (!qword_27C771FA8)
  {
    sub_20C135734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771FA8);
  }

  return result;
}

char *sub_20C04E468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v10 + 32))(&v20 - v15, v14);
  type metadata accessor for RemoteBrowsingSubscriptionObserver();
  v17 = swift_allocObject();
  (*(v10 + 16))(v12, v16, a5);
  v18 = sub_20C04E5D0(v12, a2, a3, v17, a5, a6);
  (*(v10 + 8))(v16, a5);
  return v18;
}

char *sub_20C04E5D0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21[-v13];
  v22[3] = a5;
  v22[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v16 = OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_serviceSubscription;
  v17 = sub_20C135734();
  v18 = *(*(v17 - 8) + 56);
  v18(&a4[v16], 1, 1, v17);
  sub_20B51CC64(v22, (a4 + 16));
  *(a4 + 8) = a2;
  *(a4 + 9) = a3;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(a4 + 7) = sub_20C13A914();
  v18(v14, 1, 1, v17);
  v19 = OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_serviceSubscription;
  swift_beginAccess();
  sub_20B88109C(v14, &a4[v19]);
  swift_endAccess();
  a4[OBJC_IVAR____TtC9SeymourUI34RemoteBrowsingSubscriptionObserver_state] = 0;
  swift_getObjectType();
  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v21);

  swift_allocObject();
  swift_weakInit();
  sub_20B86FA88();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v21);

  swift_allocObject();
  swift_weakInit();
  sub_20B621B88();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v21);

  swift_allocObject();
  swift_weakInit();

  sub_20B86FA34();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return a4;
}

void *sub_20C04EAF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVTitleDisplayingFloatingContentCell_floatingView);
  v2 = v1;
  return v1;
}

char *sub_20C04EB28(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  v10 = OBJC_IVAR____TtC9SeymourUI36TVTitleDisplayingFloatingContentCell_floatingView;
  *&v4[OBJC_IVAR____TtC9SeymourUI36TVTitleDisplayingFloatingContentCell_floatingView] = v9;
  v11 = qword_27C760820;
  v12 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setCornerRadius_];

  [*&v4[v10] setContinuousCornerEnabled_];
  [*&v4[v10] setRoundContentWhenDeselected_];
  [*&v4[v10] setFocusedSizeIncrease_];
  [*&v4[v10] setContentMotionRotation:0.0 translation:{0.0523598776, 0.0, 4.0}];
  v13 = *&v4[v10];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 configurationWithStyle_];
  [v15 setFocusAnimationConfiguration_];

  v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  v18 = *&v4[v10];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21 forState:0];

  v22 = *&v4[v10];
  v23 = v17;
  [v22 setBackgroundColor:v23 forState:1];
  v24 = *&v4[v10];
  [v24 setBackgroundColor:v23 forState:8];

  v25 = *&v4[v10];
  v26 = [v19 clearColor];
  [v25 setBackgroundColor:v26 forState:2];

  v34.receiver = v4;
  v34.super_class = type metadata accessor for TVTitleDisplayingFloatingContentCell();
  v27 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v28 = [v27 contentView];
  v29 = OBJC_IVAR____TtC9SeymourUI36TVTitleDisplayingFloatingContentCell_floatingView;
  [v28 addSubview_];

  v30 = [v27 traitCollection];
  LODWORD(v21) = [v30 userInterfaceStyle] == 2;

  v31 = *&v27[v29];
  v32 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:dbl_20C167360[v21]];
  [v31 setBackgroundColor:v32 forState:4];

  return v27;
}

void sub_20C04F004(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TVTitleDisplayingFloatingContentCell();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4)
  {
    if (a1)
    {
      v5 = [a1 userInterfaceStyle];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceStyle];

    if (!a1 || v5 != v7)
    {
      v8 = [v1 traitCollection];
      v9 = [v8 userInterfaceStyle] == 2;

      v10 = *&v1[OBJC_IVAR____TtC9SeymourUI36TVTitleDisplayingFloatingContentCell_floatingView];
      v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:dbl_20C167360[v9]];
      [v10 setBackgroundColor:v11 forState:4];
    }
  }
}

id sub_20C04F1DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterResultHeaderShelf;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B5E5C28();
    v10 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v7 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v7, v10);
        }

        else
        {
          if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v10 + 8 * v7 + 32);
        }

        v13 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v12);

        ++v7;
        if (v13 == i)
        {
          v14 = v24[0];
          v7 = 0x27C771000;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v14;
    sub_20B6FFB30(v24, *&v3[*(v7 + 4016)]);

    v15 = sub_20B8E9218(v28);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v7;
      v18 = v15 + 32;
      do
      {
        sub_20B51CC64(v18, v24);
        v19 = *&v3[v6];
        v20 = v25;
        v21 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v21 + 16))(v19, a2 & 1, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v18 += 40;
        --v16;
      }

      while (v16);

      v5 = a1;
      v7 = v17;
    }

    else
    {

      v5 = a1;
    }
  }

  return [*&v3[*(v7 + 4016)] setControlState:v5 animated:a2 & 1];
}

id sub_20C04F454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterResultHeaderShelf;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B5E5C28();
    v10 = sub_20C13CC74();

    v23[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v26, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = v23[0];
          v7 = &OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterResultHeaderShelf;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v27 = v14;
    sub_20B6FFB30(v23, *&v3[v7[502]]);

    v15 = sub_20B8E9218(v27);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, v23);
        v18 = *&v3[v6];
        v19 = v24;
        v20 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v20 + 24))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  return [*&v3[v7[502]] setControlState:v5 withAnimationCoordinator:a2];
}

id sub_20C04F6C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVTitleDisplayingFloatingContentCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C04F954(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 32;
    do
    {
      sub_20B51F1D8(v3, v8);
      result = swift_dynamicCast();
      if (result)
      {
        if (v7 == 1)
        {
          v4 = (v1 + OBJC_IVAR____TtC9SeymourUI32RemoveDownloadShareSheetActivity_workoutIdentifier);
          *v4 = v5;
          v4[1] = v6;
        }

        result = sub_20B624748(v5, v6, v7);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

id sub_20C04FA78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v9 - v4;
  if (*&v0[OBJC_IVAR____TtC9SeymourUI32RemoveDownloadShareSheetActivity_workoutIdentifier + 8])
  {
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI32RemoveDownloadShareSheetActivity_assetClient], *&v0[OBJC_IVAR____TtC9SeymourUI32RemoveDownloadShareSheetActivity_assetClient + 24]);

    sub_20C139E04();

    v6 = sub_20C137CB4();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_20B52347C, v7);

    (*(v2 + 8))(v5, v1);
    return [v0 activityDidFinish_];
  }

  else
  {

    return [v0 activityDidFinish_];
  }
}

id sub_20C04FCE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoveDownloadShareSheetActivity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ThemeFilterUpdated()
{
  result = qword_27C771FC8;
  if (!qword_27C771FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C04FDFC()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20C137374();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanTemplateMetadata;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v11, v10, &unk_27C772000);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_20B520158(v10, &unk_27C772000);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_20B520158(v10, &unk_27C772000);
    sub_20C137314();
    (*(v5 + 8))(v7, v4);
  }

  v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v13 = sub_20C13C914();

  v14 = [v12 initWithString_];

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768180);
  v16 = swift_allocBox();
  v18 = v17;
  v19 = v15[12];
  v20 = v15[16];
  v21 = v15[20];
  v22 = sub_20C135814();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  *(v18 + v19) = v14;
  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle);
  *(v18 + v20) = v23;
  v24 = v23;
  v25 = v14;
  *(v18 + v21) = sub_20C051060();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14F980;
  *(v26 + 32) = v16 | 0x9000000000000001;
  v58 = 0uLL;
  LOBYTE(v59) = 1;
  *(&v59 + 1) = *v57;
  DWORD1(v59) = *&v57[3];
  *(&v59 + 1) = 0;
  *&v60 = 0;
  WORD4(v60) = 128;
  *(&v60 + 10) = *&v55[7];
  HIWORD(v60) = v56;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  LOBYTE(v64) = 0;
  *(&v64 + 1) = *v55;
  DWORD1(v64) = *&v55[3];
  *(&v64 + 1) = v26;
  *&v65[0] = MEMORY[0x277D84F90];
  *(v65 + 8) = 0u;
  *(&v65[1] + 8) = 0u;
  *(&v65[2] + 1) = 0;
  v66 = 2;
  nullsub_1(&v58);
  v27 = v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row;
  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 144);
  v67[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 128);
  v67[9] = v28;
  v68 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 160);
  v29 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 80);
  v67[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 64);
  v67[5] = v29;
  v30 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 112);
  v67[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 96);
  v67[7] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 16);
  v67[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row);
  v67[1] = v31;
  v32 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 48);
  v67[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 32);
  v67[3] = v32;
  v33 = v65[0];
  v34 = v65[2];
  *(v27 + 128) = v65[1];
  *(v27 + 144) = v34;
  *(v27 + 160) = v66;
  v35 = v63;
  *(v27 + 64) = v62;
  *(v27 + 80) = v35;
  *(v27 + 96) = v64;
  *(v27 + 112) = v33;
  v36 = v59;
  *v27 = v58;
  *(v27 + 16) = v36;
  v37 = v61;
  *(v27 + 32) = v60;
  *(v27 + 48) = v37;

  sub_20B520158(v67, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v39 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v40 = sub_20B61D050(v1, Strong);
    if (v41)
    {
      v43 = v41;
      v50 = v40;
      v51 = v42;
      sub_20B5E2E18();
      v44 = sub_20C13D374();
      v46 = v52;
      v45 = v53;
      *v52 = v44;
      v47 = v54;
      (*(v45 + 104))(v46, *MEMORY[0x277D85200], v54);
      v48 = sub_20C13C584();
      (*(v45 + 8))(v46, v47);
      if ((v48 & 1) == 0)
      {
        __break(1u);
        return;
      }

      sub_20B6206D8(v50, v43, v51, v1, 0, v39);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  swift_unknownObjectRelease();
}

void sub_20C0503AC()
{
  v1 = v0;
  v2 = sub_20C1327F4();
  v91 = *(v2 - 8);
  v92 = v2;
  MEMORY[0x28223BE20](v2);
  v90 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_20C133594();
  v101 = *(v98 - 1);
  MEMORY[0x28223BE20](v98);
  v95 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v5 - 8);
  v94 = &v81 - v6;
  v99 = sub_20C132E94();
  v93 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762230);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v81 - v11;
  v13 = sub_20C135214();
  v104 = *(v13 - 8);
  v105 = v13;
  MEMORY[0x28223BE20](v13);
  v100 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C133154();
  v102 = *(v15 - 8);
  v103 = v15;
  MEMORY[0x28223BE20](v15);
  v89 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v81 - v21;
  v23 = sub_20C133954();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  v28 = v1 + v27;
  v29 = v23;
  v30 = v24;
  sub_20B52F9E8(v28, v22, &unk_27C76A970);
  if ((*(v24 + 48))(v22, 1, v29) == 1)
  {
    sub_20B520158(v22, &unk_27C76A970);
    v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle);
    *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle) = 0;
LABEL_3:

    return;
  }

  v88 = v1;
  (*(v24 + 32))(v26, v22, v29);
  sub_20C133014();
  sub_20C133914();
  v32 = v19;
  v34 = v104;
  v33 = v105;
  (*(v104 + 56))(v12, 0, 1, v105);
  v35 = v100;
  (*(v34 + 32))(v100, v12, v33);
  v36 = v95;
  sub_20C133944();
  v37 = v96;
  sub_20C133564();
  v87 = v26;
  v38 = *(v101 + 8);
  v101 += 8;
  v83 = v38;
  v38(v36, v98);
  v39 = v32;
  v40 = v94;
  v86 = v39;
  sub_20C132D74();
  v41 = v93;
  v42 = *(v93 + 8);
  v43 = v99;
  v84 = v93 + 8;
  v85 = v42;
  v42(v37, v99);
  if ((*(v41 + 48))(v40, 1, v43) == 1)
  {
    (*(v34 + 8))(v35, v33);
    (*(v102 + 8))(v86, v103);
    (*(v30 + 8))(v87, v29);
    sub_20B520158(v40, &qword_27C762AC0);
    return;
  }

  v82 = v29;
  (*(v41 + 32))(v97, v40, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A88);
  v44 = sub_20C133134();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20C14F980;
  (*(v45 + 104))(v47 + v46, *MEMORY[0x277CC9968], v44);
  sub_20BE8D12C(v47);
  swift_setDeallocating();
  (*(v45 + 8))(v47 + v46, v44);
  v48 = v99;
  swift_deallocClassInstance();
  sub_20C133944();
  v49 = v86;
  sub_20C133564();
  v83(v36, v98);
  v50 = v97;
  v51 = v90;
  sub_20C133054();

  v52 = v85;
  v85(v37, v48);
  v53 = v49;
  v54 = sub_20C132774();
  LOBYTE(v49) = v55;
  (*(v91 + 8))(v51, v92);
  v56 = (v102 + 8);
  if ((v49 & 1) == 0)
  {
    v102 = v54;
    sub_20C132E84();
    v57 = v89;
    sub_20C133124();
    v101 = sub_20C132D94();
    v59 = v58;
    v60 = *v56;
    v61 = v103;
    (*v56)(v57, v103);
    v52(v37, v48);
    v62 = v48;
    if (v59)
    {
      v52(v50, v48);
      (*(v104 + 8))(v100, v105);
      v60(v86, v61);
      goto LABEL_10;
    }

    v98 = v60;
    v63 = sub_20C135204();
    v64 = v63 + v102;
    if (__OFADD__(v63, v102))
    {
      __break(1u);
    }

    else
    {
      v65 = v64 + 1;
      v66 = v88;
      if (!__OFADD__(v64, 1))
      {
        v67 = v64 + 4;
        if (!__OFADD__(v65, 3))
        {
          v68 = __OFSUB__(v67, v67 % 7);
          v69 = v67 - v67 % 7;
          if (!v68)
          {
            if (v69 >= v65)
            {
              goto LABEL_22;
            }

            v70 = ceil(v65 / 7.0);
            if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v70 > -9.22337204e18)
              {
                if (v70 < 9.22337204e18)
                {
                  v71 = v62;
                  v69 = 7 * v70;
                  if ((v70 * 7) >> 64 == v69 >> 63)
                  {
LABEL_23:
                    v72 = v101 / 7;
                    v73 = v69 / 7;
                    v74 = *(v66 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanStringBuilder);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
                    v75 = swift_allocObject();
                    *(v75 + 16) = xmmword_20C14F320;
                    v76 = MEMORY[0x277D83B88];
                    v77 = MEMORY[0x277D83C10];
                    *(v75 + 56) = MEMORY[0x277D83B88];
                    *(v75 + 64) = v77;
                    *(v75 + 32) = (v72 & ~(v72 >> 63)) + 1;
                    *(v75 + 96) = v76;
                    *(v75 + 104) = v77;
                    *(v75 + 72) = v73;
                    __swift_project_boxed_opaque_existential_1((v74 + 48), *(v74 + 72));
                    sub_20B5E10B0();

                    v78 = objc_allocWithZone(MEMORY[0x277CCA898]);
                    v79 = sub_20C13C914();

                    v80 = [v78 initWithString_];

                    v85(v97, v71);
                    (*(v104 + 8))(v100, v105);
                    v98(v86, v61);
                    (*(v30 + 8))(v87, v82);
                    v31 = *(v66 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle);
                    *(v66 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle) = v80;
                    goto LABEL_3;
                  }

                  __break(1u);
LABEL_22:
                  v71 = v62;
                  goto LABEL_23;
                }

LABEL_30:
                __break(1u);
                return;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v52(v50, v48);
  (*(v104 + 8))(v100, v105);
  (*v56)(v53, v103);
LABEL_10:
  (*(v30 + 8))(v87, v82);
}

uint64_t sub_20C051060()
{
  v1 = type metadata accessor for ButtonAction(0);
  v2 = *(v1 - 8);
  v3 = v2;
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v9 + 48), *(v9 + 72));
  v10 = sub_20B5E107C();
  v12 = v11;
  type metadata accessor for ButtonAction.ActionType(0);
  swift_storeEnumTagMultiPayload();
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 1) = xmmword_20C18B170;
  *(v8 + 4) = v10;
  *(v8 + 5) = v12;
  __swift_project_boxed_opaque_existential_1((v9 + 48), *(v9 + 72));
  v13 = sub_20B5E107C();
  v15 = v14;
  swift_storeEnumTagMultiPayload();
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 1) = xmmword_20C18B180;
  *(v5 + 4) = v13;
  *(v5 + 5) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0);
  v16 = *(v2 + 72);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14F320;
  v19 = v18 + v17;
  sub_20B7F11D4(v8, v19, type metadata accessor for ButtonAction);
  sub_20B5F6860(v5, v19 + v16);
  sub_20C056F3C(v8, type metadata accessor for ButtonAction);
  return v18;
}

uint64_t sub_20C0512C8(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v80 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = v66 - v4;
  v90 = sub_20C132EE4();
  v75 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v73 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v5;
  MEMORY[0x28223BE20](v6);
  v89 = v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = v66 - v9;
  v77 = sub_20C1333A4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v88 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = v66 - v12;
  v13 = sub_20C1352E4();
  v86 = *(v13 - 8);
  v87 = v13;
  MEMORY[0x28223BE20](v13);
  v85 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v15 - 8);
  v71 = v66 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v17 - 8);
  v84 = v66 - v18;
  v83 = sub_20C134F24();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v20 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v66 - v22;
  v24 = sub_20C133954();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v28, v23, &unk_27C76A970);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_20B520158(v23, &unk_27C76A970);
  }

  v69 = v25;
  v30 = *(v25 + 32);
  v70 = v27;
  v68 = v24;
  v30(v27, v23, v24);
  v93 = v2;
  v31 = v20;
  (*(v82 + 104))(v20, *MEMORY[0x277D513B8], v83);
  v32 = *MEMORY[0x277D52B40];
  v33 = sub_20C136664();
  v34 = *(v33 - 8);
  v35 = v84;
  (*(v34 + 104))(v84, v32, v33);
  (*(v34 + 56))(v35, 0, 1, v33);
  v36 = sub_20C132C14();
  v37 = v71;
  (*(*(v36 - 8) + 56))();
  (*(v86 + 104))(v85, *MEMORY[0x277D51768], v87);
  v38 = sub_20C135ED4();
  v39 = v72;
  (*(*(v38 - 8) + 56))();
  v66[2] = v2;
  sub_20C051E18(v88);
  v40 = sub_20C136E94();
  v41 = v74;
  (*(*(v40 - 8) + 56))(v74, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  v43 = v89;
  sub_20C133804();
  v44 = sub_20C132EA4();
  v46 = v45;
  v47 = v75;
  v67 = *(v75 + 8);
  v66[1] = v75 + 8;
  v67(v43, v90);
  v91 = v44;
  v92 = v46;
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260);
  type metadata accessor for TVWorkoutPlanDetailHeaderShelf();
  sub_20C056FA4();
  v48 = v31;
  v49 = v84;
  v50 = v37;
  v51 = v85;
  v52 = v39;
  v53 = v88;
  sub_20C138DB4();

  sub_20B520158(v41, &unk_27C76BC90);
  (*(v76 + 8))(v53, v77);
  sub_20B520158(v52, &unk_27C7621D0);
  (*(v86 + 8))(v51, v87);
  sub_20B520158(v50, &unk_27C7617F0);
  sub_20B520158(v49, &unk_27C7622E0);
  (*(v82 + 8))(v48, v83);
  v54 = v89;
  v55 = v70;
  sub_20C133854();
  v56 = sub_20C13CDF4();
  v57 = v79;
  (*(*(v56 - 8) + 56))(v79, 1, 1, v56);
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = v73;
  v60 = v90;
  (*(v47 + 16))(v73, v54, v90);
  v61 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v62 = (v78 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 2) = 0;
  *(v63 + 3) = 0;
  *(v63 + 4) = v58;
  (*(v47 + 32))(&v63[v61], v59, v60);
  v64 = &v63[v62];
  v65 = v81;
  *v64 = v80;
  *(v64 + 1) = v65;

  sub_20B615240(0, 0, v57, &unk_20C18B2F0, v63);

  v67(v54, v60);
  return (*(v69 + 8))(v55, v68);
}

uint64_t sub_20C051E18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = &v40 - v10;
  v11 = sub_20C132E94();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C135214();
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v40 - v18;
  v20 = sub_20C133954();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v24, v19, &unk_27C76A970);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20B520158(v19, &unk_27C76A970);
    v25 = sub_20C1352F4();
    (*(*(v25 - 8) + 56))(v44, 1, 1, v25);
    v26 = sub_20C132C14();
    (*(*(v26 - 8) + 56))(v45, 1, 1, v26);
    v27 = sub_20C135ED4();
    (*(*(v27 - 8) + 56))(v46, 1, 1, v27);
    v28 = sub_20C136914();
    (*(*(v28 - 8) + 56))(v47, 1, 1, v28);
    return sub_20C133384();
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    sub_20C132E64();
    sub_20C1338C4();
    (*(v40 + 8))(v13, v41);
    v30 = sub_20C133874();
    v40 = v31;
    v41 = v30;
    v32 = v44;
    sub_20C133864();
    v33 = sub_20C1352F4();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    v34 = v2 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_pageContext;
    v35 = *(v2 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_pageContext);
    v36 = *(v34 + 8);
    v37 = sub_20C132C14();
    (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
    v38 = sub_20C135ED4();
    (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
    v39 = sub_20C136914();
    (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
    sub_20B58C2C8(v35, v36);
    sub_20C133384();
    (*(v42 + 8))(v16, v43);
    return (*(v21 + 8))(v23, v20);
  }
}

uint64_t sub_20C052508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[10] = a1;
  return MEMORY[0x2822009F8](sub_20C052530, 0, 0);
}

uint64_t sub_20C052530()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanClient, v0 + 16);

    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_20C052678;
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);

    return MEMORY[0x2821ADF18](v7, v5, v6, v2, v3);
  }

  else
  {
    **(v0 + 80) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_20C052678()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20C05278C;
  }

  else
  {
    v2 = sub_20C057290;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C05278C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C0527F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v71 = v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = v55 - v5;
  v70 = sub_20C1333A4();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = v55 - v8;
  v76 = sub_20C1352E4();
  v60 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v62 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = v55 - v13;
  v14 = sub_20C134F24();
  v73 = *(v14 - 8);
  v74 = v14;
  MEMORY[0x28223BE20](v14);
  v72 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_20C132EE4();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v55 - v21;
  v23 = sub_20C133954();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v27, v22, &unk_27C76A970);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_20B520158(v22, &unk_27C76A970);
  }

  v58 = v24;
  v29 = *(v24 + 32);
  v56 = v26;
  v57 = v23;
  v29(v26, v22, v23);
  v55[0] = v19;
  sub_20C133804();
  v79 = v1;
  v55[1] = v1;
  (*(v73 + 104))(v72, *MEMORY[0x277D51430], v74);
  v30 = *MEMORY[0x277D52B40];
  v31 = sub_20C136664();
  v32 = *(v31 - 8);
  v33 = v59;
  (*(v32 + 104))(v59, v30, v31);
  (*(v32 + 56))(v33, 0, 1, v31);
  v34 = sub_20C132C14();
  (*(*(v34 - 8) + 56))(v75, 1, 1, v34);
  v35 = v60;
  v36 = v62;
  (*(v60 + 104))(v62, *MEMORY[0x277D51768], v76);
  v37 = sub_20C135ED4();
  v38 = v64;
  (*(*(v37 - 8) + 56))(v64, 1, 1, v37);
  v39 = v65;
  sub_20C051E18(v65);
  v40 = sub_20C136E94();
  v41 = v69;
  (*(*(v40 - 8) + 56))(v69, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  v77 = sub_20C132EA4();
  v78 = v43;
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260);
  type metadata accessor for TVWorkoutPlanDetailHeaderShelf();
  sub_20C056FA4();
  v44 = v72;
  v45 = v75;
  sub_20C138DB4();

  sub_20B520158(v41, &unk_27C76BC90);
  (*(v68 + 8))(v39, v70);
  sub_20B520158(v38, &unk_27C7621D0);
  (*(v35 + 8))(v36, v76);
  sub_20B520158(v45, &unk_27C7617F0);
  sub_20B520158(v33, &unk_27C7622E0);
  (*(v73 + 8))(v44, v74);
  v46 = sub_20C13CDF4();
  v47 = v71;
  (*(*(v46 - 8) + 56))(v71, 1, 1, v46);
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = v66;
  v50 = v63;
  v51 = v55[0];
  v52 = v67;
  (*(v66 + 16))(v63, v55[0], v67);
  v53 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v54 = swift_allocObject();
  *(v54 + 2) = 0;
  *(v54 + 3) = 0;
  *(v54 + 4) = v48;
  (*(v49 + 32))(&v54[v53], v50, v52);
  sub_20B615240(0, 0, v47, &unk_20C18B2E0, v54);

  (*(v49 + 8))(v51, v52);
  return (*(v58 + 8))(v56, v57);
}

uint64_t sub_20C0532BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_20C0532E0, 0, 0);
}

uint64_t sub_20C0532E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanClient, v0 + 16);

    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_20C053424;
    v5 = *(v0 + 96);

    return MEMORY[0x2821ADEC8](v5, v2, v3);
  }

  else
  {
    **(v0 + 80) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_20C053424()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20C0535A4;
  }

  else
  {
    v2 = sub_20C053538;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C053538()
{
  **(v0 + 80) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C0535A4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C053608()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanClient);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_remoteBrowsingSource);
  swift_unknownObjectRelease();

  sub_20B58CFB0(*(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_pageContext), *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_pageContext + 8));
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan, &unk_27C76A970);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanTemplateMetadata, &unk_27C772000);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanSummary, &unk_27C772020);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  return v0;
}

uint64_t sub_20C0537E0()
{
  sub_20C053608();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWorkoutPlanDetailHeaderShelf()
{
  result = qword_27C771FD8;
  if (!qword_27C771FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C05388C()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20C053A80(319, &qword_27C7629F8, MEMORY[0x277D50180]);
    if (v1 <= 0x3F)
    {
      sub_20C053A80(319, &qword_27C771FF0, MEMORY[0x277D53288]);
      if (v2 <= 0x3F)
      {
        sub_20C053A80(319, &qword_27C76F598, MEMORY[0x277D518F8]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20C053A80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20C053AD4()
{
  v62 = sub_20C132EE4();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20C133954();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v58 - v7;
  v76 = sub_20C1333A4();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - v12;
  v14 = sub_20C1352E4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v58 - v22;
  v24 = sub_20C134F24();
  v25 = MEMORY[0x28223BE20](v24);
  v79 = v0;
  v66 = v27;
  v28 = *(v27 + 104);
  v65 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v29;
  v28(v25);
  v30 = sub_20C136664();
  v31 = *(*(v30 - 8) + 56);
  v67 = v23;
  v31(v23, 1, 1, v30);
  v32 = sub_20C132C14();
  v33 = *(*(v32 - 8) + 56);
  v69 = v20;
  v34 = v20;
  v35 = v63;
  v33(v34, 1, 1, v32);
  v36 = *MEMORY[0x277D51768];
  v70 = v15;
  v37 = v15;
  v38 = v64;
  v39 = *(v37 + 104);
  v72 = v14;
  v39(v17, v36, v14);
  v40 = sub_20C135ED4();
  v41 = *(*(v40 - 8) + 56);
  v71 = v13;
  v41(v13, 1, 1, v40);
  v73 = v10;
  sub_20C051E18(v10);
  v42 = sub_20C136E94();
  v43 = *(*(v42 - 8) + 56);
  v75 = v8;
  v43(v8, 1, 1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  v45 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v45, v5, &unk_27C76A970);
  if ((*(v38 + 48))(v5, 1, v35))
  {
    sub_20B520158(v5, &unk_27C76A970);
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v48 = v59;
    (*(v38 + 16))(v59, v5, v35);
    sub_20B520158(v5, &unk_27C76A970);
    v49 = v60;
    sub_20C133804();
    (*(v38 + 8))(v48, v35);
    v46 = sub_20C132EA4();
    v47 = v50;
    (*(v61 + 8))(v49, v62);
  }

  v77 = v46;
  v78 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  sub_20B82898C();
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260);
  type metadata accessor for TVWorkoutPlanDetailHeaderShelf();
  sub_20C056FA4();
  v51 = v75;
  v52 = v65;
  v53 = v67;
  v54 = v69;
  v55 = v71;
  v56 = v73;
  sub_20C138DB4();

  sub_20B520158(v51, &unk_27C76BC90);
  (*(v74 + 8))(v56, v76);
  sub_20B520158(v55, &unk_27C7621D0);
  (*(v70 + 8))(v17, v72);
  sub_20B520158(v54, &unk_27C7617F0);
  sub_20B520158(v53, &unk_27C7622E0);
  return (*(v66 + 8))(v52, v68);
}

uint64_t sub_20C0543D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_20C054438()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v1 - 8);
  v36 = &v31 - v2;
  v3 = sub_20C1333A4();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v31 - v6;
  v39 = sub_20C1352E4();
  v32 = *(v39 - 8);
  v7 = v32;
  MEMORY[0x28223BE20](v39);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v35 = sub_20C134F24();
  v16 = *(v35 - 8);
  v17 = MEMORY[0x28223BE20](v35);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v0;
  (*(v16 + 104))(v19, *MEMORY[0x277D51468], v17);
  v20 = *MEMORY[0x277D52B40];
  v21 = sub_20C136664();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v15, v20, v21);
  (*(v22 + 56))(v15, 0, 1, v21);
  v23 = sub_20C132C14();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  (*(v7 + 104))(v9, *MEMORY[0x277D51768], v39);
  v24 = sub_20C135ED4();
  v25 = v33;
  (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  v26 = v34;
  sub_20C051E18(v34);
  v27 = sub_20C136E94();
  v28 = v36;
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
  sub_20C0551E8(MEMORY[0x277D84F90]);
  type metadata accessor for TVWorkoutPlanDetailHeaderShelf();
  sub_20C056FA4();
  v29 = v31;
  sub_20C138DB4();

  sub_20B520158(v28, &unk_27C76BC90);
  (*(v37 + 8))(v26, v38);
  sub_20B520158(v25, &unk_27C7621D0);
  (*(v32 + 8))(v29, v39);
  sub_20B520158(v12, &unk_27C7617F0);
  sub_20B520158(v15, &unk_27C7622E0);
  return (*(v16 + 8))(v19, v35);
}

uint64_t sub_20C054A04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C0512C8(a1, a2);
  }

  return result;
}

uint64_t sub_20C054A78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C054AF0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_20C054BF0(uint64_t a1)
{
  sub_20C13E164();
  sub_20C135684();
  sub_20C13CA64();

  v2 = sub_20C13E1B4();

  return sub_20C054C78(a1, v2);
}

unint64_t sub_20C054C78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_20C135684();
      v8 = v7;
      if (v6 == sub_20C135684() && v8 == v9)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_20C054D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v7 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  v8 = sub_20C133954();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanTemplateMetadata;
  v10 = sub_20C137374();
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanSummary;
  v12 = sub_20C1353F4();
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  *(v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle) = 0;
  v13 = v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row;
  sub_20B5D8060(v24);
  v14 = v24[9];
  *(v13 + 128) = v24[8];
  *(v13 + 144) = v14;
  *(v13 + 160) = v25;
  v15 = v24[5];
  *(v13 + 64) = v24[4];
  *(v13 + 80) = v15;
  v16 = v24[7];
  *(v13 + 96) = v24[6];
  *(v13 + 112) = v16;
  v17 = v24[1];
  *v13 = v24[0];
  *(v13 + 16) = v17;
  v18 = v24[3];
  *(v13 + 32) = v24[2];
  *(v13 + 48) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_bag) = *&v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v23, v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v23, v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(v23, v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanStringBuilder) = *&v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v23, v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v19 = *(&v23[0] + 1);
  v20 = (v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_eventHub);
  *v20 = *&v23[0];
  v20[1] = v19;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_subscriptionToken) = sub_20C13A914();
  v21 = (v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_pageContext);
  *v21 = a2;
  v21[1] = a3;
  *(v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_dependencies) = a1;
  swift_getObjectType();
  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v3;
}

unint64_t sub_20C0551E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A10);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, v14, &unk_27C762260);
      v5 = v14[0];
      result = sub_20C054BF0(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_20C055320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  MEMORY[0x28223BE20](v2 - 8);
  v206 = (&v200 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v209 = *(v4 - 8);
  v210 = v4;
  MEMORY[0x28223BE20](v4);
  v208 = &v200 - v5;
  v207 = sub_20C137374();
  v205 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v202 = &v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000);
  MEMORY[0x28223BE20](v7 - 8);
  v204 = &v200 - v8;
  v9 = sub_20C133954();
  v230 = *(v9 - 8);
  v231 = v9;
  MEMORY[0x28223BE20](v9);
  v203 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v11 - 8);
  v211 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v212 = &v200 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v15 - 8);
  v215 = &v200 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v216 = &v200 - v18;
  v19 = sub_20C1333A4();
  v232 = *(v19 - 8);
  v233 = v19;
  MEMORY[0x28223BE20](v19);
  v229 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v214 = &v200 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = (&v200 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v228 = &v200 - v27;
  MEMORY[0x28223BE20](v28);
  v213 = &v200 - v29;
  v30 = sub_20C1352E4();
  v236 = *(v30 - 8);
  v237 = v30;
  MEMORY[0x28223BE20](v30);
  v226 = &v200 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v227 = &v200 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v34 - 8);
  v224 = &v200 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v225 = &v200 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v38 - 8);
  v222 = &v200 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v223 = &v200 - v41;
  v42 = sub_20C134F24();
  v234 = *(v42 - 8);
  v235 = v42;
  MEMORY[0x28223BE20](v42);
  v220 = &v200 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v221 = &v200 - v45;
  v46 = sub_20C132EE4();
  v218 = *(v46 - 8);
  v219 = v46;
  MEMORY[0x28223BE20](v46);
  v217 = &v200 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v48);
  v50 = &v200 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v51);
  v53 = (&v200 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v54);
  v56 = &v200 - v55;
  v57 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v57);
  v59 = (&v200 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B7F11D4(a1, v56, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B5F6860(v56, v59);
    sub_20B7F11D4(v59 + *(v57 + 28), v50, type metadata accessor for ButtonAction.ActionType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      v103 = v238;
      __swift_project_boxed_opaque_existential_1((*(v238 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanStringBuilder) + 48), *(*(v238 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanStringBuilder) + 72));
      v227 = sub_20B5E107C();
      v105 = v104;
      v106 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanTemplateMetadata;
      swift_beginAccess();
      v107 = v103 + v106;
      v108 = v204;
      sub_20B52F9E8(v107, v204, &unk_27C772000);
      v109 = v205;
      v110 = v207;
      v111 = (*(v205 + 48))(v108, 1, v207);
      v201 = v59;
      if (v111)
      {
        sub_20B520158(v108, &unk_27C772000);
        v112 = 0;
        v113 = 0;
      }

      else
      {
        v123 = v202;
        (*(v109 + 16))(v202, v108, v110);
        sub_20B520158(v108, &unk_27C772000);
        v112 = sub_20C137314();
        v113 = v124;
        (*(v109 + 8))(v123, v110);
      }

      v125 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v127 = objc_opt_self();

      v128 = [v127 bundleForClass_];
      v129 = sub_20C132964();
      v131 = v130;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772010);
      v132 = swift_allocObject();
      *(v132 + 16) = xmmword_20C1517D0;
      *(v132 + 56) = &type metadata for TrimLeadingWhitespaceFilter;
      *(v132 + 64) = &off_2822B8960;
      *(v132 + 96) = &type metadata for MaxLengthFilter;
      *(v132 + 104) = &off_2822B8BF0;
      *(v132 + 72) = 40;
      *(v132 + 136) = &type metadata for MaxBytesFilter;
      *(v132 + 144) = &off_2822E2930;
      *(v132 + 112) = 99;
      type metadata accessor for SanitizingTextInputPresenter();
      v133 = swift_allocObject();
      *(v133 + 24) = 0;
      swift_unknownObjectWeakInit();
      *&v243 = v227;
      *(&v243 + 1) = v105;
      v244 = 0uLL;
      *&v245 = v112;
      *(&v245 + 1) = v113;
      *&v246 = v129;
      *(&v246 + 1) = v131;
      *&v247 = sub_20C056F9C;
      *(&v247 + 1) = v125;
      v248[0] = v227;
      v248[1] = v105;
      v248[2] = 0;
      v248[3] = 0;
      v248[4] = v112;
      v248[5] = v113;
      v248[6] = v129;
      v248[7] = v131;
      v248[8] = sub_20C056F9C;
      v248[9] = v125;
      sub_20B9A9A2C(&v243, v242);
      sub_20B9A9A88(v248);
      v134 = v246;
      *(v133 + 64) = v245;
      *(v133 + 80) = v134;
      *(v133 + 96) = v247;
      v135 = v244;
      *(v133 + 32) = v243;
      *(v133 + 48) = v135;
      *(v133 + 120) = 0;
      *(v133 + 128) = 0;
      *(v133 + 112) = v132;
      v227 = v133;

      Strong = swift_unknownObjectWeakLoadStrong();
      v137 = v236;
      v138 = v237;
      v139 = v235;
      if (Strong)
      {
        v140 = Strong;
        v141 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v142 = *(v141 + 8);
          ObjectType = swift_getObjectType();
          v144 = *(v142 + 240);
          v145 = v227;

          v144(v140, v145, &off_2822EEEA0, ObjectType, v142);
          v139 = v235;
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      v146 = v238;
      v241 = v238;
      (*(v234 + 104))(v220, *MEMORY[0x277D513D8], v139);
      v147 = *MEMORY[0x277D52B38];
      v148 = sub_20C136664();
      v149 = *(v148 - 8);
      v150 = v222;
      (*(v149 + 104))(v222, v147, v148);
      (*(v149 + 56))(v150, 0, 1, v148);
      v151 = sub_20C132C14();
      (*(*(v151 - 8) + 56))(v224, 1, 1, v151);
      (*(v137 + 104))(v226, *MEMORY[0x277D51768], v138);
      v152 = sub_20C135ED4();
      (*(*(v152 - 8) + 56))(v228, 1, 1, v152);
      sub_20C051E18(v229);
      v153 = sub_20C136E94();
      v154 = v215;
      (*(*(v153 - 8) + 56))(v215, 1, 1, v153);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C14F980;
      *(inited + 32) = 9;
      v156 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
      swift_beginAccess();
      v157 = v146 + v156;
      v158 = v211;
      sub_20B52F9E8(v157, v211, &unk_27C76A970);
      v160 = v230;
      v159 = v231;
      if ((*(v230 + 48))(v158, 1, v231))
      {
        sub_20B520158(v158, &unk_27C76A970);
        v161 = 0;
        v162 = 0;
      }

      else
      {
        v163 = v203;
        (*(v160 + 16))(v203, v158, v159);
        sub_20B520158(v158, &unk_27C76A970);
        v164 = v217;
        sub_20C133804();
        v165 = v163;
        v154 = v215;
        (*(v160 + 8))(v165, v159);
        v161 = sub_20C132EA4();
        v162 = v166;
        (*(v218 + 8))(v164, v219);
      }

      v239 = v161;
      v240 = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
      sub_20B82898C();
      sub_20C13DC04();
      sub_20B6B29D4(inited);
      swift_setDeallocating();
      sub_20B520158(inited + 32, &unk_27C762260);
      type metadata accessor for TVWorkoutPlanDetailHeaderShelf();
      sub_20C056FA4();
      v167 = v220;
      v168 = v222;
      v169 = v224;
      v170 = v226;
      v172 = v228;
      v171 = v229;
      sub_20C138DB4();

      sub_20B520158(v154, &unk_27C76BC90);
      (*(v232 + 8))(v171, v233);
      sub_20B520158(v172, &unk_27C7621D0);
      (*(v236 + 8))(v170, v237);
      sub_20B520158(v169, &unk_27C7617F0);
      sub_20B520158(v168, &unk_27C7622E0);
      (*(v234 + 8))(v167, v235);
    }

    else
    {
      if (EnumCaseMultiPayload != 15)
      {
        v114 = sub_20C135ED4();
        (*(*(v114 - 8) + 56))(v25, 1, 1, v114);
        v115 = v206;
        (*(v236 + 56))(v206, 1, 1, v237);
        v116 = v208;
        sub_20B5A8220(v59, 0, 0, v25, 0, 0, v115, v208);
        sub_20B520158(v115, &unk_27C765D50);
        sub_20B520158(v25, &unk_27C7621D0);
        v117 = v210;
        v118 = sub_20C137CB4();
        v119 = swift_allocObject();
        *(v119 + 16) = 0;
        *(v119 + 24) = 0;
        v118(sub_20B52347C, v119);

        (*(v209 + 8))(v116, v117);
        sub_20C056F3C(v59, type metadata accessor for ButtonAction);
        v120 = type metadata accessor for ButtonAction.ActionType;
        v121 = v50;
        return sub_20C056F3C(v121, v120);
      }

      v201 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
      v61 = (type metadata accessor for PageAlertAction() - 8);
      v62 = *(*v61 + 72);
      v63 = (*(*v61 + 80) + 32) & ~*(*v61 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_20C14F320;
      v65 = *(v238 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanStringBuilder);
      v229 = v64;
      v66 = v64 + v63;
      __swift_project_boxed_opaque_existential_1((v65 + 48), *(v65 + 72));
      v67 = sub_20B5E107C();
      v69 = v68;
      v70 = swift_allocObject();
      swift_weakInit();

      v71 = v217;
      sub_20C132ED4();
      v72 = (v66 + v61[8]);
      *v72 = v67;
      v72[1] = v69;
      *(v66 + v61[7]) = 1;
      (*(v218 + 32))(v66, v71, v219);
      v73 = (v66 + v61[9]);
      *v73 = sub_20C056FFC;
      v73[1] = v70;

      v74 = v66 + v62;
      type metadata accessor for SeymourLocalizationBundle();
      v75 = swift_getObjCClassFromMetadata();
      v76 = [objc_opt_self() bundleForClass_];
      v77 = sub_20C132964();
      v79 = v78;

      v80 = swift_allocObject();
      swift_weakInit();

      sub_20C132ED4();
      v81 = (v74 + v61[8]);
      *v81 = v77;
      v81[1] = v79;
      *(v74 + v61[7]) = 2;
      v82 = (v74 + v61[9]);
      *v82 = sub_20C05702C;
      v82[1] = v80;

      __swift_project_boxed_opaque_existential_1((v65 + 48), *(v65 + 72));
      v83 = sub_20B5E107C();
      v85 = v84;
      __swift_project_boxed_opaque_existential_1((v65 + 48), *(v65 + 72));
      v86 = sub_20B5E107C();
      v88 = v87;
      v89 = swift_unknownObjectWeakLoadStrong();
      v90 = MEMORY[0x277D84F90];
      if (v89)
      {
        v91 = v89;
        type metadata accessor for DefaultPageAlertPresenter();
        v92 = swift_allocObject();
        *(v92 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v92 + 32) = v229;
        *(v92 + 40) = v90;
        *(v92 + 48) = v83;
        *(v92 + 56) = v85;
        *(v92 + 64) = v86;
        *(v92 + 72) = v88;
        *(v92 + 80) = 0;
        *(v92 + 88) = 0;
        v93 = v91 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        v94 = swift_unknownObjectWeakLoadStrong();
        v95 = v234;
        v96 = v213;
        if (v94)
        {
          v97 = *(v93 + 8);
          v98 = swift_getObjectType();
          v99 = v96;
          v100 = *(v97 + 224);

          v100(v91, v92, &off_2822DD358, v98, v97);
          v96 = v99;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v122 = v236;
      }

      else
      {

        v122 = v236;
        v95 = v234;
        v96 = v213;
      }

      v173 = v212;
      v174 = v238;
      v242[0] = v238;
      (*(v95 + 104))(v221, *MEMORY[0x277D51430], v235);
      v175 = *MEMORY[0x277D52B38];
      v176 = sub_20C136664();
      v177 = *(v176 - 8);
      v178 = v223;
      (*(v177 + 104))(v223, v175, v176);
      (*(v177 + 56))(v178, 0, 1, v176);
      v179 = sub_20C132C14();
      (*(*(v179 - 8) + 56))(v225, 1, 1, v179);
      (*(v122 + 104))(v227, *MEMORY[0x277D51768], v237);
      v180 = sub_20C135ED4();
      v181 = v96;
      (*(*(v180 - 8) + 56))(v96, 1, 1, v180);
      v182 = v214;
      sub_20C051E18(v214);
      v183 = sub_20C136E94();
      v184 = v216;
      (*(*(v183 - 8) + 56))(v216, 1, 1, v183);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
      v185 = swift_initStackObject();
      *(v185 + 16) = xmmword_20C14F980;
      *(v185 + 32) = 9;
      v186 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
      swift_beginAccess();
      sub_20B52F9E8(v174 + v186, v173, &unk_27C76A970);
      v187 = v230;
      v188 = v231;
      if ((*(v230 + 48))(v173, 1, v231))
      {
        sub_20B520158(v173, &unk_27C76A970);
        v189 = 0;
        v190 = 0;
      }

      else
      {
        v191 = v203;
        (*(v187 + 16))(v203, v173, v188);
        sub_20B520158(v173, &unk_27C76A970);
        v192 = v217;
        sub_20C133804();
        v193 = v191;
        v181 = v213;
        v182 = v214;
        (*(v187 + 8))(v193, v188);
        v189 = sub_20C132EA4();
        v190 = v194;
        v195 = v192;
        v184 = v216;
        (*(v218 + 8))(v195, v219);
      }

      *&v243 = v189;
      *(&v243 + 1) = v190;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
      sub_20B82898C();
      sub_20C13DC04();
      sub_20B6B29D4(v185);
      swift_setDeallocating();
      sub_20B520158(v185 + 32, &unk_27C762260);
      type metadata accessor for TVWorkoutPlanDetailHeaderShelf();
      sub_20C056FA4();
      v196 = v221;
      v197 = v223;
      v198 = v225;
      v199 = v227;
      sub_20C138DB4();

      sub_20B520158(v184, &unk_27C76BC90);
      (*(v232 + 8))(v182, v233);
      sub_20B520158(v181, &unk_27C7621D0);
      (*(v236 + 8))(v199, v237);
      sub_20B520158(v198, &unk_27C7617F0);
      sub_20B520158(v197, &unk_27C7622E0);
      (*(v234 + 8))(v196, v235);
    }

    v120 = type metadata accessor for ButtonAction;
    v121 = v201;
    return sub_20C056F3C(v121, v120);
  }

  sub_20C056F3C(v56, type metadata accessor for ShelfItemAction);
  swift_storeEnumTagMultiPayload();
  v101 = sub_20BB12674(a1, v53);
  result = sub_20C056F3C(v53, type metadata accessor for ShelfItemAction);
  if (v101)
  {
    return sub_20C053AD4();
  }

  return result;
}