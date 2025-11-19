uint64_t sub_2752D94CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0218, &qword_2752DF508);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752D9540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_5()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 152);

  return sub_2752DE028();
}

double OUTLINED_FUNCTION_5_2()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1()
{
  *(v1 - 152) = v0;
  v3 = *(v1 - 168);

  return sub_2752DDD68();
}

double OUTLINED_FUNCTION_12_1()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 136) = a1;

  return sub_2752DDD38();
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return sub_2752DD998();
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return sub_2752C4D60(v0, v1);
}

uint64_t OUTLINED_FUNCTION_35()
{
  v3 = *(v0 - 160);
  v2 = *(v0 - 152);

  return sub_2752DE028();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return sub_2752DDCB8();
}

uint64_t OUTLINED_FUNCTION_64()
{

  return sub_2752DDD38();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return sub_2752DE478();
}

uint64_t OUTLINED_FUNCTION_68()
{

  return sub_2752DD998();
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 136);

  return sub_2752C3990(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_72()
{
}

id OUTLINED_FUNCTION_73(uint64_t a1, const char *a2)
{
  *(v3 - 144) = v2;

  return [v2 a2];
}

id OUTLINED_FUNCTION_74()
{
  v2 = *(v0 - 144);

  return v2;
}

uint64_t OUTLINED_FUNCTION_79()
{

  return sub_2752C4D60(v0, v1);
}

uint64_t OUTLINED_FUNCTION_80()
{
  *(v2 - 160) = v1;
  *(v2 - 152) = v0;
  v4 = *(v2 - 168);

  return sub_2752DDD68();
}

uint64_t OUTLINED_FUNCTION_81()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_82()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_87()
{
  *(v2 - 160) = v1;
  *(v2 - 152) = v0;

  return sub_2752DDD68();
}

uint64_t OUTLINED_FUNCTION_88()
{

  return sub_2752DDD38();
}

uint64_t OUTLINED_FUNCTION_89()
{

  return sub_2752DD998();
}

uint64_t OUTLINED_FUNCTION_90(uint64_t a1)
{
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;

  return sub_2752DDD68();
}

uint64_t OUTLINED_FUNCTION_91()
{
}

uint64_t OUTLINED_FUNCTION_92()
{
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.init(collaborator:playlist:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE88, &qword_2752DEE28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = sub_2752DE108();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v44 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v43 - v20;
  v22 = sub_2752DE148();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v43 - v31;
  v33 = a2;
  sub_2752C2F40(v33, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {

    v34 = &qword_2809BFEC0;
    v35 = &qword_2752DEE60;
    v36 = v21;
  }

  else
  {
    (*(v25 + 32))(v32, v21, v22);
    v37 = v45;
    sub_2752C37AC(v37, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      v40 = *(v11 + 32);
      v43 = v8;
      v40(v17, v7);
      (*(v11 + 16))(v44, v17, v8);
      (*(v25 + 16))(v30, v32, v22);
      v39 = v46;
      sub_2752DD778();

      (*(v11 + 8))(v17, v43);
      (*(v25 + 8))(v32, v22);
      v38 = 0;
      goto LABEL_7;
    }

    (*(v25 + 8))(v32, v22);

    v34 = &qword_2809BFE88;
    v35 = &qword_2752DEE28;
    v36 = v7;
  }

  sub_2752C3990(v36, v34, v35);
  v38 = 1;
  v39 = v46;
LABEL_7:
  v41 = sub_2752DD798();
  return __swift_storeEnumTagSinglePayload(v39, v38, 1, v41);
}

uint64_t MusicCollaborativePlaylist.RemoveCollaboratorRequest.perform()()
{
  v1 = *(MEMORY[0x277D2A630] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2752DA0EC;

  return MEMORY[0x2821896E0]();
}

uint64_t sub_2752DA0EC(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2752DA220, 0, 0);
  }
}

uint64_t sub_2752DA220()
{
  v1 = v0[6];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[6];
    sub_2752DE3D8();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x277C74460](0xD000000000000018, 0x80000002752DF680);
    v0[4] = v4;
    sub_2752DE458();
    MEMORY[0x277C74460](0xD00000000000001BLL, 0x80000002752DF6A0);
    v5 = v0[2];
    v6 = v0[3];
    return sub_2752DE468();
  }
}

