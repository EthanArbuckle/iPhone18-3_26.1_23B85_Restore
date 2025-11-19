uint64_t sub_2148BEEDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2148A9CA0(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_2148994D0(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5C0, &qword_214992520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A678, &qword_2149940C0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2148A9CA0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_2148970B8(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2148BF014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void (*a7)(void))
{
  v12 = v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v25 = sub_2148C6B20(a6, a4, a5, a7);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_2148AA824(v12, boxed_opaque_existential_1, a4, a5);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 32);
    do
    {
      v17 = v16[4];
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      sub_21498E7E0();
      sub_2148970B8(&v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v23);
      sub_2148970B8(v22, v23);
      v16 += 5;
      --v15;
    }

    while (v15);
  }

  v18 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v19 = sub_2148C5E10(v18);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v19;
}

uint64_t sub_2148BF214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v9 = v6;
  v11 = a4(0);
  v22 = v11;
  v23 = sub_2148BCAE8(a5, a6);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v9, v11);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (a1 + 32);
    do
    {
      v15 = v14[4];
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      sub_21498E7E0();
      sub_2148970B8(&v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v21);
      sub_2148970B8(v20, v21);
      v14 += 5;
      --v13;
    }

    while (v13);
  }

  v16 = v22;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v17 = sub_2148C5E10(v16);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v17;
}

uint64_t sub_2148BF39C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD20, &qword_214994058);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD28, &unk_214994060);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v39 = (v36 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADB0, &qword_2149940C8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v38 = (v36 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADB8, &qword_2149940D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v37 = v36 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v36 - v21;
  v23 = type metadata accessor for OBKLiftUIView(0);
  v24 = (v1 + *(v23 + 52));
  if (*v24)
  {
    v25 = v23;
    v26 = *(v23 + 20);
    v27 = *v24;

    v28 = sub_21498E8F0();
    v40 = v9;
    v41 = v7;
    v36[1] = v28;
    v36[2] = v29;

    v42 = a1;
    sub_2148AA824(v1 + v25[6], v22, &qword_27CA1A800, &unk_214993100);
    v30 = sub_21498E900();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v22, 1, v30) == 1)
    {
      sub_21489DFCC(v22, &qword_27CA1A800, &unk_214993100);
      v36[0] = 0;
    }

    else
    {

      v36[0] = sub_21498E8F0();

      (*(v31 + 8))(v22, v30);
    }

    v32 = v40;
    sub_2148BF808(v37);
    sub_2148C00E8(v38);
    v33 = *(v1 + v25[9]);
    sub_2148C0D28(v1 + v25[10], v39);
    sub_2148C1AA4(v1 + v25[11], v32);
    sub_2148C1AA4(v1 + v25[12], v41);
    return sub_21498E4F0();
  }

  else
  {
    v35 = v24[1];
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
    result = sub_21498ED10();
    __break(1u);
  }

  return result;
}

uint64_t sub_2148BF808@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21498E690();
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v52 - v8;
  v9 = sub_21498E6A0();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_21498E900();
  v13 = *(v58 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v58);
  v53 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB0, &qword_214993E38);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v52 - v21;
  v23 = type metadata accessor for OBKLiftUIView(0);
  sub_2148AA824(v1 + *(v23 + 28), v22, &qword_27CA1ABB0, &qword_214993E38);
  v24 = type metadata accessor for HeaderImage(0);
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
  {
    v25 = sub_21498E4B0();
    return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v35 = *(v52 + 32);
      v35(v12, v22, v9);
      *(a1 + 24) = v9;
      *(a1 + 32) = sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v35(boxed_opaque_existential_1, v12, v9);
      *(a1 + 40) = 0;
      v37 = *MEMORY[0x277D24560];
      v38 = sub_21498E4B0();
      v39 = *(v38 - 8);
      (*(v39 + 104))(a1, v37, v38);
      return (*(v39 + 56))(a1, 0, 1, v38);
    }

    v27 = v53;
    v28 = v58;
    (*(v13 + 32))(v53, v22, v58);
    v29 = (v1 + *(v23 + 52));
    if (*v29)
    {
      v30 = *v29;

      sub_21498E8F0();
      v31 = a1;

      _s18CurrentBundleClassCMa();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
      v42 = sub_21498F840();
      v43 = [objc_opt_self() imageNamed:v42 inBundle:v41];

      if (v43)
      {
        (*(v13 + 8))(v27, v28);

        *a1 = v43;
        v47 = MEMORY[0x277D24568];
        goto LABEL_12;
      }

      __break(1u);
    }

LABEL_15:
    v51 = v29[1];
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v32 = v58;
  (*(v13 + 32))(v18, v22, v58);
  v29 = (v1 + *(v23 + 52));
  if (!*v29)
  {
    goto LABEL_15;
  }

  v33 = *v29;

  v31 = a1;
  v44 = sub_21498E8F0();
  v46 = v45;
  (*(v13 + 8))(v18, v32);

  *a1 = v44;
  *(a1 + 8) = v46;
  v47 = MEMORY[0x277D24570];
LABEL_12:
  v48 = *v47;
  v49 = sub_21498E4B0();
  v50 = *(v49 - 8);
  (*(v50 + 104))(v31, v48, v49);
  return (*(v50 + 56))(v31, 0, 1, v49);
}

uint64_t sub_2148C00E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21498E690();
  v4 = *(v3 - 8);
  v78 = v3;
  v79 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v77 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v71 - v8);
  v10 = sub_21498E6A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21498E4A0();
  v88 = *(v15 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v15);
  v90 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v84 = &v71 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADC0, &qword_2149940D8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v83 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v92 = (&v71 - v25);
  v26 = type metadata accessor for OBKLiftUIContentItem(0);
  v86 = *(v26 - 8);
  v87 = v26;
  v27 = *(v86 + 64);
  MEMORY[0x28223BE20](v26);
  v89 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v71 - v31;
  v85 = type metadata accessor for OBKLiftUIView(0);
  v33 = *(v85 + 32);
  v91 = v1;
  sub_2148AA824(v1 + v33, v32, &qword_27CA1ABB8, &qword_214993E40);
  v34 = type metadata accessor for OBKLiftUIContent(0);
  if ((*(*(v34 - 8) + 48))(v32, 1, v34) == 1)
  {
    v35 = sub_21498E430();
    return (*(*(v35 - 8) + 56))(a1, 1, 1, v35);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v38 = *(v11 + 32);
      v38(v14, v32, v10);
      a1[3] = v10;
      a1[4] = sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v38(boxed_opaque_existential_1, v14, v10);
      v40 = MEMORY[0x277D24528];
LABEL_29:
      v67 = *v40;
      v68 = sub_21498E430();
      v69 = *(v68 - 8);
      (*(v69 + 104))(a1, v67, v68);
      return (*(v69 + 56))(a1, 0, 1, v68);
    }

    if (qword_281190DA0 != -1)
    {
LABEL_31:
      swift_once();
    }

    v60 = v78;
    v61 = __swift_project_value_buffer(v78, qword_281194E18);
    (*(v79 + 16))(v9, v61, v60);
    v62 = sub_21498E670();
    v63 = sub_21498FBB0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_21488E000, v62, v63, "Sections aren't supported by ObkView, use OBKListView instead", v64, 2u);
      MEMORY[0x216059AC0](v64, -1, -1);
    }

    (*(v79 + 8))(v9, v60);
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
    v66 = sub_21498E430();
    (*(*(v66 - 8) + 56))(a1, 1, 1, v66);
    sub_21489DFCC(&v32[v65], &qword_27CA1AC78, qword_214999F40);
    return (*(v11 + 8))(v32, v10);
  }

  else
  {
    v41 = *v32;
    v76 = *(*v32 + 16);
    if (!v76)
    {
      v9 = MEMORY[0x277D84F90];
LABEL_28:

      *a1 = v9;
      v40 = MEMORY[0x277D24520];
      goto LABEL_29;
    }

    v11 = 0;
    v10 = 0;
    v32 = v89;
    v73 = v88 + 32;
    v9 = MEMORY[0x277D84F90];
    v42 = v87;
    v72 = a1;
    v74 = v15;
    v75 = v41;
    while (1)
    {
      if (v11 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v82 = v9;
      sub_2148C5ED8(v41 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v11, v32, type metadata accessor for OBKLiftUIContentItem);
      v43 = *(v85 + 52);
      if (!*(v91 + v43))
      {
        break;
      }

      v44 = v42[5];
      v45 = *(v91 + v43);

      v46 = sub_21498E8F0();
      v48 = v47;
      v81 = v46;

      v49 = v42[6];

      sub_21498E8F0();

      sub_2148C2DC8(v32, v91, v92);
      v80 = v48;
      v50 = v84;
      sub_2148AA824(&v32[v42[8]], v84, &qword_27CA1A800, &unk_214993100);
      v51 = sub_21498E900();
      v52 = *(v51 - 8);
      if ((*(v52 + 48))(v50, 1, v51) == 1)
      {
        sub_21489DFCC(v50, &qword_27CA1A800, &unk_214993100);
        v53 = 0;
        v54 = v72;
        v32 = v89;
      }

      else
      {

        sub_21498E8F0();

        (*(v52 + 8))(v50, v51);
        v59 = sub_2148FD3E8();
        if (v59 == 25)
        {
          v53 = 0;
        }

        else
        {
          sub_2148F9BA4(v59);
          sub_2148C6C8C();
          v53 = sub_21498FCB0();
        }

        v54 = v72;
        v32 = v89;
      }

      sub_2148AA824(v92, v83, &qword_27CA1ADC0, &qword_2149940D8);
      v55 = v53;
      sub_21498E490();
      v9 = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2148A9604(0, v9[2] + 1, 1, v9);
      }

      v56 = v74;
      v58 = v9[2];
      v57 = v9[3];
      a1 = v54;
      if (v58 >= v57 >> 1)
      {
        v9 = sub_2148A9604(v57 > 1, v58 + 1, 1, v9);
      }

      v42 = v87;
      ++v11;

      sub_21489DFCC(v92, &qword_27CA1ADC0, &qword_2149940D8);
      sub_2148C69F4(v32, type metadata accessor for OBKLiftUIContentItem);
      v9[2] = v58 + 1;
      (*(v88 + 32))(v9 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v58, v90, v56);
      v41 = v75;
      if (v76 == v11)
      {
        goto LABEL_28;
      }
    }

    v70 = *(v91 + v43 + 8);
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
    result = sub_21498ED10();
    __break(1u);
  }

  return result;
}

uint64_t sub_2148C0D28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v114 = a2;
  v3 = sub_21498E690();
  v109 = *(v3 - 8);
  v110 = v3;
  v4 = *(v109 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v108 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v102 = &v100 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v104 = &v100 - v10;
  v105 = sub_21498E1B0();
  v103 = *(v105 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x28223BE20](v105);
  v101 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21498E900();
  v112 = *(v13 - 8);
  v113 = v13;
  v14 = *(v112 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v107 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v106 = &v100 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v100 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v100 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC0, &qword_214993E48);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v100 - v26;
  v28 = type metadata accessor for OBKLiftUICaption(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v100 - v34;
  sub_2148AA824(a1, v27, &qword_27CA1ABC0, &qword_214993E48);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_21489DFCC(v27, &qword_27CA1ABC0, &qword_214993E48);
LABEL_3:
    v36 = sub_21498E420();
    return (*(*(v36 - 8) + 56))(v114, 1, 1, v36);
  }

  sub_2148C5F40(v27, v35, type metadata accessor for OBKLiftUICaption);
  sub_2148C5ED8(v35, v33, type metadata accessor for OBKLiftUICaption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v100 = v35;
  if (!EnumCaseMultiPayload)
  {
    v44 = v112;
    (*(v112 + 32))(v23, v33, v113);
    v42 = (v111 + *(type metadata accessor for OBKLiftUIView(0) + 52));
    if (*v42)
    {
      v45 = *v42;

      v60 = sub_21498E8F0();
      v62 = v61;

      (*(v44 + 8))(v23, v113);
      sub_2148C69F4(v100, type metadata accessor for OBKLiftUICaption);
      v58 = v114;
      *v114 = v60;
      v58[1] = v62;
      v59 = MEMORY[0x277D24518];
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v38 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD90, &unk_2149940B0) + 48)];
    v39 = *v38;
    v40 = v38[8];
    v41 = v112;
    (*(v112 + 32))(v21, v33, v113);
    v42 = (v111 + *(type metadata accessor for OBKLiftUIView(0) + 52));
    if (*v42)
    {
      v43 = *v42;

      v55 = sub_21498E8F0();
      v57 = v56;

      (*(v41 + 8))(v21, v113);
      sub_2148C69F4(v100, type metadata accessor for OBKLiftUICaption);
      v58 = v114;
      *v114 = v55;
      v58[1] = v57;
      v58[2] = v39;
      *(v58 + 24) = v40;
      v59 = MEMORY[0x277D24510];
LABEL_12:
      v63 = *v59;
      v64 = sub_21498E420();
      v65 = *(v64 - 8);
      (*(v65 + 104))(v58, v63, v64);
      return (*(v65 + 56))(v58, 0, 1, v64);
    }

    goto LABEL_21;
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD38, &qword_214994070);
  v47 = &v33[*(v46 + 48)];
  v48 = *v47;
  v49 = v47[8];
  v50 = *(v46 + 64);
  v51 = v113;
  v52 = *(v112 + 32);
  v53 = v106;
  v52(v106, v33, v113);
  v52(v107, &v33[v50], v51);
  v42 = (v111 + *(type metadata accessor for OBKLiftUIView(0) + 52));
  if (!*v42)
  {
LABEL_21:
    v99 = v42[1];
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v54 = *v42;

  v66 = sub_21498E8F0();
  v68 = v67;

  v69 = v107;
  v71 = sub_21498E8F0();
  v73 = v72;

  v74 = v104;
  v111 = v71;
  sub_21498E1A0();
  v75 = v103;
  if ((*(v103 + 48))(v74, 1, v105) == 1)
  {

    sub_21489DFCC(v74, &qword_27CA1A348, &qword_214991700);
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v76 = v110;
    v77 = __swift_project_value_buffer(v110, qword_281194E18);
    v78 = v109;
    v79 = v102;
    (*(v109 + 16))(v102, v77, v76);

    v80 = sub_21498E670();
    v81 = sub_21498FBB0();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v115 = v83;
      *v82 = 136315138;
      v84 = sub_2149079F4(v111, v73, &v115);

      *(v82 + 4) = v84;
      _os_log_impl(&dword_21488E000, v80, v81, "Unable to get URL from learn more: %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x216059AC0](v83, -1, -1);
      MEMORY[0x216059AC0](v82, -1, -1);

      (*(v78 + 8))(v79, v76);
      v85 = *(v112 + 8);
      v86 = v107;
    }

    else
    {

      (*(v78 + 8))(v79, v76);
      v85 = *(v112 + 8);
      v86 = v69;
    }

    v98 = v113;
    v85(v86, v113);
    v85(v106, v98);
    sub_2148C69F4(v35, type metadata accessor for OBKLiftUICaption);
    goto LABEL_3;
  }

  v87 = *(v112 + 8);
  v88 = v69;
  v89 = v113;
  v87(v88, v113);
  v87(v53, v89);
  sub_2148C69F4(v35, type metadata accessor for OBKLiftUICaption);
  v90 = *(v75 + 32);
  v91 = v101;
  v92 = v105;
  v90(v101, v104, v105);
  v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD88, &qword_2149940A8) + 64);
  v94 = v114;
  *v114 = v66;
  v94[1] = v68;
  v94[2] = v48;
  *(v94 + 24) = v49;
  v90(v94 + v93, v91, v92);
  v95 = *MEMORY[0x277D24508];
  v96 = sub_21498E420();
  v97 = *(v96 - 8);
  (*(v97 + 104))(v94, v95, v96);
  return (*(v97 + 56))(v94, 0, 1, v96);
}

uint64_t sub_2148C1AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_21498E690();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OBKLiftUIView(0);
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = v8;
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD80, &unk_214994098);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC8, qword_214993E50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v49 - v20;
  v22 = type metadata accessor for OBKLiftUIButton(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v51 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v49 - v26;
  sub_2148AA824(a1, v21, &qword_27CA1ABC8, qword_214993E50);
  v50 = v23;
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_21489DFCC(v21, &qword_27CA1ABC8, qword_214993E50);
    v36 = 1;
    v37 = v60;
LABEL_6:
    v38 = sub_21498E530();
    return (*(*(v38 - 8) + 56))(v37, v36, 1, v38);
  }

  sub_2148C5F40(v21, v27, type metadata accessor for OBKLiftUIButton);
  v28 = (v59 + *(v6 + 52));
  if (*v28)
  {
    v29 = *v28;

    v30 = sub_21498E8F0();
    v56 = v31;
    v57 = v30;

    v32 = *(v22 + 20);
    v58 = v27;
    sub_2148AA824(&v27[v32], v17, &qword_27CA1AC78, qword_214999F40);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    if (v35(v17, 1, v33) == 1)
    {
      sub_21489DFCC(v17, &qword_27CA1AC78, qword_214999F40);
    }

    else
    {

      sub_21498E750();

      (*(v34 + 8))(v17, v33);
    }

    v40 = v49;
    sub_2148AA824(&v58[*(v22 + 24)], v49, &qword_27CA1AC78, qword_214999F40);
    if (v35(v40, 1, v33) == 1)
    {
      sub_21489DFCC(v40, &qword_27CA1AC78, qword_214999F40);
    }

    else
    {

      sub_21498E750();

      (*(v34 + 8))(v40, v33);
    }

    v41 = v58;
    v42 = sub_21498E4E0();
    (*(*(v42 - 8) + 56))(v54, 1, 1, v42);
    v43 = v51;
    sub_2148C5ED8(v41, v51, type metadata accessor for OBKLiftUIButton);
    v44 = v55;
    sub_2148C5ED8(v59, v55, type metadata accessor for OBKLiftUIView);
    v45 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v46 = (v24 + *(v52 + 80) + v45) & ~*(v52 + 80);
    v47 = swift_allocObject();
    sub_2148C5F40(v43, v47 + v45, type metadata accessor for OBKLiftUIButton);
    sub_2148C5F40(v44, v47 + v46, type metadata accessor for OBKLiftUIView);
    v37 = v60;
    sub_21498E520();
    sub_2148C69F4(v41, type metadata accessor for OBKLiftUIButton);
    v36 = 0;
    goto LABEL_6;
  }

  v48 = v28[1];
  sub_21498E8C0();
  sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_2148C2414()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v25[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25[-v10];
  v12 = type metadata accessor for OBKLiftUIView(0);
  sub_2148AA824(v0 + *(v12 + 32), v11, &qword_27CA1ABB8, &qword_214993E40);
  v13 = type metadata accessor for OBKLiftUIContent(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0);
        sub_2148B4C68(&v11[*(v17 + 48)], v7, &qword_27CA1AC78, qword_214999F40);
        sub_2148AA824(v7, v5, &qword_27CA1AC78, qword_214999F40);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(v5, 1, v18) == 1)
        {
          sub_21489DFCC(v7, &qword_27CA1AC78, qword_214999F40);
          sub_21489DFCC(v5, &qword_27CA1AC78, qword_214999F40);
          v20 = 2;
        }

        else
        {
          v21 = (v0 + *(v12 + 52));
          if (!*v21)
          {
            v24 = v21[1];
            sub_21498E8C0();
            sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
            result = sub_21498ED10();
            __break(1u);
            return result;
          }

          v22 = *v21;

          sub_21498E750();
          sub_21489DFCC(v7, &qword_27CA1AC78, qword_214999F40);

          (*(v19 + 8))(v5, v18);
          v20 = v25[15];
        }

        v23 = sub_21498E6A0();
        (*(*(v23 - 8) + 8))(v11, v23);
        return v20;
      }

      v15 = sub_21498E6A0();
      (*(*(v15 - 8) + 8))(v11, v15);
    }

    else
    {
      sub_2148C69F4(v11, type metadata accessor for OBKLiftUIContent);
    }
  }

  return 2;
}

uint64_t sub_2148C283C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for OBKLiftUIView(0) + 52));
  if (*v3)
  {
    v4 = *v3;

    sub_21498E8F0();

    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_21498F840();
    v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

    if (v8)
    {

      sub_21498F3C0();
      result = sub_21498EE90();
      *a2 = v11;
      *(a2 + 8) = v12;
      return result;
    }

    __break(1u);
  }

  v10 = v3[1];
  sub_21498E8C0();
  sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_2148C2A0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD78, &qword_214994090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = sub_21498E6A0();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = type metadata accessor for OBKLiftUIView(0);
  sub_2148AA824(a1 + *(v17 + 32), v16, &qword_27CA1ABB8, &qword_214993E40);
  v18 = type metadata accessor for OBKLiftUIContent(0);
  if ((*(*(v18 - 8) + 48))(v16, 1, v18) == 1)
  {
    goto LABEL_5;
  }

  sub_2148AA824(v16, v14, &qword_27CA1ABB8, &qword_214993E40);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2148C69F4(v14, type metadata accessor for OBKLiftUIContent);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8]);
    sub_21498EE90();
    return sub_21489DFCC(v16, &qword_27CA1ABB8, &qword_214993E40);
  }

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
  v20 = v23;
  (*(v23 + 32))(v9, v14, v6);
  (*(v20 + 16))(v5, v9, v6);
  swift_storeEnumTagMultiPayload();
  sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8]);
  sub_21498EE90();
  (*(v20 + 8))(v9, v6);
  sub_21489DFCC(&v14[v19], &qword_27CA1AC78, qword_214999F40);
  return sub_21489DFCC(v16, &qword_27CA1ABB8, &qword_214993E40);
}

uint64_t sub_2148C2DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a2;
  v55 = a3;
  v54 = sub_21498E900();
  v52 = *(v54 - 8);
  v4 = *(v52 + 64);
  v5 = MEMORY[0x28223BE20](v54);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADD0, &qword_2149940E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for OBKLiftUIContentItemImage(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = type metadata accessor for OBKLiftUIContentItem(0);
  sub_2148AA824(a1 + *(v21 + 28), v12, &qword_27CA1ADD0, &qword_2149940E0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21489DFCC(v12, &qword_27CA1ADD0, &qword_2149940E0);
    v22 = sub_21498E480();
    return (*(*(v22 - 8) + 56))(v55, 1, 1, v22);
  }

  v24 = v55;
  sub_2148C5F40(v12, v20, type metadata accessor for OBKLiftUIContentItemImage);
  sub_2148C5ED8(v20, v18, type metadata accessor for OBKLiftUIContentItemImage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = v52;
  v27 = *(v52 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = v51;
    v28 = v54;
    v27(v51, v18, v54);
    v29 = (v53 + *(type metadata accessor for OBKLiftUIView(0) + 52));
    if (*v29)
    {
      v30 = *v29;

      v31 = v56;
      sub_21498E8F0();
      if (!v31)
      {
        v32 = v20;

        _s18CurrentBundleClassCMa();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v34 = [objc_opt_self() bundleForClass_];
        v35 = sub_21498F840();

        v36 = [objc_opt_self() imageNamed:v35 inBundle:v34];

        if (v36)
        {
          (*(v26 + 8))(v51, v28);
          sub_2148C69F4(v32, type metadata accessor for OBKLiftUIContentItemImage);
          *v24 = v36;
          v37 = *MEMORY[0x277D24548];
          v38 = sub_21498E480();
          v39 = *(v38 - 8);
          (*(v39 + 104))(v24, v37, v38);
          return (*(v39 + 56))(v24, 0, 1, v38);
        }

        __break(1u);
        goto LABEL_14;
      }

LABEL_10:

      (*(v26 + 8))(v8, v28);
      return sub_2148C69F4(v20, type metadata accessor for OBKLiftUIContentItemImage);
    }

LABEL_14:
    v49 = v29[1];
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v28 = v54;
  v27(v8, v18, v54);
  v29 = (v53 + *(type metadata accessor for OBKLiftUIView(0) + 52));
  if (!*v29)
  {
    goto LABEL_14;
  }

  v40 = *v29;

  v41 = v56;
  v42 = sub_21498E8F0();
  if (v41)
  {
    goto LABEL_10;
  }

  v44 = v42;
  v45 = v43;

  (*(v26 + 8))(v8, v28);
  sub_2148C69F4(v20, type metadata accessor for OBKLiftUIContentItemImage);
  *v24 = v44;
  v24[1] = v45;
  v46 = *MEMORY[0x277D24550];
  v47 = sub_21498E480();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v24, v46, v47);
  return (*(v48 + 56))(v24, 0, 1, v47);
}

uint64_t sub_2148C3430(uint64_t a1, uint64_t a2)
{
  v4 = sub_21498E690();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = *(a1 + *(type metadata accessor for OBKLiftUIButton(0) + 28));
  v7 = type metadata accessor for OBKLiftUIView(0);
  v8 = (a2 + *(v7 + 52));
  if (!*v8)
  {
    v11 = v8[1];
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
    sub_21498ED10();
    __break(1u);
    goto LABEL_7;
  }

  v9 = (a2 + *(v7 + 56));
  if (!*v9)
  {
LABEL_7:
    v12 = v9[1];
    sub_21498E870();
    sub_2148BCAE8(&qword_27CA1AC08, MEMORY[0x277D232E8]);

    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  sub_21498FA10();
}

uint64_t sub_2148C37E0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x65546C6961746564;
    if (a1 != 2)
    {
      v6 = 0x6D49726564616568;
    }

    if (a1)
    {
      v5 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E6F6974706163;
    v2 = 0x427972616D697270;
    if (a1 != 7)
    {
      v2 = 0x7261646E6F636573;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746E65746E6F63;
    if (a1 != 4)
    {
      v3 = 0x4C746E65746E6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2148C3928()
{
  v1 = *v0;
  sub_214990160();
  sub_2148DAA28();
  return sub_214990190();
}

uint64_t sub_2148C3978()
{
  v1 = *v0;
  sub_214990160();
  sub_2148DAA28();
  return sub_214990190();
}

uint64_t sub_2148C39BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148C702C();
  *a2 = result;
  return result;
}

uint64_t sub_2148C39EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2148C37E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2148C3A34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148C702C();
  *a1 = result;
  return result;
}

uint64_t sub_2148C3A5C(uint64_t a1)
{
  v2 = sub_2148C6CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148C3A98(uint64_t a1)
{
  v2 = sub_2148C6CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148C3AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC8, qword_214993E50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v70 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC0, &qword_214993E48);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB0, &qword_214993E38);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v75 = &v67 - v19;
  v20 = sub_21498E900();
  v77 = *(v20 - 8);
  v78 = v20;
  v21 = *(v77 + 64);
  MEMORY[0x28223BE20](v20);
  v76 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21498E350();
  v79 = *(v23 - 8);
  v80 = v23;
  v24 = *(v79 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADD8, &qword_2149940E8);
  v81 = *(v27 - 8);
  v28 = *(v81 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v67 - v29;
  v31 = type metadata accessor for OBKLiftUIView(0);
  v32 = *(*(v31 - 1) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = (&v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = (v35 + *(v33 + 52));
  sub_21498E8C0();
  sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
  v83 = sub_21498ED20();
  *v36 = v83;
  v36[1] = v37;
  v38 = (v35 + v31[14]);
  sub_21498E870();
  sub_2148BCAE8(&qword_27CA1AC08, MEMORY[0x277D232E8]);
  v82 = sub_21498ED20();
  *v38 = v82;
  v38[1] = v39;
  v40 = a1[3];
  v41 = a1[4];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_2148C6CD8();
  v42 = v84;
  sub_2149901B0();
  if (v42)
  {
    __swift_destroy_boxed_opaque_existential_1(v85);
LABEL_4:
  }

  v43 = v79;
  v44 = v80;
  LOBYTE(v86) = 0;
  v45 = sub_21498FF20();
  v68 = 0;
  v84 = v30;
  v48 = v27;
  if (!v46)
  {
    sub_21498E340();
    v49 = sub_21498E330();
    v51 = v50;
    (*(v43 + 8))(v26, v44);
    v46 = v51;
    v45 = v49;
  }

  v52 = v35;
  *v35 = v45;
  v35[1] = v46;
  LOBYTE(v86) = 1;
  sub_2148BCAE8(&qword_27CA1A2C0, MEMORY[0x277D23340]);
  v53 = v76;
  v54 = v78;
  v55 = v84;
  v56 = v68;
  sub_21498FFA0();
  if (v56)
  {
    (*(v81 + 8))(v55, v48);
    __swift_destroy_boxed_opaque_existential_1(v85);
    v62 = *(v52 + 8);

    goto LABEL_4;
  }

  (*(v77 + 32))(v52 + v31[5], v53, v54);
  LOBYTE(v86) = 2;
  v57 = v48;
  v58 = v75;
  v59 = v57;
  v80 = 0;
  sub_21498FF40();
  sub_2148B4C68(v58, v52 + v31[6], &qword_27CA1A800, &unk_214993100);
  type metadata accessor for HeaderImage(0);
  LOBYTE(v86) = 3;
  sub_2148BCAE8(&qword_27CA1ADE8, type metadata accessor for HeaderImage);
  v60 = v74;
  sub_21498FF40();
  sub_2148B4C68(v60, v52 + v31[7], &qword_27CA1ABB0, &qword_214993E38);
  type metadata accessor for OBKLiftUIContent(0);
  LOBYTE(v86) = 4;
  sub_2148BCAE8(&qword_27CA1ADF0, type metadata accessor for OBKLiftUIContent);
  v61 = v73;
  sub_21498FF40();
  sub_2148B4C68(v61, v52 + v31[8], &qword_27CA1ABB8, &qword_214993E40);
  type metadata accessor for OBWelcomeContentViewLayout(0);
  v88 = 5;
  sub_2148BCAE8(&qword_27CA1ADF8, type metadata accessor for OBWelcomeContentViewLayout);
  sub_21498FF40();
  v63 = v86;
  if (v87)
  {
    v63 = 2;
  }

  *(v52 + v31[9]) = v63;
  type metadata accessor for OBKLiftUICaption(0);
  LOBYTE(v86) = 6;
  sub_2148BCAE8(&qword_27CA1AE00, type metadata accessor for OBKLiftUICaption);
  v64 = v72;
  sub_21498FF40();
  sub_2148B4C68(v64, v52 + v31[10], &qword_27CA1ABC0, &qword_214993E48);
  type metadata accessor for OBKLiftUIButton(0);
  LOBYTE(v86) = 7;
  sub_2148BCAE8(&qword_27CA1AE08, type metadata accessor for OBKLiftUIButton);
  v65 = v71;
  sub_21498FF40();
  sub_2148B4C68(v65, v52 + v31[11], &qword_27CA1ABC8, qword_214993E50);
  LOBYTE(v86) = 8;
  v66 = v70;
  sub_21498FF40();
  (*(v81 + 8))(v55, v59);
  sub_2148B4C68(v66, v52 + v31[12], &qword_27CA1ABC8, qword_214993E50);
  sub_2148C5ED8(v52, v69, type metadata accessor for OBKLiftUIView);
  __swift_destroy_boxed_opaque_existential_1(v85);
  return sub_2148C69F4(v52, type metadata accessor for OBKLiftUIView);
}

uint64_t sub_2148C4710(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148BCAE8(&qword_27CA1AC30, type metadata accessor for OBKLiftUIView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2148C4794(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148BCAE8(&qword_27CA1AC38, type metadata accessor for OBKLiftUIView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2148C4810(uint64_t a1)
{
  v2 = sub_2148BCAE8(&qword_27CA1AC38, type metadata accessor for OBKLiftUIView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2148C488C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148BCAE8(&qword_27CA1AC50, type metadata accessor for OBKLiftUIView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2148C492C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6567616D69;
  if (v2 != 1)
  {
    v4 = 2003134838;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6F626D7973;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6567616D69;
  if (*a2 != 1)
  {
    v8 = 2003134838;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6F626D7973;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_2148C4A14()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148C4AA8()
{
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148C4B28()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148C4BB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148C7078();
  *a2 = result;
  return result;
}

void sub_2148C4BE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6567616D69;
  if (v2 != 1)
  {
    v5 = 2003134838;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6F626D7973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2148C4C38()
{
  v1 = 0x6567616D69;
  if (*v0 != 1)
  {
    v1 = 2003134838;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t sub_2148C4C84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148C7078();
  *a1 = result;
  return result;
}

uint64_t sub_2148C4CAC(uint64_t a1)
{
  v2 = sub_2148C6D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148C4CE8(uint64_t a1)
{
  v2 = sub_2148C6D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148C4D24@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v81 = sub_21498E6A0();
  v77 = *(v81 - 8);
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21498E900();
  v82 = *(v86 - 8);
  v5 = *(v82 + 64);
  v6 = MEMORY[0x28223BE20](v86);
  v84 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v73 - v8;
  v9 = sub_21498E690();
  v10 = *(v9 - 8);
  v87 = v9;
  v88 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v78 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v79 = &v73 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v83 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE10, &qword_2149940F0);
  v90 = *(v20 - 8);
  v21 = *(v90 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - v22;
  v24 = type metadata accessor for HeaderImage(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148C6D2C();
  v29 = v91;
  sub_2149901B0();
  if (v29)
  {
    goto LABEL_30;
  }

  v74 = v27;
  v76 = v24;
  v75 = 0;
  v30 = v88;
  v31 = v89;
  v91 = a1;
  v32 = sub_21498FFB0();
  if (!*(v32 + 16))
  {

    v37 = v30;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v89 = v23;
    v38 = v87;
    v39 = __swift_project_value_buffer(v87, qword_281194E18);
    (*(v30 + 16))(v19, v39, v38);
    v40 = sub_21498E670();
    v41 = sub_21498FBB0();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v90;
    if (v42)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_21488E000, v40, v41, "Unable to decode header image", v44, 2u);
      MEMORY[0x216059AC0](v44, -1, -1);
    }

    (*(v37 + 8))(v19, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_214991720;
    v46 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_21498F870();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v47;
    *(inited + 48) = 0xD000000000000015;
    *(inited + 56) = 0x80000002149A1760;
    sub_2148E0B1C(inited);
    swift_setDeallocating();
    sub_21489DFCC(inited + 32, &qword_27CA1A4C8, &unk_214992030);
    v48 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v49 = sub_21498F840();
    v50 = sub_21498F7D0();

    [v48 initWithDomain:v49 code:-1 userInfo:v50];

    swift_willThrow();
    (*(v43 + 8))(v89, v20);
    goto LABEL_29;
  }

  v33 = *(v32 + 32);

  v34 = v30;
  if (!v33)
  {
    v35 = v31;
    v36 = v75;
    goto LABEL_14;
  }

  v35 = v31;
  v36 = v75;
  if (v33 == 1)
  {
    if ((sub_214990080() & 1) == 0)
    {

      goto LABEL_21;
    }

LABEL_14:

    v92 = 0;
    sub_2148BCAE8(&qword_27CA1A2C0, MEMORY[0x277D23340]);
    sub_21498FFA0();
    if (!v36)
    {
      v51 = v90;
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v52 = v87;
      v53 = __swift_project_value_buffer(v87, qword_281194E18);
      (*(v30 + 16))(v83, v53, v52);
      v54 = sub_21498E670();
      v55 = sub_21498FBD0();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_21488E000, v54, v55, "symbolName decoded", v56, 2u);
        MEMORY[0x216059AC0](v56, -1, -1);
      }

      (*(v34 + 8))(v83, v87);
      (*(v51 + 8))(v23, v20);
      v57 = v74;
      (*(v82 + 32))(v74, v85, v86);
      v58 = v91;
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  if (sub_214990080())
  {
    goto LABEL_14;
  }

  v59 = sub_214990080();

  if (v59)
  {
LABEL_21:
    v92 = 1;
    sub_2148BCAE8(&qword_27CA1A2C0, MEMORY[0x277D23340]);
    sub_21498FFA0();
    if (!v36)
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v60 = v87;
      v61 = __swift_project_value_buffer(v87, qword_281194E18);
      v62 = v79;
      (*(v30 + 16))(v79, v61, v60);
      v63 = sub_21498E670();
      v64 = sub_21498FBD0();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_21488E000, v63, v64, "uiImage decoded", v65, 2u);
        MEMORY[0x216059AC0](v65, -1, -1);
      }

      (*(v34 + 8))(v62, v87);
      (*(v90 + 8))(v23, v20);
      v57 = v74;
      (*(v82 + 32))(v74, v84, v86);
      v58 = v91;
LABEL_37:
      swift_storeEnumTagMultiPayload();
      sub_2148C5F40(v57, v35, type metadata accessor for HeaderImage);
      v66 = v58;
      return __swift_destroy_boxed_opaque_existential_1(v66);
    }

    goto LABEL_28;
  }

  v92 = 2;
  sub_2148BCAE8(&qword_27CA1B770, MEMORY[0x277D231A8]);
  sub_21498FFA0();
  if (!v36)
  {
    v68 = v90;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v87, qword_281194E18);
    v69 = v78;
    (*(v30 + 16))();
    v70 = sub_21498E670();
    v71 = sub_21498FBD0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_21488E000, v70, v71, "view decoded", v72, 2u);
      v69 = v78;
      MEMORY[0x216059AC0](v72, -1, -1);
    }

    (*(v34 + 8))(v69, v87);
    (*(v68 + 8))(v23, v20);
    v57 = v74;
    (*(v77 + 32))(v74, v80, v81);
    v58 = v91;
    goto LABEL_37;
  }

LABEL_28:
  (*(v90 + 8))(v23, v20);
LABEL_29:
  a1 = v91;
LABEL_30:
  v66 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_2148C59C4()
{
  sub_2148BCAE8(&qword_27CA1AC30, type metadata accessor for OBKLiftUIView);
  sub_2148BCAE8(&qword_27CA1AC38, type metadata accessor for OBKLiftUIView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2148C5B0C()
{
  result = qword_27CA1AC90;
  if (!qword_27CA1AC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AC80, &qword_214994000);
    sub_2148C5BC4();
    sub_2148B4C20(&qword_27CA1ACF8, &qword_27CA1AD00, &qword_214994038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AC90);
  }

  return result;
}

unint64_t sub_2148C5BC4()
{
  result = qword_27CA1AC98;
  if (!qword_27CA1AC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1ACA0, &qword_214994008);
    sub_2148C5C50();
    sub_2148C5D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AC98);
  }

  return result;
}

unint64_t sub_2148C5C50()
{
  result = qword_27CA1ACA8;
  if (!qword_27CA1ACA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1ACB0, &qword_214994010);
    sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018);
    sub_2148B4C20(&qword_27CA1ACC8, &qword_27CA1ACD0, &qword_214994020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1ACA8);
  }

  return result;
}

unint64_t sub_2148C5D30()
{
  result = qword_27CA1ACD8;
  if (!qword_27CA1ACD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1ACE0, &qword_214994028);
    sub_2148B4C20(&qword_27CA1ACE8, &qword_27CA1ACF0, &qword_214994030);
    sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1ACD8);
  }

  return result;
}

uint64_t sub_2148C5E10(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_21498F470();
}

uint64_t sub_2148C5ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2148C5F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2148C5FA8()
{
  result = qword_27CA1AD48;
  if (!qword_27CA1AD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AD40, &qword_214994078);
    sub_2148C602C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AD48);
  }

  return result;
}

unint64_t sub_2148C602C()
{
  result = qword_27CA1AD50;
  if (!qword_27CA1AD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AD58, &qword_214994080);
    sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AD50);
  }

  return result;
}

uint64_t sub_2148C60E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21498E6A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for OBKLiftUIView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v51 = *(*(v1 - 1) + 64);
  v52 = v0;
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = v1[5];
  v7 = sub_21498E900();
  v8 = *(v7 - 8);
  v53 = *(v8 + 8);
  v53(v4 + v6, v7);
  v9 = v1[6];
  if (!(*(v8 + 48))(v4 + v9, 1, v7))
  {
    v53(v4 + v9, v7);
  }

  v10 = v1[7];
  v11 = type metadata accessor for HeaderImage(0);
  if (!(*(*(v11 - 8) + 48))(v4 + v10, 1, v11))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v13 = sub_21498E6A0();
      (*(*(v13 - 8) + 8))(v4 + v10, v13);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v53(v4 + v10, v7);
    }
  }

  v14 = (v4 + v1[8]);
  v15 = type metadata accessor for OBKLiftUIContent(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v38 = swift_getEnumCaseMultiPayload();
    switch(v38)
    {
      case 2:
        v41 = sub_21498E6A0();
        (*(*(v41 - 8) + 8))(v14, v41);
        v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(&v14[v42], 1, v43))
        {
          (*(v44 + 8))(&v14[v42], v43);
        }

        break;
      case 1:
        v40 = sub_21498E6A0();
        (*(*(v40 - 8) + 8))(v14, v40);
        break;
      case 0:
        v39 = *v14;

        break;
    }
  }

  v16 = v4 + v1[10];
  v17 = type metadata accessor for OBKLiftUICaption(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 >= 2)
    {
      if (v18 != 2)
      {
        goto LABEL_14;
      }

      v53(v16, v7);
      v16 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD38, &qword_214994070) + 64);
    }

    v53(v16, v7);
  }

LABEL_14:
  v19 = v4 + v1[11];
  v20 = type metadata accessor for OBKLiftUIButton(0);
  v21 = *(*(v20 - 1) + 48);
  if (!v21(v19, 1, v20))
  {
    v47 = v1;
    v48 = v2;
    v49 = (v2 + 16) & ~v2;
    v53(v19, v7);
    v22 = v20[5];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (!v25(v19 + v22, 1, v23))
    {
      (*(v24 + 8))(v19 + v22, v23);
    }

    v46 = v24;
    v26 = v20[6];
    if (!v25(v19 + v26, 1, v23))
    {
      (*(v46 + 8))(v19 + v26, v23);
    }

    v27 = *(v19 + v20[7]);

    v2 = v48;
    v3 = v49;
    v1 = v47;
  }

  v28 = v4 + v1[12];
  if (!v21(v28, 1, v20))
  {
    v50 = v3;
    v29 = v2;
    v53(v28, v7);
    v30 = v20[5];
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (!v33(v28 + v30, 1, v31))
    {
      (*(v32 + 8))(v28 + v30, v31);
    }

    v34 = v20[6];
    if (!v33(v28 + v34, 1, v31))
    {
      (*(v32 + 8))(v28 + v34, v31);
    }

    v35 = *(v28 + v20[7]);

    v2 = v29;
    v3 = v50;
  }

  v36 = *(v4 + v1[13]);

  v37 = *(v4 + v1[14]);

  return MEMORY[0x2821FE8E8](v52, v3 + v51, v2 | 7);
}

uint64_t sub_2148C6828()
{
  v1 = *(type metadata accessor for OBKLiftUIView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2148C2A0C(v2);
}

uint64_t sub_2148C6898@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_21498E900() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for OBKLiftUIView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2148C283C(v7, a1);
}

unint64_t sub_2148C6970()
{
  result = qword_27CA1AD70;
  if (!qword_27CA1AD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AD68, &qword_214994088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AD70);
  }

  return result;
}

uint64_t sub_2148C69F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2148C6A54()
{
  v1 = *(type metadata accessor for OBKLiftUIButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for OBKLiftUIView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2148C3430(v0 + v2, v5);
}

uint64_t sub_2148C6B20(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2148C6BA4()
{
  result = qword_27CA1ADA0;
  if (!qword_27CA1ADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AC68, &qword_214993FE8);
    sub_2148BCAE8(&qword_27CA1ADA8, MEMORY[0x277D24590]);
    sub_2148B4C20(&qword_27CA1ACF8, &qword_27CA1AD00, &qword_214994038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1ADA0);
  }

  return result;
}

unint64_t sub_2148C6C8C()
{
  result = qword_27CA1ADC8;
  if (!qword_27CA1ADC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA1ADC8);
  }

  return result;
}

unint64_t sub_2148C6CD8()
{
  result = qword_27CA1ADE0;
  if (!qword_27CA1ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1ADE0);
  }

  return result;
}

unint64_t sub_2148C6D2C()
{
  result = qword_27CA1AE18;
  if (!qword_27CA1AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE18);
  }

  return result;
}

unint64_t sub_2148C6DA0()
{
  result = qword_27CA1AE30;
  if (!qword_27CA1AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AE38, &qword_214994108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE30);
  }

  return result;
}

unint64_t sub_2148C6E20()
{
  result = qword_27CA1AE40;
  if (!qword_27CA1AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE40);
  }

  return result;
}

unint64_t sub_2148C6E78()
{
  result = qword_27CA1AE48;
  if (!qword_27CA1AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE48);
  }

  return result;
}

unint64_t sub_2148C6ED0()
{
  result = qword_27CA1AE50;
  if (!qword_27CA1AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE50);
  }

  return result;
}

unint64_t sub_2148C6F28()
{
  result = qword_27CA1AE58;
  if (!qword_27CA1AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE58);
  }

  return result;
}

unint64_t sub_2148C6F80()
{
  result = qword_27CA1AE60;
  if (!qword_27CA1AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE60);
  }

  return result;
}

unint64_t sub_2148C6FD8()
{
  result = qword_27CA1AE68;
  if (!qword_27CA1AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE68);
  }

  return result;
}

uint64_t sub_2148C702C()
{
  v0 = sub_21498FEF0();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148C7078()
{
  v0 = sub_21498FEF0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148C70D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2148C7130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_2148C71AC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
    if (swift_dynamicCast())
    {

      if ((v19 & 1) == 0 && !v18)
      {
        sub_2148C770C();
        sub_21498EE90();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE88, &unk_214994440);
        sub_2148C7688();
        sub_2148C7760();
        sub_21498EE90();

LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE70, &qword_214994438);
        sub_2148C7658();
        sub_2148C7760();
        sub_21498EE90();

        goto LABEL_17;
      }
    }

    v6 = a1;
    sub_2148C77B4();
    if (!swift_dynamicCast())
    {
LABEL_15:

      swift_getErrorValue();
      sub_214990100();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE88, &unk_214994440);
      sub_2148C7688();
      sub_2148C7760();
      sub_21498EE90();
      goto LABEL_16;
    }

    v7 = [a1 domain];
    v8 = sub_21498F870();
    v10 = v9;

    v11 = *MEMORY[0x277CCA738];
    if (v8 == sub_21498F870() && v10 == v12)
    {
    }

    else
    {
      v15 = sub_214990080();

      if ((v15 & 1) == 0)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    if ([a1 code] == -1009)
    {
      sub_2148C770C();
      sub_21498EE90();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE88, &unk_214994440);
      sub_2148C7688();
      sub_2148C7760();
      sub_21498EE90();

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  *&v17 = 2777980912;
  *(&v17 + 1) = 0xA400000000000000;
  MEMORY[0x2160589C0](0xD000000000000015, 0x80000002149A0E50);
  MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
  sub_21498E0A0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE70, &qword_214994438);
  sub_2148C7658();
  sub_2148C7760();
  sub_21498EE90();
LABEL_17:
  result = *&v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  return result;
}

unint64_t sub_2148C7688()
{
  result = qword_27CA1AE80;
  if (!qword_27CA1AE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AE88, &unk_214994440);
    sub_2148C770C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE80);
  }

  return result;
}

unint64_t sub_2148C770C()
{
  result = qword_27CA1AE90;
  if (!qword_27CA1AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE90);
  }

  return result;
}

unint64_t sub_2148C7760()
{
  result = qword_27CA1AE98;
  if (!qword_27CA1AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE98);
  }

  return result;
}

unint64_t sub_2148C77B4()
{
  result = qword_281190CA8;
  if (!qword_281190CA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281190CA8);
  }

  return result;
}