void static MusicLibraryPlaylistRequest.creatingPlaylist<A>(name:description:userImage:coverArtworkRecipe:isPublic:isVisible:curator:songs:folder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_23();
  v39 = OUTLINED_FUNCTION_6_1(v30, v31, v32, v33, v34, v35, v36, v37, v38);
  v40 = OUTLINED_FUNCTION_0(v39);
  v120 = v41;
  v121 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v119 = (v45 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE90, &qword_2752DEE30);
  OUTLINED_FUNCTION_3(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_15_2(v50, v113);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0198, &qword_2752DF388);
  OUTLINED_FUNCTION_3(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v54);
  v56 = OUTLINED_FUNCTION_13_1(v55, v114);
  v57 = OUTLINED_FUNCTION_0(v56);
  v117 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_1();
  v62 = OUTLINED_FUNCTION_12_2(v61);
  v63 = OUTLINED_FUNCTION_0(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_9_2();
  MEMORY[0x28223BE20](v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_3(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v72);
  v73 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_0(v73);
  v75 = v74;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v78);
  v80 = OUTLINED_FUNCTION_7_3(v79, v115);
  v81(v80);
  OUTLINED_FUNCTION_54(v26, 1, v29);
  if (v102)
  {
    (*(v75 + 8))(v26, v73);
  }

  else
  {
    v82 = sub_2752C3CD8(0, &qword_2809C0108, 0x277CD86A8);
    v73 = 0;
    sub_2752DAA20(sub_2752DA9A4, 0, v29, v82, MEMORY[0x277D84A98], a26, MEMORY[0x277D84AC0], v83);
    OUTLINED_FUNCTION_27(v29);
    (*(v84 + 8))(v26, v29);
  }

  sub_2752D2C4C(v122, v28, &qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_54(v28, 1, v56);
  if (v102)
  {
    sub_2752D2EA8(v28, &qword_2809BFE70, &qword_2752DEE18);
    v122 = 0;
  }

  else
  {
    v85 = *MEMORY[0x277CD8188];
    v86 = OUTLINED_FUNCTION_18_1();
    v87(v86);
    v88 = OUTLINED_FUNCTION_11_2();
    v89(v88);
    v90 = OUTLINED_FUNCTION_4_1();
    v91(v90);
    v92 = sub_2752DBC78(v73, v27);
    v93 = OUTLINED_FUNCTION_16_2(v92);
    v94(v93);
    v95 = *(v26 + 8);
    v26 += 8;
    v95(v28, v56);
  }

  OUTLINED_FUNCTION_10_2();
  if (!v102)
  {
    sub_2752DE2E8();
  }

  if (v65 != 2)
  {
    sub_2752DE2E8();
  }

  sub_2752D2C4C(v26, v27, &qword_2809BFE90, &qword_2752DEE30);
  v96 = sub_2752DE0E8();
  OUTLINED_FUNCTION_54(v27, 1, v96);
  if (v102)
  {
    v97 = &qword_2809BFE90;
    v98 = &qword_2752DEE30;
    v99 = v27;
LABEL_17:
    sub_2752D2EA8(v99, v97, v98);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_27(v96);
  (*(v100 + 8))(v27, v96);
  sub_2752DDC38();
  v120[1](v73, v121);
  v101 = sub_2752DDE88();
  OUTLINED_FUNCTION_54(v118, 1, v101);
  if (v102)
  {
    v97 = &qword_2809C0198;
    v98 = &qword_2752DF388;
    v99 = v118;
    goto LABEL_17;
  }

  sub_2752DDE78();
  OUTLINED_FUNCTION_27(v101);
  (*(v103 + 8))();
LABEL_18:
  objc_allocWithZone(MEMORY[0x277D2B470]);
  v104 = v123;

  OUTLINED_FUNCTION_2_6(v105, v106, v107, v108, v109, v110, v111, v112, v116, v117, v118, v119, v120, v121, v122);
  sub_2752C3CD8(0, &qword_2809C0328, 0x277D2B470);
  sub_2752DE148();
  sub_2752DD838();
  OUTLINED_FUNCTION_22();
}

id sub_2752DA9A4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v7[3] = sub_2752C3CD8(0, &qword_2809C0068, 0x277CD5F58);
  v7[0] = v3;
  v4 = objc_allocWithZone(MEMORY[0x277CD86A8]);
  v5 = v3;
  result = sub_2752DB9D0(v7);
  *a2 = result;
  return result;
}

uint64_t sub_2752DAA20(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v9 = v8;
  v63 = a2;
  v64 = a4;
  v62 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v15 = *(v57 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = a5;
  v51 = &v45 - v17;
  v48 = *(a5 - 8);
  v18 = *(v48 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v60 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v58 = &v45 - v21;
  v22 = sub_2752DE368();
  v46 = *(v22 - 8);
  v47 = v22;
  v23 = *(v46 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v45 - v28;
  v30 = *(*(a4 - 1) + 64);
  v31 = MEMORY[0x28223BE20](v27);
  v59 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v56 = *(a3 - 8);
  v34 = *(v56 + 64);
  MEMORY[0x28223BE20](v33);
  v55 = &v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a6;
  v65 = swift_getAssociatedTypeWitness();
  v52 = *(v65 - 8);
  v36 = *(v52 + 64);
  MEMORY[0x28223BE20](v65);
  v38 = &v45 - v37;
  v39 = sub_2752DE288();
  v66 = sub_2752DE428();
  v61 = sub_2752DE438();
  sub_2752DE408();
  (*(v56 + 16))(v55, v53, a3);
  v64 = v38;
  v56 = a3;
  result = sub_2752DE278();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v57 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2752DE388();
      result = __swift_getEnumTagSinglePayload(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v62(v29, v58);
      if (v9)
      {
        (*(v52 + 8))(v64, v65);

        (*(v48 + 32))(v49, v58, v50);
        return (*v41)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v41)(v29, AssociatedTypeWitness);
      sub_2752DE418();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v42 = (v57 + 32);
  v43 = (v57 + 8);
  v44 = v51;
  while (1)
  {
    sub_2752DE388();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v52 + 8))(v64, v65);
      (*(v46 + 8))(v26, v47);
      return v66;
    }

    (*v42)(v44, v26, AssociatedTypeWitness);
    v62(v44, v60);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v43)(v44, AssociatedTypeWitness);
    sub_2752DE418();
  }

  (*v43)(v44, AssociatedTypeWitness);
  (*(v52 + 8))(v64, v65);

  return (*(v48 + 32))(v49, v60, v50);
}

void sub_2752DB0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, char, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_23();
  v50 = v26;
  v48 = v27;
  v49 = v28;
  v46 = v29;
  v47 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v45 = a26;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_3(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v40);
  v42 = &v45 - v41;
  v43 = sub_2752DE128();
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
  v45(v36, v34, v32, v46, v47, v48, v49, v50, a21, a22, a23, v42, a24, a25);
  sub_2752D2EA8(v42, &qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_22();
}

void static MusicLibraryPlaylistRequest.creatingPlaylist<A>(name:description:userImage:coverArtworkRecipe:isPublic:isVisible:curator:tracks:folder:)()
{
  OUTLINED_FUNCTION_23();
  v13 = OUTLINED_FUNCTION_6_1(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  v14 = OUTLINED_FUNCTION_0(v13);
  v92 = v15;
  v93 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v91 = (v19 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE90, &qword_2752DEE30);
  OUTLINED_FUNCTION_3(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_2(v24, v85);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0198, &qword_2752DF388);
  OUTLINED_FUNCTION_3(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v28);
  v30 = OUTLINED_FUNCTION_13_1(v29, v86);
  v31 = OUTLINED_FUNCTION_0(v30);
  v89 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v36 = OUTLINED_FUNCTION_12_2(v35);
  v37 = OUTLINED_FUNCTION_0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_2();
  MEMORY[0x28223BE20](v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_3(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v46);
  v47 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_0(v47);
  v49 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v52);
  v54 = OUTLINED_FUNCTION_7_3(v53, v87);
  v55(v54);
  OUTLINED_FUNCTION_54(v0, 1, v3);
  if (v74)
  {
    (*(v49 + 8))(v0, v47);
  }

  else
  {
    sub_2752C3CD8(0, &qword_2809C0108, 0x277CD86A8);
    v47 = 0;
    sub_2752DE2A8();
    OUTLINED_FUNCTION_27(v3);
    (*(v56 + 8))(v0, v3);
  }

  sub_2752D2C4C(v94, v2, &qword_2809BFE70, &qword_2752DEE18);
  OUTLINED_FUNCTION_54(v2, 1, v30);
  if (v74)
  {
    sub_2752D2EA8(v2, &qword_2809BFE70, &qword_2752DEE18);
    v94 = 0;
  }

  else
  {
    v57 = *MEMORY[0x277CD8188];
    v58 = OUTLINED_FUNCTION_18_1();
    v59(v58);
    v60 = OUTLINED_FUNCTION_11_2();
    v61(v60);
    v62 = OUTLINED_FUNCTION_4_1();
    v63(v62);
    v64 = sub_2752DBC78(v47, v1);
    v65 = OUTLINED_FUNCTION_16_2(v64);
    v66(v65);
    v67 = *(v0 + 8);
    v0 += 8;
    v67(v2, v30);
  }

  OUTLINED_FUNCTION_10_2();
  if (!v74)
  {
    sub_2752DE2E8();
  }

  if (v39 != 2)
  {
    sub_2752DE2E8();
  }

  sub_2752D2C4C(v0, v1, &qword_2809BFE90, &qword_2752DEE30);
  v68 = sub_2752DE0E8();
  OUTLINED_FUNCTION_54(v1, 1, v68);
  if (v74)
  {
    v69 = &qword_2809BFE90;
    v70 = &qword_2752DEE30;
    v71 = v1;
LABEL_17:
    sub_2752D2EA8(v71, v69, v70);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_27(v68);
  (*(v72 + 8))(v1, v68);
  sub_2752DDC38();
  v92[1](v47, v93);
  v73 = sub_2752DDE88();
  OUTLINED_FUNCTION_54(v90, 1, v73);
  if (v74)
  {
    v69 = &qword_2809C0198;
    v70 = &qword_2752DF388;
    v71 = v90;
    goto LABEL_17;
  }

  sub_2752DDE78();
  OUTLINED_FUNCTION_27(v73);
  (*(v75 + 8))();
LABEL_18:
  objc_allocWithZone(MEMORY[0x277D2B470]);
  v76 = v95;

  OUTLINED_FUNCTION_2_6(v77, v78, v79, v80, v81, v82, v83, v84, v88, v89, v90, v91, v92, v93, v94);
  sub_2752C3CD8(0, &qword_2809C0328, 0x277D2B470);
  sub_2752DE148();
  sub_2752DD838();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_2752DB7BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2752DE098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2752DE008();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  (*(v10 + 104))(&v20 - v15, *MEMORY[0x277CD8188], v9);
  (*(v10 + 16))(v14, v16, v9);
  (*(v5 + 16))(v8, a1, v4);
  sub_2752DBF70();
  v18 = v17;
  result = (*(v10 + 8))(v16, v9);
  *a2 = v18;
  return result;
}

id sub_2752DB9D0(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v1 initWithUnderlyingModelObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

id sub_2752DBA3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    sub_2752C3CD8(0, &qword_2809C0108, 0x277CD86A8);
    v18 = sub_2752DE2B8();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_2752C3CD8(0, &qword_2809C0108, 0x277CD86A8);
  v19 = sub_2752DE2B8();

  if (a5)
  {
LABEL_4:
    v20 = sub_2752DE1A8();

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  if (a7)
  {
    v21 = sub_2752DE1A8();
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    v22 = sub_2752DE1A8();
  }

  else
  {
    v22 = 0;
  }

  if (a15)
  {
    v23 = sub_2752DE1A8();
  }

  else
  {
    v23 = 0;
  }

  v28 = [v27 initWithParentPlaylist:a1 playlistEntries:v18 children:v19 playlistName:v20 playlistDescription:v21 createFolder:a8 & 1 playlistUserImage:a9 coverArtworkRecipe:v22 publicPlaylist:a12 visiblePlaylist:a13 authorStoreIdentifier:v23];

  return v28;
}

id sub_2752DBC78(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = sub_2752DDCB8();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2752DDFF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2752DE128();
  sub_2752DC1F0(&qword_2809C0250);
  sub_2752DE038();
  sub_2752DE018();
  v13 = sub_2752CCD30();
  (*(v8 + 8))(v11, v7);
  sub_2752DC1F0(&qword_2809C0330);
  sub_2752DDD98();
  (*(*(v12 - 8) + 8))(a1, v12);
  v14 = v21;
  v15 = sub_2752D0E30(v13, v21);
  (*(v3 + 8))(v6, v22);
  v16 = objc_allocWithZone(MEMORY[0x277CD86A8]);
  v17 = sub_2752DE168();

  v18 = [v16 initWithIdentifierSet:v15 modelObjectType:v13 storageDictionary:v17];
  swift_unknownObjectRelease();

  v19 = sub_2752DE008();
  (*(*(v19 - 8) + 8))(v14, v19);
  return v18;
}

void sub_2752DBF70()
{
  OUTLINED_FUNCTION_23();
  v30 = v0;
  v2 = v1;
  v4 = v3;
  v31 = sub_2752DDCB8();
  v5 = OUTLINED_FUNCTION_0(v31);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_2752DDFF8();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = v2(0);
  sub_2752DE038();
  sub_2752DE018();
  v23 = sub_2752CCD30();
  (*(v16 + 8))(v21, v13);
  sub_2752DDD98();
  OUTLINED_FUNCTION_27(v22);
  (*(v24 + 8))(v4, v22);
  v25 = sub_2752D0E30(v23, v30);
  (*(v7 + 8))(v12, v31);
  v26 = objc_allocWithZone(MEMORY[0x277CD86A8]);
  v27 = sub_2752DE168();

  [v26 initWithIdentifierSet:v25 modelObjectType:v23 storageDictionary:v27];
  swift_unknownObjectRelease();

  v28 = sub_2752DE008();
  OUTLINED_FUNCTION_27(v28);
  (*(v29 + 8))(v30);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_2752DC1F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2752DE128();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id OUTLINED_FUNCTION_2_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15)
{
  v24 = *(v17 - 184);
  v19 = *(v17 - 224);
  v20 = *(v17 - 216);
  v21 = *(v17 - 168);
  v22 = *(v17 - 152);

  return sub_2752DBA3C(v19, v20, 0, v21, v16, v22, v15, 0, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t OUTLINED_FUNCTION_6_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  *(v9 - 51) = a8;
  *(v9 - 24) = a7;
  *(v9 - 23) = a6;
  *(v9 - 22) = a5;
  *(v9 - 21) = a1;
  *(v9 - 19) = a3;
  *(v9 - 18) = a4;
  *(v9 - 20) = a2;
  *(v9 - 17) = a9;
  v11 = v9[6];
  v12 = v9[4];
  *(v9 - 28) = v9[5];
  *(v9 - 27) = v12;

  return sub_2752DDCB8();
}

char *OUTLINED_FUNCTION_7_3@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v4 = *(v2 + 16);
  result = &a2 - a1;
  v6 = *(v3 - 216);
  return result;
}

void OUTLINED_FUNCTION_10_2()
{
  v1 = *(v0 - 200);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = *(v0 - 204);
  v5 = *(v0 - 204);
}

uint64_t OUTLINED_FUNCTION_12_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 272) = v1 - a1;

  return sub_2752DE008();
}

uint64_t OUTLINED_FUNCTION_13_1@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 256) = &a2 - a1;

  return sub_2752DE128();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return sub_2752DE368();
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1)
{
  *(v3 - 224) = a1;
  v4 = *(v1 + 8);
  return v2;
}

void OUTLINED_FUNCTION_20_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void (*a27)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, char, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  LOBYTE(a10) = v27;

  sub_2752DB0C8(a1, a2, a3, a4, a5, a6, a7, a8, a10, a9.n128_i64[0], a9.n128_i64[1], v28, v29, v30, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  v2 = *(v0 - 248);

  return sub_2752DDD98();
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.init(collaborator:playlist:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE88, &qword_2752DEE28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = sub_2752DE108();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v44 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v43 - v20;
  v22 = sub_2752DE148();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v43 - v31;
  v33 = a2;
  sub_2752C2F40(v33, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {

    v34 = &qword_2809BFEC0;
    v35 = &qword_2752DEE60;
    v36 = v21;
  }

  else
  {
    (*(v25 + 32))(v32, v21, v22);
    v37 = v45;
    sub_2752C37AC(v37, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      v40 = *(v11 + 32);
      v43 = v8;
      v40(v17, v7);
      (*(v11 + 16))(v44, v17, v8);
      (*(v25 + 16))(v30, v32, v22);
      v39 = v46;
      sub_2752DD818();

      (*(v11 + 8))(v17, v43);
      (*(v25 + 8))(v32, v22);
      v38 = 0;
      goto LABEL_7;
    }

    (*(v25 + 8))(v32, v22);

    v34 = &qword_2809BFE88;
    v35 = &qword_2752DEE28;
    v36 = v7;
  }

  sub_2752C3990(v36, v34, v35);
  v38 = 1;
  v39 = v46;
LABEL_7:
  v41 = sub_2752DD828();
  return __swift_storeEnumTagSinglePayload(v39, v38, 1, v41);
}

uint64_t MusicCollaborativePlaylist.ResetInvitationLinkRequest.init(playlist:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_2752DE148();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = a1;
  sub_2752C2F40(v16, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

    sub_2752C3F00(v7);
    v17 = 1;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    sub_2752DD7D8();

    (*(v9 + 8))(v15, v8);
    v17 = 0;
  }

  v18 = sub_2752DD7E8();
  return __swift_storeEnumTagSinglePayload(a2, v17, 1, v18);
}

id static UploadedVideo.canBeConverted(from:)(void *a1)
{
  result = [a1 hasVideo];
  if (result)
  {
    return [a1 isArtistUploadedContent];
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = sub_2752DD638();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  v17 = sub_2752DE148();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v33 - v26;
  v28 = a1;
  sub_2752C2F40(v28, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    (*(v8 + 8))(a2, v5);

    sub_2752C3F00(v16);
    v29 = 1;
    v30 = v34;
  }

  else
  {
    (*(v20 + 32))(v27, v16, v17);
    (*(v20 + 16))(v25, v27, v17);
    (*(v8 + 16))(v12, a2, v5);
    v30 = v34;
    sub_2752DD6F8();

    (*(v8 + 8))(a2, v5);
    (*(v20 + 8))(v27, v17);
    v29 = 0;
  }

  v31 = sub_2752DD718();
  return __swift_storeEnumTagSinglePayload(v30, v29, 1, v31);
}

uint64_t MusicCollaborativePlaylist.JoinRequest.perform()()
{
  v1 = *(MEMORY[0x277D2A620] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2752DCDB8;

  return MEMORY[0x2821896A0]();
}

uint64_t sub_2752DCDB8(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2752DCEEC, 0, 0);
  }
}

uint64_t sub_2752DCEEC()
{
  v1 = v0[6];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[6];
    sub_2752DE3D8();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x277C74460](0xD000000000000018, 0x80000002752DF680);
    v0[4] = v4;
    sub_2752DE458();
    MEMORY[0x277C74460](0xD00000000000001BLL, 0x80000002752DF6A0);
    v5 = v0[2];
    v6 = v0[3];
    return sub_2752DE468();
  }
}

uint64_t sub_2752DD04C(void *a1)
{
  v2 = sub_2752DDE48();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = [a1 value];
  sub_2752DE1B8();

  sub_2752DDDB8();
  v14 = [a1 kind];
  v15 = MEMORY[0x277CD7F60];
  switch(v14)
  {
    case 0uLL:
      goto LABEL_9;
    case 1uLL:
      v15 = MEMORY[0x277CD7F70];
      goto LABEL_9;
    case 2uLL:
      v15 = MEMORY[0x277CD7F40];
      goto LABEL_9;
    case 3uLL:
      v15 = MEMORY[0x277CD7F58];
      goto LABEL_9;
    case 4uLL:
      v15 = MEMORY[0x277CD7F48];
      goto LABEL_9;
    case 5uLL:
      v15 = MEMORY[0x277CD7F38];
      goto LABEL_9;
    case 6uLL:
      v15 = MEMORY[0x277CD7F50];
      goto LABEL_9;
    case 7uLL:
      v15 = MEMORY[0x277CD7F30];
LABEL_9:
      (*(v5 + 104))(v12, *v15, v2);
      (*(v5 + 16))(v10, v12, v2);
      sub_2752DDE68();

      return (*(v5 + 8))(v12, v2);
    case 8uLL:
      OUTLINED_FUNCTION_1_7();
      v17 = 49;
      OUTLINED_FUNCTION_0_4();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_1_7();
      v17 = 51;
      OUTLINED_FUNCTION_0_4();
LABEL_12:
      result = sub_2752DE468();
      __break(1u);
      return result;
  }
}

id sub_2752DD2E8()
{
  v0 = sub_2752DDE48();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2752DDE58();
  v8 = (*(v3 + 88))(v7, v0);
  v9 = 0;
  if (v8 == *MEMORY[0x277CD7F60])
  {
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x277CD7F70])
  {
    v9 = 1;
LABEL_16:
    sub_2752DD530();
    v10 = sub_2752DDE78();
    return sub_2752DD574(v10, v11, v9);
  }

  if (v8 == *MEMORY[0x277CD7F40])
  {
    v9 = 2;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x277CD7F58])
  {
    v9 = 3;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x277CD7F48])
  {
    v9 = 4;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x277CD7F38])
  {
    v9 = 5;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x277CD7F50])
  {
    v9 = 6;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x277CD7F30])
  {
    v9 = 7;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x277CD7F68])
  {
    OUTLINED_FUNCTION_1_7();
    v13 = 79;
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    v13 = 82;
    OUTLINED_FUNCTION_0_4();
  }

  result = sub_2752DE468();
  __break(1u);
  return result;
}

unint64_t sub_2752DD530()
{
  result = qword_2809C0338;
  if (!qword_2809C0338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0338);
  }

  return result;
}

id sub_2752DD574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2752DE1A8();

  v6 = [v4 initWithValue:v5 kind:a3];

  return v6;
}