uint64_t sub_2148C7820(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2148C7760();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2148C78C0(void *a1@<X8>)
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v84 = ObjCClassFromMetadata;
  v3 = [v2 bundleForClass_];
  MEMORY[0x2160589C0](0x5F454E494C46464FLL, 0xED0000454C544954);
  MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
  v4 = sub_21498E0A0() >> 32;
  v6 = v5;

  HIDWORD(v133) = v4;
  v134 = v6;
  sub_21489CA00();
  v7 = sub_21498F100();
  v9 = v8;
  v11 = v10;
  sub_21498F050();
  sub_21498F030();
  sub_21498F060();

  v12 = sub_21498F0E0();
  v14 = v13;
  v16 = v15;

  sub_2148C85D4(v7, v9, v11 & 1);

  LODWORD(v133) = sub_21498EF00();
  v17 = sub_21498F0B0();
  v19 = v18;
  LOBYTE(v7) = v20;
  v22 = v21;
  sub_2148C85D4(v12, v14, v16 & 1);

  v23 = sub_21498EFE0();
  sub_21498EB50();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7 & 1;
  LOBYTE(v125) = v7 & 1;
  LOBYTE(v98[0]) = 0;
  v33 = sub_21498F000();
  sub_21498EB50();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v133) = 0;
  v42 = MobileGestalt_get_current_device();
  if (v42)
  {
    v43 = v42;
    v86 = v41;
    v87 = v39;
    v88 = v37;
    v89 = v35;
    v90 = v33;
    v91 = v31;
    v92 = v29;
    v93 = v27;
    v94 = v25;
    v95 = v23;
    v96 = v19;
    v97 = v17;
    v83 = v22;
    MobileGestalt_get_wapiCapability();

    v44 = objc_opt_self();
    v45 = sub_21498F840();

    v46 = [v44 modelSpecificLocalizedStringKeyForKey_];

    if (v46)
    {
      v47 = sub_21498F870();
      v49 = v48;

      v50 = [v2 bundleForClass_];
      MEMORY[0x2160589C0](v47, v49);
      MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
      sub_21498E0A0();

      v51 = sub_21498F100();
      v53 = v52;
      LOBYTE(v47) = v54;
      sub_21498F010();
      v55 = sub_21498F0E0();
      v57 = v56;
      v59 = v58;

      sub_2148C85D4(v51, v53, v47 & 1);

      sub_21498EF00();
      v60 = sub_21498F0B0();
      v62 = v61;
      LOBYTE(v51) = v63;
      v65 = v64;
      sub_2148C85D4(v55, v57, v59 & 1);

      LOBYTE(v55) = sub_21498EFE0();
      sub_21498EB50();
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      LOBYTE(v57) = v51 & 1;
      v159 = v51 & 1;
      v156 = 0;
      LOBYTE(v51) = sub_21498F000();
      sub_21498EB50();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v160 = 0;
      KeyPath = swift_getKeyPath();
      *&v118 = v97;
      *(&v118 + 1) = v96;
      LOBYTE(v119) = v32;
      *(&v119 + 1) = *v165;
      DWORD1(v119) = *&v165[3];
      *(&v119 + 1) = v83;
      LOBYTE(v120) = v95;
      *(&v120 + 1) = *v164;
      DWORD1(v120) = *&v164[3];
      *(&v120 + 1) = v94;
      *&v121 = v93;
      *(&v121 + 1) = v92;
      *&v122 = v91;
      BYTE8(v122) = 0;
      *(&v122 + 9) = v167[0];
      HIDWORD(v122) = *(v167 + 3);
      LOBYTE(v123) = v90;
      DWORD1(v123) = *&v166[3];
      *(&v123 + 1) = *v166;
      *(&v123 + 1) = v89;
      *v124 = v88;
      *&v124[8] = v87;
      *&v124[16] = v86;
      v124[24] = 0;
      __src[2] = v120;
      __src[3] = v121;
      __src[0] = v118;
      __src[1] = v119;
      *(&__src[6] + 9) = *&v124[9];
      __src[4] = v122;
      __src[5] = v123;
      *&v125 = v60;
      *(&v125 + 1) = v62;
      LOBYTE(v126) = v57;
      DWORD1(v126) = *&v158[3];
      *(&v126 + 1) = *v158;
      *(&v126 + 1) = v65;
      LOBYTE(v127) = v55;
      DWORD1(v127) = *&v157[3];
      *(&v127 + 1) = *v157;
      *(&v127 + 1) = v67;
      *&v128 = v69;
      *(&v128 + 1) = v71;
      *&v129 = v73;
      BYTE8(v129) = 0;
      HIDWORD(v129) = *&v162[3];
      *(&v129 + 9) = *v162;
      LOBYTE(v130) = v51;
      DWORD1(v130) = *&v161[3];
      *(&v130 + 1) = *v161;
      *(&v130 + 1) = v75;
      *&v131 = v77;
      *(&v131 + 1) = v79;
      *v132 = v81;
      v132[8] = 0;
      *&v132[12] = *(v163 + 3);
      *&v132[9] = v163[0];
      *&v132[16] = KeyPath;
      v132[24] = 1;
      __src[6] = *v124;
      __src[8] = v125;
      __src[9] = v126;
      __src[11] = v128;
      __src[12] = v129;
      __src[10] = v127;
      *(&__src[15] + 9) = *&v132[9];
      __src[14] = v131;
      __src[15] = *v132;
      __src[13] = v130;
      memcpy(a1, __src, 0x109uLL);
      v133 = v60;
      v134 = v62;
      v135 = v57;
      *v136 = *v158;
      *&v136[3] = *&v158[3];
      v137 = v65;
      v138 = v55;
      *v139 = *v157;
      *&v139[3] = *&v157[3];
      v140 = v67;
      v141 = v69;
      v142 = v71;
      v143 = v73;
      v144 = 0;
      *&v145[3] = *&v162[3];
      *v145 = *v162;
      v146 = v51;
      *&v147[3] = *&v161[3];
      *v147 = *v161;
      v148 = v75;
      v149 = v77;
      v150 = v79;
      v151 = v81;
      v152 = 0;
      *v153 = v163[0];
      *&v153[3] = *(v163 + 3);
      v154 = KeyPath;
      v155 = 1;
      sub_2148AA824(&v118, v98, &qword_27CA1AEB8, qword_21499CF20);
      sub_2148AA824(&v125, v98, &qword_27CA1AEC0, &qword_214994590);
      sub_21489DFCC(&v133, &qword_27CA1AEC0, &qword_214994590);
      v98[0] = v97;
      v98[1] = v96;
      v99 = v32;
      *v100 = *v165;
      *&v100[3] = *&v165[3];
      v101 = v83;
      v102 = v95;
      *v103 = *v164;
      *&v103[3] = *&v164[3];
      v104 = v94;
      v105 = v93;
      v106 = v92;
      v107 = v91;
      v108 = 0;
      *&v109[3] = *(v167 + 3);
      *v109 = v167[0];
      v110 = v90;
      *&v111[3] = *&v166[3];
      *v111 = *v166;
      v112 = v89;
      v113 = v88;
      v114 = v87;
      v115 = v86;
      v116 = 0;
      sub_21489DFCC(v98, &qword_27CA1AEB8, qword_21499CF20);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_2148C8134@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21498EE70();
  v8 = 1;
  sub_2148C78C0(__src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v10, __src, 0x109uLL);
  sub_2148AA824(__dst, v5, &qword_27CA1AEB0, &qword_214994550);
  sub_21489DFCC(v10, &qword_27CA1AEB0, &qword_214994550);
  memcpy(&v7[7], __dst, 0x109uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x110uLL);
}

uint64_t sub_2148C8208@<X0>(uint64_t a1@<X8>)
{
  sub_21489CA00();

  v2 = sub_21498F100();
  v4 = v3;
  v6 = v5;
  sub_21498F010();
  v7 = sub_21498F0E0();
  v9 = v8;
  v11 = v10;

  sub_2148C85D4(v2, v4, v6 & 1);

  sub_21498EF00();
  v12 = sub_21498F0B0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_2148C85D4(v7, v9, v11 & 1);

  v19 = sub_21498EFE0();
  sub_21498EB50();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v9) = v16 & 1;
  KeyPath = swift_getKeyPath();
  LOBYTE(v7) = sub_21498F000();
  result = sub_21498EB50();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v9;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v21;
  *(a1 + 48) = v23;
  *(a1 + 56) = v25;
  *(a1 + 64) = v27;
  *(a1 + 72) = 0;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = 1;
  *(a1 + 96) = v7;
  *(a1 + 104) = v30;
  *(a1 + 112) = v31;
  *(a1 + 120) = v32;
  *(a1 + 128) = v33;
  *(a1 + 136) = 0;
  return result;
}

double sub_2148C83D0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_21498EE70();
  v22 = 1;
  sub_2148C8208(&v13);
  v28 = v18;
  v29 = v19;
  v30[0] = v20[0];
  *(v30 + 9) = *(v20 + 9);
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v23 = v13;
  v24 = v14;
  v31[5] = v18;
  v31[6] = v19;
  v32[0] = v20[0];
  *(v32 + 9) = *(v20 + 9);
  v31[2] = v15;
  v31[3] = v16;
  v31[4] = v17;
  v31[0] = v13;
  v31[1] = v14;
  sub_2148AA824(&v23, &v12, &qword_27CA1AEC8, &qword_214994598);
  sub_21489DFCC(v31, &qword_27CA1AEC8, &qword_214994598);
  *(&v21[6] + 7) = v29;
  *(&v21[5] + 7) = v28;
  *(&v21[2] + 7) = v25;
  *(&v21[1] + 7) = v24;
  *(&v21[7] + 7) = v30[0];
  v21[8] = *(v30 + 9);
  *(&v21[3] + 7) = v26;
  *(&v21[4] + 7) = v27;
  *(v21 + 7) = v23;
  v6 = v21[4];
  *(a1 + 97) = v21[5];
  v7 = v21[7];
  *(a1 + 113) = v21[6];
  *(a1 + 129) = v7;
  *(a1 + 145) = v21[8];
  v8 = v21[0];
  *(a1 + 33) = v21[1];
  result = *&v21[2];
  v10 = v21[3];
  *(a1 + 49) = v21[2];
  *(a1 + 65) = v10;
  *(a1 + 81) = v6;
  v11 = v22;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 17) = v8;
  return result;
}

uint64_t sub_2148C85D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2148C85E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2148C8640(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v31 = MEMORY[0x277D84F90];
    sub_2148A9BB8(0, v2, 0);
    v28 = v31;
    v4 = a1 + 64;
    v5 = -1 << *(a1 + 32);
    result = sub_21498FD70();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v25 = v2;
    v26 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v27 = v7;
      v11 = (*(a1 + 48) + 16 * v6);
      v12 = *(*(a1 + 56) + 8 * v6);
      v29 = *v11;
      v30 = v11[1];
      swift_bridgeObjectRetain_n();
      MEMORY[0x2160589C0](8250, 0xE200000000000000);
      v13 = sub_214990050();
      MEMORY[0x2160589C0](v13);

      v14 = v28;
      v16 = *(v28 + 16);
      v15 = *(v28 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2148A9BB8((v15 > 1), v16 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v29;
      *(v17 + 40) = v30;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v10);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v28 = v14;
      v8 = v26;
      if (v26 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (a1 + 72 + 8 * v10);
        while (v21 < (v9 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_2148DA17C(v6, v26, 0);
            v9 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_2148DA17C(v6, v26, 0);
      }

LABEL_4:
      v7 = v27 + 1;
      v6 = v9;
      if (v27 + 1 == v25)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t MAInternalSettingsView.init(appleAccount:accountStore:)@<X0>(void *a1@<X0>, void *a2@<X1>, char *(**a3)()@<X8>)
{
  v54 = a1;
  v56 = a3;
  v4 = sub_21498F710();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21498E350();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21498E690();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_281194E18);
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_21498E670();
  v19 = sub_21498FBA0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_21488E000, v18, v19, "[MAInternalSettingsView] init()", v20, 2u);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v21 = type metadata accessor for MARepositoryDefault();
  v22 = swift_allocObject();
  v23 = a2;
  v24 = v54;
  sub_21498E340();
  v25 = sub_21498E330();
  v27 = v26;
  v28 = *(v8 + 8);
  v28(v11, v7);
  v53 = v22;
  v22[2] = v25;
  v22[3] = v27;
  v22[4] = v23;
  v22[5] = v24;
  v29 = swift_allocObject();
  v30 = v23;
  v31 = v24;
  sub_21498E340();
  v32 = sub_21498E330();
  v34 = v33;
  v28(v11, v7);
  v29[2] = v32;
  v29[3] = v34;
  v29[4] = v30;
  v29[5] = v31;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v36 = v35;
  v37 = [objc_opt_self() defaultCenter];
  v38 = v55;
  sub_21496BCB8(v55);
  v39 = type metadata accessor for NetworkStatusProvider();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = sub_214988258();
  v57[3] = v21;
  v57[4] = &off_2826CB168;
  v57[0] = v29;
  type metadata accessor for iCloudMailAssistantProviderSwift();
  v43 = swift_allocObject();
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v57, v21);
  v45 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = (&v52 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = sub_2148D72D0(v31, v30, *v47, v36, v37, v38, v42, 0x3FE0000000000000, 0, v43);
  __swift_destroy_boxed_opaque_existential_1(v57);
  result = swift_allocObject();
  *(result + 16) = v53;
  *(result + 24) = v49;
  v51 = v56;
  *v56 = sub_2148D836C;
  v51[1] = result;
  *(v51 + 16) = 0;
  return result;
}

char *sub_2148C8D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MARepositoryDefault();
  v18[3] = v4;
  v18[4] = &off_2826CB168;
  v18[0] = a1;
  v5 = _s9ViewModelCMa(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v18, v4);
  v10 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;

  v15 = sub_2148D6198(v14, a2, v8);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

uint64_t MAInternalSettingsView.init(provider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21498E690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_21498E670();
  v11 = sub_21498FBA0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21488E000, v10, v11, "[MAInternalSettingsView] init()", v12, 2u);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_2148994D0(*(a1 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository, v16);
  v13 = swift_allocObject();
  result = sub_2148AAE3C(v16, v13 + 16);
  *(v13 + 56) = a1;
  *a2 = sub_2148D8374;
  *(a2 + 8) = v13;
  *(a2 + 16) = 0;
  return result;
}

char *sub_2148C90D0(uint64_t a1, uint64_t a2)
{
  sub_2148994D0(a1, v24);
  v3 = v25;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v10 = type metadata accessor for MARepositoryDefault();
  v23[3] = v10;
  v23[4] = &off_2826CB168;
  v23[0] = v9;
  v11 = _s9ViewModelCMa(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v10);
  v16 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;

  v21 = sub_2148D6198(v20, a2, v14);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v21;
}

uint64_t MAInternalSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_2148C9358(v3, v4, v5, a1);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AEF0, &qword_2149946B0) + 36));
  *v7 = sub_2148D8380;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;

  return sub_214897F3C();
}

uint64_t sub_2148C9358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v158 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF28, &qword_2149947E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v157 = &v142 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF30, &qword_2149947E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v154 = &v142 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF38, &qword_2149947F0);
  v14 = *(v13 - 8);
  v145 = v13;
  v146 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v144 = &v142 - v16;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF40, &qword_2149947F8);
  v147 = *(v164 - 1);
  v17 = *(v147 + 64);
  MEMORY[0x28223BE20](v164);
  v163 = &v142 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF48, &qword_214994800);
  v20 = *(v19 - 8);
  v148 = v19;
  v149 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v165 = &v142 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF50, &qword_214994808);
  v24 = *(v23 - 8);
  v150 = v23;
  v151 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v167 = &v142 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF58, &qword_214994810);
  v28 = *(v27 - 8);
  v152 = v27;
  v153 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v171 = &v142 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF60, &qword_214994818);
  v32 = *(v31 - 8);
  v155 = v31;
  v156 = v32;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v169 = &v142 - v34;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF68, &qword_214994820);
  v206 = *(v194 - 8);
  v35 = v206[8];
  v36 = MEMORY[0x28223BE20](v194);
  v196 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v193 = &v142 - v38;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF70, &qword_214994828);
  v205 = *(v191 - 8);
  v39 = v205[8];
  v40 = MEMORY[0x28223BE20](v191);
  v195 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v190 = &v142 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF78, &qword_214994830);
  v44 = *(v43 - 8);
  v142 = v43;
  v143 = v44;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v162 = &v142 - v46;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF80, &qword_214994838);
  v204 = *(v186 - 8);
  v47 = v204[8];
  v48 = MEMORY[0x28223BE20](v186);
  v192 = &v142 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v187 = &v142 - v50;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF88, &qword_214994840);
  v203 = *(v182 - 8);
  v51 = v203[8];
  v52 = MEMORY[0x28223BE20](v182);
  v189 = &v142 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v172 = &v142 - v54;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF90, &qword_214994848);
  v202 = *(v184 - 8);
  v55 = v202[8];
  v56 = MEMORY[0x28223BE20](v184);
  v188 = &v142 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v173 = &v142 - v58;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF98, &qword_214994850);
  v201 = *(v181 - 8);
  v59 = v201[8];
  v60 = MEMORY[0x28223BE20](v181);
  v185 = &v142 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v174 = &v142 - v62;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFA0, &qword_214994858);
  v200 = *(v179 - 8);
  v63 = v200[8];
  v64 = MEMORY[0x28223BE20](v179);
  v183 = &v142 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v175 = &v142 - v66;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFA8, &qword_214994860);
  v199 = *(v177 - 8);
  v67 = v199[8];
  v68 = MEMORY[0x28223BE20](v177);
  v180 = &v142 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v166 = &v142 - v70;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFB0, &qword_214994868);
  v170 = *(v176 - 8);
  v71 = v170[8];
  v72 = MEMORY[0x28223BE20](v176);
  v178 = &v142 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v168 = &v142 - v74;
  v238 = a1;
  v239 = a2;
  v240 = a3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFB8, &qword_214994870);
  sub_2148B4C20(&qword_27CA1AFC0, &qword_27CA1AFB8, &qword_214994870);
  sub_21498F4C0();
  v235 = a1;
  v236 = a2;
  v75 = a2;
  v237 = a3 & 1;
  v246[0] = xmmword_2149945B0;
  v76 = MEMORY[0x277D84F90];
  LOBYTE(v246[1]) = 0;
  *(&v246[1] + 1) = MEMORY[0x277D84F90];
  *&v242[0] = 0xD000000000000059;
  *(&v242[0] + 1) = 0x80000002149A17C0;
  LOBYTE(v242[1]) = 0;
  *(&v242[1] + 1) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFC8, &qword_214994878);
  v161 = MEMORY[0x277CE14C0];
  sub_2148B4C20(&qword_27CA1AFD0, &qword_27CA1AFC8, &qword_214994878);
  sub_21498F4B0();
  v232 = a1;
  v233 = v75;
  v234 = a3 & 1;
  v246[0] = xmmword_2149945C0;
  LOBYTE(v246[1]) = 0;
  *(&v246[1] + 1) = v76;
  *&v242[0] = 0xD00000000000002DLL;
  *(&v242[0] + 1) = 0x80000002149A1820;
  LOBYTE(v242[1]) = 0;
  *(&v242[1] + 1) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFD8, &qword_214994880);
  sub_2148D8738(&qword_27CA1AFE0, &qword_27CA1AFD8, &qword_214994880, sub_2148D8590);
  sub_21498F4B0();
  v229 = a1;
  v230 = v75;
  v231 = a3 & 1;
  v246[0] = xmmword_2149945D0;
  LOBYTE(v246[1]) = 0;
  *(&v246[1] + 1) = v76;
  *&v242[0] = 0xD000000000000016;
  *(&v242[0] + 1) = 0x80000002149A1850;
  LOBYTE(v242[1]) = 0;
  *(&v242[1] + 1) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B048, &qword_2149948B8);
  sub_2148D8738(&qword_27CA1B050, &qword_27CA1B048, &qword_2149948B8, sub_2148D87E8);
  sub_21498F4B0();
  v226 = a1;
  v227 = v75;
  v228 = a3 & 1;
  v246[0] = xmmword_2149945E0;
  LOBYTE(v246[1]) = 0;
  *(&v246[1] + 1) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B078, &qword_2149948D0);
  sub_2148B4C20(&qword_27CA1B080, &qword_27CA1B078, &qword_2149948D0);
  sub_21498F4A0();
  v223 = a1;
  v224 = v75;
  v225 = a3 & 1;
  *&v246[0] = 0xD000000000000019;
  *(&v246[0] + 1) = 0x80000002149A1870;
  LOBYTE(v246[1]) = 0;
  v77 = MEMORY[0x277D84F90];
  *(&v246[1] + 1) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B088, &qword_2149948D8);
  sub_2148B4C20(&qword_27CA1B090, &qword_27CA1B088, &qword_2149948D8);
  sub_21498F4A0();
  v220 = a1;
  v221 = v75;
  v222 = a3 & 1;
  v246[0] = xmmword_2149945F0;
  LOBYTE(v246[1]) = 0;
  *(&v246[1] + 1) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B098, &qword_2149948E0);
  sub_2148B4C20(&qword_27CA1B0A0, &qword_27CA1B098, &qword_2149948E0);
  sub_21498F4A0();
  v198 = _s9ViewModelCMa(0);
  v207 = sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v78 = swift_allocObject();
  *(v78 + 16) = a1;
  *(v78 + 24) = v75;
  *(v78 + 32) = a3 & 1;
  sub_214897F3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0A8, &qword_214994910);
  sub_2148D88D0();
  sub_2148D8994();
  v79 = v142;
  v80 = v162;
  sub_21498F1E0();

  (*(v143 + 8))(v80, v79);
  v217 = a1;
  v218 = v75;
  v219 = a3 & 1;
  v246[0] = xmmword_214994600;
  LOBYTE(v246[1]) = 0;
  *(&v246[1] + 1) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C0, &qword_214994918);
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B0C8, &qword_214994920);
  v82 = sub_2148B4C20(&qword_27CA1B0D0, &qword_27CA1B0C8, &qword_214994920);
  *&v242[0] = v81;
  *(&v242[0] + 1) = MEMORY[0x277D839B0];
  *&v242[1] = v82;
  *(&v242[1] + 1) = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_21498F4A0();
  v214 = a1;
  v215 = v75;
  v216 = a3 & 1;
  *&v246[0] = 0xD000000000000012;
  *(&v246[0] + 1) = 0x80000002149A15F0;
  LOBYTE(v246[1]) = 0;
  *(&v246[1] + 1) = MEMORY[0x277D84F90];
  *&v242[0] = 0xD00000000000004FLL;
  *(&v242[0] + 1) = 0x80000002149A1890;
  LOBYTE(v242[1]) = 0;
  *(&v242[1] + 1) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0D8, &qword_214994928);
  sub_2148B4C20(&qword_27CA1B0E0, &qword_27CA1B0D8, &qword_214994928);
  v83 = v144;
  sub_21498F4B0();
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v242[4] = v246[4];
  v242[5] = v246[5];
  v242[6] = v246[6];
  LOBYTE(v242[7]) = v246[7];
  v242[0] = v246[0];
  v242[1] = v246[1];
  v242[2] = v246[2];
  v242[3] = v246[3];
  v84 = swift_allocObject();
  *(v84 + 16) = a1;
  *(v84 + 24) = v75;
  v159 = v75;
  LODWORD(v197) = a3 & 1;
  *(v84 + 32) = a3 & 1;
  v85 = a1;
  sub_214897F3C();
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0E8, &qword_214994958);
  v161 = sub_2148D8A74();
  v86 = sub_2148D8B30();
  v162 = sub_2148D8B84();
  v87 = v145;
  sub_21498F1F0();

  v243[4] = v242[4];
  v243[5] = v242[5];
  v243[6] = v242[6];
  v244 = v242[7];
  v243[0] = v242[0];
  v243[1] = v242[1];
  v243[2] = v242[2];
  v243[3] = v242[3];
  sub_21489DFCC(v243, &qword_27CA1B118, &qword_214994968);
  (*(v146 + 8))(v83, v87);
  v88 = v85;
  v89 = v159;
  v90 = v197;
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v91 = swift_allocObject();
  *(v91 + 16) = v88;
  *(v91 + 24) = v89;
  *(v91 + 32) = v90;
  sub_214897F3C();
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B120, &qword_214994998);
  *&v246[0] = v87;
  *(&v246[0] + 1) = &type metadata for AutomationRecommendation;
  *&v246[1] = v143;
  *(&v246[1] + 1) = v161;
  *&v246[2] = v86;
  *(&v246[2] + 1) = v162;
  v162 = MEMORY[0x277CDEE40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = sub_2148D8C48();
  v94 = v164;
  v95 = v163;
  sub_21498F1E0();

  (*(v147 + 8))(v95, v94);
  v96 = v159;
  LOBYTE(v87) = v197;
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v242[4] = v246[4];
  v242[5] = v246[5];
  v242[6] = v246[6];
  v242[7] = v246[7];
  v242[0] = v246[0];
  v242[1] = v246[1];
  v242[2] = v246[2];
  v242[3] = v246[3];
  v97 = swift_allocObject();
  *(v97 + 16) = v88;
  *(v97 + 24) = v96;
  v98 = v96;
  LOBYTE(v96) = v87;
  *(v97 + 32) = v87;
  v99 = v98;
  sub_214897F3C();
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B140, &qword_2149949D0);
  v241[0] = v164;
  v241[1] = v146;
  v241[2] = OpaqueTypeConformance2;
  v241[3] = v93;
  v163 = swift_getOpaqueTypeConformance2();
  v164 = sub_2148D8D0C();
  v100 = sub_2148D8D60();
  v101 = v148;
  v102 = v165;
  sub_21498F1F0();

  v245[4] = v242[4];
  v245[5] = v242[5];
  v245[6] = v242[6];
  v245[7] = v242[7];
  v245[0] = v242[0];
  v245[1] = v242[1];
  v245[2] = v242[2];
  v245[3] = v242[3];
  sub_21489DFCC(v245, &qword_27CA1B168, &qword_2149949E0);
  (*(v149 + 8))(v102, v101);
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  memcpy(v241, v242, 0x189uLL);
  v103 = swift_allocObject();
  v160 = v88;
  *(v103 + 16) = v88;
  *(v103 + 24) = v99;
  *(v103 + 32) = v96;
  v104 = v99;
  sub_214897F3C();
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B170, &qword_214994A10);
  *&v246[0] = v101;
  *(&v246[0] + 1) = &type metadata for UnifiedRule;
  *&v246[1] = v161;
  *(&v246[1] + 1) = v163;
  *&v246[2] = v164;
  *(&v246[2] + 1) = v100;
  v164 = swift_getOpaqueTypeConformance2();
  v165 = sub_2148D8E24();
  v141 = sub_2148D8E78(&qword_27CA1B180, &qword_27CA1B170, &qword_214994A10, sub_2148D8EFC);
  v105 = v150;
  v106 = v167;
  sub_21498F1F0();

  memcpy(v246, v241, 0x189uLL);
  sub_21489DFCC(v246, &qword_27CA1B190, &qword_214994A18);
  (*(v151 + 8))(v106, v105);
  v107 = v160;
  LOBYTE(v101) = v197;
  sub_21498EB90();
  swift_getKeyPath();
  v108 = v154;
  sub_21498EC90();

  v211 = v107;
  v212 = v104;
  v213 = v101;
  v167 = type metadata accessor for ErrorContainer(0);
  *&v242[0] = v105;
  *(&v242[0] + 1) = &type metadata for MATip;
  *&v242[1] = v149;
  *(&v242[1] + 1) = v164;
  *&v242[2] = v165;
  *(&v242[2] + 1) = v141;
  v165 = swift_getOpaqueTypeConformance2();
  v109 = sub_2148D8F68(&qword_27CA1B198, type metadata accessor for ErrorContainer);
  v110 = v152;
  v111 = v171;
  sub_21498F1D0();
  sub_21489DFCC(v108, &qword_27CA1AF30, &qword_2149947E8);
  v112 = v110;
  (*(v153 + 8))(v111, v110);
  v113 = v160;
  v114 = v104;
  LOBYTE(v104) = v197;
  sub_21498EB90();
  swift_getKeyPath();
  v115 = v157;
  sub_21498EC90();

  v208 = v113;
  v209 = v114;
  v210 = v104;
  type metadata accessor for ResultContainer(0);
  *&v242[0] = v112;
  *(&v242[0] + 1) = v167;
  *&v242[1] = v165;
  *(&v242[1] + 1) = v109;
  swift_getOpaqueTypeConformance2();
  sub_2148D8F68(&qword_27CA1B1A0, type metadata accessor for ResultContainer);
  v116 = v155;
  v117 = v169;
  sub_21498F1D0();
  sub_21489DFCC(v115, &qword_27CA1AF28, &qword_2149947E0);
  (*(v156 + 8))(v117, v116);
  v163 = v170[2];
  (v163)(v178, v168, v176);
  v118 = v199[2];
  v198 = (v199 + 2);
  v207 = v118;
  v118(v180, v166, v177);
  v197 = v200[2];
  v197(v183, v175, v179);
  v171 = v201[2];
  (v171)(v185, v174, v181);
  v169 = v202[2];
  (v169)(v188, v173, v184);
  v167 = v203[2];
  (v167)(v189, v172, v182);
  v165 = v204[2];
  (v165)(v192, v187, v186);
  v164 = v205[2];
  (v164)(v195, v190, v191);
  v162 = v206[2];
  (v162)(v196, v193, v194);
  v119 = v158;
  (v163)(v158, v178, v176);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1A8, &qword_214994A70);
  v207(v119 + v120[12], v180, v177);
  v197((v119 + v120[16]), v183, v179);
  (v171)(v119 + v120[20], v185, v181);
  (v169)(v119 + v120[24], v188, v184);
  v121 = v182;
  (v167)(v119 + v120[28], v189, v182);
  v122 = v186;
  (v165)(v119 + v120[32], v192, v186);
  v123 = v191;
  (v164)(v119 + v120[36], v195, v191);
  v124 = v119 + v120[40];
  v125 = v194;
  (v162)(v124, v196, v194);
  v126 = v206[1];
  ++v206;
  v207 = v126;
  (v126)(v193, v125);
  v127 = v205[1];
  ++v205;
  v198 = v127;
  v127(v190, v123);
  v128 = v204[1];
  ++v204;
  v197 = v128;
  (v128)(v187, v122);
  v129 = v203[1];
  ++v203;
  v193 = v129;
  (v129)(v172, v121);
  v130 = v202[1];
  ++v202;
  v190 = v130;
  v131 = v184;
  (v130)(v173, v184);
  v132 = v201[1];
  ++v201;
  v187 = v132;
  v133 = v181;
  (v132)(v174, v181);
  v134 = v200[1];
  ++v200;
  v135 = v179;
  v134(v175, v179);
  v136 = v199[1];
  ++v199;
  v137 = v177;
  v136(v166, v177);
  v138 = v170[1];
  v139 = v176;
  v138(v168, v176);
  (v207)(v196, v194);
  v198(v195, v191);
  (v197)(v192, v186);
  (v193)(v189, v182);
  (v190)(v188, v131);
  (v187)(v185, v133);
  v134(v183, v135);
  v136(v180, v137);
  return (v138)(v178, v139);
}

uint64_t sub_2148CB520(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  sub_214897F3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B3C8, &qword_214995230);
  sub_2148B4C20(&qword_27CA1B3D0, &qword_27CA1B3C8, &qword_214995230);

  return sub_21498F450();
}

uint64_t sub_2148CB620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  sub_21498FAB0();
  *(v6 + 32) = sub_21498FAA0();
  v8 = sub_21498FA50();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return MEMORY[0x2822009F8](sub_2148CB6BC, v8, v7);
}

uint64_t sub_2148CB6BC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  *(v0 + 56) = sub_21498EB80();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_2148CB7CC;

  return sub_2148BBBB8();
}

uint64_t sub_2148CB7CC()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2148DA43C, v5, v4);
}

__n128 sub_2148CB910@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_21498EE10();
  v13 = 1;
  sub_2148CB984(v9);
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v7 = v9[0];
  result = v9[1];
  v8 = v13;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  *(a1 + 40) = result;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

uint64_t sub_2148CB984@<X0>(uint64_t a1@<X8>)
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21498F3F0();
  v5 = sub_21498F370();
  KeyPath = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v5;
  *(a1 + 24) = xmmword_214994610;
  *(a1 + 40) = 0;
  *(a1 + 48) = MEMORY[0x277D84F90];

  sub_2148D9930(0x64615220656C6946, 0xEA00000000007261, 0);

  sub_2148C85D4(0x64615220656C6946, 0xEA00000000007261, 0);
}

uint64_t sub_2148CBACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v142 = a4;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B010, &qword_214994898);
  v7 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v126 = &v123 - v8;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B040, &qword_2149948B0);
  v9 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v124 = (&v123 - v10);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B340, &qword_2149950B0);
  v11 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v139 = &v123 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B348, &qword_2149950B8);
  v13 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v132 = &v123 - v14;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B350, &qword_2149950C0);
  v15 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v134 = &v123 - v16;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B358, &qword_2149950C8);
  v17 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v129 = (&v123 - v18);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B360, &qword_2149950D0);
  v152 = *(v145 - 8);
  v19 = v152[8];
  v20 = MEMORY[0x28223BE20](v145);
  v22 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v123 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B368, &qword_2149950D8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v140 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v123 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B370, &qword_2149950E0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v127 = &v123 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B378, &qword_2149950E8);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v136 = &v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v123 - v39;
  v41 = _s9ViewModelCMa(0);
  v42 = sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  v149 = a3;
  v150 = a1;
  v151 = a2;
  v146 = v42;
  v147 = v41;
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v43 = v160;
  v143 = v31;
  v138 = v30;
  v148 = v40;
  v144 = v24;
  v128 = v22;
  if (!v160)
  {
    (*(v32 + 56))(v40, 1, 1, v31);
    v70 = v150;
    v71 = v151;
    v72 = v149;
LABEL_26:
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v84 = v160;
    if (v160)
    {
      if (*(v160 + 16))
      {
        v158 = 0;
        v159 = 0;
        v85 = 0;
        v86 = 0;
        v157 = 0;
      }

      else
      {
        v159 = sub_21498EE10();
        v157 = 0x80000002149A1A30;
        v86 = 0xD000000000000018;
        v158 = MEMORY[0x277D84F90];
        v85 = 1;
      }

      v99 = v151;
      v160 = v84;
      v100 = swift_allocObject();
      *(v100 + 16) = v150;
      *(v100 + 24) = v99;
      *(v100 + 32) = v149 & 1;
      sub_214897F3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B398, &qword_214995188);
      sub_2148B4C20(&qword_27CA1B3A0, &qword_27CA1B398, &qword_214995188);
      sub_2148DA05C();
      v121 = sub_2148D8B30();
      v101 = v144;
      sub_21498F490();
      v102 = v152[2];
      v103 = v128;
      v104 = v145;
      v102(v128, v101, v145);
      v106 = v158;
      v105 = v159;
      v107 = v129;
      *v129 = v159;
      v107[1] = 0;
      v107[2] = v85;
      v107[3] = v86;
      v108 = v157;
      v107[4] = v157;
      v107[5] = 0;
      v107[6] = v106;
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B3C0, &unk_214995198);
      v102(v107 + *(v109 + 48), v103, v104);
      v159 = v105;
      v156 = v85;
      sub_2148D9AE0(v105, 0, v85, v86, v108, 0, v106);
      v110 = v152[1];
      ++v152;
      v110(v103, v104);
      sub_2148D9B2C(v105, 0, v85, v86, v108, 0, v106);
      sub_2148AA824(v107, v132, &qword_27CA1B358, &qword_2149950C8);
      swift_storeEnumTagMultiPayload();
      sub_2148B4C20(&qword_27CA1B388, &qword_27CA1B358, &qword_2149950C8);
      sub_2148D8648();
      v111 = v134;
      sub_21498EE90();
      sub_2148AA824(v111, v139, &qword_27CA1B350, &qword_2149950C0);
      swift_storeEnumTagMultiPayload();
      sub_2148D9F2C();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
      v95 = v138;
      sub_21498EE90();
      sub_2148D9B2C(v159, 0, v156, v86, v108, 0, v106);
      sub_21489DFCC(v111, &qword_27CA1B350, &qword_2149950C0);
      sub_21489DFCC(v107, &qword_27CA1B358, &qword_2149950C8);
      v110(v144, v145);
    }

    else
    {
      sub_21498EB80();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21498EA10();

      v87 = v160;
      if (v160)
      {
        v88 = swift_allocObject();
        *(v88 + 16) = v70;
        *(v88 + 24) = v71;
        *(v88 + 32) = v72 & 1;
        *(v88 + 40) = v87;
        sub_214897F3C();
        v89 = v87;
        v90 = v126;
        sub_21498F450();
        v91 = sub_21498F2A0();
        KeyPath = swift_getKeyPath();
        v93 = (v90 + *(v133 + 36));
        *v93 = KeyPath;
        v93[1] = v91;
        sub_2148AA824(v90, v132, &qword_27CA1B010, &qword_214994898);
        swift_storeEnumTagMultiPayload();
        sub_2148B4C20(&qword_27CA1B388, &qword_27CA1B358, &qword_2149950C8);
        sub_2148D8648();
        v94 = v134;
        sub_21498EE90();
        sub_2148AA824(v94, v139, &qword_27CA1B350, &qword_2149950C0);
        swift_storeEnumTagMultiPayload();
        sub_2148D9F2C();
        sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
        v95 = v138;
        sub_21498EE90();

        sub_21489DFCC(v94, &qword_27CA1B350, &qword_2149950C0);
        v96 = v90;
        v97 = &qword_27CA1B010;
        v98 = &qword_214994898;
      }

      else
      {
        v112 = sub_21498EE10();
        v113 = v124;
        *v124 = v112;
        *(v113 + 8) = 0;
        *(v113 + 16) = 1;
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B200, &qword_214994CF8);
        sub_2148D2D14(v113 + *(v114 + 44));
        sub_2148AA824(v113, v139, &qword_27CA1B040, &qword_2149948B0);
        swift_storeEnumTagMultiPayload();
        sub_2148D9F2C();
        sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
        v95 = v138;
        sub_21498EE90();
        v96 = v113;
        v97 = &qword_27CA1B040;
        v98 = &qword_2149948B0;
      }

      sub_21489DFCC(v96, v97, v98);
    }

    v115 = v148;
    v116 = v136;
    sub_2148AA824(v148, v136, &qword_27CA1B378, &qword_2149950E8);
    v117 = v140;
    sub_2148AA824(v95, v140, &qword_27CA1B368, &qword_2149950D8);
    v118 = v142;
    sub_2148AA824(v116, v142, &qword_27CA1B378, &qword_2149950E8);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B390, &qword_214995180);
    sub_2148AA824(v117, v118 + *(v119 + 48), &qword_27CA1B368, &qword_2149950D8);
    sub_21489DFCC(v95, &qword_27CA1B368, &qword_2149950D8);
    sub_21489DFCC(v115, &qword_27CA1B378, &qword_2149950E8);
    sub_21489DFCC(v117, &qword_27CA1B368, &qword_2149950D8);
    return sub_21489DFCC(v116, &qword_27CA1B378, &qword_2149950E8);
  }

  v125 = v32;
  v154 = *(v160 + 16);
  if (!v154)
  {
    v46 = MEMORY[0x277D84F98];
LABEL_21:

    v73 = sub_2148C8640(v46);

    v160 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
    sub_2148B4C20(&qword_281190CF0, &qword_27CA1A378, &qword_214993B80);
    v74 = sub_21498F810();
    v76 = v75;

    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    if (v160 == 2 || (v160 & 1) == 0)
    {
      v77 = 0x80000002149A1A50;
      v78 = 0xD000000000000010;
    }

    else
    {
      v77 = 0xE900000000000029;
      v78 = 0x656E696C6E492820;
    }

    v79 = swift_allocObject();
    v159 = &v123;
    v70 = v150;
    v71 = v151;
    *(v79 + 16) = v150;
    *(v79 + 24) = v71;
    v72 = v149;
    *(v79 + 32) = v149 & 1;
    MEMORY[0x28223BE20](v79);
    *(&v123 - 4) = v78;
    *(&v123 - 3) = v77;
    v121 = v74;
    v122 = v76;
    sub_214897F3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B228, &qword_214994D68);
    sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68);
    v80 = v127;
    sub_21498F450();

    v81 = sub_21498EEF0();
    v82 = v143;
    *(v80 + *(v143 + 36)) = v81;
    v83 = v148;
    sub_2148B4C68(v80, v148, &qword_27CA1B370, &qword_2149950E0);
    (*(v125 + 56))(v83, 0, 1, v82);
    goto LABEL_26;
  }

  v44 = 0;
  v45 = (v160 + 72);
  v46 = MEMORY[0x277D84F98];
  v153 = v160;
  while (v44 < *(v43 + 16))
  {
    v47 = *(v45 - 4);
    v49 = v45[6];
    v48 = v45[7];
    v51 = v45[2];
    v50 = v45[3];
    v52 = *v45;
    v53 = *(v45 - 2);
    v155 = v45[5];

    swift_bridgeObjectRetain_n();
    v159 = v47;

    v158 = v53;

    v157 = v52;

    v156 = v51;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v160 = v46;
    v56 = sub_214907F9C(v49, v48);
    v57 = v46[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_37;
    }

    v60 = v55;
    if (v46[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v55)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_214985948();
        v46 = v160;
        if (v60)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_21495622C(v59, isUniquelyReferenced_nonNull_native);
      v46 = v160;
      v61 = sub_214907F9C(v49, v48);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_40;
      }

      v56 = v61;
      if (v60)
      {
LABEL_12:

        goto LABEL_16;
      }
    }

    v46[(v56 >> 6) + 8] |= 1 << v56;
    v63 = (v46[6] + 16 * v56);
    *v63 = v49;
    v63[1] = v48;
    *(v46[7] + 8 * v56) = 0;
    v64 = v46[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_39;
    }

    v46[2] = v66;
LABEL_16:
    v67 = v46[7];
    v68 = *(v67 + 8 * v56);
    v65 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (v65)
    {
      goto LABEL_38;
    }

    ++v44;
    *(v67 + 8 * v56) = v69;

    v45 += 13;
    v43 = v153;
    if (v154 == v44)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_2149900F0();
  __break(1u);
  return result;
}

double sub_2148CCD8C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_21498EE10();
  v18 = 1;
  sub_2148CCEB4(a1, a2, &v12);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_2148AA824(&v19, &v11, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(v24, &qword_27CA1B220, &qword_214994D60);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a3 + 17) = *v17;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v17[79];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_2148CCEB4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  sub_21498F070();
  v4 = sub_21498F0E0();
  v6 = v5;
  v8 = v7;

  sub_21498F3A0();
  v9 = sub_21498F0A0();
  v11 = v10;
  v13 = v12;

  sub_2148C85D4(v4, v6, v8 & 1);

  v14 = MEMORY[0x277D84F90];
  v15 = sub_21498F0C0();
  v17 = v16;
  LOBYTE(v6) = v18;
  v20 = v19;
  sub_2148C85D4(v9, v11, v13 & 1);

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v20;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  *(a3 + 64) = 0;
  *(a3 + 72) = v14;

  sub_2148D9930(v15, v17, v6 & 1);

  sub_2148D9930(a1, a2, 0);

  sub_2148C85D4(a1, a2, 0);

  sub_2148C85D4(v15, v17, v6 & 1);
}

uint64_t sub_2148CD0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = *(a1 + 96);
  v10 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v10;
  v11 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v11;
  v12 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v12;
  v13 = swift_allocObject();
  v14 = *(a1 + 32);
  *(v13 + 88) = *(a1 + 48);
  v15 = *(a1 + 80);
  *(v13 + 104) = *(a1 + 64);
  *(v13 + 120) = v15;
  v16 = *(a1 + 16);
  *(v13 + 40) = *a1;
  *(v13 + 56) = v16;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4 & 1;
  *(v13 + 136) = *(a1 + 96);
  *(v13 + 72) = v14;
  sub_214897F3C();
  sub_2148D93C8(v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B228, &qword_214994D68);
  sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68);
  sub_21498F450();

  v17 = sub_21498EEF0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B370, &qword_2149950E0);
  *(a5 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_2148CD29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 80);
  v14 = *(a4 + 64);
  v15 = v5;
  v16 = *(a4 + 96);
  v6 = *(a4 + 16);
  v10 = *a4;
  v11 = v6;
  v7 = *(a4 + 48);
  v12 = *(a4 + 32);
  v13 = v7;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148D93C8(a4, v9);
  return sub_21498EA20();
}

double sub_2148CD3A0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21498EE10();
  v16 = 1;
  sub_2148CD4C0(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_2148AA824(&v17, &v9, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(v22, &qword_27CA1B220, &qword_214994D60);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_2148CD4C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1[4];
  v22 = a1[5];

  sub_21498F070();
  v3 = sub_21498F0E0();
  v5 = v4;
  v7 = v6;

  sub_21498F3A0();
  v8 = sub_21498F0A0();
  v10 = v9;
  v12 = v11;

  sub_2148C85D4(v3, v5, v7 & 1);

  v13 = sub_21498F0C0();
  v15 = v14;
  LOBYTE(v5) = v16;
  v18 = v17;
  sub_2148C85D4(v8, v10, v12 & 1);

  v19 = a1[10];
  v20 = a1[11];
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v18;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v19;
  *(a2 + 56) = v20;
  *(a2 + 64) = 0;
  *(a2 + 72) = MEMORY[0x277D84F90];

  sub_2148D9930(v13, v15, v5 & 1);

  sub_2148D9930(v19, v20, 0);

  sub_2148C85D4(v19, v20, 0);

  sub_2148C85D4(v13, v15, v5 & 1);
}

uint64_t sub_2148CD6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B010, &qword_214994898);
  v7 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v69 = &v59 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B040, &qword_2149948B0);
  v9 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v62[1] = &v59 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2D8, &qword_214994FB8);
  v11 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v72 = &v59 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2E0, &qword_214994FC0);
  v13 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v66 = &v59 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFF0, &qword_214994888);
  v15 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v68 = &v59 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B000, &qword_214994890);
  v17 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v19 = (&v59 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2E8, &qword_214994FC8);
  v21 = *(v20 - 8);
  v76 = v20;
  v77 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v63 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v75 = &v59 - v25;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  v26 = a1;
  v27 = a2;
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v28 = v78;
  if (v78)
  {
    if (v78[2])
    {
      v29 = 0;
      v60 = 0;
      v61 = 0;
      v62[0] = 0;
      v62[1] = 0;
    }

    else
    {
      HIBYTE(v62[1]) = -18;
      v61 = MEMORY[0x277D84F90];
      strcpy(v62, "No Rules Found");
      v60 = 1;
      v29 = sub_21498EE10();
    }

    v78 = v28;
    v43 = swift_allocObject();
    *(v43 + 16) = a1;
    *(v43 + 24) = v27;
    *(v43 + 32) = a3 & 1;
    sub_214897F3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A368, &qword_214991810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2F0, &qword_214995068);
    sub_2148B4C20(&qword_27CA1B2F8, &qword_27CA1A368, &qword_214991810);
    sub_2148D9CC8();
    sub_2148D8D0C();
    v44 = v75;
    sub_21498F490();
    v46 = v76;
    v45 = v77;
    v47 = *(v77 + 16);
    v48 = v63;
    v47(v63, v44, v76);
    v69 = v29;
    *v19 = v29;
    v19[1] = 0;
    v49 = v60;
    v50 = v61;
    v51 = v62[0];
    v52 = v62[1];
    v19[2] = v60;
    v19[3] = v51;
    v19[4] = v52;
    v19[5] = 0;
    v19[6] = v50;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B318, &qword_214995078);
    v47(v19 + *(v53 + 48), v48, v46);
    v54 = v69;
    sub_2148D9AE0(v69, 0, v49, v51, v52, 0, v50);
    v55 = *(v45 + 8);
    v77 = v45 + 8;
    v59 = v55;
    v55(v48, v46);
    sub_2148D9B2C(v54, 0, v49, v51, v52, 0, v50);
    sub_2148AA824(v19, v66, &qword_27CA1B000, &qword_214994890);
    swift_storeEnumTagMultiPayload();
    sub_2148B4C20(&qword_27CA1AFF8, &qword_27CA1B000, &qword_214994890);
    sub_2148D8648();
    v56 = v68;
    sub_21498EE90();
    sub_2148AA824(v56, v72, &qword_27CA1AFF0, &qword_214994888);
    swift_storeEnumTagMultiPayload();
    sub_2148D8590();
    sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
    sub_21498EE90();
    sub_2148D9B2C(v69, 0, v49, v51, v52, 0, v50);
    sub_21489DFCC(v56, &qword_27CA1AFF0, &qword_214994888);
    sub_21489DFCC(v19, &qword_27CA1B000, &qword_214994890);
    return v59(v75, v76);
  }

  else
  {
    v30 = v62[1];
    v31 = v69;
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v32 = v78;
    if (v78)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = v26;
      *(v33 + 24) = v27;
      *(v33 + 32) = a3 & 1;
      *(v33 + 40) = v32;
      sub_214897F3C();
      v34 = v32;
      sub_21498F450();
      v35 = sub_21498F2A0();
      KeyPath = swift_getKeyPath();
      v37 = v66;
      v38 = (v31 + *(v67 + 36));
      *v38 = KeyPath;
      v38[1] = v35;
      v39 = &qword_214994898;
      sub_2148AA824(v31, v37, &qword_27CA1B010, &qword_214994898);
      swift_storeEnumTagMultiPayload();
      sub_2148B4C20(&qword_27CA1AFF8, &qword_27CA1B000, &qword_214994890);
      sub_2148D8648();
      v40 = v68;
      sub_21498EE90();
      sub_2148AA824(v40, v72, &qword_27CA1AFF0, &qword_214994888);
      swift_storeEnumTagMultiPayload();
      sub_2148D8590();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
      sub_21498EE90();

      sub_21489DFCC(v40, &qword_27CA1AFF0, &qword_214994888);
      v41 = v31;
      v42 = &qword_27CA1B010;
    }

    else
    {
      *v30 = sub_21498EE10();
      *(v30 + 8) = 0;
      *(v30 + 16) = 1;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B200, &qword_214994CF8);
      sub_2148D2D14(v30 + *(v58 + 44));
      v39 = &qword_2149948B0;
      sub_2148AA824(v30, v72, &qword_27CA1B040, &qword_2149948B0);
      swift_storeEnumTagMultiPayload();
      sub_2148D8590();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
      sub_21498EE90();
      v41 = v30;
      v42 = &qword_27CA1B040;
    }

    return sub_21489DFCC(v41, v42, v39);
  }
}

uint64_t sub_2148CE138@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = a1[5];
  v20[4] = a1[4];
  v20[5] = v10;
  v20[6] = a1[6];
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v12 = a1[3];
  v20[2] = a1[2];
  v20[3] = v12;
  v13 = swift_allocObject();
  v14 = a1[2];
  *(v13 + 88) = a1[3];
  v15 = a1[5];
  *(v13 + 104) = a1[4];
  *(v13 + 120) = v15;
  *(v13 + 136) = a1[6];
  v16 = a1[1];
  *(v13 + 40) = *a1;
  *(v13 + 56) = v16;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4 & 1;
  *(v13 + 72) = v14;
  sub_214897F3C();
  sub_2148D9164(v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B320, &qword_214995080);
  sub_2148D9DC4();
  sub_21498F450();
  v17 = sub_21498EEF0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2F0, &qword_214995068);
  *(a5 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_2148CE298(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = a4[5];
  v9[11] = a4[4];
  v9[12] = v5;
  v9[13] = a4[6];
  v6 = a4[1];
  v9[7] = *a4;
  v9[8] = v6;
  v7 = a4[3];
  v9[9] = a4[2];
  v9[10] = v7;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148D9164(a4, v9);
  return sub_21498EA20();
}

__n128 sub_2148CE398@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  if (*(a1 + 32) && v4 != 1)
  {

    goto LABEL_7;
  }

  v5 = sub_214990080();

  if (v5)
  {
LABEL_7:
    v6 = sub_21497A644();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0x6E776F6E6B6E55;
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12 = sub_21498EE10();
    LOBYTE(v29) = 1;
    sub_2148CEA50(v8, v9, v10, v11, v49);
    v37 = *&v49[32];
    v38 = *&v49[48];
    v35 = *v49;
    v36 = *&v49[16];
    v42 = *&v49[32];
    v43 = *&v49[48];
    v44 = *&v49[64];
    v41 = *&v49[16];
    v39 = *&v49[64];
    v40 = *v49;
    sub_2148AA824(&v35, &v22, &qword_27CA1B220, &qword_214994D60);
    sub_21489DFCC(&v40, &qword_27CA1B220, &qword_214994D60);

    *&v49[7] = v35;
    *&v49[23] = v36;
    *&v49[71] = v39;
    *&v49[55] = v38;
    *&v49[39] = v37;
    v45 = v12;
    v46[0] = v29;
    *&v46[17] = *&v49[16];
    *&v46[1] = *v49;
    *&v46[80] = *(&v39 + 1);
    *&v46[65] = *&v49[64];
    *&v46[49] = *&v49[48];
    *&v46[33] = *&v49[32];
    *&v49[64] = *&v46[48];
    *&v49[80] = *&v46[64];
    *&v49[96] = *&v46[80];
    *v49 = v12;
    *&v49[16] = *v46;
    *&v49[32] = *&v46[16];
    *&v49[48] = *&v46[32];
    v47 = 0;
    v49[104] = 0;
    sub_2148AA824(&v45, &v22, &qword_27CA1B228, &qword_214994D68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B228, &qword_214994D68);
    sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68);
    sub_21498EE90();
    v26 = v33;
    *v27 = v34[0];
    *&v27[9] = *(v34 + 9);
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v48 = 0;
    v28 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B338, &qword_214995088);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2C8, &qword_214994F80);
    sub_2148D9E7C();
    sub_2148B4C20(&qword_27CA1B2D0, &qword_27CA1B2C8, &qword_214994F80);
    sub_21498EE90();
    sub_21489DFCC(&v45, &qword_27CA1B228, &qword_214994D68);
    v54 = *&v49[64];
    v55[0] = *&v49[80];
    v13 = *&v49[90];
    goto LABEL_18;
  }

  if (v4)
  {
  }

  else
  {
    v14 = sub_214990080();

    if ((v14 & 1) == 0)
    {
      LOBYTE(v22) = 1;
      LOBYTE(v29) = 0;
      LOBYTE(v45) = 1;
      *v49 = sub_21498EE10();
      v49[16] = 1;
      *&v49[24] = sub_21497BA1C();
      *&v49[32] = v21;
      v49[40] = 0;
      *&v49[48] = MEMORY[0x277D84F90];
      v49[105] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B338, &qword_214995088);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2C8, &qword_214994F80);
      sub_2148D9E7C();
      sub_2148B4C20(&qword_27CA1B2D0, &qword_27CA1B2C8, &qword_214994F80);
      sub_21498EE90();
      goto LABEL_19;
    }
  }

  v15 = sub_21497A6F0();
  if (v15)
  {
    v16 = *(v15 + 16);
  }

  v17 = sub_21498EE10();
  LOBYTE(v29) = 1;
  sub_2148CEB44(v49);
  v37 = *&v49[32];
  v38 = *&v49[48];
  v35 = *v49;
  v36 = *&v49[16];
  v42 = *&v49[32];
  v43 = *&v49[48];
  v44 = *&v49[64];
  v41 = *&v49[16];
  v39 = *&v49[64];
  v40 = *v49;
  sub_2148AA824(&v35, &v22, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(&v40, &qword_27CA1B220, &qword_214994D60);
  *&v49[7] = v35;
  *&v49[23] = v36;
  *&v49[71] = v39;
  *&v49[55] = v38;
  *&v49[39] = v37;
  v45 = v17;
  v46[0] = v29;
  *&v46[17] = *&v49[16];
  *&v46[1] = *v49;
  *&v46[80] = *(&v39 + 1);
  *&v46[65] = *&v49[64];
  *&v46[49] = *&v49[48];
  *&v46[33] = *&v49[32];
  *&v49[64] = *&v46[48];
  *&v49[80] = *&v46[64];
  *&v49[96] = *&v46[80];
  *v49 = v17;
  *&v49[16] = *v46;
  *&v49[32] = *&v46[16];
  *&v49[48] = *&v46[32];
  v47 = 1;
  v49[104] = 1;
  sub_2148AA824(&v45, &v22, &qword_27CA1B228, &qword_214994D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B228, &qword_214994D68);
  sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68);
  sub_21498EE90();
  v26 = v33;
  *v27 = v34[0];
  *&v27[9] = *(v34 + 9);
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v25 = v32;
  v48 = 0;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B338, &qword_214995088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2C8, &qword_214994F80);
  sub_2148D9E7C();
  sub_2148B4C20(&qword_27CA1B2D0, &qword_27CA1B2C8, &qword_214994F80);
  sub_21498EE90();
  sub_21489DFCC(&v45, &qword_27CA1B228, &qword_214994D68);
  v54 = *&v49[64];
  v55[0] = *&v49[80];
  v13 = *&v49[90];
LABEL_18:
  *(v55 + 10) = v13;
  v50 = *v49;
  v51 = *&v49[16];
  v52 = *&v49[32];
  v53 = *&v49[48];
LABEL_19:
  v18 = v55[0];
  *(a2 + 64) = v54;
  *(a2 + 80) = v18;
  *(a2 + 90) = *(v55 + 10);
  v19 = v51;
  *a2 = v50;
  *(a2 + 16) = v19;
  result = v53;
  *(a2 + 32) = v52;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_2148CEA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  v9 = MEMORY[0x277D84F90];
  *(a5 + 24) = MEMORY[0x277D84F90];
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = 0;
  *(a5 + 72) = v9;

  sub_2148D9930(a1, a2, 0);

  sub_2148D9930(a3, a4, 0);

  sub_2148C85D4(a3, a4, 0);

  sub_2148C85D4(a1, a2, 0);
}

uint64_t sub_2148CEB44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21497BA1C();
  v4 = v3;
  v5 = sub_214990050();
  v7 = v6;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  v8 = MEMORY[0x277D84F90];
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = v8;
  sub_2148D9930(v2, v4, 0);

  sub_2148D9930(v5, v7, 0);

  sub_2148C85D4(v5, v7, 0);

  sub_2148C85D4(v2, v4, 0);
}

uint64_t sub_2148CEC50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAD0, &qword_214994AB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  sub_21498E340();
  v12 = type metadata accessor for ErrorContainer(0);
  *&v11[*(v12 + 20)] = a4;
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v11, v9, &qword_27CA1AAD0, &qword_214994AB0);
  v13 = a4;
  sub_21498EA20();
  return sub_21489DFCC(v11, &qword_27CA1AAD0, &qword_214994AB0);
}

uint64_t sub_2148CEE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v93 = a4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B010, &qword_214994898);
  v7 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v101 = v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B040, &qword_2149948B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v100 = v77 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B258, &qword_214994E58);
  v12 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v91 = v77 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B260, &qword_214994E60);
  v14 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v83 = v77 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B060, &qword_2149948C0);
  v16 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v85 = v77 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B070, &qword_2149948C8);
  v18 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v80 = v77 - v19;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C8, &qword_214994920);
  v98 = *(v104 - 8);
  v20 = *(v98 + 8);
  v21 = MEMORY[0x28223BE20](v104);
  v79 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v95 = v77 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v97 = v77 - v26;
  MEMORY[0x28223BE20](v25);
  v96 = v77 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B268, &qword_214994E68);
  v103 = *(v28 - 8);
  v29 = v103[8];
  v30 = MEMORY[0x28223BE20](v28);
  v94 = v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v102 = v77 - v32;
  v33 = _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  v34 = a3;
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v35 = v105;
  v92 = v9;
  if (v105)
  {
    v78 = v33;
    v36 = v105[2];
    v88 = v28;
    if (v36)
    {
      v87 = 0;
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v86 = 0;
    }

    else
    {
      v87 = sub_21498EE10();
      v101 = 0x80000002149A1A10;
      v86 = MEMORY[0x277D84F90];
      v100 = 1;
      v99 = 0xD000000000000014;
    }

    v105 = v35;
    v49 = swift_allocObject();
    *(v49 + 16) = a1;
    *(v49 + 24) = a2;
    v77[1] = v34;
    *(v49 + 32) = v34 & 1;
    sub_214897F3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B270, &qword_214994F00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B278, &qword_214994F08);
    sub_2148B4C20(&qword_27CA1B280, &qword_27CA1B270, &qword_214994F00);
    sub_2148D9970();
    sub_2148D8E24();
    sub_21498F490();
    sub_21498EE40();
    sub_21498EB90();
    swift_getKeyPath();
    sub_21498EC90();

    v50 = v96;
    sub_21498F460();
    sub_21498EE40();
    sub_21498EB90();
    swift_getKeyPath();
    sub_21498EC90();

    v51 = v97;
    sub_21498F460();
    v52 = v103[2];
    v53 = v94;
    v54 = v88;
    v52(v94, v102, v88);
    v55 = *(v98 + 2);
    v56 = v95;
    v57 = v104;
    v55(v95, v50, v104);
    v58 = v79;
    v55(v79, v51, v57);
    v59 = v80;
    *v80 = v87;
    *(v59 + 1) = 0;
    v60 = v99;
    *(v59 + 2) = v100;
    *(v59 + 3) = v60;
    *(v59 + 4) = v101;
    *(v59 + 5) = 0;
    *(v59 + 6) = v86;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2C0, &qword_214994F78);
    v52(&v59[v61[12]], v53, v54);
    v62 = v104;
    v55(&v59[v61[16]], v56, v104);
    v55(&v59[v61[20]], v58, v62);
    v63 = v87;
    v65 = v99;
    v64 = v100;
    v66 = v101;
    v67 = v86;
    sub_2148D9AE0(v87, 0, v100, v99, v101, 0, v86);
    v68 = *(v98 + 1);
    v78 = v68;
    v69 = v58;
    v70 = v104;
    v68(v69, v104);
    v68(v95, v70);
    v71 = v103[1];
    ++v103;
    v98 = v71;
    v71(v94, v54);
    sub_2148D9B2C(v63, 0, v64, v65, v66, 0, v67);
    sub_2148AA824(v59, v83, &qword_27CA1B070, &qword_2149948C8);
    swift_storeEnumTagMultiPayload();
    sub_2148B4C20(&qword_27CA1B068, &qword_27CA1B070, &qword_2149948C8);
    sub_2148D8648();
    v72 = v85;
    sub_21498EE90();
    sub_2148AA824(v72, v91, &qword_27CA1B060, &qword_2149948C0);
    swift_storeEnumTagMultiPayload();
    sub_2148D87E8();
    sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
    sub_21498EE90();
    sub_2148D9B2C(v63, 0, v100, v99, v101, 0, v67);
    sub_21489DFCC(v72, &qword_27CA1B060, &qword_2149948C0);
    sub_21489DFCC(v59, &qword_27CA1B070, &qword_2149948C8);
    v73 = v104;
    v74 = v78;
    v78(v97, v104);
    v74(v96, v73);
    return v98(v102, v88);
  }

  else
  {
    v38 = v100;
    v37 = v101;
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v39 = v105;
    if (v105)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = a1;
      *(v40 + 24) = a2;
      *(v40 + 32) = v34 & 1;
      *(v40 + 40) = v39;
      sub_214897F3C();
      v41 = v39;
      sub_21498F450();
      v42 = sub_21498F2A0();
      KeyPath = swift_getKeyPath();
      v44 = (v37 + *(v84 + 36));
      *v44 = KeyPath;
      v44[1] = v42;
      sub_2148AA824(v37, v83, &qword_27CA1B010, &qword_214994898);
      swift_storeEnumTagMultiPayload();
      sub_2148B4C20(&qword_27CA1B068, &qword_27CA1B070, &qword_2149948C8);
      sub_2148D8648();
      v45 = v85;
      sub_21498EE90();
      sub_2148AA824(v45, v91, &qword_27CA1B060, &qword_2149948C0);
      swift_storeEnumTagMultiPayload();
      sub_2148D87E8();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
      sub_21498EE90();

      sub_21489DFCC(v45, &qword_27CA1B060, &qword_2149948C0);
      v46 = v37;
      v47 = &qword_27CA1B010;
      v48 = &qword_214994898;
    }

    else
    {
      *v38 = sub_21498EE10();
      *(v38 + 8) = 0;
      *(v38 + 16) = 1;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B200, &qword_214994CF8);
      sub_2148D2D14(v38 + *(v76 + 44));
      sub_2148AA824(v38, v91, &qword_27CA1B040, &qword_2149948B0);
      swift_storeEnumTagMultiPayload();
      sub_2148D87E8();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
      sub_21498EE90();
      v46 = v38;
      v47 = &qword_27CA1B040;
      v48 = &qword_2149948B0;
    }

    return sub_21489DFCC(v46, v47, v48);
  }
}

uint64_t sub_2148CFC64@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B298, &qword_214994F10);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  memcpy(v20, a1, 0x179uLL);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4 & 1;
  memcpy((v15 + 40), a1, 0x179uLL);
  v18[2] = v20;
  sub_214897F3C();
  sub_2148D8FC8(v20, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2C8, &qword_214994F80);
  sub_2148B4C20(&qword_27CA1B2D0, &qword_27CA1B2C8, &qword_214994F80);
  sub_21498F450();
  *&v14[*(v11 + 44)] = sub_21498EEF0();
  if (v20[376])
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.5;
  }

  sub_2148B4C68(v14, a5, &qword_27CA1B298, &qword_214994F10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B278, &qword_214994F08);
  *(a5 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_2148CFE60(uint64_t a1, uint64_t a2, char a3, const void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18[-v10];
  v12 = sub_21498FAE0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21498FAB0();
  v13 = a3 & 1;
  sub_214897F3C();
  sub_2148D8FC8(a4, v18);
  v14 = sub_21498FAA0();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = v13;
  memcpy((v15 + 56), a4, 0x179uLL);
  sub_214926978(0, 0, v11, &unk_214994F90, v15);
}

uint64_t sub_2148CFFE4(int a1, int a2, int a3, uint64_t a4, uint64_t a5, char a6, void *__src)
{
  *(v7 + 1184) = __src;
  *(v7 + 393) = a6;
  *(v7 + 1176) = a5;
  *(v7 + 1168) = a4;
  memcpy((v7 + 16), __src, 0x179uLL);
  sub_21498FAB0();
  *(v7 + 1192) = sub_21498FAA0();
  v9 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148D0098, v9, v8);
}

uint64_t sub_2148D0098()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 393);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 1168);

  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  nullsub_1(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  memcpy((v0 + 400), (v0 + 16), 0x179uLL);
  sub_2148D8FC8(v2, v0 + 784);
  sub_21498EA20();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2148D01CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 104);

  sub_21498EB20();

  *a2 = v5;
  return result;
}

uint64_t sub_2148D0224(char *a1, uint64_t a2)
{
  v2 = *(*a2 + 104);
  v4 = *a1;

  sub_21498EB30();
}

uint64_t sub_2148D027C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 112);

  sub_21498EB20();

  *a2 = v5;
  return result;
}

uint64_t sub_2148D02D4(char *a1, uint64_t a2)
{
  v2 = *(*a2 + 112);
  v4 = *a1;

  sub_21498EB30();
}

uint64_t sub_2148D032C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C8, &qword_214994920);
  v9 = *(v8 - 8);
  v50 = v8;
  v51 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v44 = v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C0, &qword_214994918);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v47 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = v43 - v16;
  v46 = sub_21498EE10();
  v54 = 1;
  v17 = a2;
  sub_2148D08B0(&v63);
  v57 = *&v64[16];
  v58 = *&v64[32];
  v55 = v63;
  v56 = *v64;
  v60[2] = *&v64[16];
  v60[3] = *&v64[32];
  v60[4] = *&v64[48];
  v60[1] = *v64;
  v59 = *&v64[48];
  v60[0] = v63;
  sub_2148AA824(&v55, v61, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(v60, &qword_27CA1B220, &qword_214994D60);
  *&v53[23] = v56;
  *&v53[39] = v57;
  *&v53[55] = v58;
  *&v53[71] = v59;
  *&v53[7] = v55;
  v45 = v54;
  v18 = sub_21498EE40();
  v43[1] = v19;
  v43[2] = v18;
  v43[0] = v20;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  v21 = a1;
  v22 = v17;
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v23 = v44;
  sub_21498F460();
  v24 = v21;
  v25 = *(sub_21498EB80() + 56);

  sub_21498EB20();

  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v22;
  *(v26 + 32) = a3 & 1;
  sub_214897F3C();
  sub_2148B4C20(&qword_27CA1B0D0, &qword_27CA1B0C8, &qword_214994920);
  v27 = v52;
  v28 = v50;
  sub_21498F220();

  (*(v51 + 8))(v23, v28);
  v30 = v47;
  v29 = v48;
  v31 = *(v48 + 16);
  v32 = v49;
  v31(v47, v27, v49);
  v33 = v46;
  v61[0] = v46;
  v61[1] = 0;
  LOBYTE(v27) = v45;
  v62[0] = v45;
  *&v62[1] = *v53;
  *&v62[17] = *&v53[16];
  *&v62[65] = *&v53[64];
  *&v62[49] = *&v53[48];
  *&v62[33] = *&v53[32];
  v34 = *&v53[79];
  *&v62[80] = *&v53[79];
  v35 = *v62;
  *a4 = v46;
  *(a4 + 16) = v35;
  v36 = *&v62[16];
  v37 = *&v62[32];
  v38 = *&v62[48];
  v39 = *&v62[64];
  *(a4 + 96) = v34;
  *(a4 + 64) = v38;
  *(a4 + 80) = v39;
  *(a4 + 32) = v36;
  *(a4 + 48) = v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B250, &qword_214994E08);
  v31((a4 + *(v40 + 48)), v30, v32);
  sub_2148AA824(v61, &v63, &qword_27CA1B228, &qword_214994D68);
  v41 = *(v29 + 8);
  v41(v52, v32);
  v41(v30, v32);
  *&v64[33] = *&v53[32];
  *&v64[49] = *&v53[48];
  *v65 = *&v53[64];
  *&v64[1] = *v53;
  v63 = v33;
  v64[0] = v27;
  *&v65[15] = *&v53[79];
  *&v64[17] = *&v53[16];
  return sub_21489DFCC(&v63, &qword_27CA1B228, &qword_214994D68);
}

uint64_t sub_2148D08B0@<X0>(uint64_t a1@<X8>)
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v2 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v2 setUnitsStyle_];
  [v2 setAllowedUnits_];
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v3 = [v2 stringFromTimeInterval_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21498F870();
    v7 = v6;
  }

  else
  {

    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a1 = xmmword_214994630;
  *(a1 + 16) = 0;
  v8 = MEMORY[0x277D84F90];
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = 0;
  *(a1 + 72) = v8;
  sub_2148D9930(0x7544206568636143, 0xEE006E6F69746172, 0);

  sub_2148D9930(v5, v7, 0);

  sub_2148C85D4(v5, v7, 0);

  sub_2148C85D4(0x7544206568636143, 0xEE006E6F69746172, 0);
}

uint64_t sub_2148D0B5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 56);

  sub_21498EB20();

  *a2 = v5;
  return result;
}

uint64_t sub_2148D0BB4(char *a1, uint64_t a2)
{
  v2 = *(*a2 + 56);
  v4 = *a1;

  sub_21498EB30();
}

uint64_t sub_2148D0C0C()
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  v0 = sub_21498EB80();
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_21493B060(0xD00000000000003BLL, 0x80000002149A15B0);
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_21498EA20();
}

uint64_t sub_2148D0D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v71 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B020, &qword_2149948A0);
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = v58 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1B8, &qword_214994B60);
  v10 = *(*(v64 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v64);
  v70 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = v58 - v14;
  MEMORY[0x28223BE20](v13);
  v67 = v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C8, &qword_214994920);
  v17 = *(v16 - 8);
  v61 = v16;
  v62 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v59 = v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C0, &qword_214994918);
  v68 = *(v20 - 8);
  v69 = v20;
  v21 = *(v68 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v73 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = v58 - v24;
  v25 = sub_21498EE40();
  v58[0] = v26;
  v58[1] = v25;
  _s9ViewModelCMa(0);
  v27 = sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  a3 &= 1u;
  sub_21498EB90();
  swift_getKeyPath();
  v60 = v27;
  sub_21498EC90();

  v28 = v59;
  sub_21498F460();
  v29 = *(sub_21498EB80() + 64);

  sub_21498EB20();

  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  sub_214897F3C();
  sub_2148B4C20(&qword_27CA1B0D0, &qword_27CA1B0C8, &qword_214994920);
  v31 = v61;
  sub_21498F220();

  (*(v62 + 8))(v28, v31);
  v62 = sub_21498EE10();
  v32 = 1;
  v81 = 1;
  sub_2148D17C4(&v77);
  v84 = *&v78[16];
  v85 = *&v78[32];
  v82 = v77;
  v83 = *v78;
  v87[2] = *&v78[16];
  v87[3] = *&v78[32];
  v87[4] = *&v78[48];
  v87[1] = *v78;
  v86 = *&v78[48];
  v87[0] = v77;
  sub_2148AA824(&v82, v75, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(v87, &qword_27CA1B220, &qword_214994D60);
  *&v80[23] = v83;
  *&v80[39] = v84;
  *&v80[55] = v85;
  *&v80[71] = v86;
  *&v80[7] = v82;
  LODWORD(v61) = v81;
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  sub_214897F3C();
  sub_21498F450();
  v34 = *(sub_21498EB80() + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB20, &qword_214993BD0);
  sub_21498EB20();

  if ((BYTE8(v77) & 1) == 0)
  {
    v35 = *(sub_21498EB80() + 88);

    sub_21498EB20();

    v32 = (BYTE8(v77) & 1) == 0 && v77 == 0;
  }

  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  v38 = v63;
  (*(v65 + 32))(v63, v72, v66);
  v39 = (v38 + *(v64 + 36));
  *v39 = KeyPath;
  v39[1] = sub_2148DA434;
  v39[2] = v37;
  v40 = v67;
  sub_2148B4C68(v38, v67, &qword_27CA1B1B8, &qword_214994B60);
  v42 = v68;
  v41 = v69;
  v43 = *(v68 + 16);
  v44 = v73;
  v43(v73, v74, v69);
  v45 = v70;
  sub_2148AA824(v40, v70, &qword_27CA1B1B8, &qword_214994B60);
  v46 = v71;
  v43(v71, v44, v41);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B248, &qword_214994DD8);
  v48 = &v46[*(v47 + 48)];
  v49 = v62;
  v75[0] = v62;
  v75[1] = 0;
  LOBYTE(v44) = v61;
  v76[0] = v61;
  *&v76[1] = *v80;
  *&v76[17] = *&v80[16];
  *&v76[65] = *&v80[64];
  v50 = *&v80[79];
  *&v76[80] = *&v80[79];
  *&v76[49] = *&v80[48];
  *&v76[33] = *&v80[32];
  v51 = *v76;
  *v48 = v62;
  *(v48 + 1) = v51;
  v52 = *&v76[16];
  v53 = *&v76[32];
  v54 = *&v76[48];
  v55 = *&v76[64];
  *(v48 + 12) = v50;
  *(v48 + 4) = v54;
  *(v48 + 5) = v55;
  *(v48 + 2) = v52;
  *(v48 + 3) = v53;
  sub_2148AA824(v45, &v46[*(v47 + 64)], &qword_27CA1B1B8, &qword_214994B60);
  sub_2148AA824(v75, &v77, &qword_27CA1B228, &qword_214994D68);
  sub_21489DFCC(v40, &qword_27CA1B1B8, &qword_214994B60);
  v56 = *(v42 + 8);
  v56(v74, v41);
  sub_21489DFCC(v45, &qword_27CA1B1B8, &qword_214994B60);
  *&v78[33] = *&v80[32];
  *&v78[49] = *&v80[48];
  *v79 = *&v80[64];
  *&v78[1] = *v80;
  v77 = v49;
  v78[0] = v44;
  *&v79[15] = *&v80[79];
  *&v78[17] = *&v80[16];
  sub_21489DFCC(&v77, &qword_27CA1B228, &qword_214994D68);
  return (v56)(v73, v41);
}

uint64_t sub_2148D15E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 64);

  sub_21498EB20();

  *a2 = v5;
  return result;
}

uint64_t sub_2148D163C(char *a1, uint64_t a2)
{
  v2 = *(*a2 + 64);
  v4 = *a1;

  sub_21498EB30();
}

void sub_2148D1694()
{
  v0 = [objc_opt_self() standardUserDefaults];
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  v1 = *(sub_21498EB80() + 64);

  sub_21498EB20();

  v2 = sub_21498F840();
  [v0 setBool:v3 forKey:v2];
}

uint64_t sub_2148D17C4@<X0>(uint64_t a1@<X8>)
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  v2 = sub_2148B5D48();
  v4 = v3;

  *a1 = xmmword_214994640;
  *(a1 + 16) = 0;
  v5 = MEMORY[0x277D84F90];
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v2;
  *(a1 + 56) = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = v5;
  sub_2148D9930(0x20676E6974696157, 0xEE00646F69726570, 0);

  sub_2148D9930(v2, v4, 0);

  sub_2148C85D4(v2, v4, 0);

  sub_2148C85D4(0x20676E6974696157, 0xEE00646F69726570, 0);
}

uint64_t sub_2148D1948()
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  sub_2148B5F58();
}

double sub_2148D19EC@<D0>(uint64_t a1@<X8>)
{
  result = 3.25141735e161;
  *a1 = xmmword_214994650;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2148D1A0C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v107 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C8, &qword_214994920);
  v108 = *(v7 - 8);
  v109 = v7;
  v8 = *(v108 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v106 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = v82 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B010, &qword_214994898);
  v12 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v110 = v82 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B040, &qword_2149948B0);
  v14 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v91 = (v82 - v15);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1D0, &qword_214994C38);
  v16 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v100 = v82 - v17;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1D8, &qword_214994C40);
  v18 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v96 = v82 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1E0, &qword_214994C48);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v97 = v82 - v22;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1E8, &qword_214994C50);
  v23 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v25 = v82 - v24;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1F0, &qword_214994C58);
  v26 = *(*(v92 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v92);
  v93 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v98 = v82 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1F8, &qword_214994C60);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v104 = v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v114 = v82 - v34;
  v35 = _s9ViewModelCMa(0);
  v36 = sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  v37 = a3;
  v111 = a3 & 1;
  v112 = v35;
  v113 = v36;
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v38 = *&v132[8];
  v102 = v20;
  if (*&v132[8] == 2)
  {
    v39 = v99;
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v40 = *v132;
    if (*v132)
    {
      v41 = swift_allocObject();
      *(v41 + 16) = a1;
      *(v41 + 24) = a2;
      *(v41 + 32) = v37 & 1;
      *(v41 + 40) = v40;
      sub_214897F3C();
      v42 = v40;
      v43 = v110;
      sub_21498F450();
      v44 = sub_21498F2A0();
      KeyPath = swift_getKeyPath();
      v46 = (v43 + *(v39 + 36));
      *v46 = KeyPath;
      v46[1] = v44;
      sub_2148AA824(v43, v96, &qword_27CA1B010, &qword_214994898);
      swift_storeEnumTagMultiPayload();
      sub_2148B4C20(&qword_27CA1B210, &qword_27CA1B1E8, &qword_214994C50);
      sub_2148D8648();
      v47 = v97;
      sub_21498EE90();
      sub_2148AA824(v47, v100, &qword_27CA1B1E0, &qword_214994C48);
      swift_storeEnumTagMultiPayload();
      sub_2148D97E8();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
      sub_21498EE90();

      sub_21489DFCC(v47, &qword_27CA1B1E0, &qword_214994C48);
      v48 = v43;
      v49 = &qword_27CA1B010;
      v50 = &qword_214994898;
    }

    else
    {
      v69 = sub_21498EE10();
      v70 = v91;
      *v91 = v69;
      *(v70 + 8) = 0;
      *(v70 + 16) = 1;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B200, &qword_214994CF8);
      sub_2148D2D14(v70 + *(v71 + 44));
      sub_2148AA824(v70, v100, &qword_27CA1B040, &qword_2149948B0);
      swift_storeEnumTagMultiPayload();
      sub_2148D97E8();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
      sub_21498EE90();
      v48 = v70;
      v49 = &qword_27CA1B040;
      v50 = &qword_2149948B0;
    }
  }

  else
  {
    v110 = a2;
    v88 = *&v132[16];
    v89 = *v132;
    v86 = *&v132[32];
    v87 = *&v132[24];
    v85 = *&v132[40];
    v84 = v132[48];
    v134[0] = *v132;
    v134[1] = *&v132[16];
    v134[2] = *&v132[32];
    v135 = v132[48];
    v51 = sub_21498EE10();
    LOBYTE(v115) = 1;
    sub_2148D28E4(v134, v132);
    v124 = *&v132[32];
    v125 = *&v132[48];
    v122 = *v132;
    v123 = *&v132[16];
    v127[2] = *&v132[32];
    v127[3] = *&v132[48];
    v127[4] = *&v132[64];
    v127[1] = *&v132[16];
    v126 = *&v132[64];
    v127[0] = *v132;
    sub_2148AA824(&v122, v130, &qword_27CA1B220, &qword_214994D60);
    sub_21489DFCC(v127, &qword_27CA1B220, &qword_214994D60);
    *&v132[7] = v122;
    *&v132[23] = v123;
    *&v132[71] = v126;
    *&v132[55] = v125;
    *&v132[39] = v124;
    v128 = v51;
    v129[0] = v115;
    *&v129[17] = *&v132[16];
    *&v129[1] = *v132;
    *&v129[80] = *(&v126 + 1);
    *&v129[65] = *&v132[64];
    *&v129[49] = *&v132[48];
    *&v129[33] = *&v132[32];
    v52 = swift_allocObject();
    v82[1] = v82;
    v53 = v110;
    *(v52 + 16) = a1;
    *(v52 + 24) = v53;
    *(v52 + 32) = v111;
    MEMORY[0x28223BE20](a1);
    v82[-2] = v134;
    v90 = a1;
    sub_214897F3C();
    v83 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B228, &qword_214994D68);
    v91 = MEMORY[0x277CE1138];
    sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68);
    v54 = v98;
    sub_21498F450();
    sub_2148D98D8(v89, v38);
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v55 = v132[0];
    v56 = swift_getKeyPath();
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    v58 = (v54 + *(v92 + 36));
    *v58 = v56;
    v58[1] = sub_2148DA434;
    v58[2] = v57;
    v119 = *&v129[48];
    v120 = *&v129[64];
    v121 = *&v129[80];
    v115 = v128;
    v116 = *v129;
    v117 = *&v129[16];
    v118 = *&v129[32];
    v59 = v93;
    sub_2148AA824(v54, v93, &qword_27CA1B1F0, &qword_214994C58);
    v60 = v119;
    v61 = v120;
    v130[4] = v119;
    v130[5] = v120;
    v62 = v121;
    v131 = v121;
    v63 = v116;
    v130[0] = v115;
    v130[1] = v116;
    v65 = v117;
    v64 = v118;
    v130[2] = v117;
    v130[3] = v118;
    v66 = v83;
    *v83 = v115;
    *(v66 + 16) = v63;
    *(v66 + 96) = v62;
    *(v66 + 32) = v65;
    *(v66 + 48) = v64;
    *(v66 + 64) = v60;
    *(v66 + 80) = v61;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B238, &qword_214994D70);
    sub_2148AA824(v59, v66 + *(v67 + 48), &qword_27CA1B1F0, &qword_214994C58);
    sub_2148AA824(&v128, v132, &qword_27CA1B228, &qword_214994D68);
    sub_2148AA824(v130, v132, &qword_27CA1B228, &qword_214994D68);
    sub_21489DFCC(v59, &qword_27CA1B1F0, &qword_214994C58);
    *&v132[64] = v119;
    *&v132[80] = v120;
    v133 = v121;
    *v132 = v115;
    *&v132[16] = v116;
    *&v132[32] = v117;
    *&v132[48] = v118;
    sub_21489DFCC(v132, &qword_27CA1B228, &qword_214994D68);
    sub_2148AA824(v66, v96, &qword_27CA1B1E8, &qword_214994C50);
    swift_storeEnumTagMultiPayload();
    sub_2148B4C20(&qword_27CA1B210, &qword_27CA1B1E8, &qword_214994C50);
    sub_2148D8648();
    v68 = v97;
    sub_21498EE90();
    sub_2148AA824(v68, v100, &qword_27CA1B1E0, &qword_214994C48);
    swift_storeEnumTagMultiPayload();
    sub_2148D97E8();
    sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
    sub_21498EE90();
    sub_21489DFCC(&v128, &qword_27CA1B228, &qword_214994D68);
    sub_21489DFCC(v68, &qword_27CA1B1E0, &qword_214994C48);
    sub_21489DFCC(v66, &qword_27CA1B1E8, &qword_214994C50);
    v48 = v98;
    v49 = &qword_27CA1B1F0;
    v50 = &qword_214994C58;
  }

  sub_21489DFCC(v48, v49, v50);
  sub_21498EE40();
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v72 = v105;
  sub_21498F460();
  v73 = v104;
  sub_2148AA824(v114, v104, &qword_27CA1B1F8, &qword_214994C60);
  v75 = v108;
  v74 = v109;
  v76 = *(v108 + 16);
  v77 = v106;
  v76(v106, v72, v109);
  v78 = v107;
  sub_2148AA824(v73, v107, &qword_27CA1B1F8, &qword_214994C60);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B218, &qword_214994D28);
  v76((v78 + *(v79 + 48)), v77, v74);
  v80 = *(v75 + 8);
  v80(v72, v74);
  sub_21489DFCC(v114, &qword_27CA1B1F8, &qword_214994C60);
  v80(v77, v74);
  return sub_21489DFCC(v73, &qword_27CA1B1F8, &qword_214994C60);
}

uint64_t sub_2148D28E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (v3 >= 2)
  {
    v4 = *a1;
    v5 = a1[1];
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 4271950;
  }

  *a2 = xmmword_214994660;
  *(a2 + 16) = 0;
  v6 = MEMORY[0x277D84F90];
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = 0;
  *(a2 + 72) = v6;
  sub_2148D9930(0x69726F6765746143, 0xEE006E6F6974617ALL, 0);

  sub_2148D9930(v4, v3, 0);

  sub_2148C85D4(v4, v3, 0);

  sub_2148C85D4(0x69726F6765746143, 0xEE006E6F6974617ALL, 0);
}

uint64_t sub_2148D2A0C()
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_21498EA20();
}

double sub_2148D2AE0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21498EE10();
  v16 = 1;
  sub_2148D2BE8(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_2148AA824(&v17, &v9, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(v22, &qword_27CA1B220, &qword_214994D60);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_2148D2BE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  if (a1[1] == 1 || v3 == 0)
  {
    v3 = 0xE300000000000000;
    v5 = 4271950;
  }

  else
  {
    v5 = a1[3];
    v6 = a1[4];
  }

  *a2 = xmmword_214994670;
  *(a2 + 16) = 0;
  v7 = MEMORY[0x277D84F90];
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v5;
  *(a2 + 56) = v3;
  *(a2 + 64) = 0;
  *(a2 + 72) = v7;
  sub_2148D9930(0x656C43206C69614DLL, 0xEC00000070756E61, 0);

  sub_2148D9930(v5, v3, 0);

  sub_2148C85D4(v5, v3, 0);

  sub_2148C85D4(0x656C43206C69614DLL, 0xEC00000070756E61, 0);
}

uint64_t sub_2148D2D14@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8E8, &qword_2149933C8);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  sub_21498EBC0();
  v10 = v3[2];
  v10(v7, v9, v2);
  *a1 = xmmword_214994680;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B240, &qword_214994DA0);
  v10((a1 + *(v11 + 64)), v7, v2);
  sub_2148D9930(0xE2676E6964616F4CLL, 0xAA0000000000A680, 0);
  v12 = v3[1];

  v12(v9, v2);
  v12(v7, v2);
  sub_2148C85D4(0xE2676E6964616F4CLL, 0xAA0000000000A680, 0);
}

uint64_t sub_2148D2EE4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 96);

  sub_21498EB20();

  *a2 = v5;
  return result;
}

uint64_t sub_2148D2F3C(char *a1, uint64_t a2)
{
  v2 = *(*a2 + 96);
  v4 = *a1;

  sub_21498EB30();
}

id sub_2148D2F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v119 = a2;
  v115 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = v97 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v97 - v11;
  v13 = sub_21498E510();
  v111 = *(v13 - 8);
  v112 = v13;
  v14 = *(v111 + 64);
  MEMORY[0x28223BE20](v13);
  v110 = v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v113 = (v97 - v18);
  v19 = sub_21498E350();
  v107 = *(v19 - 1);
  v108 = v19;
  v20 = v107[8];
  MEMORY[0x28223BE20](v19);
  v22 = v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TracingContext(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v114 = (v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = type metadata accessor for MALiftUISource(0);
  v109 = *(v117 - 8);
  v26 = *(v109 + 64);
  MEMORY[0x28223BE20](v117);
  v28 = v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = v97 - v31;
  v33 = sub_21498E1B0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v118 = v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  result = [v37 aa_primaryAppleAccount];
  v106 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v103 = v12;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  v104 = a3;
  v105 = a1;
  v39 = sub_21498EB80();
  v40 = __swift_project_boxed_opaque_existential_1((v39 + 16), *(v39 + 40));
  *&v120[0] = sub_214933B00(*(*v40 + 40));
  *(&v120[0] + 1) = v41;

  MEMORY[0x2160589C0](0xD00000000000002DLL, 0x80000002149A1950);

  sub_21498E1A0();

  result = (*(v34 + 48))(v32, 1, v33);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v42 = v33;
  v43 = v118;
  (*(v34 + 32))(v118, v32, v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
  v45 = *(v44 + 48);
  v46 = &v28[*(v44 + 64)];
  (*(v34 + 16))(v28, v43, v42);
  *&v28[v45] = xmmword_214994690;
  *v46 = 0;
  *(v46 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v47 = *(v23 + 20);
  v99 = v47;
  v101 = sub_21498E5D0();
  v48 = *(v101 - 8);
  v100 = *(v48 + 56);
  v102 = v48 + 56;
  v49 = v114;
  v100(v114 + v47, 1, 1, v101);
  v50 = v37;
  v51 = v106;
  v106 = v42;
  v52 = v51;
  sub_21498E340();
  v53 = sub_21498E330();
  v55 = v54;
  (v107[1])(v22, v108);
  *v49 = v53;
  v49[1] = v55;
  v98 = v34;
  v56 = v28;
  v57 = v115;
  *v115 = v53;
  v57[1] = v55;
  v58 = type metadata accessor for MARemoteView(0);
  sub_2148D9620(v56, v57 + v58[5]);
  *(v57 + v58[9]) = v50;
  *(v57 + v58[10]) = v52;
  v59 = (v57 + v58[7]);
  v60 = sub_21498E8C0();
  *v59 = 0;
  v59[1] = 0;
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v108 = v50;
  v107 = v52;

  v63 = sub_21498E8B0();
  v97[1] = "Assistant19IntervalGuardAction";
  v64 = swift_allocObject();
  v65 = v110;
  v66 = v111;
  v67 = v112;
  (*(v111 + 104))(v110, *MEMORY[0x277D245A0], v112);
  LOBYTE(v43) = sub_21498E500();
  (*(v66 + 8))(v65, v67);
  v68 = v43 & 1;
  v69 = v49;
  v70 = v56;
  *(v64 + 16) = v68;
  v71 = v113;
  *v113 = v64;
  v72 = *MEMORY[0x277D23258];
  v73 = sub_21498E7C0();
  v74 = v98;
  v75 = *(v73 - 8);
  (*(v75 + 104))(v71, v72, v73);
  (*(v75 + 56))(v71, 0, 1, v73);
  sub_21498E8E0();
  v113 = v70;
  v76 = v103;
  sub_2148D9620(v70, v103);
  (*(v109 + 56))(v76, 0, 1, v117);
  v77 = type metadata accessor for MARemoteViewModel(0);
  memset(v120, 0, sizeof(v120));
  v121 = 0;
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  v80 = v107;

  v117 = v63;
  v81 = sub_21490B164(v80, v76, v63, v120);
  v82 = v57 + v58[6];
  *v82 = sub_21489B760;
  *(v82 + 1) = v81;
  v82[16] = 0;
  v112 = v58;
  v83 = v99;
  sub_2148AA824(v69 + v99, v57 + v58[11], &qword_27CA1A320, &unk_2149916D0);
  v84 = v116;
  sub_2148AA824(v69 + v83, v116, &qword_27CA1A320, &unk_2149916D0);
  v85 = type metadata accessor for MARemoteViewDelegate(0);
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  v88 = swift_allocObject();
  v89 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  v100((v88 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID), 1, 1, v101);
  v90 = qword_281190DA8;

  if (v90 != -1)
  {
    swift_once();
  }

  v91 = v108;

  sub_2148D9684(v69, type metadata accessor for TracingContext);
  sub_2148D9684(v113, type metadata accessor for MALiftUISource);
  (*(v74 + 8))(v118, v106);
  v92 = sub_21498E600();
  __swift_project_value_buffer(v92, qword_281194E30);
  *(v88 + 16) = "LoadRemoteView";
  *(v88 + 24) = 14;
  *(v88 + 32) = 2;
  swift_beginAccess();
  sub_21489B818(v84, v88 + v89);
  swift_endAccess();
  v93 = (v88 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
  *v93 = sub_21489B7D8;
  v93[1] = v81;
  *(v57 + *(v112 + 32)) = v88;
  v94 = swift_allocObject();
  v95 = v119;
  *(v94 + 16) = v105;
  *(v94 + 24) = v95;
  *(v94 + 32) = v104 & 1;
  v96 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0A8, &qword_214994910) + 36));
  *v96 = 0;
  v96[1] = 0;
  v96[2] = sub_2148D96E4;
  v96[3] = v94;
  return sub_214897F3C();
}

uint64_t sub_2148D3A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  sub_21498FAB0();
  *(v6 + 32) = sub_21498FAA0();
  v8 = sub_21498FA50();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return MEMORY[0x2822009F8](sub_2148D3B18, v8, v7);
}

uint64_t sub_2148D3B18()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  *(v0 + 56) = sub_21498EB80();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_2148CB7CC;

  return sub_2148B8444();
}

uint64_t sub_2148D3C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C8, &qword_214994920);
  v19 = *(v17 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = v16 - v8;
  v10 = sub_21498EE40();
  v16[0] = v11;
  v16[1] = v10;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  sub_21498F460();
  v12 = *(sub_21498EB80() + 72);

  sub_21498EB20();

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3 & 1;
  sub_214897F3C();
  sub_2148B4C20(&qword_27CA1B0D0, &qword_27CA1B0C8, &qword_214994920);
  v14 = v17;
  sub_21498F220();

  return (*(v19 + 8))(v9, v14);
}

uint64_t sub_2148D3ED8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 72);

  sub_21498EB20();

  *a2 = v5;
  return result;
}

uint64_t sub_2148D3F30(char *a1, uint64_t a2)
{
  v2 = *(*a2 + 72);
  v4 = *a1;

  sub_21498EB30();
}

void sub_2148D3F88()
{
  v0 = [objc_opt_self() standardUserDefaults];
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  v1 = *(sub_21498EB80() + 72);

  sub_21498EB20();

  v2 = sub_21498F840();
  [v0 setBool:v3 forKey:v2];
}

uint64_t sub_2148D40B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1B8, &qword_214994B60);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v37 = &v35 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v36 = &v35 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3 & 1;
  sub_214897F3C();
  sub_21498F450();
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v19 = v41;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = &v17[*(v8 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_2148D9528;
  v22[2] = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = a3 & 1;
  sub_214897F3C();
  v24 = v36;
  sub_21498F450();
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v25 = v40;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  v28 = v24;
  v29 = &v24[*(v8 + 44)];
  *v29 = v26;
  v29[1] = sub_2148DA434;
  v29[2] = v27;
  v30 = v37;
  sub_2148AA824(v17, v37, &qword_27CA1B1B8, &qword_214994B60);
  v31 = v38;
  sub_2148AA824(v28, v38, &qword_27CA1B1B8, &qword_214994B60);
  v32 = v39;
  sub_2148AA824(v30, v39, &qword_27CA1B1B8, &qword_214994B60);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C0, &qword_214994BE0);
  sub_2148AA824(v31, v32 + *(v33 + 48), &qword_27CA1B1B8, &qword_214994B60);
  sub_21489DFCC(v28, &qword_27CA1B1B8, &qword_214994B60);
  sub_21489DFCC(v17, &qword_27CA1B1B8, &qword_214994B60);
  sub_21489DFCC(v31, &qword_27CA1B1B8, &qword_214994B60);
  return sub_21489DFCC(v30, &qword_27CA1B1B8, &qword_214994B60);
}

uint64_t sub_2148D4538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 136) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = sub_21498E690();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  sub_21498FAB0();
  *(v6 + 56) = sub_21498FAA0();
  v11 = sub_21498FA50();
  *(v6 + 64) = v11;
  *(v6 + 72) = v10;

  return MEMORY[0x2822009F8](sub_2148D4630, v11, v10);
}

uint64_t sub_2148D4630()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 80) = _s9ViewModelCMa(0);
  *(v0 + 88) = sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  *(v0 + 96) = sub_21498EB80();
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_2148D4734;

  return sub_2148B614C();
}

uint64_t sub_2148D4734(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 112) = a1;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_2148D4880, v6, v5);
}

uint64_t sub_2148D4880()
{
  v29 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v3 + 16))(v2, v5, v4);

  v6 = sub_21498E670();
  v7 = sub_21498FB90();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 112);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 32);
  if (v8)
  {
    v27 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x216058A90](v9, MEMORY[0x277D837D0]);
    v17 = v16;

    v18 = sub_2149079F4(v15, v17, &v28);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_21488E000, v6, v7, "Result: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x216059AC0](v14, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);

    (*(v10 + 8))(v27, v12);
  }

  else
  {
    v19 = *(v0 + 112);

    (*(v10 + 8))(v11, v12);
  }

  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  v22 = *(v0 + 136);
  v23 = *(v0 + 16);
  v24 = *(v0 + 24);
  *(v0 + 120) = sub_21498EB80();
  v25 = swift_task_alloc();
  *(v0 + 128) = v25;
  *v25 = v0;
  v25[1] = sub_2148D4AE0;

  return sub_2148B8444();
}

uint64_t sub_2148D4AE0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2148D4C24, v5, v4);
}

uint64_t sub_2148D4C24()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

void sub_2148D4C8C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000012;
  *(a1 + 8) = 0x80000002149A15F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_2148D4CBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAE0, qword_214993660);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();

  sub_2148B67EC(0x41455050415F4E4FLL, 0xE900000000000052);
  sub_2148B67EC(0x4B43494C435F4E4FLL, 0xE800000000000000);
  sub_21498EB80();
  sub_21498E340();
  v7 = type metadata accessor for ResultContainer(0);
  v8 = &v6[*(v7 + 20)];
  *v8 = 0xD000000000000019;
  *(v8 + 1) = 0x80000002149A18E0;
  v9 = &v6[*(v7 + 24)];
  *v9 = 0x63206E6F69746341;
  *(v9 + 1) = 0xEF6574656C706D6FLL;
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v6, v4, &qword_27CA1AAE0, qword_214993660);
  sub_21498EA20();
  return sub_21489DFCC(v6, &qword_27CA1AAE0, qword_214993660);
}

void sub_2148D4F20(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x80000002149A18E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_2148D4F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 80);
  v22 = *(a1 + 64);
  v23 = v9;
  v24 = *(a1 + 96);
  v10 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v10;
  v11 = *(a1 + 48);
  v20 = *(a1 + 32);
  v21 = v11;
  v25 = v19[0];
  v26 = v10;
  v27 = v20;
  v28 = v11;
  v29 = v22;
  v30 = v9;
  LOBYTE(v31) = v24;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4 & 1;
  v13 = v30;
  *(a5 + 64) = v29;
  *(a5 + 80) = v13;
  v14 = v31;
  v15 = v26;
  *a5 = v25;
  *(a5 + 16) = v15;
  v16 = v28;
  *(a5 + 32) = v27;
  *(a5 + 48) = v16;
  *(a5 + 104) = 0;
  *(a5 + 112) = 0;
  *(a5 + 96) = v14;
  *(a5 + 120) = sub_2148D938C;
  *(a5 + 128) = v12;
  sub_2148D93C8(v19, v18);
  return sub_214897F3C();
}

uint64_t sub_2148D503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  sub_21498FAB0();
  *(v6 + 32) = sub_21498FAA0();
  v8 = sub_21498FA50();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return MEMORY[0x2822009F8](sub_2148D50D8, v8, v7);
}

uint64_t sub_2148D50D8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  *(v0 + 56) = sub_21498EB80();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_2148D51D4;

  return sub_2148B8444();
}

uint64_t sub_2148D51D4()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2148D5318, v5, v4);
}

uint64_t sub_2148D5318()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2148D5378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = v10;
  a4[3] = sub_2148D9288;
  a4[4] = v8;
  return sub_214897F3C();
}

uint64_t sub_2148D54BC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = a1[5];
  v19[4] = a1[4];
  v19[5] = v10;
  v19[6] = a1[6];
  v11 = a1[1];
  v19[0] = *a1;
  v19[1] = v11;
  v12 = a1[3];
  v19[2] = a1[2];
  v19[3] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4 & 1;
  v14 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v14;
  *(a5 + 96) = a1[6];
  v15 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v15;
  v16 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v16;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 128) = sub_2148D9128;
  *(a5 + 136) = v13;
  sub_2148D9164(v19, &v18);
  return sub_214897F3C();
}

uint64_t sub_2148D5598@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  memcpy(v12, __src, 0x179uLL);
  sub_2148D8FC8(v12, __dst);
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  v9 = sub_21498EB80();
  memcpy(__dst, v12, 0x179uLL);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4 & 1;
  memcpy(a5, __dst, 0x180uLL);
  a5[49] = 0;
  a5[50] = 0;
  a5[48] = v9;
  a5[51] = sub_2148D9024;
  a5[52] = v10;
  return sub_214897F3C();
}

uint64_t sub_2148D56CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1B0, &unk_214994A78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v15 - v10;
  v15[4] = 0;
  v15[5] = 0xE000000000000000;
  v15[3] = *(a1 + *(type metadata accessor for ErrorContainer(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  sub_21498FE70();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4 & 1;
  sub_214897F3C();
  sub_21498F250();

  v13 = sub_21498F260();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  return sub_21498F240();
}

uint64_t sub_2148D58A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAD0, &qword_214994AB0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  v7 = type metadata accessor for ErrorContainer(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v6, v4, &qword_27CA1AAD0, &qword_214994AB0);
  sub_21498EA20();
  return sub_21489DFCC(v6, &qword_27CA1AAD0, &qword_214994AB0);
}

uint64_t sub_2148D5A54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1B0, &unk_214994A78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ResultContainer(0);
  v13 = (a1 + *(v12 + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = (a1 + *(v12 + 24));
  v17 = *v16;
  v18 = v16[1];
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4 & 1;

  sub_214897F3C();
  sub_21498F250();

  v20 = sub_21498F260();
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  return sub_21498F240();
}

uint64_t sub_2148D5C08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAE0, qword_214993660);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  sub_21498EB80();
  v7 = type metadata accessor for ResultContainer(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v6, v4, &qword_27CA1AAE0, qword_214993660);
  sub_21498EA20();
  return sub_21489DFCC(v6, &qword_27CA1AAE0, qword_214993660);
}

uint64_t sub_2148D5DB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = sub_21498FAE0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_21498FAB0();
  v14 = a3 & 1;
  sub_214897F3C();
  v15 = sub_21498FAA0();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = v14;
  sub_214926978(0, 0, v12, a5, v16);
}

uint64_t sub_2148D5EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  sub_21498FAB0();
  *(v6 + 32) = sub_21498FAA0();
  v8 = sub_21498FA50();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return MEMORY[0x2822009F8](sub_2148D5F98, v8, v7);
}

uint64_t sub_2148D5F98()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa);
  *(v0 + 56) = sub_21498EB80();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_2148CB7CC;

  return sub_2148B5834();
}

uint64_t sub_2148D6094@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_2148C9358(v3, v4, v5, a1);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AEF0, &qword_2149946B0) + 36));
  *v7 = sub_2148DA430;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;

  return sub_214897F3C();
}

uint64_t sub_2148D614C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_2148D6198(uint64_t a1, uint64_t a2, char *a3)
{
  v173 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB98, &qword_214993DF8);
  v171 = *(v5 - 8);
  v172 = v5;
  v6 = *(v171 + 64);
  MEMORY[0x28223BE20](v5);
  v170 = &v130 - v7;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAE0, qword_214993660);
  v8 = *(*(v169 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v169);
  v168 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v167 = &v130 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB90, &qword_214993DF0);
  v165 = *(v12 - 8);
  v166 = v12;
  v13 = *(v165 + 64);
  MEMORY[0x28223BE20](v12);
  v164 = &v130 - v14;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAD0, &qword_214994AB0);
  v15 = *(*(v163 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v163);
  v162 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v161 = &v130 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB88, &qword_214993DE8);
  v159 = *(v19 - 8);
  v160 = v19;
  v20 = *(v159 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v130 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB80, &qword_214993DE0);
  v157 = *(v23 - 8);
  v158 = v23;
  v24 = *(v157 + 64);
  MEMORY[0x28223BE20](v23);
  v156 = &v130 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB78, &qword_214993DD8);
  v154 = *(v26 - 8);
  v155 = v26;
  v27 = *(v154 + 64);
  MEMORY[0x28223BE20](v26);
  v153 = &v130 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB70, &qword_214993DD0);
  v151 = *(v29 - 8);
  v152 = v29;
  v30 = *(v151 + 64);
  MEMORY[0x28223BE20](v29);
  v150 = &v130 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB68, &qword_214993DC8);
  v148 = *(v32 - 8);
  v149 = v32;
  v33 = *(v148 + 64);
  MEMORY[0x28223BE20](v32);
  v147 = &v130 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB60, &qword_214993DC0);
  v145 = *(v35 - 8);
  v146 = v35;
  v36 = *(v145 + 64);
  MEMORY[0x28223BE20](v35);
  v144 = &v130 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB58, &qword_214993DB8);
  v142 = *(v38 - 8);
  v143 = v38;
  v39 = *(v142 + 64);
  MEMORY[0x28223BE20](v38);
  v141 = &v130 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB50, &qword_214993DB0);
  v139 = *(v41 - 8);
  v140 = v41;
  v42 = *(v139 + 64);
  MEMORY[0x28223BE20](v41);
  v138 = &v130 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB48, &qword_214993DA8);
  v136 = *(v44 - 8);
  v137 = v44;
  v45 = *(v136 + 64);
  MEMORY[0x28223BE20](v44);
  v135 = &v130 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB40, &qword_214993DA0);
  v133 = *(v47 - 8);
  v134 = v47;
  v48 = *(v133 + 64);
  MEMORY[0x28223BE20](v47);
  v132 = &v130 - v49;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB38, &qword_214993D98);
  v50 = *(v131 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v131);
  v53 = &v130 - v52;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB30, &qword_214993D90);
  v54 = *(v130 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v130);
  v57 = &v130 - v56;
  v58 = type metadata accessor for MARepositoryDefault();
  v176[4] = &off_2826CB168;
  v176[3] = v58;
  v176[0] = a1;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v60 = v59;
  v62 = *&v59[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCacheDisabledKey];
  v61 = *&v59[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCacheDisabledKey + 8];

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 7) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v64 = v63;
  v65 = *&v63[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey];
  v66 = *&v63[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey + 8];

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 8) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v68 = v67;
  v69 = *&v67[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_useBulkActionServiceForDashboardKey];
  v70 = *&v67[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_useBulkActionServiceForDashboardKey + 8];

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 9) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v72 = v71;
  v73 = *&v71[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCategoryDisabledKey];
  v74 = *&v71[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCategoryDisabledKey + 8];

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 10) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v76 = v75;
  v77 = *&v75[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_categoriesDisabledTimestampKey];
  v78 = *&v75[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_categoriesDisabledTimestampKey + 8];

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 11) = sub_21498EB40();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v80 = v79;
  v81 = *&v79[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_showConsentInMailAppWhenDeclinedKey];
  v82 = *&v79[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_showConsentInMailAppWhenDeclinedKey + 8];

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 12) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v84 = v83;
  v85 = *&v83[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowUnsubscribeTipKey];
  v86 = *&v83[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowUnsubscribeTipKey + 8];

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 13) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v88 = v87;
  v89 = *&v87[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowPromotionsTipKey];
  v90 = *&v87[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowPromotionsTipKey + 8];

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 14) = sub_21498EB10();
  v91 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unsubscribeRecommendations;
  *&v177[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA20, &qword_214993608);
  sub_21498E9F0();
  (*(v54 + 32))(&a3[v91], v57, v130);
  v92 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__automationRecommendations;
  *&v177[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA30, &qword_214993610);
  sub_21498E9F0();
  (*(v50 + 32))(&a3[v92], v53, v131);
  v93 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__showUnsubscribeInMessageList;
  LOBYTE(v177[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA40, &qword_214993618);
  v94 = v132;
  sub_21498E9F0();
  (*(v133 + 32))(&a3[v93], v94, v134);
  v95 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unifiedRules;
  *&v177[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA50, &qword_214993620);
  v96 = v135;
  sub_21498E9F0();
  (*(v136 + 32))(&a3[v95], v96, v137);
  v97 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__inlineTips;
  *&v177[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA60, &qword_214993628);
  v98 = v138;
  sub_21498E9F0();
  (*(v139 + 32))(&a3[v97], v98, v140);
  v99 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__preferences;
  v177[0] = xmmword_2149946A0;
  memset(&v177[1], 0, 33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA70, &qword_214993630);
  v100 = v141;
  sub_21498E9F0();
  (*(v142 + 32))(&a3[v99], v100, v143);
  v101 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__cacheTTL;
  *&v177[0] = 0;
  v102 = v144;
  sub_21498E9F0();
  (*(v145 + 32))(&a3[v101], v102, v146);
  v103 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedAutomationRecommendation;
  memset(v177, 0, 97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA88, &qword_214993638);
  v104 = v147;
  sub_21498E9F0();
  (*(v148 + 32))(&a3[v103], v104, v149);
  v105 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedUnsubscribeRecommendations;
  LOBYTE(v177[0]) = 0;
  v106 = v150;
  sub_21498E9F0();
  v107 = v152;
  v108 = *(v151 + 32);
  v108(&a3[v105], v106, v152);
  v109 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedUnifiedRule;
  memset(v177, 0, 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAA0, &qword_214993640);
  v110 = v153;
  sub_21498E9F0();
  (*(v154 + 32))(&a3[v109], v110, v155);
  v111 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedInlineTip;
  sub_2148DA328(v177);
  memcpy(v175, v177, 0x179uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAB0, &qword_214993648);
  v112 = v156;
  sub_21498E9F0();
  (*(v157 + 32))(&a3[v111], v112, v158);
  v113 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__isResettingMailCleanup;
  LOBYTE(v175[0]) = 0;
  sub_21498E9F0();
  v108(&a3[v113], v106, v107);
  v114 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__shouldShowOnboardingScreen;
  LOBYTE(v175[0]) = 0;
  sub_21498E9F0();
  v108(&a3[v114], v106, v107);
  v115 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__recommendationsError;
  v175[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAC0, &unk_214993650);
  sub_21498E9F0();
  v116 = v160;
  v117 = *(v159 + 32);
  v117(&a3[v115], v22, v160);
  v118 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unifiedRulesError;
  v175[0] = 0;
  sub_21498E9F0();
  v117(&a3[v118], v22, v116);
  v119 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__inlineTipsError;
  v175[0] = 0;
  sub_21498E9F0();
  v117(&a3[v119], v22, v116);
  v120 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__preferencesError;
  v175[0] = 0;
  sub_21498E9F0();
  v117(&a3[v120], v22, v116);
  v121 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__errorToPresent;
  v122 = type metadata accessor for ErrorContainer(0);
  v123 = v161;
  (*(*(v122 - 8) + 56))(v161, 1, 1, v122);
  sub_2148AA824(v123, v162, &qword_27CA1AAD0, &qword_214994AB0);
  v124 = v164;
  sub_21498E9F0();
  sub_21489DFCC(v123, &qword_27CA1AAD0, &qword_214994AB0);
  (*(v165 + 32))(&a3[v121], v124, v166);
  v125 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__resultToPresent;
  v126 = type metadata accessor for ResultContainer(0);
  v127 = v167;
  (*(*(v126 - 8) + 56))(v167, 1, 1, v126);
  sub_2148AA824(v127, v168, &qword_27CA1AAE0, qword_214993660);
  v128 = v170;
  sub_21498E9F0();
  sub_21489DFCC(v127, &qword_27CA1AAE0, qword_214993660);
  (*(v171 + 32))(&a3[v125], v128, v172);
  sub_2148994D0(v176, (a3 + 16));
  swift_beginAccess();
  v174 = v173;
  type metadata accessor for iCloudMailAssistantProviderSwift();
  sub_21498E9F0();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v176);
  return a3;
}

void *sub_2148D72D0(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v134 = a8;
  v157 = a7;
  v158 = a6;
  v151 = a5;
  v144 = a4;
  v153 = a2;
  v152 = a1;
  v136 = sub_21498E610();
  v135 = *(v136 - 8);
  v11 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v145 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v133 = &v133 - v15;
  v16 = sub_21498F710();
  v161 = *(v16 - 8);
  v162 = v16;
  v17 = *(v161 + 64);
  MEMORY[0x28223BE20](v16);
  v150 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21498E600();
  v160 = *(v19 - 8);
  v20 = *(v160 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v149 = &v133 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v133 - v25;
  v156 = sub_21498E5D0();
  v155 = *(v156 - 8);
  v27 = *(v155 + 64);
  v28 = MEMORY[0x28223BE20](v156);
  v148 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v147 = &v133 - v31;
  MEMORY[0x28223BE20](v30);
  v154 = &v133 - v32;
  v33 = sub_21498E690();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v133 - v39;
  v41 = type metadata accessor for MARepositoryDefault();
  v166[3] = v41;
  v166[4] = &off_2826CB168;
  v166[0] = a3;
  a10[2] = 0;
  a10[3] = 0;
  a10[9] = MEMORY[0x277D84FA0];
  v159 = a10;
  swift_unknownObjectWeakInit();
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if ((byte_281194E48 & 1) == 0)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v33, qword_281194E18);
    (*(v34 + 16))(v40, v42, v33);
    v43 = sub_21498E670();
    v44 = sub_21498FBA0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v19;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_21488E000, v43, v44, "[iCloudMailAssistantProviderSwift] init - isMailCleanupFeatureAvailable is false", v46, 2u);
      v47 = v46;
      v19 = v45;
      MEMORY[0x216059AC0](v47, -1, -1);
    }

    (*(v34 + 8))(v40, v33);
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v33, qword_281194E18);
  (*(v34 + 16))(v38, v48, v33);
  v49 = sub_21498E670();
  v50 = sub_21498FBA0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_21488E000, v49, v50, "[iCloudMailAssistantProviderSwift] init()", v51, 2u);
    MEMORY[0x216059AC0](v51, -1, -1);
  }

  (*(v34 + 8))(v38, v33);
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v139 = a9;
  v52 = __swift_project_value_buffer(v19, qword_281194E30);
  v53 = v160;
  v54 = v160 + 16;
  v55 = *(v160 + 16);
  v55(v26, v52, v19);
  sub_21498E5F0();
  v56 = v154;
  sub_21498E5B0();
  v59 = *(v53 + 8);
  v57 = v53 + 8;
  v58 = v59;
  v59(v26, v19);
  v60 = v149;
  v141 = v52;
  v142 = v54;
  v140 = v55;
  v55(v149, v52, v19);
  v61 = sub_21498E5F0();
  v62 = sub_21498FC80();
  if (sub_21498FCE0())
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = sub_21498E5C0();
    _os_signpost_emit_with_name_impl(&dword_21488E000, v61, v62, v64, "InitiCloudMailAssistantProviderSwift", "", v63, 2u);
    MEMORY[0x216059AC0](v63, -1, -1);
  }

  (*(v155 + 16))(v147, v56, v156);
  v65 = sub_21498E650();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  v147 = sub_21498E640();
  v149 = v19;
  v160 = v57;
  v143 = v58;
  v58(v60, v19);
  v68 = v159;
  v69 = v153;
  v159[6] = v152;
  v68[7] = v69;
  v70 = v144;
  v71 = v151;
  v68[4] = v144;
  v68[5] = v71;
  sub_2148994D0(v166, &v164);
  (*(v161 + 16))(v150, v158, v162);
  v72 = v165;
  v73 = __swift_mutable_project_boxed_opaque_existential_1(&v164, v165);
  v138 = &v133;
  v74 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v76 = (&v133 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = *v76;
  v163[3] = v41;
  v163[4] = &off_2826CB168;
  v163[0] = v78;
  v79 = type metadata accessor for iCloudMailAssistantProviderSwift.ProviderModel();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  v82 = swift_allocObject();
  v83 = __swift_mutable_project_boxed_opaque_existential_1(v163, v41);
  v137 = &v133;
  v84 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v86 = (&v133 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v87 + 16))(v86);
  v88 = *v86;
  v89 = (v82 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository);
  v89[3] = v41;
  v89[4] = &off_2826CB168;
  *v89 = v88;
  v90 = v82 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  v91 = MEMORY[0x277D84F90];
  *(v82 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state) = MEMORY[0x277D84F90];
  v92 = type metadata accessor for MailCleanupState();
  v93 = v92[5];
  v94 = sub_21498E320();
  v95 = *(*(v94 - 8) + 56);
  v95(v90 + v93, 1, 1, v94);
  *(v90 + v92[6]) = v91;
  *(v90 + v92[7]) = 2;
  *(v90 + v92[8]) = 2;
  *(v90 + v92[9]) = 3;
  v95(v90 + v92[10], 1, 1, v94);
  *(v90 + v92[11]) = v91;
  *(v90 + v92[12]) = v91;
  v95(v90 + v92[13], 1, 1, v94);
  *(v90 + v92[14]) = v91;
  v96 = (v90 + v92[15]);
  *v96 = 0;
  v96[1] = 0;
  v95(v90 + v92[16], 1, 1, v94);
  *(v82 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_shouldSyncWhenOnline) = 0;
  *(v82 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel__dataStore) = 0;
  *(v82 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults) = v70;
  v97 = v151;
  *(v82 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_notificationCenter) = v151;
  (*(v161 + 32))(v82 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_modelConfiguration, v150, v162);
  v98 = (v82 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_networkStatusProvider);
  v99 = v157;
  *v98 = v157;
  v98[1] = &off_2826CD668;
  *(v99 + 32) = &off_2826CBF68;
  swift_unknownObjectWeakAssign();
  v100 = v70;
  v101 = v97;
  v102 = v100;
  v103 = v101;
  v152 = v152;
  v153 = v153;

  __swift_destroy_boxed_opaque_existential_1(v163);
  __swift_destroy_boxed_opaque_existential_1(&v164);
  v68[8] = v82;
  sub_21495E748();
  sub_21495CFF0();
  sub_21495CC30();
  if ((v139 & 1) == 0)
  {
    v104 = sub_21498FAE0();
    v105 = v133;
    (*(*(v104 - 8) + 56))(v133, 1, 1, v104);
    v106 = swift_allocObject();
    swift_weakInit();
    v107 = swift_allocObject();
    v107[2] = 0;
    v107[3] = 0;
    v107[4] = v134;
    v107[5] = v106;
    sub_214926978(0, 0, v105, &unk_214995248, v107);
  }

  v108 = v146;
  v109 = v149;
  v140(v146, v141, v149);
  v110 = sub_21498E5F0();
  v111 = v148;
  sub_21498E630();
  v112 = sub_21498FC70();
  v113 = sub_21498FCE0();
  v114 = v145;
  if (v113)
  {
    v151 = v102;

    sub_21498E660();

    v115 = v135;
    v116 = v136;
    v117 = v103;
    if ((*(v135 + 88))(v114, v136) == *MEMORY[0x277D85B00])
    {
      v118 = 0;
      v119 = 0;
      v120 = "[Error] Interval already ended";
    }

    else
    {
      (*(v115 + 8))(v114, v116);
      v120 = "%s";
      v119 = 2;
      v118 = 1;
    }

    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v164 = v126;
    *v125 = v119;
    *(v125 + 1) = v118;
    *(v125 + 2) = 2080;
    v127 = sub_21498FE10();
    v129 = sub_2149079F4(v127, v128, &v164);

    *(v125 + 4) = v129;
    v130 = v148;
    v131 = sub_21498E5C0();
    _os_signpost_emit_with_name_impl(&dword_21488E000, v110, v112, v131, "InitiCloudMailAssistantProviderSwift", v120, v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v126);
    MEMORY[0x216059AC0](v126, -1, -1);
    MEMORY[0x216059AC0](v125, -1, -1);

    (*(v161 + 8))(v158, v162);
    v121 = *(v155 + 8);
    v122 = v156;
    v121(v130, v156);
    v123 = v108;
    v124 = v149;
  }

  else
  {

    (*(v161 + 8))(v158, v162);
    v121 = *(v155 + 8);
    v122 = v156;
    v121(v111, v156);
    v123 = v108;
    v124 = v109;
  }

  v143(v123, v124);
  v121(v154, v122);
  __swift_destroy_boxed_opaque_existential_1(v166);
  return v159;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_2148D83F4()
{
  result = qword_27CA1AF00;
  if (!qword_27CA1AF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AF08, &qword_2149947B8);
    sub_2148B4C20(&qword_27CA1AF10, &qword_27CA1AF18, &unk_2149947C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AF00);
  }

  return result;
}

uint64_t sub_2148D84A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D5EFC(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2148D8590()
{
  result = qword_27CA1AFE8;
  if (!qword_27CA1AFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AFF0, &qword_214994888);
    sub_2148B4C20(&qword_27CA1AFF8, &qword_27CA1B000, &qword_214994890);
    sub_2148D8648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AFE8);
  }

  return result;
}

unint64_t sub_2148D8648()
{
  result = qword_27CA1B008;
  if (!qword_27CA1B008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B010, &qword_214994898);
    sub_2148B4C20(&qword_27CA1B018, &qword_27CA1B020, &qword_2149948A0);
    sub_2148B4C20(&qword_27CA1B028, &qword_27CA1B030, &qword_2149948A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B008);
  }

  return result;
}

uint64_t sub_2148D8738(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2148D87E8()
{
  result = qword_27CA1B058;
  if (!qword_27CA1B058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B060, &qword_2149948C0);
    sub_2148B4C20(&qword_27CA1B068, &qword_27CA1B070, &qword_2149948C8);
    sub_2148D8648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B058);
  }

  return result;
}

unint64_t sub_2148D88D0()
{
  result = qword_27CA1B0B0;
  if (!qword_27CA1B0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AF78, &qword_214994830);
    sub_2148B4C20(&qword_27CA1B0A0, &qword_27CA1B098, &qword_2149948E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B0B0);
  }

  return result;
}

unint64_t sub_2148D8994()
{
  result = qword_27CA1B0B8;
  if (!qword_27CA1B0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B0A8, &qword_214994910);
    sub_2148D8F68(&qword_27CA1A340, type metadata accessor for MARemoteView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B0B8);
  }

  return result;
}

unint64_t sub_2148D8A74()
{
  result = qword_27CA1B0F0;
  if (!qword_27CA1B0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AF38, &qword_2149947F0);
    sub_2148B4C20(&qword_27CA1B0E0, &qword_27CA1B0D8, &qword_214994928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B0F0);
  }

  return result;
}

unint64_t sub_2148D8B30()
{
  result = qword_27CA1B0F8;
  if (!qword_27CA1B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B0F8);
  }

  return result;
}

unint64_t sub_2148D8B84()
{
  result = qword_27CA1B100;
  if (!qword_27CA1B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B0E8, &qword_214994958);
    sub_2148B4C20(&qword_27CA1B108, &qword_27CA1B110, &qword_214994960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B100);
  }

  return result;
}

unint64_t sub_2148D8C48()
{
  result = qword_27CA1B128;
  if (!qword_27CA1B128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B120, &qword_214994998);
    sub_2148B4C20(&qword_27CA1B130, &qword_27CA1B138, &qword_2149949A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B128);
  }

  return result;
}

unint64_t sub_2148D8D0C()
{
  result = qword_27CA1B148;
  if (!qword_27CA1B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B148);
  }

  return result;
}

unint64_t sub_2148D8D60()
{
  result = qword_27CA1B150;
  if (!qword_27CA1B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B140, &qword_2149949D0);
    sub_2148B4C20(&qword_27CA1B158, &qword_27CA1B160, &qword_2149949D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B150);
  }

  return result;
}

unint64_t sub_2148D8E24()
{
  result = qword_27CA1B178;
  if (!qword_27CA1B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B178);
  }

  return result;
}

uint64_t sub_2148D8E78(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2148D8EFC()
{
  result = qword_27CA1B188;
  if (!qword_27CA1B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B188);
  }

  return result;
}

uint64_t sub_2148D8F68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2148D8FB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_2148D5C08();
}

uint64_t sub_2148D8FBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_2148D58A4();
}

uint64_t sub_2148D9060(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D3A7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2148D91C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D3A7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2148D92C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D3A7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2148D9424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D503C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2148D9540()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_2148D4CBC();
}

uint64_t sub_2148D954C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D4538(a1, v4, v5, v6, v7, v8);
}

void sub_2148D9614()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_2148D3F88();
}

uint64_t sub_2148D9620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MALiftUISource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148D9684(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2148D9720(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D3A7C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2148D97E8()
{
  result = qword_27CA1B208;
  if (!qword_27CA1B208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B1E0, &qword_214994C48);
    sub_2148B4C20(&qword_27CA1B210, &qword_27CA1B1E8, &qword_214994C50);
    sub_2148D8648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B208);
  }

  return result;
}

uint64_t sub_2148D98A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_2148D2A0C();
}

uint64_t sub_2148D98D8(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_2148D98E8(a1, a2);
  }

  return a1;
}

uint64_t sub_2148D98E8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2148D9930(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_2148D9940()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_2148D1694();
}

uint64_t sub_2148D994C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_2148D1948();
}

uint64_t sub_2148D9958()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_2148D0C0C();
}

unint64_t sub_2148D9970()
{
  result = qword_27CA1B288;
  if (!qword_27CA1B288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B278, &qword_214994F08);
    sub_2148D99FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B288);
  }

  return result;
}

unint64_t sub_2148D99FC()
{
  result = qword_27CA1B290;
  if (!qword_27CA1B290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B298, &qword_214994F10);
    sub_2148B4C20(&qword_27CA1B2A0, &qword_27CA1B2A8, &qword_214994F18);
    sub_2148B4C20(&qword_27CA1B2B0, &qword_27CA1B2B8, &qword_214994F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B290);
  }

  return result;
}

uint64_t sub_2148D9AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a7)
  {
    sub_2148D9930(a4, a5, a6 & 1);
  }

  return result;
}

uint64_t sub_2148D9B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a7)
  {
    sub_2148C85D4(a4, a5, a6 & 1);
  }

  return result;
}

uint64_t sub_2148D9B88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_21498EE10();
  v6 = *v3;
  v5 = v3[1];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = MEMORY[0x277D84F90];
}

uint64_t sub_2148D9BE8(int a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148CFFE4(a1, v4, v5, v6, v7, v8, (v1 + 56));
}

unint64_t sub_2148D9CC8()
{
  result = qword_27CA1B300;
  if (!qword_27CA1B300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B2F0, &qword_214995068);
    sub_2148B4C20(&qword_27CA1B308, &qword_27CA1B310, &qword_214995070);
    sub_2148B4C20(&qword_27CA1B2B0, &qword_27CA1B2B8, &qword_214994F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B300);
  }

  return result;
}

unint64_t sub_2148D9DC4()
{
  result = qword_27CA1B328;
  if (!qword_27CA1B328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B320, &qword_214995080);
    sub_2148D9E7C();
    sub_2148B4C20(&qword_27CA1B2D0, &qword_27CA1B2C8, &qword_214994F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B328);
  }

  return result;
}

unint64_t sub_2148D9E7C()
{
  result = qword_27CA1B330;
  if (!qword_27CA1B330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B338, &qword_214995088);
    sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B330);
  }

  return result;
}

unint64_t sub_2148D9F2C()
{
  result = qword_27CA1B380;
  if (!qword_27CA1B380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B350, &qword_2149950C0);
    sub_2148B4C20(&qword_27CA1B388, &qword_27CA1B358, &qword_2149950C8);
    sub_2148D8648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B380);
  }

  return result;
}

uint64_t objectdestroy_172Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_214897F28();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2148DA05C()
{
  result = qword_27CA1B3A8;
  if (!qword_27CA1B3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B370, &qword_2149950E0);
    sub_2148B4C20(&qword_27CA1B3B0, &qword_27CA1B3B8, &qword_214995190);
    sub_2148B4C20(&qword_27CA1B2B0, &qword_27CA1B2B8, &qword_214994F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B3A8);
  }

  return result;
}

uint64_t sub_2148DA140()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_2148D2A0C();
}

double sub_2148DA170@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_2148CCD8C(v1[4], v1[5], a1);
}

uint64_t sub_2148DA17C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_2148DA198@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_2148CD3A0(*(v1 + 16), a1);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_214897F28();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_214897F28();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2148DA260(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148CB620(a1, v4, v5, v6, v7, v8);
}

double sub_2148DA328(_OWORD *a1)
{
  result = 0.0;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 361) = 0u;
  return result;
}

uint64_t sub_2148DA368(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214899138;

  return sub_214959C34(v6, a1, v4, v5, v7);
}

uint64_t sub_2148DA440()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DA554()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DA644()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DA734()
{
  sub_21498F900();
}

uint64_t sub_2148DA890()
{
  sub_21498F900();
}

uint64_t sub_2148DAA28()
{
  sub_21498F900();
}

uint64_t sub_2148DAB98()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DAC84()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DAD94()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DAEA4()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DAFC4()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DB0B0()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t static TapToRadarDraft.submitTapToRadar(title:problemDescription:deviceClasses:component:classification:reproducibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unsigned __int8 *a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>)
{
  v63 = a4;
  v64 = a5;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  v17 = *a6;
  v58 = a6[1];
  v59 = v17;
  v18 = a6[2];
  v57 = a6[3];
  v53 = a6[4];
  v54 = v18;
  LODWORD(v17) = *a7;
  v55 = *a8;
  v56 = v17;

  v52 = v16;
  sub_21498E310();
  v19 = sub_21498E320();
  v20 = *(*(v19 - 8) + 56);
  v20(v16, 0, 1, v19);
  *a9 = 0x4449656C646E7542;
  *(a9 + 8) = 0xE800000000000000;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 88) = 10;
  *(a9 + 64) = 0;
  strcpy((a9 + 72), "Classification");
  *(a9 + 87) = -18;
  *(a9 + 112) = 6;
  *(a9 + 96) = 0x6375646F72706552;
  *(a9 + 104) = 0xEF7974696C696269;
  *(a9 + 120) = 0x656C746954;
  *(a9 + 128) = 0xE500000000000000;
  *(a9 + 136) = 0;
  *(a9 + 144) = 0;
  *(a9 + 152) = 0x7470697263736544;
  *(a9 + 160) = 0xEB000000006E6F69;
  *(a9 + 168) = 0;
  *(a9 + 176) = 0;
  *(a9 + 184) = 0x7364726F7779654BLL;
  *(a9 + 192) = 0xE800000000000000;
  v21 = MEMORY[0x277D84F90];
  *(a9 + 200) = MEMORY[0x277D84F90];
  v22 = type metadata accessor for TapToRadarDraft();
  v23 = (a9 + v22[11]);
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA8, &unk_214993E28) + 36);
  v20(&v23[v51], 1, 1, v19);
  *v23 = 0x7349664F656D6954;
  *(v23 + 1) = 0xEB00000000657573;
  v24 = (a9 + v22[12]);
  v49 = v24;
  v50 = v23;
  *v24 = 0x656D686361747441;
  v24[1] = 0xEB0000000073746ELL;
  v24[2] = v21;
  v25 = (a9 + v22[13]);
  v48 = v25;
  *v25 = 0xD000000000000011;
  v25[1] = 0x80000002149A1680;
  v25[2] = v21;
  v26 = (a9 + v22[14]);
  v47 = v26;
  *v26 = 0xD000000000000014;
  v26[1] = 0x80000002149A16A0;
  v26[2] = v21;
  v27 = (a9 + v22[15]);
  v46 = v27;
  strcpy(v27, "DeleteOnAttach");
  v27[15] = -18;
  v27[16] = 0;
  v28 = (a9 + v22[16]);
  v45 = v28;
  *v28 = 0x4449656369766544;
  v28[1] = 0xE900000000000073;
  v28[2] = v21;
  v29 = a9 + v22[17];
  strcpy(v29, "DeviceClasses");
  *(v29 + 14) = -4864;
  *(v29 + 16) = v21;
  v30 = a9 + v22[18];
  strcpy(v30, "DeviceModels");
  *(v30 + 13) = 0;
  *(v30 + 14) = -5120;
  *(v30 + 16) = v21;
  v31 = (a9 + v22[19]);
  *v31 = 0xD000000000000016;
  v31[1] = 0x8000000214995230;
  v31[2] = 0;
  v32 = a9 + v22[20];
  *v32 = 0xD00000000000001ALL;
  *(v32 + 8) = 0x80000002149A16E0;
  *(v32 + 16) = 0;
  v33 = a9 + v22[21];
  *(v33 + 16) = 0;
  *v33 = 0x676169446F747541;
  *(v33 + 8) = 0xEF73636974736F6ELL;
  v34 = (a9 + v22[22]);
  *v34 = 0xD00000000000001BLL;
  v34[1] = 0x80000002149A1700;
  v34[2] = v21;
  v35 = (a9 + v22[23]);
  *v35 = 0xD000000000000018;
  v35[1] = 0x80000002149A1720;
  v35[2] = 0;
  v35[3] = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  v36 = *(a9 + 56);
  v37 = *(a9 + 64);
  sub_2148BC644(*(a9 + 32), *(a9 + 40), *(a9 + 48));
  v38 = v58;
  *(a9 + 32) = v59;
  *(a9 + 40) = v38;
  v39 = v57;
  *(a9 + 48) = v54;
  *(a9 + 56) = v39;
  *(a9 + 64) = v53;
  LOBYTE(v39) = v55;
  *(a9 + 88) = v56;
  *(a9 + 112) = v39;
  v40 = v61;
  *(a9 + 136) = v60;
  *(a9 + 144) = v40;
  v41 = v63;
  *(a9 + 168) = v62;
  *(a9 + 176) = v41;
  *(a9 + 200) = v21;

  sub_2148BC688(v52, &v50[v51]);
  v42 = v48;
  v49[2] = v21;
  v42[2] = v21;
  v43 = v46;
  v47[2] = v21;
  v43[16] = 0;
  v45[2] = v21;
  *(v29 + 16) = v64;
  *(v30 + 16) = v21;
  v31[2] = 32;
  *(v32 + 16) = 1;
  *(v33 + 16) = 0;
  v34[2] = v21;
  v35[2] = 0;
  v35[3] = 0;
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_27CA1B418;
  if (!qword_27CA1B418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TapToRadarDraft.open()()
{
  v1[18] = v0;
  v2 = sub_21498E1B0();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2148DB814, 0, 0);
}

uint64_t sub_2148DB814()
{
  v1 = v0[18];
  sub_2148DBCA4(v0[21]);
  v0[22] = objc_opt_self();
  sub_21498FAB0();
  v0[23] = sub_21498FAA0();
  v3 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148DB914, v3, v2);
}

uint64_t sub_2148DB914()
{
  v2 = v0[22];
  v1 = v0[23];

  v0[24] = [v2 sharedApplication];

  return MEMORY[0x2822009F8](sub_2148DB998, 0, 0);
}

uint64_t sub_2148DB998()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = sub_21498E140();
  v0[25] = v3;
  sub_2148E0E38(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2148E0F60();
  v4 = sub_21498F7D0();
  v0[26] = v4;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_2148DBB28;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B3D8, &qword_214995270);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2148DE700;
  v0[13] = &block_descriptor_0;
  v0[14] = v5;
  [v1 openURL:v3 options:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2148DBB28()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2148DBC08, 0, 0);
}

uint64_t sub_2148DBC08()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2148DBCA4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_21498E030();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21498E020();
  sub_21498E010();
  MEMORY[0x216057080](7824750, 0xE300000000000000);
  sub_2148DBEF4();
  sub_21498DFC0();
  sub_21498DFE0();
  v11 = sub_21498E1B0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_21489DFCC(v5, &qword_27CA1A348, &qword_214991700);
    sub_2148E11E4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }
}

char *sub_2148DBEF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5C0, qword_214995B18);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v388 = &v353 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v387 = &v353 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v384 = &v353 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v381 = &v353 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v353 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v376 = &v353 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v375 = &v353 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v374 = &v353 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v409 = (&v353 - v21);
  MEMORY[0x28223BE20](v20);
  v23 = &v353 - v22;
  v24 = sub_21498DFB0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v369 = &v353 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v368 = &v353 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v406 = &v353 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v367 = &v353 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v405 = &v353 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v386 = &v353 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v385 = &v353 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v383 = &v353 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v382 = &v353 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v404 = &v353 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v366 = &v353 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v403 = &v353 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v402 = &v353 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v365 = &v353 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v401 = &v353 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v400 = &v353 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v364 = &v353 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v399 = &v353 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v398 = &v353 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v363 = &v353 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v397 = &v353 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v380 = &v353 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v379 = &v353 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v396 = &v353 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v362 = &v353 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v395 = &v353 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v394 = &v353 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v361 = &v353 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v393 = &v353 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v392 = &v353 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v360 = &v353 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v391 = &v353 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v378 = &v353 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v377 = &v353 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v390 = &v353 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v359 = &v353 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v389 = &v353 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v358 = &v353 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v357 = &v353 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v356 = &v353 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v355 = &v353 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v373 = &v353 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v372 = &v353 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v371 = &v353 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v370 = &v353 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v119 = &v353 - v118;
  MEMORY[0x28223BE20](v117);
  v121 = &v353 - v120;
  v415 = MEMORY[0x277D84F90];
  v122 = v0[3];
  v410 = v25;
  v407 = v0;
  if (!v122)
  {
    v408 = *(v25 + 56);
    v408(v23, 1, 1, v24);
LABEL_5:
    sub_21489DFCC(v23, &qword_27CA1B5C0, qword_214995B18);
    v126 = v407;
    v127 = v409;
    v128 = v407[6];
    if (!v128)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v354 = v13;
  v123 = v0[1];
  v124 = v0[2];
  v125 = *v0;

  sub_21498DFA0();
  v408 = *(v25 + 56);
  v408(v23, 0, 1, v24);

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v13 = v354;
    goto LABEL_5;
  }

  v168 = *(v25 + 32);
  v168(v121, v23, v24);
  (*(v25 + 16))(v119, v121, v24);
  v169 = sub_2148A95DC(0, 1, 1, MEMORY[0x277D84F90]);
  v171 = v169[2];
  v170 = v169[3];
  if (v171 >= v170 >> 1)
  {
    v169 = sub_2148A95DC(v170 > 1, v171 + 1, 1, v169);
  }

  v127 = v409;
  v172 = v410 + 8;
  (*(v410 + 8))(v121, v24);
  v169[2] = v171 + 1;
  v173 = v169 + ((*(v172 + 72) + 32) & ~*(v172 + 72));
  v174 = *(v172 + 64);
  v25 = v410;
  v168(&v173[v174 * v171], v119, v24);
  v415 = v169;
  v126 = v407;
  v13 = v354;
  v128 = v407[6];
  if (v128)
  {
LABEL_6:
    v130 = v126[7];
    v129 = v126[8];
    v411 = *(v126 + 2);
    v412 = v128;
    v413 = v130;
    v414 = v129;
    v131 = sub_2148DE75C();
    sub_2148A8B0C(v131);
  }

LABEL_7:
  v132 = v126[9];
  v133 = v126[10];
  v134 = *(v126 + 88);

  sub_2148DFD6C(v134, v127);

  v409 = *(v25 + 48);
  if (v409(v127, 1, v24) == 1)
  {
    sub_21489DFCC(v127, &qword_27CA1B5C0, qword_214995B18);
  }

  else
  {
    v135 = *(v25 + 32);
    v136 = v370;
    v135(v370, v127, v24);
    (*(v25 + 16))(v371, v136, v24);
    v137 = v415;
    v138 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = sub_2148A95DC(0, *(v137 + 2) + 1, 1, v137);
    }

    v140 = *(v137 + 2);
    v139 = *(v137 + 3);
    if (v140 >= v139 >> 1)
    {
      v137 = sub_2148A95DC(v139 > 1, v140 + 1, 1, v137);
    }

    (*(v25 + 8))(v370, v24);
    *(v137 + 2) = v140 + 1;
    v135(&v137[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v140], v371, v24);
    v415 = v137;
    v13 = v138;
  }

  v141 = v126[12];
  v142 = v126[13];
  v143 = *(v126 + 112);

  v144 = v374;
  sub_2148DFF60(v143, v374);

  if (v409(v144, 1, v24) == 1)
  {
    sub_21489DFCC(v144, &qword_27CA1B5C0, qword_214995B18);
    if (v126[18])
    {
      goto LABEL_16;
    }

LABEL_28:
    v149 = v410;
    v148 = v375;
    v408(v375, 1, 1, v24);
    goto LABEL_29;
  }

  v159 = v410;
  v160 = *(v410 + 32);
  v161 = v372;
  v160(v372, v144, v24);
  (*(v159 + 16))(v373, v161, v24);
  v162 = v415;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v162 = sub_2148A95DC(0, *(v162 + 2) + 1, 1, v162);
  }

  v164 = *(v162 + 2);
  v163 = *(v162 + 3);
  if (v164 >= v163 >> 1)
  {
    v162 = sub_2148A95DC(v163 > 1, v164 + 1, 1, v162);
  }

  (*(v159 + 8))(v372, v24);
  *(v162 + 2) = v164 + 1;
  v160(&v162[((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v164], v373, v24);
  v415 = v162;
  if (!v126[18])
  {
    goto LABEL_28;
  }

LABEL_16:
  v146 = v126[16];
  v145 = v126[17];
  v147 = v126[15];

  v148 = v375;
  sub_21498DFA0();
  v149 = v410;
  v408(v148, 0, 1, v24);

  if (v409(v148, 1, v24) != 1)
  {
    v150 = *(v149 + 32);
    v151 = v355;
    v150(v355, v148, v24);
    (*(v149 + 16))(v356, v151, v24);
    v152 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = sub_2148A95DC(0, v152[2] + 1, 1, v152);
    }

    v154 = v152[2];
    v153 = v152[3];
    if (v154 >= v153 >> 1)
    {
      v152 = sub_2148A95DC(v153 > 1, v154 + 1, 1, v152);
    }

    v155 = v410 + 8;
    (*(v410 + 8))(v355, v24);
    v152[2] = v154 + 1;
    v156 = v152 + ((*(v155 + 72) + 32) & ~*(v155 + 72));
    v157 = *(v155 + 64);
    v149 = v410;
    v150(&v156[v157 * v154], v356, v24);
    v415 = v152;
    if (!v126[22])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_21489DFCC(v148, &qword_27CA1B5C0, qword_214995B18);
  if (!v126[22])
  {
LABEL_22:
    v158 = v376;
    v408(v376, 1, 1, v24);
LABEL_31:
    sub_21489DFCC(v158, &qword_27CA1B5C0, qword_214995B18);
    goto LABEL_41;
  }

LABEL_30:
  v166 = v126[20];
  v165 = v126[21];
  v167 = v126[19];

  v158 = v376;
  sub_21498DFA0();
  v408(v158, 0, 1, v24);

  if (v409(v158, 1, v24) == 1)
  {
    goto LABEL_31;
  }

  v175 = *(v149 + 32);
  v176 = v357;
  v175(v357, v158, v24);
  (*(v149 + 16))(v358, v176, v24);
  v177 = v415;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v177 = sub_2148A95DC(0, *(v177 + 2) + 1, 1, v177);
  }

  v179 = *(v177 + 2);
  v178 = *(v177 + 3);
  if (v179 >= v178 >> 1)
  {
    v177 = sub_2148A95DC(v178 > 1, v179 + 1, 1, v177);
  }

  (*(v149 + 8))(v357, v24);
  *(v177 + 2) = v179 + 1;
  v175(&v177[((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v179], v358, v24);
  v415 = v177;
LABEL_41:
  v181 = v126[23];
  v180 = v126[24];
  v182 = v126[25];

  sub_2148E0888(v183);
  if (v184)
  {
    v185 = v359;
    sub_21498DFA0();

    v186 = v410;
    v187 = *(v410 + 32);
    v188 = v389;
    v187(v389, v185, v24);
    (*(v186 + 16))(v390, v188, v24);
    v189 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v189 = sub_2148A95DC(0, *(v189 + 2) + 1, 1, v189);
    }

    v191 = *(v189 + 2);
    v190 = *(v189 + 3);
    if (v191 >= v190 >> 1)
    {
      v189 = sub_2148A95DC(v190 > 1, v191 + 1, 1, v189);
    }

    (*(v186 + 8))(v389, v24);
    *(v189 + 2) = v191 + 1;
    v187(&v189[((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v191], v390, v24);
    v415 = v189;
  }

  else
  {
  }

  v192 = type metadata accessor for TapToRadarDraft();
  v193 = v126 + v192[11];
  sub_2148E00B8(v13);
  if (v409(v13, 1, v24) == 1)
  {
    sub_21489DFCC(v13, &qword_27CA1B5C0, qword_214995B18);
  }

  else
  {
    v194 = v410;
    v195 = *(v410 + 32);
    v196 = v377;
    v195(v377, v13, v24);
    (*(v194 + 16))(v378, v196, v24);
    v197 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v197 = sub_2148A95DC(0, *(v197 + 2) + 1, 1, v197);
    }

    v199 = *(v197 + 2);
    v198 = *(v197 + 3);
    if (v199 >= v198 >> 1)
    {
      v197 = sub_2148A95DC(v198 > 1, v199 + 1, 1, v197);
    }

    (*(v194 + 8))(v377, v24);
    *(v197 + 2) = v199 + 1;
    v195(&v197[((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v199], v378, v24);
    v415 = v197;
  }

  v200 = (v126 + v192[12]);
  v202 = *v200;
  v201 = v200[1];
  v203 = v200[2];

  sub_2148E0674(v204);
  if (v205)
  {
    v206 = v360;
    sub_21498DFA0();

    v207 = v410;
    v208 = *(v410 + 32);
    v209 = v391;
    v208(v391, v206, v24);
    (*(v207 + 16))(v392, v209, v24);
    v210 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v210 = sub_2148A95DC(0, *(v210 + 2) + 1, 1, v210);
    }

    v212 = *(v210 + 2);
    v211 = *(v210 + 3);
    if (v212 >= v211 >> 1)
    {
      v210 = sub_2148A95DC(v211 > 1, v212 + 1, 1, v210);
    }

    (*(v207 + 8))(v391, v24);
    *(v210 + 2) = v212 + 1;
    v208(&v210[((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v212], v392, v24);
    v415 = v210;
  }

  else
  {
  }

  v213 = (v126 + v192[13]);
  v215 = *v213;
  v214 = v213[1];
  v216 = v213[2];

  sub_2148E0674(v217);
  if (v218)
  {
    v219 = v361;
    sub_21498DFA0();

    v220 = v410;
    v221 = *(v410 + 32);
    v222 = v393;
    v221(v393, v219, v24);
    (*(v220 + 16))(v394, v222, v24);
    v223 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v223 = sub_2148A95DC(0, *(v223 + 2) + 1, 1, v223);
    }

    v225 = *(v223 + 2);
    v224 = *(v223 + 3);
    if (v225 >= v224 >> 1)
    {
      v223 = sub_2148A95DC(v224 > 1, v225 + 1, 1, v223);
    }

    (*(v220 + 8))(v393, v24);
    *(v223 + 2) = v225 + 1;
    v221(&v223[((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v225], v394, v24);
    v415 = v223;
  }

  else
  {
  }

  v226 = (v126 + v192[14]);
  v228 = *v226;
  v227 = v226[1];
  v229 = v226[2];

  sub_2148E0544(v230);
  if (v231)
  {
    v232 = v362;
    sub_21498DFA0();

    v233 = v410;
    v234 = *(v410 + 32);
    v235 = v395;
    v234(v395, v232, v24);
    (*(v233 + 16))(v396, v235, v24);
    v236 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v236 = sub_2148A95DC(0, v236[2] + 1, 1, v236);
    }

    v238 = v236[2];
    v237 = v236[3];
    if (v238 >= v237 >> 1)
    {
      v236 = sub_2148A95DC(v237 > 1, v238 + 1, 1, v236);
    }

    v239 = v410 + 8;
    (*(v410 + 8))(v395, v24);
    v236[2] = v238 + 1;
    v240 = v236 + ((*(v239 + 72) + 32) & ~*(v239 + 72));
    v241 = *(v239 + 64);
    v242 = v410;
    v234(&v240[v241 * v238], v396, v24);
    v415 = v236;
  }

  else
  {

    v242 = v410;
  }

  v243 = (v126 + v192[15]);
  v244 = *v243;
  v245 = v243[1];
  *(v243 + 16);

  v246 = v381;
  sub_21498DFA0();

  v408(v246, 0, 1, v24);

  if (v409(v246, 1, v24) == 1)
  {
    sub_21489DFCC(v246, &qword_27CA1B5C0, qword_214995B18);
  }

  else
  {
    v247 = *(v242 + 32);
    v248 = v379;
    v247(v379, v246, v24);
    (*(v242 + 16))(v380, v248, v24);
    v249 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v249 = sub_2148A95DC(0, *(v249 + 2) + 1, 1, v249);
    }

    v251 = *(v249 + 2);
    v250 = *(v249 + 3);
    if (v251 >= v250 >> 1)
    {
      v249 = sub_2148A95DC(v250 > 1, v251 + 1, 1, v249);
    }

    (*(v242 + 8))(v379, v24);
    *(v249 + 2) = v251 + 1;
    v247(&v249[((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v251], v380, v24);
    v415 = v249;
    v126 = v407;
  }

  v252 = (v126 + v192[16]);
  v254 = *v252;
  v253 = v252[1];
  v255 = v252[2];

  sub_2148E0544(v256);
  if (v257)
  {
    v258 = v363;
    sub_21498DFA0();

    v259 = v410;
    v260 = *(v410 + 32);
    v261 = v397;
    v260(v397, v258, v24);
    (*(v259 + 16))(v398, v261, v24);
    v262 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v262 = sub_2148A95DC(0, *(v262 + 2) + 1, 1, v262);
    }

    v264 = *(v262 + 2);
    v263 = *(v262 + 3);
    if (v264 >= v263 >> 1)
    {
      v262 = sub_2148A95DC(v263 > 1, v264 + 1, 1, v262);
    }

    (*(v259 + 8))(v397, v24);
    *(v262 + 2) = v264 + 1;
    v260(&v262[((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v264], v398, v24);
    v415 = v262;
    v126 = v407;
  }

  else
  {
  }

  v265 = (v126 + v192[17]);
  v267 = *v265;
  v266 = v265[1];
  v268 = v265[2];

  sub_2148E0384(v269);
  if (v270)
  {
    v271 = v364;
    sub_21498DFA0();

    v272 = v410;
    v273 = *(v410 + 32);
    v274 = v399;
    v273(v399, v271, v24);
    (*(v272 + 16))(v400, v274, v24);
    v275 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v275 = sub_2148A95DC(0, *(v275 + 2) + 1, 1, v275);
    }

    v277 = *(v275 + 2);
    v276 = *(v275 + 3);
    if (v277 >= v276 >> 1)
    {
      v275 = sub_2148A95DC(v276 > 1, v277 + 1, 1, v275);
    }

    (*(v272 + 8))(v399, v24);
    *(v275 + 2) = v277 + 1;
    v273(&v275[((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v277], v400, v24);
    v415 = v275;
    v126 = v407;
  }

  else
  {
  }

  v278 = (v126 + v192[18]);
  v280 = *v278;
  v279 = v278[1];
  v281 = v278[2];

  sub_2148E0544(v282);
  if (v283)
  {
    v284 = v365;
    sub_21498DFA0();

    v285 = v410;
    v286 = *(v410 + 32);
    v287 = v401;
    v286(v401, v284, v24);
    (*(v285 + 16))(v402, v287, v24);
    v288 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v288 = sub_2148A95DC(0, *(v288 + 2) + 1, 1, v288);
    }

    v290 = *(v288 + 2);
    v289 = *(v288 + 3);
    if (v290 >= v289 >> 1)
    {
      v288 = sub_2148A95DC(v289 > 1, v290 + 1, 1, v288);
    }

    (*(v285 + 8))(v401, v24);
    *(v288 + 2) = v290 + 1;
    v286(&v288[((*(v285 + 80) + 32) & ~*(v285 + 80)) + *(v285 + 72) * v290], v402, v24);
    v415 = v288;
    v126 = v407;
  }

  else
  {
  }

  v291 = (v126 + v192[19]);
  v293 = *v291;
  v292 = v291[1];
  v294 = v291[2];

  sub_2148DF500(v294);
  if (v295)
  {
    v296 = v366;
    sub_21498DFA0();

    v297 = v410;
    v298 = *(v410 + 32);
    v299 = v403;
    v298(v403, v296, v24);
    (*(v297 + 16))(v404, v299, v24);
    v300 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v300 = sub_2148A95DC(0, *(v300 + 2) + 1, 1, v300);
    }

    v302 = *(v300 + 2);
    v301 = *(v300 + 3);
    if (v302 >= v301 >> 1)
    {
      v300 = sub_2148A95DC(v301 > 1, v302 + 1, 1, v300);
    }

    (*(v297 + 8))(v403, v24);
    *(v300 + 2) = v302 + 1;
    v298(&v300[((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v302], v404, v24);
    v415 = v300;
    v126 = v407;
  }

  else
  {
  }

  v303 = (v126 + v192[20]);
  v304 = *v303;
  v305 = v303[1];
  *(v303 + 16);

  v306 = v384;
  sub_21498DFA0();

  v408(v306, 0, 1, v24);

  if (v409(v306, 1, v24) == 1)
  {
    sub_21489DFCC(v306, &qword_27CA1B5C0, qword_214995B18);
  }

  else
  {
    v307 = v410;
    v308 = *(v410 + 32);
    v309 = v382;
    v308(v382, v306, v24);
    (*(v307 + 16))(v383, v309, v24);
    v310 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v310 = sub_2148A95DC(0, *(v310 + 2) + 1, 1, v310);
    }

    v312 = *(v310 + 2);
    v311 = *(v310 + 3);
    if (v312 >= v311 >> 1)
    {
      v310 = sub_2148A95DC(v311 > 1, v312 + 1, 1, v310);
    }

    (*(v307 + 8))(v382, v24);
    *(v310 + 2) = v312 + 1;
    v308(&v310[((*(v307 + 80) + 32) & ~*(v307 + 80)) + *(v307 + 72) * v312], v383, v24);
    v415 = v310;
    v126 = v407;
  }

  v313 = v387;
  v314 = (v126 + v192[21]);
  v316 = *v314;
  v315 = v314[1];
  LOBYTE(v314) = *(v314 + 16);
  *&v411 = v316;
  *(&v411 + 1) = v315;
  LOBYTE(v412) = v314;

  sub_2148DF768();
  if (v317)
  {
    sub_21498DFA0();

    v318 = 0;
  }

  else
  {

    v318 = 1;
  }

  v319 = v410;
  v408(v313, v318, 1, v24);
  if (v409(v313, 1, v24) == 1)
  {
    sub_21489DFCC(v313, &qword_27CA1B5C0, qword_214995B18);
  }

  else
  {
    v320 = v313;
    v321 = *(v319 + 32);
    v322 = v385;
    v321(v385, v320, v24);
    (*(v319 + 16))(v386, v322, v24);
    v323 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v323 = sub_2148A95DC(0, *(v323 + 2) + 1, 1, v323);
    }

    v325 = *(v323 + 2);
    v324 = *(v323 + 3);
    if (v325 >= v324 >> 1)
    {
      v323 = sub_2148A95DC(v324 > 1, v325 + 1, 1, v323);
    }

    (*(v319 + 8))(v385, v24);
    *(v323 + 2) = v325 + 1;
    v321(&v323[((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v325], v386, v24);
    v415 = v323;
    v126 = v407;
  }

  v326 = (v126 + v192[22]);
  v328 = *v326;
  v327 = v326[1];
  v329 = v326[2];

  sub_2148E0544(v330);
  if (v331)
  {
    v332 = v367;
    sub_21498DFA0();

    v333 = v410;
    v334 = *(v410 + 32);
    v335 = v405;
    v334(v405, v332, v24);
    (*(v333 + 16))(v406, v335, v24);
    v336 = v415;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v336 = sub_2148A95DC(0, *(v336 + 2) + 1, 1, v336);
    }

    v338 = *(v336 + 2);
    v337 = *(v336 + 3);
    if (v338 >= v337 >> 1)
    {
      v336 = sub_2148A95DC(v337 > 1, v338 + 1, 1, v336);
    }

    (*(v333 + 8))(v405, v24);
    *(v336 + 2) = v338 + 1;
    v334(&v336[((*(v333 + 80) + 32) & ~*(v333 + 80)) + *(v333 + 72) * v338], v406, v24);
    v415 = v336;
    v126 = v407;
  }

  else
  {
  }

  v339 = (v126 + v192[23]);
  v340 = v388;
  if (!v339[3])
  {
    v408(v388, 1, 1, v24);
    goto LABEL_143;
  }

  v342 = v339[1];
  v341 = v339[2];
  v343 = *v339;
  v344 = v339[3];

  sub_21498DFA0();
  v408(v340, 0, 1, v24);

  if (v409(v340, 1, v24) == 1)
  {
LABEL_143:
    sub_21489DFCC(v340, &qword_27CA1B5C0, qword_214995B18);
    return v415;
  }

  v345 = *(v410 + 32);
  v346 = v368;
  v347 = v340;
  v348 = v410;
  v345(v368, v347, v24);
  (*(v348 + 16))(v369, v346, v24);
  v349 = v415;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v349 = sub_2148A95DC(0, *(v349 + 2) + 1, 1, v349);
  }

  v351 = *(v349 + 2);
  v350 = *(v349 + 3);
  if (v351 >= v350 >> 1)
  {
    v349 = sub_2148A95DC(v350 > 1, v351 + 1, 1, v349);
  }

  (*(v348 + 8))(v368, v24);
  *(v349 + 2) = v351 + 1;
  v345(&v349[((*(v348 + 80) + 32) & ~*(v348 + 80)) + *(v348 + 72) * v351], v369, v24);
  return v349;
}