uint64_t sub_2758FE7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2758FE838()
{
  result = qword_280A109F0;
  if (!qword_280A109F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A109F0);
  }

  return result;
}

uint64_t sub_2758FE88C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2758FE8E8()
{
  result = qword_280A109F8;
  if (!qword_280A109F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A109F8);
  }

  return result;
}

unint64_t sub_2758FE940()
{
  result = qword_280A10A00;
  if (!qword_280A10A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10A00);
  }

  return result;
}

unint64_t sub_2758FE998()
{
  result = qword_280A10A08;
  if (!qword_280A10A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10A08);
  }

  return result;
}

uint64_t sub_2758FE9EC()
{
  v0 = sub_2759BAA48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for BackupSection()
{
  result = qword_280A10A10;
  if (!qword_280A10A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758FEACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586BDE8();
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor);
}

uint64_t sub_2758FEB50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_27587AAE4(v4);
}

uint64_t sub_2758FEBBC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_27586BDE8();
  sub_2759B8638();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_2758FEC60(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_2758FECA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2759B93D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_27586FBC8(v2, &v17 - v11, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B94D8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2758FEEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2759B94F8();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A30, &qword_2759C7BB8);
  return sub_2758FEF00(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_2758FEF00@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for BackupSection();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A38, &qword_2759C7BC0);
  v49 = *(v52 - 8);
  v7 = *(v49 + 64);
  v8 = MEMORY[0x28223BE20](v52);
  v50 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v47[-v10];
  sub_2759011E4(a1, &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_275901248(&v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A40, &qword_2759C7BC8);
  sub_275901314();
  v14 = v11;
  sub_2759B9DB8();
  v15 = (a1 + *(v4 + 28));
  v17 = *v15;
  v16 = v15[1];
  v55 = v17;
  v56 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v18 = v54;
  swift_getKeyPath();
  v55 = v18;
  sub_27586BDE8();
  sub_2759B8638();

  v20 = *&v18[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupSubtitle];
  v19 = *&v18[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupSubtitle + 8];

  v55 = v20;
  v56 = v19;
  sub_27589F2D4();
  v21 = sub_2759B99C8();
  v23 = v22;
  v25 = v24;
  sub_2759B9848();
  v26 = sub_2759B9988();
  v28 = v27;
  v30 = v29;

  sub_27589F328(v21, v23, v25 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v55 = qword_280A239C0;

  v31 = sub_2759B9958();
  v33 = v32;
  v48 = v34;
  v36 = v35;
  sub_27589F328(v26, v28, v30 & 1);

  v37 = v49;
  v38 = v50;
  v39 = *(v49 + 16);
  v40 = v52;
  v39(v50, v14, v52);
  v41 = v51;
  v39(v51, v38, v40);
  v42 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A70, &qword_2759C7C08) + 48)];
  *v42 = v31;
  *(v42 + 1) = v33;
  v43 = v48;
  v44 = v48 & 1;
  v42[16] = v48 & 1;
  *(v42 + 3) = v36;
  sub_27589F3E4(v31, v33, v43 & 1);
  v45 = *(v37 + 8);

  v45(v14, v40);
  sub_27589F328(v31, v33, v44);

  return (v45)(v38, v40);
}

void sub_2758FF378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = (a1 + *(type metadata accessor for BackupSection() + 20));
  v8 = v6[1];
  v17 = *v6;
  v7 = v17;
  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v9 = v16;
  v10 = *&v16[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController];

  sub_2759BA4D8();
  v11 = sub_2759BA518();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v12;
  *(v13 + 40) = xmmword_2759C43F0;
  *(v13 + 56) = 266;
  *(v13 + 58) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 80) = xmmword_2759C7B30;
  *(v13 + 96) = 10;
  sub_275931D20(0, 0, v5, &unk_2759C4530, v13);

  sub_27586BF04(v5, &unk_280A0E510, &qword_2759C33C0);
  v17 = v7;
  v18 = v8;
  sub_2759B9D68();
  v14 = v16;
  [v16 showBackupViewWithResourceDictionary_];
}

uint64_t sub_2758FF59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A68, &qword_2759C7BD8);
  v3 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v28 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A78, &qword_2759C7C10);
  v6 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v28 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A58, &qword_2759C7BD0);
  v9 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v28 - v10;
  v12 = sub_2759B94D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  sub_2758FECA8(&v28 - v18);
  (*(v13 + 104))(v17, *MEMORY[0x277CE0280], v12);
  v20 = sub_2758B2220(v19, v17);
  v21 = *(v13 + 8);
  v21(v17, v12);
  v21(v19, v12);
  if (v20)
  {
    *v11 = sub_2759B94E8();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A88, &qword_2759C7C20);
    sub_275900434(a1, &v11[*(v22 + 44)]);
    v23 = &qword_280A10A58;
    v24 = &qword_2759C7BD0;
    sub_27586FBC8(v11, v8, &qword_280A10A58, &qword_2759C7BD0);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A10A50, &qword_280A10A58, &qword_2759C7BD0);
    sub_27589B02C(&qword_280A10A60, &qword_280A10A68, &qword_2759C7BD8);
    sub_2759B95E8();
    v25 = v11;
  }

  else
  {
    *v5 = sub_2759B9418();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A80, &qword_2759C7C18);
    sub_2758FF9C0(a1, &v5[*(v26 + 44)]);
    v23 = &qword_280A10A68;
    v24 = &qword_2759C7BD8;
    sub_27586FBC8(v5, v8, &qword_280A10A68, &qword_2759C7BD8);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A10A50, &qword_280A10A58, &qword_2759C7BD0);
    sub_27589B02C(&qword_280A10A60, &qword_280A10A68, &qword_2759C7BD8);
    sub_2759B95E8();
    v25 = v5;
  }

  return sub_27586BF04(v25, v23, v24);
}

uint64_t sub_2758FF9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = *(*(v99 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v99);
  v105 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v100 = (v96 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v103 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v102 = v96 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v108 = v96 - v14;
  MEMORY[0x28223BE20](v13);
  v107 = v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AD8, &qword_2759C7D18);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v101 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v96 - v20;
  sub_2759BA028();
  sub_2759B8F18();
  v22 = v117;
  v23 = v118;
  v24 = v119;
  v25 = v120;
  v27 = v121;
  v26 = v122;
  v28 = (a1 + *(type metadata accessor for BackupSection() + 20));
  v30 = *v28;
  v29 = v28[1];
  v98 = v30;
  v109 = v30;
  v110 = v29;
  v97 = v29;
  v96[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v31 = v116;
  swift_getKeyPath();
  v109 = v31;
  v96[1] = sub_27586BDE8();
  sub_2759B8638();

  v32 = *&v31[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor];

  v109 = v22;
  LOBYTE(v110) = v23;
  v111 = v24;
  LOBYTE(v112) = v25;
  v113 = v27;
  v114 = v26;
  v115 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AE0, &qword_2759C7D48);
  sub_2759015DC();
  v106 = v21;
  sub_2759B9B38();

  sub_2759B9498();
  type metadata accessor for iCloudHomeDataModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass_];
  v35 = sub_2759B9998();
  v37 = v36;
  LOBYTE(v26) = v38;
  sub_2759B9858();
  v39 = sub_2759B9988();
  v41 = v40;
  v43 = v42;

  sub_27589F328(v35, v37, v26 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v109 = qword_280A239B8;

  v44 = sub_2759B9958();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_27589F328(v39, v41, v43 & 1);

  v109 = v44;
  v110 = v46;
  LOBYTE(v111) = v48 & 1;
  v112 = v50;
  sub_2759B9B38();
  sub_27589F328(v44, v46, v48 & 1);

  v109 = v98;
  v110 = v97;
  sub_2759B9D68();
  v51 = v116;
  swift_getKeyPath();
  v109 = v51;
  sub_2759B8638();

  v53 = *&v51[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupDetailLabel];
  v52 = *&v51[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupDetailLabel + 8];

  v109 = v53;
  v110 = v52;
  sub_27589F2D4();
  v54 = sub_2759B99C8();
  v56 = v55;
  v58 = v57;
  sub_2759B9858();
  v59 = sub_2759B9988();
  v61 = v60;
  v63 = v62;

  sub_27589F328(v54, v56, v58 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v109 = qword_280A239C0;

  v64 = sub_2759B9958();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_27589F328(v59, v61, v63 & 1);

  v109 = v64;
  v110 = v66;
  LOBYTE(v111) = v68 & 1;
  v112 = v70;
  v71 = v108;
  sub_2759B9B38();
  sub_27589F328(v64, v66, v68 & 1);

  v72 = sub_2759B9CB8();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78);
  v74 = v100;
  v75 = (v100 + *(v73 + 36));
  v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v77 = *MEMORY[0x277CE1050];
  v78 = sub_2759B9D18();
  (*(*(v78 - 8) + 104))(v75 + v76, v77, v78);
  *v75 = swift_getKeyPath();
  *v74 = v72;
  v79 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v81 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v81 = KeyPath;
  v81[1] = v79;
  v82 = [objc_opt_self() tertiaryLabelColor];
  v83 = sub_2759B9BD8();
  v84 = swift_getKeyPath();
  v85 = (v74 + *(v99 + 36));
  *v85 = v84;
  v85[1] = v83;
  v86 = v101;
  sub_27586FBC8(v106, v101, &qword_280A10AD8, &qword_2759C7D18);
  v87 = v107;
  v88 = v102;
  sub_27586FBC8(v107, v102, &qword_280A0F600, &qword_2759C4210);
  v89 = v71;
  v90 = v103;
  sub_27586FBC8(v89, v103, &qword_280A0F600, &qword_2759C4210);
  v91 = v105;
  sub_27586FBC8(v74, v105, &qword_280A10AB8, &qword_2759C7C48);
  v92 = v104;
  sub_27586FBC8(v86, v104, &qword_280A10AD8, &qword_2759C7D18);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B10, &qword_2759C7D60);
  sub_27586FBC8(v88, v92 + v93[12], &qword_280A0F600, &qword_2759C4210);
  v94 = v92 + v93[16];
  *v94 = 0x4024000000000000;
  *(v94 + 8) = 0;
  sub_27586FBC8(v90, v92 + v93[20], &qword_280A0F600, &qword_2759C4210);
  sub_27586FBC8(v91, v92 + v93[24], &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v74, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v108, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v87, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v106, &qword_280A10AD8, &qword_2759C7D18);
  sub_27586BF04(v91, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v90, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v88, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v86, &qword_280A10AD8, &qword_2759C7D18);
}

uint64_t sub_275900434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A90, &qword_2759CABF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A98, &qword_2759C7C28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  *v17 = sub_2759B9418();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AA0, &qword_2759C7C30);
  sub_27590067C(a1, &v17[*(v18 + 44)]);
  *v10 = sub_2759B9418();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AA8, &qword_2759C7C38);
  sub_275900BD4(a1, &v10[*(v19 + 44)]);
  sub_27586FBC8(v17, v15, &qword_280A10A98, &qword_2759C7C28);
  sub_27586FBC8(v10, v8, &qword_280A10A90, &qword_2759CABF0);
  sub_27586FBC8(v15, a2, &qword_280A10A98, &qword_2759C7C28);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB0, &qword_2759C7C40);
  sub_27586FBC8(v8, a2 + *(v20 + 48), &qword_280A10A90, &qword_2759CABF0);
  sub_27586BF04(v10, &qword_280A10A90, &qword_2759CABF0);
  sub_27586BF04(v17, &qword_280A10A98, &qword_2759C7C28);
  sub_27586BF04(v8, &qword_280A10A90, &qword_2759CABF0);
  return sub_27586BF04(v15, &qword_280A10A98, &qword_2759C7C28);
}

uint64_t sub_27590067C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AD8, &qword_2759C7D18);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  sub_2759BA028();
  sub_2759B8F18();
  v14 = v64;
  v15 = v65;
  v16 = v66;
  v17 = v67;
  v18 = v68;
  v19 = v69;
  v20 = (a1 + *(type metadata accessor for BackupSection() + 20));
  v22 = *v20;
  v21 = v20[1];
  v56 = v22;
  v57 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v23 = v63;
  swift_getKeyPath();
  v56 = v23;
  sub_27586BDE8();
  sub_2759B8638();

  v24 = *&v23[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor];

  v56 = v14;
  LOBYTE(v57) = v15;
  v58 = v16;
  LOBYTE(v59) = v17;
  v60 = v18;
  v61 = v19;
  v62 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AE0, &qword_2759C7D48);
  sub_2759015DC();
  sub_2759B9B38();

  sub_2759B9498();
  type metadata accessor for iCloudHomeDataModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  v27 = sub_2759B9998();
  v29 = v28;
  v31 = v30;
  sub_2759B9858();
  v32 = sub_2759B9988();
  v34 = v33;
  v36 = v35;

  sub_27589F328(v27, v29, v31 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v56 = qword_280A239B8;

  v37 = sub_2759B9958();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_27589F328(v32, v34, v36 & 1);

  v56 = v37;
  v57 = v39;
  LOBYTE(v58) = v41 & 1;
  v59 = v43;
  v44 = v53;
  sub_2759B9B38();
  sub_27589F328(v37, v39, v41 & 1);

  v45 = v52;
  sub_27586FBC8(v13, v52, &qword_280A10AD8, &qword_2759C7D18);
  v46 = v54;
  sub_27586FBC8(v44, v54, &qword_280A0F600, &qword_2759C4210);
  v47 = v55;
  sub_27586FBC8(v45, v55, &qword_280A10AD8, &qword_2759C7D18);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B08, &qword_2759C7D58);
  sub_27586FBC8(v46, v47 + *(v48 + 48), &qword_280A0F600, &qword_2759C4210);
  v49 = v47 + *(v48 + 64);
  *v49 = 0;
  *(v49 + 8) = 1;
  sub_27586BF04(v44, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v13, &qword_280A10AD8, &qword_2759C7D18);
  sub_27586BF04(v46, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v45, &qword_280A10AD8, &qword_2759C7D18);
}

uint64_t sub_275900BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = *(*(v54 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v54);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v54 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v54 - v12;
  v13 = (a1 + *(type metadata accessor for BackupSection() + 20));
  v15 = *v13;
  v14 = v13[1];
  v59 = v15;
  v60 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v16 = v63;
  swift_getKeyPath();
  v59 = v16;
  sub_27586BDE8();
  sub_2759B8638();

  v18 = *&v16[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupDetailLabel];
  v17 = *&v16[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupDetailLabel + 8];

  v59 = v18;
  v60 = v17;
  sub_27589F2D4();
  v19 = sub_2759B99C8();
  v21 = v20;
  LOBYTE(v18) = v22;
  sub_2759B9858();
  v23 = sub_2759B9988();
  v25 = v24;
  v27 = v26;

  sub_27589F328(v19, v21, v18 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v59 = qword_280A239C0;

  v28 = sub_2759B9958();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_27589F328(v23, v25, v27 & 1);

  v59 = v28;
  v60 = v30;
  v61 = v32 & 1;
  v62 = v34;
  v35 = v55;
  sub_2759B9B38();
  sub_27589F328(v28, v30, v32 & 1);

  v36 = sub_2759B9CB8();
  v37 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78) + 36));
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v39 = *MEMORY[0x277CE1050];
  v40 = sub_2759B9D18();
  (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  *v37 = swift_getKeyPath();
  *v7 = v36;
  v41 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v43 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v43 = KeyPath;
  v43[1] = v41;
  v44 = [objc_opt_self() tertiaryLabelColor];
  v45 = sub_2759B9BD8();
  v46 = swift_getKeyPath();
  v47 = (v7 + *(v54 + 36));
  *v47 = v46;
  v47[1] = v45;
  v48 = v56;
  sub_27586FBC8(v35, v56, &qword_280A0F600, &qword_2759C4210);
  v49 = v57;
  sub_27586FBC8(v7, v57, &qword_280A10AB8, &qword_2759C7C48);
  v50 = v58;
  sub_27586FBC8(v48, v58, &qword_280A0F600, &qword_2759C4210);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AD0, &qword_2759CACB0);
  v52 = v50 + *(v51 + 48);
  *v52 = 0x4020000000000000;
  *(v52 + 8) = 0;
  sub_27586FBC8(v49, v50 + *(v51 + 64), &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v7, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v35, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v49, &qword_280A10AB8, &qword_2759C7C48);
  return sub_27586BF04(v48, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_275901138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A20, &qword_2759C7BB0);
  sub_27589B02C(&qword_280A10A28, &qword_280A10A20, &qword_2759C7BB0);
  return sub_2759B9F38();
}

uint64_t sub_2759011E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackupSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275901248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackupSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2759012AC()
{
  v1 = *(type metadata accessor for BackupSection() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2758FF378(v2);
}

unint64_t sub_275901314()
{
  result = qword_280A10A48;
  if (!qword_280A10A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10A40, &qword_2759C7BC8);
    sub_27589B02C(&qword_280A10A50, &qword_280A10A58, &qword_2759C7BD0);
    sub_27589B02C(&qword_280A10A60, &qword_280A10A68, &qword_2759C7BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10A48);
  }

  return result;
}

uint64_t sub_2759013F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2759B92E8();
  *a1 = result;
  return result;
}

uint64_t sub_275901424(uint64_t *a1)
{
  v1 = *a1;

  return sub_2759B92F8();
}

uint64_t sub_275901474(uint64_t a1)
{
  v2 = sub_2759B9D18();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2759B9198();
}

uint64_t sub_27590153C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2759B91E8();
  *a1 = result;
  return result;
}

uint64_t sub_275901568(uint64_t *a1)
{
  v1 = *a1;

  return sub_2759B91F8();
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

unint64_t sub_2759015DC()
{
  result = qword_280A10AE8;
  if (!qword_280A10AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10AE0, &qword_2759C7D48);
    sub_275901694();
    sub_27589B02C(&qword_280A0F1F0, &qword_280A0F1F8, &unk_2759CB7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10AE8);
  }

  return result;
}

unint64_t sub_275901694()
{
  result = qword_280A10AF0;
  if (!qword_280A10AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10AF8, &qword_2759C7D50);
    sub_275901720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10AF0);
  }

  return result;
}

unint64_t sub_275901720()
{
  result = qword_280A10B00;
  if (!qword_280A10B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10B00);
  }

  return result;
}

unint64_t sub_275901774()
{
  result = qword_280A10B18;
  if (!qword_280A10B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10B20, qword_2759C7D68);
    sub_27589B02C(&qword_280A10A28, &qword_280A10A20, &qword_2759C7BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10B18);
  }

  return result;
}

uint64_t type metadata accessor for IfDataclassEnabledView()
{
  result = qword_280A10B28;
  if (!qword_280A10B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759018A4()
{
  sub_275901A10(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_275901A10(319, &qword_280A0E6D0, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_275901A10(319, &qword_280A0E888, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_27585AF74();
        if (v3 <= 0x3F)
        {
          sub_275901A74();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_275901A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_275901A74()
{
  if (!qword_280A10B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
    v0 = sub_2759B8DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A10B38);
    }
  }
}

void *sub_275901AD8()
{
  v1 = sub_2759B93D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for IfDataclassEnabledView() + 40);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = v7;
  }

  else
  {

    sub_2759BA658();
    v9 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_275827D68(v7, 0);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_275901C38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B68, &qword_2759C7EC0);
  v3 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v5 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B70, &qword_2759C7EC8);
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B78, &qword_2759C7ED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B80, &qword_2759C7ED8);
  v12 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42 - v16;
  v18 = type metadata accessor for IfDataclassEnabledView();
  sub_27586FBC8(v2 + *(v18 + 32), v17, &qword_280A0E8A8, qword_2759C2120);
  v19 = sub_2759B8C48();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_27586BF04(v17, &qword_280A0E8A8, qword_2759C2120);
LABEL_5:
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v23 = sub_2759B89A8();
    __swift_project_value_buffer(v23, qword_280A23900);
    v24 = sub_2759B8988();
    v25 = sub_2759BA648();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_275819000, v24, v25, "IfDataclassEnabledView: dataclass or viewmodel missing", v26, 2u);
      MEMORY[0x277C85860](v26, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
    sub_275903480();
    return sub_2759B95E8();
  }

  v21 = (v2 + *(v18 + 36));
  if (!*v21)
  {
    v41 = v21[1];
    sub_2759B8C08();
    sub_275903744(&qword_280A0E6E0, MEMORY[0x277D23330]);
    result = sub_2759B9158();
    __break(1u);
    return result;
  }

  v22 = *v21;

  v44 = sub_2759B8C38();
  v29 = v28;

  (*(v20 + 8))(v17, v19);
  v30 = sub_275901AD8();
  if (!v30)
  {

    goto LABEL_5;
  }

  v31 = v30;
  v32 = v44;
  v43 = sub_2759BA258();
  v33 = [*&v31[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account] isEnabledForDataclass_];
  v34 = 24;
  if (!v33)
  {
    v34 = 28;
  }

  v42 = v31;
  if (v33)
  {
    v35 = &unk_2759C7EF8;
  }

  else
  {
    v35 = &unk_2759C7EE8;
  }

  v36 = *(v18 + v34);
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  *(v37 + 24) = v29;
  v38 = &v11[*(v8 + 36)];
  v39 = &v38[*(sub_2759B8FD8() + 20)];
  sub_2759BA4E8();
  *v38 = v35;
  *(v38 + 1) = v37;
  sub_27586FBC8(v2 + v36, v11, &qword_280A0E6B0, &qword_2759C0D00);
  sub_27586FBC8(v11, v45, &qword_280A10B78, &qword_2759C7ED0);
  swift_storeEnumTagMultiPayload();
  sub_275903504();
  v40 = v47;
  sub_2759B95E8();
  sub_27586BF04(v11, &qword_280A10B78, &qword_2759C7ED0);
  sub_27586FBC8(v40, v5, &qword_280A10B80, &qword_2759C7ED8);
  swift_storeEnumTagMultiPayload();
  sub_275903480();
  sub_2759B95E8();

  return sub_27586BF04(v40, &qword_280A10B80, &qword_2759C7ED8);
}

uint64_t sub_27590226C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2759BA4C8();
  v2[4] = sub_2759BA4B8();
  v4 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275902304, v4, v3);
}

uint64_t sub_275902304()
{
  v13 = v0;
  v1 = v0[4];

  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_280A23900);

  v4 = sub_2759B8988();
  v5 = sub_2759BA638();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_2758937B8(v7, v6, &v12);
    _os_log_impl(&dword_275819000, v4, v5, "IfDataclassEnabledView: Dataclass is enabled %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_275902490(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2759BA4C8();
  v2[4] = sub_2759BA4B8();
  v4 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275902528, v4, v3);
}

uint64_t sub_275902528()
{
  v13 = v0;
  v1 = v0[4];

  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_280A23900);

  v4 = sub_2759B8988();
  v5 = sub_2759BA638();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_2758937B8(v7, v6, &v12);
    _os_log_impl(&dword_275819000, v4, v5, "IfDataclassEnabledView: Dataclass not disabled %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2759026C0()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275902770()
{
  *v0;
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_27590280C()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2759028B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_275903B30();
  *a2 = result;
  return result;
}

void sub_2759028E8(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE400000000000000;
  v5 = 1702063205;
  if (*v1 != 2)
  {
    v5 = 0x73616C6361746164;
    v4 = 0xEB00000000644973;
  }

  if (*v1)
  {
    v3 = 1852139636;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_275902954()
{
  v1 = 25705;
  v2 = 1702063205;
  if (*v0 != 2)
  {
    v2 = 0x73616C6361746164;
  }

  if (*v0)
  {
    v1 = 1852139636;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2759029BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275903B30();
  *a1 = result;
  return result;
}

uint64_t sub_2759029F0(uint64_t a1)
{
  v2 = sub_2759036F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275902A2C(uint64_t a1)
{
  v2 = sub_2759036F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275902A68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v45 - v10;
  v11 = sub_2759B85A8();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10B98, &qword_2759C7F00);
  v15 = *(v14 - 8);
  v54 = v14;
  v55 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v19 = type metadata accessor for IfDataclassEnabledView();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23[2] = MEMORY[0x277D84F90];
  v24 = (v23 + *(v21 + 36));
  sub_2759B8C08();
  sub_275903744(&qword_280A0E6E0, MEMORY[0x277D23330]);
  *v24 = sub_2759B9168();
  v24[1] = v25;
  v26 = v23 + *(v19 + 40);
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759036F0();
  v28 = v56;
  sub_2759BAC18();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v46 = v19;
    v56 = a1;
    v60 = 0;
    v29 = v54;
    v30 = sub_2759BAA58();
    v45 = v18;
    if (!v31)
    {
      v33 = v47;
      sub_2759B8598();
      v34 = sub_2759B8588();
      v36 = v35;
      (*(v48 + 8))(v33, v49);
      v31 = v36;
      v30 = v34;
    }

    v37 = v23;
    *v23 = v30;
    v23[1] = v31;
    sub_2759B8A38();
    v59 = 1;
    sub_275903744(&qword_280A0E738, MEMORY[0x277D231A8]);
    v38 = v50;
    sub_2759BAA68();
    v39 = v46;
    v40 = v51;
    sub_27589F26C(v38, v37 + *(v46 + 24), &qword_280A0E6B0, &qword_2759C0D00);
    v58 = 2;
    sub_2759BAA68();
    sub_27589F26C(v40, v37 + *(v39 + 28), &qword_280A0E6B0, &qword_2759C0D00);
    sub_2759B8C48();
    v57 = 3;
    sub_275903744(&qword_280A0E8C0, MEMORY[0x277D23340]);
    v41 = v52;
    v42 = v45;
    sub_2759BAA68();
    (*(v55 + 8))(v42, v29);
    v43 = v56;
    v44 = v53;
    sub_27589F26C(v41, v37 + *(v46 + 32), &qword_280A0E8A8, qword_2759C2120);
    sub_27590378C(v37, v44);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_2759037F0(v37);
  }
}

uint64_t sub_275903100(uint64_t a1, uint64_t a2)
{
  v4 = sub_275903744(&qword_280A10B40, type metadata accessor for IfDataclassEnabledView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_275903184(uint64_t a1, uint64_t a2)
{
  v4 = sub_275903744(&qword_280A10B48, type metadata accessor for IfDataclassEnabledView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_275903200(uint64_t a1)
{
  v2 = sub_275903744(&qword_280A10B48, type metadata accessor for IfDataclassEnabledView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27590327C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275903744(&qword_280A10B60, type metadata accessor for IfDataclassEnabledView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_275903338()
{
  sub_275903744(&qword_280A10B40, type metadata accessor for IfDataclassEnabledView);
  sub_275903744(&qword_280A10B48, type metadata accessor for IfDataclassEnabledView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_275903480()
{
  result = qword_280A10B88;
  if (!qword_280A10B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10B80, &qword_2759C7ED8);
    sub_275903504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10B88);
  }

  return result;
}

unint64_t sub_275903504()
{
  result = qword_280A10B90;
  if (!qword_280A10B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10B78, &qword_2759C7ED0);
    sub_27585BE04();
    sub_275903744(&qword_280A0FCF0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10B90);
  }

  return result;
}

uint64_t sub_2759035C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585A7E4;

  return sub_275902490(v2, v3);
}

uint64_t sub_275903658()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585F7A0;

  return sub_27590226C(v2, v3);
}

unint64_t sub_2759036F0()
{
  result = qword_280A10BA0;
  if (!qword_280A10BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BA0);
  }

  return result;
}

uint64_t sub_275903744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27590378C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IfDataclassEnabledView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759037F0(uint64_t a1)
{
  v2 = type metadata accessor for IfDataclassEnabledView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for IfDataclassEnabledView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IfDataclassEnabledView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27590399C()
{
  result = qword_280A10BA8;
  if (!qword_280A10BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10BB0, &qword_2759C7F40);
    sub_275903480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BA8);
  }

  return result;
}

unint64_t sub_275903A2C()
{
  result = qword_280A10BB8;
  if (!qword_280A10BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BB8);
  }

  return result;
}

unint64_t sub_275903A84()
{
  result = qword_280A10BC0;
  if (!qword_280A10BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BC0);
  }

  return result;
}

unint64_t sub_275903ADC()
{
  result = qword_280A10BC8;
  if (!qword_280A10BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BC8);
  }

  return result;
}

uint64_t sub_275903B30()
{
  v0 = sub_2759BAA48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t iCloudSettingsExperienceViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for iCloudHomeViewController()) init];
  return v0;
}

void sub_275903C08(uint64_t a1@<X8>)
{
  sub_27589F2D4();
  if (sub_2759BA7F8())
  {
    v3 = sub_2759BA258();
    v4 = *(v1 + 16);
    type metadata accessor for iCloudSettingsNavigationPathHelper();
    v5 = sub_2758EA438();
    static iCloudSettingsNavigationPathHelper.recipe(dataclass:accountManager:)(v3, v5, a1);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_2815ADE70);
    v7 = sub_2759B8988();
    v8 = sub_2759BA638();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_275819000, v7, v8, "Identifier is not of Dataclass format.", v9, 2u);
      MEMORY[0x277C85860](v9, -1, -1);
    }

    v10 = sub_2759B8768();
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

void sub_275903DD0()
{
  v1 = *(v0 + 16);
  v2 = sub_2759BA1C8();
  [v1 handleURL_];
}

uint64_t iCloudSettingsExperienceViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void static iCloudSettingsNavigationPathHelper.recipe(dataclass:accountManager:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_280A0E368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_280A10BD0;

  v7 = sub_275904AE8(a1, v6);

  if ((v7 & 1) == 0)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_2815ADE70);
    v15 = a1;
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_28;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v72 = v19;
    *v18 = 136315138;
    v20 = sub_2759BA298();
    v22 = sub_2758937B8(v20, v21, &v72);

    *(v18 + 4) = v22;
    v23 = "Dataclass not supported for settings recipe. %s";
    goto LABEL_27;
  }

  v8 = [a2 accounts];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for AIDAServiceType(0);
    sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
    sub_275904F40();
    v10 = sub_2759BA1D8();

    if (*(v10 + 16))
    {
      v11 = sub_2758A342C(*MEMORY[0x277CED1A0]);
      if (v12)
      {
        v13 = *(*(v10 + 56) + 8 * v11);

LABEL_14:
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v26 = sub_2759B89A8();
        __swift_project_value_buffer(v26, qword_2815ADE70);
        v27 = a1;
        v28 = sub_2759B8988();
        v29 = sub_2759BA628();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = a2;
          v31 = v13;
          v32 = a3;
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v72 = v34;
          *v33 = 136315138;
          v35 = sub_2759BA298();
          v37 = sub_2758937B8(v35, v36, &v72);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_275819000, v28, v29, "Generating settings recipe for %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          MEMORY[0x277C85860](v34, -1, -1);
          v38 = v33;
          a3 = v32;
          v13 = v31;
          a2 = v30;
          MEMORY[0x277C85860](v38, -1, -1);
        }

        v39 = *MEMORY[0x277CB8A08];
        v40 = sub_2759BA298();
        v42 = v41;
        if (v40 == sub_2759BA298() && v42 == v43)
        {
          goto LABEL_20;
        }

        v44 = sub_2759BAAC8();

        if (v44)
        {
          goto LABEL_22;
        }

        v51 = *MEMORY[0x277CB8960];
        v52 = sub_2759BA298();
        v54 = v53;
        if (v52 == sub_2759BA298() && v54 == v55)
        {
LABEL_20:

LABEL_22:
          sub_275904C3C(a3);

          return;
        }

        v56 = sub_2759BAAC8();

        if (v56)
        {
          goto LABEL_22;
        }

        v57 = *MEMORY[0x277CB8920];
        v58 = sub_2759BA298();
        v60 = v59;
        if (v58 == sub_2759BA298() && v60 == v61)
        {

LABEL_36:
          v63 = [objc_opt_self() buildBackupViewControllerWithAccount_];
LABEL_37:
          sub_2759B8738();

          v64 = sub_2759B8768();
          (*(*(v64 - 8) + 56))(a3, 0, 1, v64);
          return;
        }

        v62 = sub_2759BAAC8();

        if (v62)
        {
          goto LABEL_36;
        }

        v65 = *MEMORY[0x277CB89D8];
        v66 = sub_2759BA298();
        v68 = v67;
        if (v66 == sub_2759BA298() && v68 == v69)
        {
        }

        else
        {
          v70 = sub_2759BAAC8();

          if ((v70 & 1) == 0)
          {
            v71 = [objc_opt_self() buildViewControllerWithAccountManager:a2 dataclass:v27];
            goto LABEL_44;
          }
        }

        v71 = [objc_opt_self() messagesCloudSettingsViewControllerWithAccountManager_];
LABEL_44:
        v16 = v71;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v63 = v16;
          goto LABEL_37;
        }

LABEL_28:
        v50 = sub_2759B8768();
        (*(*(v50 - 8) + 56))(a3, 1, 1, v50);
        return;
      }
    }

    v24 = [objc_opt_self() defaultStore];
    if (v24)
    {
      v25 = v24;

      v13 = [v25 aa_primaryAppleAccount];

      if (v13)
      {
        goto LABEL_14;
      }

      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v45 = sub_2759B89A8();
      __swift_project_value_buffer(v45, qword_2815ADE70);
      v46 = a1;
      v16 = sub_2759B8988();
      v17 = sub_2759BA648();

      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_28;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v72 = v19;
      *v18 = 136315138;
      v47 = sub_2759BA298();
      v49 = sub_2758937B8(v47, v48, &v72);

      *(v18 + 4) = v49;
      v23 = "Unable to get iCloud account when trying to build settings recipe for %s";
LABEL_27:
      _os_log_impl(&dword_275819000, v16, v17, v23, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x277C85860](v19, -1, -1);
      MEMORY[0x277C85860](v18, -1, -1);
      goto LABEL_28;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_275904740()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BE8, &qword_2759C8168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C80F0;
  v1 = *MEMORY[0x277CB8A08];
  *(inited + 32) = *MEMORY[0x277CB8A08];
  v2 = *MEMORY[0x277CB8960];
  v3 = *MEMORY[0x277CB8920];
  *(inited + 40) = *MEMORY[0x277CB8960];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x277CB89D8];
  v5 = *MEMORY[0x277CB89F8];
  *(inited + 56) = *MEMORY[0x277CB89D8];
  *(inited + 64) = v5;
  v6 = *MEMORY[0x277CB8A58];
  v7 = *MEMORY[0x277CB89A0];
  *(inited + 72) = *MEMORY[0x277CB8A58];
  *(inited + 80) = v7;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = sub_2759B5D0C(inited);
  swift_setDeallocating();
  type metadata accessor for Dataclass(0);
  result = swift_arrayDestroy();
  qword_280A10BD0 = v15;
  return result;
}

uint64_t static iCloudSettingsNavigationPathHelper.supportedDataclasses.getter()
{
  if (qword_280A0E368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static iCloudSettingsNavigationPathHelper.supportedDataclasses.setter(uint64_t a1)
{
  if (qword_280A0E368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280A10BD0 = a1;
}

uint64_t (*static iCloudSettingsNavigationPathHelper.supportedDataclasses.modify())()
{
  if (qword_280A0E368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2759049E0@<X0>(void *a1@<X8>)
{
  if (qword_280A0E368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280A10BD0;
}

uint64_t sub_275904A60(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_280A0E368;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280A10BD0 = v1;
}

uint64_t sub_275904AE8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  sub_2759BA298();
  sub_2759BABD8();
  sub_2759BA328();
  v4 = sub_2759BAC08();

  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = sub_2759BA298();
      v11 = v10;
      if (v9 == sub_2759BA298() && v11 == v12)
      {
        break;
      }

      v14 = sub_2759BAAC8();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_275904C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_2759BA258();
  v4 = sub_2759BA258();

  v5 = sub_2759BA258();
  v6 = NSClassFromString(v5);

  if (v6 && (swift_getObjCClassMetadata(), sub_275861AF8(0, &qword_280A0E7E0, 0x277D3FBA0), swift_dynamicCastMetatype()))
  {
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_2759B8738();
    v7 = 0;
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_2815ADE70);
    v9 = sub_2759B8988();
    v10 = sub_2759BA648();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v7 = 1;
  }

  v12 = sub_2759B8768();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, v7, 1, v12);
}

unint64_t static iCloudSettingsNavigationPathHelper.resourceDictionary(_:)()
{
  v0 = sub_2758A31E8(MEMORY[0x277D84F90]);
  v1 = MEMORY[0x277D837D0];
  sub_2759BA878();
  v7 = v1;
  *&v6 = sub_2759B84A8();
  *(&v6 + 1) = v2;
  sub_2758A2ECC(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_275906E88(v5, v8, isUniquelyReferenced_nonNull_native);
  sub_275864C40(v8);
  return v0;
}

unint64_t sub_275904F40()
{
  result = qword_280A0E500;
  if (!qword_280A0E500)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E500);
  }

  return result;
}

uint64_t sub_275904F98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BD8, &qword_2759C8150);
  v38 = a2;
  result = sub_2759BAA18();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_275905240(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3E8, &qword_2759C39A8);
  v40 = a2;
  result = sub_2759BAA18();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_275905500(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_2759B8AF8();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3C8, &qword_2759C3990);
  v46 = a2;
  result = sub_2759BAA18();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_275905880(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_2759BAA18();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_275905B1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107C0, qword_2759C7420);
  v38 = a2;
  result = sub_2759BAA18();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_275905DBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BF0, &unk_2759C8170);
  result = sub_2759BAA18();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v3;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 56) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 56) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v31;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_275906044(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3F0, &qword_2759C39B0);
  v38 = a2;
  result = sub_2759BAA18();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      sub_2759BA298();
      sub_2759BABD8();
      sub_2759BA328();
      v27 = sub_2759BAC08();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_275906308(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3D8, &qword_2759C4BE0);
  result = sub_2759BAA18();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_2758A2ECC((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_2758A3324(v24, &v38);
        sub_275864C94(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_2759BA858();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_2758A2ECC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2759065C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27586F8A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_275904F98(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_27586F8A0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2759BAB38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_275907100();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_275906750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_27586F8A0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_275905240(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_27586F8A0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_2759BAB38();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_275907270();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_2759068D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_27586F8A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2759073E8();
      goto LABEL_7;
    }

    sub_275905500(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_27586F8A0(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2759BAB38();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_2759B8AF8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_275906FD4(v12, a2, a3, a1, v18);
}

uint64_t sub_275906A6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_27586F8A0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_275905880(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_27586F8A0(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_2759BAB38();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_275907668(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

unint64_t sub_275906C08(char a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2758A33AC();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 >= v12 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v14 >= v12 && (a2 & 1) == 0)
  {
    v15 = result;
    sub_27590792C();
    result = v15;
    goto LABEL_8;
  }

  sub_275905DBC(v12, a2 & 1);
  v16 = *v3;
  result = sub_2758A33AC();
  if ((v13 & 1) == (v17 & 1))
  {
LABEL_8:
    v18 = *v3;
    if (v13)
    {
      *(*(v18 + 56) + result) = a1 & 1;
      return result;
    }

    *(v18 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v18 + 56) + result) = a1 & 1;
    v19 = *(v18 + 16);
    v11 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v11)
    {
      *(v18 + 16) = v20;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2759BAB38();
  __break(1u);
  return result;
}

id sub_275906D20(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2758A342C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_275906044(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_2758A342C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for AIDAServiceType(0);
        sub_2759BAB38();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_275907A6C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

_OWORD *sub_275906E88(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2758A24F8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_275907BCC();
      goto LABEL_7;
    }

    sub_275906308(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_2758A24F8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2758A3324(a2, v22);
      return sub_275907084(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_2759BAB38();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_2758A2ECC(a1, v17);
}

uint64_t sub_275906FD4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2759B8AF8();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_275907084(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2758A2ECC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_275907100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BD8, &qword_2759C8150);
  v2 = *v0;
  v3 = sub_2759BAA08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_275907270()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3E8, &qword_2759C39A8);
  v2 = *v0;
  v3 = sub_2759BAA08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_2759073E8()
{
  v1 = v0;
  v36 = sub_2759B8AF8();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3C8, &qword_2759C3990);
  v4 = *v0;
  v5 = sub_2759BAA08();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_275907668(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2759BAA08();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2759077C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107C0, qword_2759C7420);
  v2 = *v0;
  v3 = sub_2759BAA08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_27590792C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BF0, &unk_2759C8170);
  v2 = *v0;
  v3 = sub_2759BAA08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = *(*(v2 + 56) + v14))
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_275907A6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3F0, &qword_2759C39B0);
  v2 = *v0;
  v3 = sub_2759BAA08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_275907BCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3D8, &qword_2759C4BE0);
  v2 = *v0;
  v3 = sub_2759BAA08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_2758A3324(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_275864C94(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2758A2ECC(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

iCloudSettings::ManageStorageDeepLinkAppIdentifier_optional __swiftcall ManageStorageDeepLinkAppIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2759BAA48();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_275907E74(char *a1, char *a2)
{
  if (*&aPhotos_1[8 * *a1] == *&aPhotos_1[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2759BAAC8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

unint64_t sub_275907EE0()
{
  result = qword_280A10BF8;
  if (!qword_280A10BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10BF8);
  }

  return result;
}

uint64_t sub_275907F34()
{
  v1 = *v0;
  sub_2759BABD8();
  v2 = *&aPhotos_1[8 * v1];
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275907F90()
{
  v1 = *&aPhotos_1[8 * *v0];
  sub_2759BA328();
}

uint64_t sub_275907FD0()
{
  v1 = *v0;
  sub_2759BABD8();
  v2 = *&aPhotos_1[8 * v1];
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275908060(void *a1, double a2, double a3)
{
  [v3 size];
  v8 = a2 / v7;
  [v3 size];
  if (a3 / v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = a3 / v9;
  }

  [v3 size];
  v12 = v11 * v10;
  [v3 size];
  v14 = v10 * v13;
  sub_275908294();
  v15 = [swift_getObjCClassFromMetadata() preferredFormat];
  v16 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v15 format:{a2, a3}];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = v3;
  *(v17 + 48) = v12;
  *(v17 + 56) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2759083E8;
  *(v18 + 24) = v17;
  v25[4] = sub_2759083FC;
  v25[5] = v18;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_27599B03C;
  v25[3] = &block_descriptor_6;
  v19 = _Block_copy(v25);
  v20 = a1;
  v21 = v3;

  v22 = [v16 imageWithActions_];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v22;
  }

  __break(1u);
  return result;
}

unint64_t sub_275908294()
{
  result = qword_280A10C00;
  if (!qword_280A10C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A10C00);
  }

  return result;
}

id sub_2759082E0(void *a1, CGColor *a2, void *a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v14 = [a1 CGContext];
  CGContextSetFillColorWithColor(v14, a2);

  v15 = [a1 CGContext];
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = a4;
  v19.size.height = a5;
  CGContextAddEllipseInRect(v15, v19);

  v16 = [a1 CGContext];
  CGContextDrawPath(v16, kCGPathFill);

  return [a3 drawInRect_];
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275908454@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2759087FC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2759084A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C2110;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  *(inited + 56) = 0x79546E6F69746361;
  *(inited + 64) = 0xEA00000000006570;
  v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings6Action_type);
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings6Action_type + 8);
  *(inited + 72) = sub_2759BA258();
  v6 = sub_2758A2798(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
  swift_arrayDestroy();
  return v6;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2759085BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275908604(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for iCloudHomeViewModelPerformActionEvent.Outcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for iCloudHomeViewModelPerformActionEvent.Outcome(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2759087A8()
{
  result = qword_280A10C18;
  if (!qword_280A10C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C18);
  }

  return result;
}

unint64_t sub_2759087FC(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_27590880C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275908BAC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_275908854()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C2110;
  *(inited + 32) = 0x46676E696C6C6163;
  *(inited + 40) = 0xEF6E6F6974636E75;
  *(inited + 48) = sub_2759BA258();
  *(inited + 56) = 0x656D6F6374756FLL;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_2759BA5A8();
  v5 = sub_2758A2798(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
  swift_arrayDestroy();
  return v5;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_27590896C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2759089B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManageStorageAnimationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManageStorageAnimationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_275908B58()
{
  result = qword_280A10C20;
  if (!qword_280A10C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C20);
  }

  return result;
}

unint64_t sub_275908BAC(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t *sub_275908BBC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_275908BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  v5 = sub_2758A2798(inited);
  swift_setDeallocating();
  sub_275908CFC(inited + 32);
  if (a3)
  {
    v6 = sub_2759BA258();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_275906A58(v6, 0x6B6E694C70656564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v5;
}

uint64_t sub_275908CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275908D64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_275908DC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_275908E38()
{
  result = qword_280A10C28;
  if (!qword_280A10C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C28);
  }

  return result;
}

unint64_t sub_275908E8C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275909658(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_275908ED4()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C2110;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_2759BA5A8();
  *(inited + 56) = 0x6449656C646E7562;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_2759BA258();
  v5 = sub_2758A2798(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_275908FC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002759E11A0 == a2 || (sub_2759BAAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446574656C6564 && a2 == 0xEA00000000006174 || (sub_2759BAAC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6544317472656C61 && a2 == 0xEC0000006574656CLL || (sub_2759BAAC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6143317472656C61 && a2 == 0xEC0000006C65636ELL || (sub_2759BAAC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6544327472656C61 && a2 == 0xEC0000006574656CLL || (sub_2759BAAC8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6143327472656C61 && a2 == 0xEC0000006C65636ELL || (sub_2759BAAC8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C65447465656873 && a2 == 0xEB00000000657465 || (sub_2759BAAC8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E61437465656873 && a2 == 0xEB000000006C6563 || (sub_2759BAAC8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6565447465656873 && a2 == 0xED00006B6E696C70 || (sub_2759BAAC8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002759E11C0 == a2 || (sub_2759BAAC8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C65446F646E75 && a2 == 0xEA00000000006574 || (sub_2759BAAC8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6946776569766572 && a2 == 0xEB0000000073656CLL || (sub_2759BAAC8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x61446574656C6564 && a2 == 0xEF74656568536174)
  {

    return 12;
  }

  else
  {
    v5 = sub_2759BAAC8();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_275909418(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275909460(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ManageStorageDrilldownActionEvent.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManageStorageDrilldownActionEvent.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_275909604()
{
  result = qword_280A10C30;
  if (!qword_280A10C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C30);
  }

  return result;
}

unint64_t sub_275909658(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

unint64_t sub_275909668@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275909974(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_275909694(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  v7 = sub_2758A2798(inited);
  swift_setDeallocating();
  sub_275908CFC(inited + 32);
  if ((a4 & 1) == 0)
  {
    v8 = sub_2759BA5A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_275906A58(v8, 0x6E756F43656C6966, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
  }

  if (a1)
  {
    swift_getErrorValue();
    v10 = a1;
    sub_2759AC7BC();
    v11 = sub_2759BA258();

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_275906A58(v11, 0x726F727245796E61, 0xE800000000000000, v12);
  }

  return v7;
}

uint64_t sub_275909848(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_2759098A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_275909920()
{
  result = qword_280A10C38;
  if (!qword_280A10C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C38);
  }

  return result;
}

unint64_t sub_275909974(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void *sub_275909984@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_2759099A4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  v3 = sub_2758A2798(inited);
  swift_setDeallocating();
  sub_275908CFC(inited + 32);
  if (a1)
  {
    swift_getErrorValue();
    v4 = a1;
    sub_2759AC7BC();
    v5 = sub_2759BA258();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_275906A58(v5, 0x726F727245796E61, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v3;
}

uint64_t sub_275909B00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_275909B5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_275909BD4()
{
  result = qword_280A10C40;
  if (!qword_280A10C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C40);
  }

  return result;
}

unint64_t sub_275909C44()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  v3 = sub_2758A2798(inited);
  swift_setDeallocating();
  sub_275908CFC(inited + 32);
  return v3;
}

unint64_t sub_275909D10()
{
  result = qword_280A10C48;
  if (!qword_280A10C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C48);
  }

  return result;
}

unint64_t sub_275909DAC()
{
  result = qword_280A10C50;
  if (!qword_280A10C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C50);
  }

  return result;
}

uint64_t sub_275909E2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2759B9CB8();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v5 = *MEMORY[0x277CE1050];
  v6 = sub_2759B9D18();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  v7 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  LODWORD(v7) = sub_2759B9678();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C58, &unk_2759C8C70);
  *(a1 + *(result + 36)) = v7;
  return result;
}

unint64_t sub_275909F70()
{
  result = qword_280A10C60;
  if (!qword_280A10C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10C58, &unk_2759C8C70);
    sub_27590A028();
    sub_27589B02C(&qword_280A0F638, &qword_280A0F640, &unk_2759C7240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C60);
  }

  return result;
}

unint64_t sub_27590A028()
{
  result = qword_280A10C68;
  if (!qword_280A10C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10AC8, &qword_2759C7CE0);
    sub_27590A0E0();
    sub_27589B02C(&qword_280A0F1E0, &qword_280A0F1E8, &unk_2759C3620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C68);
  }

  return result;
}

unint64_t sub_27590A0E0()
{
  result = qword_280A10C70;
  if (!qword_280A10C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10AC0, &qword_2759C7C78);
    sub_27589B02C(&qword_280A0F200, &qword_280A0F1A8, &qword_2759C8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C70);
  }

  return result;
}

uint64_t sub_27590A1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_27586FBC8(a3, v24 - v10, &unk_280A0E510, &qword_2759C33C0);
  v12 = sub_2759BA518();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27586BF04(v11, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    sub_2759BA508();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2759BA468();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_2759BA308() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_27586BF04(a3, &unk_280A0E510, &qword_2759C33C0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27586BF04(a3, &unk_280A0E510, &qword_2759C33C0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_27590A460(NSObject *a1, char a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v104 - v14;
  v106 = *a3;
  v16 = *a4;
  swift_getKeyPath();
  v107 = v6;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v25 = sub_2759B89A8();
    __swift_project_value_buffer(v25, qword_2815ADE70);
    v26 = a1;
    v27 = sub_2759B8988();
    v28 = sub_2759BA648();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_275819000, v27, v28, "Can not perform action [%{public}@] without a presenting UINavigationController.", v29, 0xCu);
      sub_27586BF04(v30, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v30, -1, -1);
      MEMORY[0x277C85860](v29, -1, -1);
    }

    v22 = v26;
    v23 = v22;
    v24 = 0;
    goto LABEL_48;
  }

  swift_getKeyPath();
  v107 = v6;
  sub_2759B8638();

  if (*(v6 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview))
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v18 = sub_2759B89A8();
    __swift_project_value_buffer(v18, qword_2815ADE70);
    v19 = sub_2759B8988();
    v20 = sub_2759BA668();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_275819000, v19, v20, "Already loading another subview. Bailing.", v21, 2u);
      MEMORY[0x277C85860](v21, -1, -1);
    }

    v22 = a1;
    v23 = v22;
    v24 = 1;
    goto LABEL_48;
  }

  v33 = *(&a1->isa + OBJC_IVAR____TtC14iCloudSettings6Action_type);
  v32 = *(&a1[1].isa + OBJC_IVAR____TtC14iCloudSettings6Action_type);

  v34._countAndFlagsBits = v33;
  v34._object = v32;
  iCloudSettingsActionType.init(rawValue:)(v34);
  if (v107 <= 3u)
  {
    if (v107 > 1u)
    {
      if (v107 == 2)
      {
        sub_275911124();
        v36 = v6 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController;
        if (a2)
        {
          v37 = 6;
        }

        else
        {
          v37 = 8;
        }

        v38 = 0xEE007070416D7569;
        v35 = 0x6D657250776F6873;
      }

      else
      {
        sub_275911618();
        v36 = v6 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController;
        if (a2)
        {
          v37 = 6;
        }

        else
        {
          v37 = 8;
        }

        v38 = 0x80000002759DCC50;
        v35 = 0xD000000000000015;
      }
    }

    else if (v107)
    {
      sub_275910ECC();
      v36 = v6 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController;
      if (a2)
      {
        v37 = 6;
      }

      else
      {
        v37 = 8;
      }

      v38 = 0xEF6C69616D45794DLL;
      v35 = 0x65646948776F6873;
    }

    else
    {
      v35 = 0xD000000000000010;
      sub_2759107E8(a5);
      v36 = v6 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController;
      if (a2)
      {
        v37 = 6;
      }

      else
      {
        v37 = 8;
      }

      v38 = 0x80000002759DCC20;
    }

LABEL_46:
    v63 = *v36;

    sub_2759BA4D8();
    v64 = sub_2759BA518();
    (*(*(v64 - 8) + 56))(v15, 0, 1, v64);
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    *(v66 + 24) = 0;
    *(v66 + 32) = v65;
    *(v66 + 40) = v37;
    *(v66 + 48) = 0;
    *(v66 + 56) = 10;
    *(v66 + 57) = v106;
    *(v66 + 64) = 1;
    *(v66 + 72) = 0;
    *(v66 + 80) = v35;
    *(v66 + 88) = v38;
    *(v66 + 96) = 7;

    sub_27591E640(v37, 0, 0xAu);
    sub_275931D20(0, 0, v15, &unk_2759C5AB8, v66);

    sub_27589F7F0(v37, 0, 0xAu);

LABEL_47:
    sub_27586BF04(v15, &unk_280A0E510, &qword_2759C33C0);
    v22 = a1;
    v23 = v22;
    v24 = 3;
LABEL_48:
    sub_275951A74(v22, v24, sub_27594A594);
LABEL_49:

    return;
  }

  if (v107 <= 5u)
  {
    if (v107 != 4)
    {
      if (qword_280A0E338 != -1)
      {
        swift_once();
      }

      v57 = sub_2759B89A8();
      __swift_project_value_buffer(v57, qword_280A238A0);
      v58 = a1;
      v59 = sub_2759B8988();
      v60 = sub_2759BA648();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v107 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_2758937B8(v33, v32, &v107);
        _os_log_impl(&dword_275819000, v59, v60, "iCloudSettingsActionType %s is not yet supported in iCloudHomeViewModel", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        MEMORY[0x277C85860](v62, -1, -1);
        MEMORY[0x277C85860](v61, -1, -1);
      }

      v22 = v58;
      v23 = v22;
      v24 = 2;
      goto LABEL_48;
    }

    sub_2759BA4E8();
    v39 = sub_2759BA518();
    v40 = *(v39 - 8);
    v105 = v33;
    v41 = *(v40 + 56);
    v41(v15, 0, 1, v39);
    sub_2759BA4C8();
    v42 = a1;
    v43 = v6;
    v44 = sub_2759BA4B8();
    v45 = swift_allocObject();
    v46 = MEMORY[0x277D85700];
    *(v45 + 16) = v44;
    *(v45 + 24) = v46;
    *(v45 + 32) = v43;
    *(v45 + 40) = v42;
    *(v45 + 48) = a2 & 1;
    sub_27587D460(0, 0, v15, &unk_2759CF520, v45);

    v47 = *&v43[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController];
    sub_2759BA4D8();
    v41(v15, 0, 1, v39);
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    v50 = v105;
    *(v49 + 32) = v48;
    *(v49 + 40) = v50;
    *(v49 + 48) = v32;
    *(v49 + 56) = v106;

    sub_275931D20(0, 0, v15, &unk_2759C8F90, v49);

    goto LABEL_47;
  }

  if (v107 == 6)
  {
    v51 = sub_2759BA518();
    (*(*(v51 - 8) + 56))(v15, 1, 1, v51);
    sub_2759BA4C8();
    v52 = a1;
    v53 = v6;
    v54 = sub_2759BA4B8();
    v55 = swift_allocObject();
    v56 = MEMORY[0x277D85700];
    v55[2] = v54;
    v55[3] = v56;
    v55[4] = v53;
    v55[5] = v52;
    sub_27587D460(0, 0, v15, &unk_2759C8F88, v55);

    v36 = &v53[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController];
    if (a2)
    {
      v37 = 6;
    }

    else
    {
      v37 = 8;
    }

    v38 = 0xEB00000000776569;
    v35 = 0x566265576E65706FLL;
    goto LABEL_46;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v67 = sub_2759B89A8();
  __swift_project_value_buffer(v67, qword_2815ADE70);
  v68 = sub_2759B8988();
  v69 = sub_2759BA668();
  v70 = os_log_type_enabled(v68, v69);
  v105 = v33;
  if (v70)
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_275819000, v68, v69, "No valid iCloudSettings actions found, checking for icqActions.", v71, 2u);
    MEMORY[0x277C85860](v71, -1, -1);
  }

  v72 = sub_2759BA258();
  v73 = _ICQActionForString();

  if (v73 > 118)
  {
    if ((v73 - 120) < 2)
    {
      sub_27591343C(a1);
      v74 = 1;
      v75 = 4;
      goto LABEL_80;
    }

    if (v73 == 119)
    {
      sub_275912990();
      goto LABEL_79;
    }

    if (v73 == 127)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (v73 > 110)
    {
      if (v73 == 111)
      {
        sub_275912078(*(&a1->isa + OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters), 0);
        goto LABEL_79;
      }

      if (v73 == 115)
      {
        if (v16 == 7 || (sub_27599AD98(v16, 1u) & 1) == 0)
        {
          v84 = sub_2759B8988();
          v85 = sub_2759BA648();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&dword_275819000, v84, v85, "LiftUI only supported for family usage.", v86, 2u);
            MEMORY[0x277C85860](v86, -1, -1);
          }
        }

        else
        {
          LOBYTE(v107) = v106;
          sub_275912CB0(a1, &v107);
        }

        goto LABEL_79;
      }

      if (v73 != 118)
      {
        goto LABEL_74;
      }

LABEL_63:
      sub_2759139B4(a1);
LABEL_79:
      v74 = 1;
      v75 = 4;
      goto LABEL_80;
    }

    if (v73 == 6)
    {
      sub_27591B0D8(a1);
      goto LABEL_79;
    }

    if (v73 == 110)
    {
      sub_275912524(a1);
      goto LABEL_79;
    }
  }

LABEL_74:
  v76 = a1;
  v77 = sub_2759B8988();
  v78 = sub_2759BA648();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v104 = v77;
    v81 = v80;
    *v79 = 138412290;
    *(v79 + 4) = v76;
    *v80 = v76;
    v82 = v76;
    v83 = v104;
    _os_log_impl(&dword_275819000, v104, v78, "Failed to handle action: %@", v79, 0xCu);
    sub_27586BF04(v81, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v81, -1, -1);
    MEMORY[0x277C85860](v79, -1, -1);
  }

  else
  {
  }

  v74 = 0;
  v75 = 5;
LABEL_80:
  v23 = a1;
  v87 = sub_2759BA258();
  v88 = _ICQActionForString();

  if ((v88 - 114) <= 0xD && ((1 << (v88 - 114)) & 0x20F1) != 0)
  {
    v89 = *(v6 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController);
    sub_2759BA4D8();
    v90 = sub_2759BA518();
    (*(*(v90 - 8) + 56))(v15, 0, 1, v90);
    v91 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    *(v92 + 24) = 0;
    v93 = v105;
    *(v92 + 32) = v91;
    *(v92 + 40) = v93;
    *(v92 + 48) = v32;
    *(v92 + 56) = v106;

    sub_275931D20(0, 0, v15, &unk_2759C8F78, v92);

LABEL_83:
    sub_27586BF04(v15, &unk_280A0E510, &qword_2759C33C0);
LABEL_84:
    sub_275951A74(v23, v75, sub_27594A594);

    goto LABEL_49;
  }

  if ((v74 & 1) == 0)
  {
    goto LABEL_84;
  }

  v94 = *(v6 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController);
  v95 = _ICQStringForAction();
  if (v95)
  {
    v96 = v95;
    if (a2)
    {
      v97 = 6;
    }

    else
    {
      v97 = 8;
    }

    v98 = sub_2759BA298();
    v100 = v99;

    sub_2759BA4D8();
    v101 = sub_2759BA518();
    (*(*(v101 - 8) + 56))(v15, 0, 1, v101);
    v102 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v103 = swift_allocObject();
    *(v103 + 16) = 0;
    *(v103 + 24) = 0;
    *(v103 + 32) = v102;
    *(v103 + 40) = v97;
    *(v103 + 48) = 0;
    *(v103 + 56) = 10;
    *(v103 + 57) = v106;
    *(v103 + 64) = 1;
    *(v103 + 72) = 0;
    *(v103 + 80) = v98;
    *(v103 + 88) = v100;
    *(v103 + 96) = 8;

    sub_27591E640(v97, 0, 0xAu);
    sub_275931D20(0, 0, v15, &unk_2759C5AA0, v103);

    sub_27589F7F0(v97, 0, 0xAu);

    goto LABEL_83;
  }

  __break(1u);
}

uint64_t sub_27590B4BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_27590B570(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275878260(v2);
}

uint64_t sub_27590B5A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  return sub_27586FBC8(v3 + v4, a2, &qword_280A0EFB0, &qword_2759C3128);
}

uint64_t sub_27590B678(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_27586FBC8(a1, &v10 - v6, &qword_280A0EFB0, &qword_2759C3128);
  v8 = *a2;
  return sub_2758788FC(v7);
}

void sub_27590B738(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_275879710(v2);
}

id sub_27590B77C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_27590B840(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_27587A2C4(v2);
}

uint64_t sub_27590B870@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString);
  a2[1] = v4;
}

uint64_t sub_27590B928(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_27587C744(v2, v3);
}

void sub_27590B968()
{
  v1 = v0;
  swift_getKeyPath();
  v53 = v0;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v2 = (v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString);
  v3 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString + 8);
  if (v3)
  {
    v4 = *v2;
    v53 = *v2;
    v54 = v3;
    v55[0] = 0xD000000000000013;
    v55[1] = 0x80000002759E1640;
    sub_27589F2D4();

    if (sub_2759BA7F8())
    {

      swift_getKeyPath();
      v53 = v0;
      sub_2759B8638();

      v5 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
      swift_beginAccess();
      v6 = *(v1 + v5);
      if (v6)
      {
        v7 = *(v6 + OBJC_IVAR___ICSHomeDataModel_manageSubscriptionsAction);
        if (v7)
        {
          LOBYTE(v55[0]) = 7;
          v52 = 7;
          v8 = v7;
          v9 = v8;
          v10 = v55;
          v11 = &v52;
LABEL_16:
          sub_27590A460(v8, 1, v10, v11, 0);

          goto LABEL_57;
        }
      }

      sub_275912990();
LABEL_57:
      if (v2[1])
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v55[0] = v1;
        sub_2759B8628();
      }

      else
      {
        *v2 = 0;
        v2[1] = 0;
      }

      return;
    }

    v53 = v4;
    v54 = v3;
    v55[0] = 0x5F454741524F5453;
    v55[1] = 0xEF45444152475055;
    if (sub_2759BA7F8() & 1) != 0 || (v53 = v4, v54 = v3, strcpy(v55, "DEVICE_OFFERS"), HIWORD(v55[1]) = -4864, (sub_2759BA7F8()))
    {
      swift_getKeyPath();
      v53 = v0;
      sub_2759B8638();

      v16 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
      swift_beginAccess();
      v17 = *(v1 + v16);
      if (v17)
      {
        v18 = *(v17 + OBJC_IVAR___ICSHomeDataModel_upsellCard);
        if (v18)
        {
          v19 = v18;

          v9 = *&v19[OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action];

          LOBYTE(v55[0]) = 7;
          v52 = 7;
          v10 = v55;
          v11 = &v52;
          v8 = v9;
          goto LABEL_16;
        }
      }

      LOBYTE(v55[0]) = 0;
      v20 = sub_275886718(v55);
      if (v20)
      {
        v21 = *&v20[OBJC_IVAR____TtC14iCloudSettings7Feature_action];
        v22 = v20;
        v23 = v21;

        if (v21)
        {

          LOBYTE(v55[0]) = 7;
          v52 = 7;
          sub_27590A460(v23, 1, v55, &v52, 0);

          goto LABEL_57;
        }
      }

      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v24 = sub_2759B89A8();
      __swift_project_value_buffer(v24, qword_2815ADE70);

      v25 = sub_2759B8988();
      v26 = sub_2759BA648();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v55[0] = v28;
        *v27 = 136315138;
        v29 = sub_2758937B8(v4, v3, v55);

        *(v27 + 4) = v29;
        v30 = "No upsell or manage plan action exist. Unable to handle url: %s";
LABEL_25:
        _os_log_impl(&dword_275819000, v25, v26, v30, v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x277C85860](v28, -1, -1);
        MEMORY[0x277C85860](v27, -1, -1);
LABEL_56:

        goto LABEL_57;
      }
    }

    else
    {
      v53 = v4;
      v54 = v3;
      strcpy(v55, "OPEN_STORAGE");
      BYTE5(v55[1]) = 0;
      HIWORD(v55[1]) = -5120;
      if (sub_2759BA7F8())
      {
        goto LABEL_29;
      }

      v53 = v4;
      v54 = v3;
      strcpy(v55, "MANAGE_STORAGE");
      HIBYTE(v55[1]) = -18;
      if (sub_2759BA7F8() & 1) != 0 || (v53 = v4, v54 = v3, v55[0] = 0xD000000000000012, v55[1] = 0x80000002759E1660, (sub_2759BA7F8()))
      {
LABEL_29:
        v31.value._countAndFlagsBits = v4;
        v31.value._object = v3;
        iCloudHomeViewModel.showManageStorageView(deeplinkPath:)(v31);

        goto LABEL_57;
      }

      v53 = v4;
      v54 = v3;
      v55[0] = 0xD000000000000010;
      v55[1] = 0x80000002759E1320;
      if (sub_2759BA7F8())
      {

        v32 = type metadata accessor for Action();
        v33 = objc_allocWithZone(v32);
        *&v33[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
        v34 = &v33[OBJC_IVAR____TtC14iCloudSettings6Action_type];
        *v34 = 0xD000000000000010;
        v34[1] = 0x80000002759DCC20;
        v35 = &v33[OBJC_IVAR____TtC14iCloudSettings6Action_title];
        *v35 = 0;
        v35[1] = 0;
        v36 = &v33[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
        *v36 = 0;
        v36[1] = 0;
        *&v33[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = 0;
        *&v33[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = 0;
        *&v33[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
        v33[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
        v33[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
        v51.receiver = v33;
        v51.super_class = v32;
        v8 = objc_msgSendSuper2(&v51, sel_init);
        v9 = v8;
        LOBYTE(v53) = 7;
        LOBYTE(v55[0]) = 7;
        v10 = &v53;
        v11 = v55;
        goto LABEL_16;
      }

      v53 = v4;
      v54 = v3;
      strcpy(v55, "FAMILY_SHARING");
      HIBYTE(v55[1]) = -18;
      if (sub_2759BA7F8())
      {

        v3 = swift_getKeyPath();
        v53 = v0;
        sub_2759B8638();

        v37 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
        swift_beginAccess();
        v38 = *(v1 + v37);
        if (v38)
        {
          v39 = *(v38 + OBJC_IVAR___ICSHomeDataModel_icloudPlusCard);
          if (v39)
          {
            v40 = *(v39 + OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_features);
            if (v40 >> 62)
            {
              v41 = sub_2759BA9E8();
            }

            else
            {
              v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v41)
            {
              v4 = 0;
              while (1)
              {
                if ((v40 & 0xC000000000000001) != 0)
                {
                  v42 = MEMORY[0x277C846A0](v4, v40);
                }

                else
                {
                  if (v4 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_65;
                  }

                  v42 = *(v40 + 8 * v4 + 32);
                }

                v43 = v42;
                v3 = (v4 + 1);
                if (__OFADD__(v4, 1))
                {
                  __break(1u);
LABEL_65:
                  __break(1u);
                  goto LABEL_66;
                }

                v44 = *&v42[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId + 8];
                if (v44)
                {
                  v45 = *&v42[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId] == 0x535F594C494D4146 && v44 == 0xEE00474E49524148;
                  if (v45 || (sub_2759BAAC8() & 1) != 0)
                  {
                    break;
                  }
                }

                ++v4;
                if (v3 == v41)
                {
                  goto LABEL_60;
                }
              }

              v49 = *&v43[OBJC_IVAR____TtC14iCloudSettings7Feature_action];
              if (v49)
              {
                LOBYTE(v55[0]) = 7;
                v52 = 1;
                v50 = v49;
                sub_27590A460(v50, 1, v55, &v52, 0);
              }

              else
              {
              }
            }

            else
            {
LABEL_60:
            }
          }
        }

        goto LABEL_57;
      }

      if (qword_2815ADD30 != -1)
      {
LABEL_66:
        swift_once();
      }

      v46 = sub_2759B89A8();
      __swift_project_value_buffer(v46, qword_2815ADE70);

      v25 = sub_2759B8988();
      v26 = sub_2759BA648();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v53 = v28;
        *v27 = 136315138;
        v47 = sub_2758937B8(v4, v3, &v53);

        *(v27 + 4) = v47;
        v30 = "Failed to handle deeplink w/ urlString: %s";
        goto LABEL_25;
      }
    }

    goto LABEL_56;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v12 = sub_2759B89A8();
  __swift_project_value_buffer(v12, qword_2815ADE70);
  v13 = sub_2759B8988();
  v14 = sub_2759BA668();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_275819000, v13, v14, "No delayed deeplink url exist.", v15, 2u);
    MEMORY[0x277C85860](v15, -1, -1);
  }
}

uint64_t sub_27590C4A0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v47 = a4;
  v48 = a5;
  v45 = a3;
  v46 = a1;
  v44[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v44 - v9;
  v11 = sub_2759B87B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v51 = v5;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v16 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v6 + v16, v10, &qword_280A0EFB0, &qword_2759C3128);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_27586BF04(v10, &qword_280A0EFB0, &qword_2759C3128);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v17 = sub_2759B89A8();
    __swift_project_value_buffer(v17, qword_2815ADE70);
    v18 = sub_2759B8988();
    v19 = sub_2759BA648();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_275819000, v18, v19, "Push View Controller called, no Append Action Set.", v20, 2u);
      MEMORY[0x277C85860](v20, -1, -1);
    }

    v21 = v47;
    v22 = v48;
    v23 = 0;
    return sub_2759524E8(v21, v22, v23, sub_27594A594);
  }

  (*(v12 + 32))(v15, v10, v11);
  v50 = &unk_2884A6950;
  v25 = 1;
  v26 = v46;
  v27 = swift_dynamicCastObjCProtocolConditional();
  v28 = v15;
  if (v27)
  {
    v29 = v27;
    v49 = 0;
    v30 = v26;
    v31 = sub_2759B8DF8();
    MEMORY[0x28223BE20](v31);
    v32 = v45;
    *&v44[-8] = v29;
    *&v44[-6] = v32;
    *&v44[-4] = v28;
    sub_2759B90C8();

    v33 = v48;
  }

  else
  {
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    swift_getKeyPath();
    if (v34)
    {
      v49 = v6;
      v35 = v26;
      sub_2759B8638();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v40 = sub_2759B89A8();
        __swift_project_value_buffer(v40, qword_2815ADE70);
        v41 = sub_2759B8988();
        v42 = sub_2759BA658();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_275819000, v41, v42, "No presenting controller when pushing view controller with AMSUIController type.", v43, 2u);
          MEMORY[0x277C85860](v43, -1, -1);
        }

        (*(v12 + 8))(v28, v11);
        v21 = v47;
        v22 = v48;
        v23 = 3;
        return sub_2759524E8(v21, v22, v23, sub_27594A594);
      }

      v37 = Strong;
      [Strong showController:v34 animate:1];

      v33 = v48;

      v25 = 2;
    }

    else
    {
      v49 = v6;
      sub_2759B8638();

      v38 = swift_unknownObjectWeakLoadStrong();
      if (v38)
      {
        v39 = v38;
        [v38 showController:v26 animate:1];

        v33 = v48;

        v25 = 4;
      }

      else
      {
        v33 = v48;

        v25 = 5;
      }
    }
  }

  (*(v12 + 8))(v28, v11);
  sub_2759524E8(v47, v33, v25, sub_27594A594);
}

Swift::Void __swiftcall iCloudHomeViewModel.handleDeeplink(resourceDictionary:)(Swift::OpaquePointer resourceDictionary)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v112 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v112 - v10;
  v12 = sub_27591C39C(resourceDictionary._rawValue);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v16 = sub_2759B89A8();
    __swift_project_value_buffer(v16, qword_2815ADE70);

    v17 = sub_2759B8988();
    v18 = sub_2759BA668();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v119 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2758937B8(v14, v15, &v119);
      _os_log_impl(&dword_275819000, v17, v18, "AMS URL found, launching AMS flow. %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x277C85860](v20, -1, -1);
      MEMORY[0x277C85860](v19, -1, -1);
    }

    swift_getKeyPath();
    v119 = v2;
    sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8638();

    v21 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    if (*&v2[v21])
    {
      sub_27590E0CC();
    }

    else
    {
      sub_27587C898(v14, v15);
    }

    return;
  }

  v117 = 1752457584;
  v118 = 0xE400000000000000;
  sub_2759BA878();
  if (!*(resourceDictionary._rawValue + 2) || (v22 = sub_2758A24F8(&v119), (v23 & 1) == 0))
  {
    sub_275864C40(&v119);
    goto LABEL_18;
  }

  sub_275864C94(*(resourceDictionary._rawValue + 7) + 32 * v22, v121);
  sub_275864C40(&v119);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v31 = sub_2759B89A8();
    __swift_project_value_buffer(v31, qword_2815ADE70);
    v32 = sub_2759B8988();
    v33 = sub_2759BA648();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_23;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_275819000, v32, v33, "No valid path found to handle. Bailing.", v34, 2u);
    goto LABEL_22;
  }

  v25 = v117;
  v24 = v118;
  v119 = v117;
  v120 = v118;
  v121[0] = 0xD000000000000013;
  v121[1] = 0x80000002759E0F10;
  v26 = sub_27589F2D4();
  if (sub_2759BA7F8())
  {
    v119 = v25;
    v120 = v24;
    v121[0] = 0xD00000000000001ALL;
    v121[1] = 0x80000002759E1360;
    if (sub_2759BA7F8() & 1) != 0 || (v119 = v25, v120 = v24, v121[0] = 0xD00000000000001FLL, v121[1] = 0x80000002759E1380, (sub_2759BA7F8()))
    {
      v27 = MEMORY[0x277CB8960];
LABEL_15:
      v28 = *v27;
      sub_2759B84F8();
      v29 = sub_2759B8508();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v11, 1, v29) == 1)
      {
        sub_27586BF04(v11, &unk_280A0EB10, &qword_2759C0740);
      }

      else
      {
        v25 = sub_2759B84A8();
        v45 = v44;
        (*(v30 + 8))(v11, v29);

        v24 = v45;
      }

      v46 = sub_2759BA518();
      (*(*(v46 - 8) + 56))(v7, 1, 1, v46);
      sub_2759BA4C8();
      v47 = v2;
      v48 = v28;
      v49 = sub_2759BA4B8();
      v50 = swift_allocObject();
      v51 = MEMORY[0x277D85700];
      v50[2] = v49;
      v50[3] = v51;
      v50[4] = v47;
      v50[5] = v48;
      v50[6] = v25;
      v50[7] = v24;
      sub_27587D460(0, 0, v7, &unk_2759C8D10, v50);

      return;
    }

    v119 = v25;
    v120 = v24;
    v121[0] = 0xD00000000000001CLL;
    v121[1] = 0x80000002759E13A0;
    if (sub_2759BA7F8())
    {
      v27 = MEMORY[0x277CB8A58];
      goto LABEL_15;
    }

    v119 = v25;
    v120 = v24;
    v121[0] = 0xD000000000000018;
    v121[1] = 0x80000002759E13C0;
    if (sub_2759BA7F8())
    {
      v27 = MEMORY[0x277CB89C8];
      goto LABEL_15;
    }

    v119 = v25;
    v120 = v24;
    v121[0] = 0xD000000000000020;
    v121[1] = 0x80000002759E13E0;
    if (sub_2759BA7F8())
    {
      v27 = MEMORY[0x277CB89C0];
      goto LABEL_15;
    }

    v119 = v25;
    v120 = v24;
    v121[0] = 0xD000000000000019;
    v121[1] = 0x80000002759E1410;
    if (sub_2759BA7F8())
    {
      v27 = MEMORY[0x277CB89F8];
      goto LABEL_15;
    }

    v119 = v25;
    v120 = v24;
    v121[0] = 0xD00000000000001CLL;
    v121[1] = 0x80000002759E1430;
    if (sub_2759BA7F8())
    {
      v27 = MEMORY[0x277CB89D8];
      goto LABEL_15;
    }

    v119 = v25;
    v120 = v24;
    v121[0] = 0xD00000000000001ALL;
    v121[1] = 0x80000002759E1450;
    if (sub_2759BA7F8())
    {

      [v1 showBackupViewWithResourceDictionary_];
      return;
    }

    v89 = *&v1[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager];
    v90 = [v89 accounts];
    if (v90)
    {
      v91 = v90;
      type metadata accessor for AIDAServiceType(0);
      sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
      sub_27591EFC0(&qword_280A0E500, type metadata accessor for AIDAServiceType);
      v92 = sub_2759BA1D8();

      if (*(v92 + 16))
      {
        v93 = sub_2758A342C(*MEMORY[0x277CED1A0]);
        if (v94)
        {
          v95 = *(*(v92 + 56) + 8 * v93);

LABEL_79:
          if (qword_2815ADD30 != -1)
          {
            swift_once();
          }

          v98 = sub_2759B89A8();
          __swift_project_value_buffer(v98, qword_2815ADE70);
          v99 = sub_2759B8988();
          v100 = sub_2759BA668();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&dword_275819000, v99, v100, "Pushing show all view.", v101, 2u);
            MEMORY[0x277C85860](v101, -1, -1);
          }

          v102 = objc_opt_self();
          v103 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
          v104 = v95;
          v105 = v2;
          v106 = sub_2758A5B3C(v104, v105, 0);
          v107 = [v102 makeAppListViewControllerWithAccountManager:v89 homeViewModel:v105 manageStorageAppsListViewModel:v106];

          v108 = v107;
          sub_27590C4A0(v108, 1, resourceDictionary._rawValue, 0xD000000000000023, 0x80000002759E1470);

          return;
        }
      }

      v96 = [objc_opt_self() defaultStore];
      if (v96)
      {
        v97 = v96;

        v95 = [v97 aa_primaryAppleAccount];

        if (v95)
        {
          goto LABEL_79;
        }

        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v109 = sub_2759B89A8();
        __swift_project_value_buffer(v109, qword_2815ADE70);
        v32 = sub_2759B8988();
        v110 = sub_2759BA648();
        if (!os_log_type_enabled(v32, v110))
        {
LABEL_23:

          return;
        }

        v34 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v119 = v111;
        *v34 = 136315138;
        *(v34 + 4) = sub_2758937B8(0xD000000000000023, 0x80000002759E1470, &v119);
        _os_log_impl(&dword_275819000, v32, v110, "Unable to find account, bailing %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v111);
        MEMORY[0x277C85860](v111, -1, -1);
LABEL_22:
        MEMORY[0x277C85860](v34, -1, -1);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v112 = v26;
  v35 = v25;
  v36 = v24;
  v37 = sub_2759BA258();
  v38 = [v37 lastPathComponent];

  v39 = sub_2759BA298();
  v41 = v40;

  if (v39 == 0x50554B434142 && v41 == 0xE600000000000000)
  {

LABEL_30:

    v43 = sub_2759BA1C8();
    [v2 showBackupViewWithResourceDictionary_];

    return;
  }

  v42 = sub_2759BAAC8();

  if (v42)
  {
    goto LABEL_30;
  }

  v119 = v35;
  v120 = v36;
  strcpy(v121, "LOCAL_BACKUP");
  BYTE5(v121[1]) = 0;
  HIWORD(v121[1]) = -5120;
  if (sub_2759BA7F8())
  {
    goto LABEL_30;
  }

  v119 = v35;
  v120 = v36;
  v121[0] = 0xD000000000000015;
  v121[1] = 0x80000002759E12E0;
  if (sub_2759BA7F8())
  {
    goto LABEL_30;
  }

  v119 = v35;
  v120 = v36;
  v121[0] = 0xD000000000000019;
  v121[1] = 0x80000002759E1300;
  if (sub_2759BA7F8())
  {

    v52 = sub_2759BA518();
    (*(*(v52 - 8) + 56))(v7, 1, 1, v52);
    sub_2759BA4C8();
    v53 = v2;
    v54 = sub_2759BA4B8();
    v55 = swift_allocObject();
    v56 = MEMORY[0x277D85700];
    v55[2] = v54;
    v55[3] = v56;
    v55[4] = v53;
    sub_27590A1B4(0, 0, v7, &unk_2759C8D00, v55);

    return;
  }

  v119 = v35;
  v120 = v36;
  v121[0] = 0xD000000000000010;
  v121[1] = 0x80000002759E1320;
  if (sub_2759BA7F8())
  {
    v57 = type metadata accessor for Action();
    v58 = objc_allocWithZone(v57);
    *&v58[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
    v59 = &v58[OBJC_IVAR____TtC14iCloudSettings6Action_type];
    *v59 = 0xD000000000000010;
    v59[1] = 0x80000002759DCC20;
    v60 = &v58[OBJC_IVAR____TtC14iCloudSettings6Action_title];
    *v60 = 0;
    v60[1] = 0;
    v61 = &v58[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
    *v61 = 0;
    v61[1] = 0;
    *&v58[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = 0;
    *&v58[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = 0;
    *&v58[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
    v58[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
    v58[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
    v113.receiver = v58;
    v113.super_class = v57;
    v62 = objc_msgSendSuper2(&v113, sel_init);
LABEL_50:
    v68 = v62;
    goto LABEL_51;
  }

  v119 = v35;
  v120 = v36;
  strcpy(v121, "HIDE_MY_EMAIL");
  HIWORD(v121[1]) = -4864;
  if (sub_2759BA7F8() & 1) != 0 || (v119 = v35, v120 = v36, v121[0] = 0xD000000000000014, v121[1] = 0x80000002759E1340, (sub_2759BA7F8()))
  {
    v63 = type metadata accessor for Action();
    v64 = objc_allocWithZone(v63);
    *&v64[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
    v65 = &v64[OBJC_IVAR____TtC14iCloudSettings6Action_type];
    *v65 = 0x65646948776F6873;
    v65[1] = 0xEF6C69616D45794DLL;
    v66 = &v64[OBJC_IVAR____TtC14iCloudSettings6Action_title];
    *v66 = 0;
    v66[1] = 0;
    v67 = &v64[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
    *v67 = 0;
    v67[1] = 0;
    *&v64[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = 0;
    *&v64[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = 0;
    *&v64[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
    v64[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
    v64[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
    v114.receiver = v64;
    v114.super_class = v63;
    v62 = objc_msgSendSuper2(&v114, sel_init);
    goto LABEL_50;
  }

  v119 = v35;
  v120 = v36;
  v121[0] = 0xD000000000000013;
  v121[1] = 0x80000002759DCD20;
  if (sub_2759BA7F8())
  {
    v84 = type metadata accessor for Action();
    v85 = objc_allocWithZone(v84);
    *&v85[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
    v86 = &v85[OBJC_IVAR____TtC14iCloudSettings6Action_type];
    *v86 = 0xD000000000000015;
    v86[1] = 0x80000002759DCC50;
    v87 = &v85[OBJC_IVAR____TtC14iCloudSettings6Action_title];
    *v87 = 0;
    v87[1] = 0;
    v88 = &v85[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
    *v88 = 0;
    v88[1] = 0;
    *&v85[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = 0;
    *&v85[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = 0;
    *&v85[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
    v85[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
    v85[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
    v115.receiver = v85;
    v115.super_class = v84;
    v62 = objc_msgSendSuper2(&v115, sel_init);
    goto LABEL_50;
  }

  sub_27587C744(v35, v36);
  v68 = 0;
LABEL_51:
  v119 = v35;
  v120 = v36;
  strcpy(v121, "premiumApp");
  BYTE3(v121[1]) = 0;
  HIDWORD(v121[1]) = -369098752;
  v69 = sub_2759BA7F8();

  if (v69)
  {
    v70 = type metadata accessor for Action();
    v71 = objc_allocWithZone(v70);
    *&v71[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
    v72 = &v71[OBJC_IVAR____TtC14iCloudSettings6Action_type];
    strcpy(&v71[OBJC_IVAR____TtC14iCloudSettings6Action_type], "showPremiumApp");
    v72[15] = -18;
    v73 = &v71[OBJC_IVAR____TtC14iCloudSettings6Action_title];
    *v73 = 0;
    *(v73 + 1) = 0;
    v74 = &v71[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
    *v74 = 0;
    *(v74 + 1) = 0;
    *&v71[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = 0;
    *&v71[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = 0;
    *&v71[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
    v71[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
    v71[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
    v116.receiver = v71;
    v116.super_class = v70;
    v75 = objc_msgSendSuper2(&v116, sel_init);

    v76 = &v2[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString];
    if (*&v2[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString + 8])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v112 - 3) = 0;
      *(&v112 - 2) = 0;
      *(&v112 - 4) = v2;
      v119 = v2;
      sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
      sub_2759B8628();
    }

    else
    {
      *v76 = 0;
      *(v76 + 1) = 0;
    }

    goto LABEL_61;
  }

  if (v68)
  {
    v75 = v68;
LABEL_61:
    v78 = v75;
    LOBYTE(v119) = 7;
    LOBYTE(v121[0]) = 7;
    sub_27590A460(v78, 1, &v119, v121, resourceDictionary._rawValue);

    goto LABEL_62;
  }

  v78 = 0;
LABEL_62:
  swift_getKeyPath();
  v119 = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  if (*&v2[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString + 8])
  {
    swift_getKeyPath();
    v119 = v2;
    sub_2759B8638();

    v79 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    if (*&v2[v79])
    {
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v80 = sub_2759B89A8();
      __swift_project_value_buffer(v80, qword_2815ADE70);
      v81 = sub_2759B8988();
      v82 = sub_2759BA668();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_275819000, v81, v82, "The data model exists, proceeding to handle delayed deeplink now.", v83, 2u);
        MEMORY[0x277C85860](v83, -1, -1);
      }

      sub_27590B968();
    }
  }
}

void sub_27590E0CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v67 = &v60 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v60 - v6;
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = (&v60 - v12);
  if (qword_2815ADD40 != -1)
  {
    swift_once();
  }

  v13 = qword_2815ADE88;
  v14 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock;
  os_unfair_lock_lock(*(qword_2815ADE88 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock));
  v15 = *(v13 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_preLaunchActionHasExecuted);
  os_unfair_lock_unlock(*(v13 + v14));
  if (v15 == 1)
  {
    sub_2759B84F8();
    v16 = v9;
    v17 = v8;
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_27586BF04(v7, &unk_280A0EB10, &qword_2759C0740);
      if (qword_280A0E358 != -1)
      {
        swift_once();
      }

      v18 = sub_2759B89A8();
      __swift_project_value_buffer(v18, qword_280A238E8);
      v19 = sub_2759B8988();
      v20 = sub_2759BA648();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v69 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_2758937B8(0xD00000000000001DLL, 0x80000002759E15D0, &v69);
        _os_log_impl(&dword_275819000, v19, v20, "Unable to find deeplinkURL %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x277C85860](v22, -1, -1);
        MEMORY[0x277C85860](v21, -1, -1);
      }
    }

    else
    {
      v27 = *(v9 + 32);
      v27(v68, v7, v8);
      v28 = v0;
      v29 = sub_27587C10C();
      if (v29)
      {
        v30 = v29;
        v64 = v27;
        v65 = v16 + 32;
        v31 = sub_2759BA258();
        v32 = sub_2759BA258();
        v33 = objc_opt_self();
        v63 = [v33 bagForProfile:v31 profileVersion:v32];

        swift_getKeyPath();
        v69 = v28;
        v62 = sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
        sub_2759B8638();

        v34 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager;
        if (!*(v28 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager))
        {
          v61 = v30;
          v35 = sub_2759BA258();
          v36 = sub_2759BA258();
          v37 = [v33 bagForProfile:v35 profileVersion:v36];

          v38 = objc_allocWithZone(type metadata accessor for CommerceFlowManager());
          v39 = v61;
          v40 = sub_2758F1AA8(v61, v37);

          sub_275879900(v40);
          swift_getKeyPath();
          v69 = v28;
          sub_2759B8638();

          v41 = *(v28 + v34);
          if (v41)
          {
            *(v41 + OBJC_IVAR____TtC14iCloudSettings19CommerceFlowManager_flowCompletionDelegate + 8) = &off_2884834E0;
            swift_unknownObjectWeakAssign();
          }
        }

        v42 = sub_2759BA518();
        v43 = v67;
        (*(*(v42 - 8) + 56))(v67, 1, 1, v42);
        v44 = v66;
        v45 = v68;
        (*(v16 + 16))(v66, v68, v17);
        sub_2759BA4C8();
        v46 = v30;
        v47 = v17;
        v48 = v28;
        v49 = sub_2759BA4B8();
        v50 = v16;
        v51 = (*(v16 + 80) + 40) & ~*(v16 + 80);
        v52 = swift_allocObject();
        v53 = MEMORY[0x277D85700];
        *(v52 + 2) = v49;
        *(v52 + 3) = v53;
        *(v52 + 4) = v48;
        v64(&v52[v51], v44, v47);
        sub_27587D460(0, 0, v43, &unk_2759C8E70, v52);

        (*(v50 + 8))(v45, v47);
      }

      else
      {
        if (qword_280A0E358 != -1)
        {
          swift_once();
        }

        v54 = sub_2759B89A8();
        __swift_project_value_buffer(v54, qword_280A238E8);
        v55 = sub_2759B8988();
        v56 = sub_2759BA648();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = v8;
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v69 = v59;
          *v58 = 136315138;
          *(v58 + 4) = sub_2758937B8(0xD00000000000001DLL, 0x80000002759E15D0, &v69);
          _os_log_impl(&dword_275819000, v55, v56, "Unable to find account, bailing %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          MEMORY[0x277C85860](v59, -1, -1);
          MEMORY[0x277C85860](v58, -1, -1);

          (*(v16 + 8))(v68, v57);
        }

        else
        {

          (*(v16 + 8))(v68, v8);
        }
      }
    }
  }

  else
  {
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v23 = sub_2759B89A8();
    __swift_project_value_buffer(v23, qword_280A238E8);
    v68 = sub_2759B8988();
    v24 = sub_2759BA648();
    if (os_log_type_enabled(v68, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_275819000, v68, v24, "NDM should take priority aborting AMS Deeplink.", v25, 2u);
      MEMORY[0x277C85860](v25, -1, -1);
    }

    v26 = v68;
  }
}

uint64_t sub_27590E9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  sub_2759BA4C8();
  v4[23] = sub_2759BA4B8();
  v6 = sub_2759BA468();
  v4[24] = v6;
  v4[25] = v5;

  return MEMORY[0x2822009F8](sub_27590EA40, v6, v5);
}

uint64_t sub_27590EA40()
{
  v47 = v0;
  v1 = v0[22];
  swift_getKeyPath();
  v0[10] = v1;
  v0[26] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
  v0[27] = sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v0[28] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__navigationController;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[22];
    v5 = sub_27587C10C();
    v0[30] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v0[22];
      swift_getKeyPath();
      v0[10] = v7;
      sub_2759B8638();

      v8 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController;
      if (!*(v7 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController))
      {
        v9 = v0[22];
        sub_27587A118([objc_allocWithZone(ICSDataclassValidationController) initWithAccount:v6 presentingViewController:v3]);
      }

      v10 = v0[22];
      swift_getKeyPath();
      v0[10] = v10;
      sub_2759B8638();

      v11 = *(v7 + v8);
      v0[31] = v11;
      if (v11)
      {
        v12 = v0[19];
        v0[2] = v0;
        v0[7] = v0 + 18;
        v0[3] = sub_27590F03C;
        v13 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10D50, &qword_2759C8DA8);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_27590F81C;
        v0[13] = &block_descriptor_7;
        v0[14] = v13;
        [v11 validateAccessForDataclass:v12 completion:v0 + 10];

        return MEMORY[0x282200938](v0 + 2);
      }

      v37 = v0[23];

      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v38 = sub_2759B89A8();
      __swift_project_value_buffer(v38, qword_2815ADE70);
      v18 = sub_2759B8988();
      v39 = sub_2759BA648();
      v40 = os_log_type_enabled(v18, v39);
      v42 = v0[29];
      v41 = v0[30];
      if (!v40)
      {

        goto LABEL_23;
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_275819000, v18, v39, "Dataclass validation failed. Can't push the dataclass drill down view.", v43, 2u);
      MEMORY[0x277C85860](v43, -1, -1);
    }

    else
    {
      v26 = v0[23];

      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v27 = v0[19];
      v28 = sub_2759B89A8();
      __swift_project_value_buffer(v28, qword_2815ADE70);
      v29 = v27;
      v18 = sub_2759B8988();
      v30 = sub_2759BA648();

      if (os_log_type_enabled(v18, v30))
      {
        v31 = v0[19];
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v46 = v33;
        *v32 = 136315138;
        v34 = sub_2759BA298();
        v36 = sub_2758937B8(v34, v35, &v46);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_275819000, v18, v30, "No iCloud account found. Failed to handle action for dataclass [%s].", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x277C85860](v33, -1, -1);
        MEMORY[0x277C85860](v32, -1, -1);
      }
    }
  }

  else
  {
    v14 = v0[23];

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v15 = v0[19];
    v16 = sub_2759B89A8();
    __swift_project_value_buffer(v16, qword_2815ADE70);
    v17 = v15;
    v18 = sub_2759B8988();
    v19 = sub_2759BA648();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[19];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v46 = v22;
      *v21 = 136315138;
      v23 = sub_2759BA298();
      v25 = sub_2758937B8(v23, v24, &v46);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_275819000, v18, v19, "Can not show view for dataclass [%s] w/o a presenter.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x277C85860](v22, -1, -1);
      MEMORY[0x277C85860](v21, -1, -1);
    }
  }

LABEL_23:
  v44 = v0[1];

  return v44();
}

uint64_t sub_27590F03C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_27590F144, v2, v1);
}

uint64_t sub_27590F144()
{
  v77 = v0;
  v1 = *(v0 + 144);

  if ((v1 & 1) == 0)
  {
    v14 = *(v0 + 184);

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_2815ADE70);
    v7 = sub_2759B8988();
    v16 = sub_2759BA648();
    v17 = os_log_type_enabled(v7, v16);
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    if (v17)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_275819000, v7, v16, "Dataclass validation failed. Can't push the dataclass drill down view.", v20, 2u);
      MEMORY[0x277C85860](v20, -1, -1);
    }

    else
    {

      v7 = v18;
    }

    goto LABEL_42;
  }

  if (qword_2815ADD30 != -1)
  {
LABEL_48:
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "Dataclass validation succeeded.", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = *(v0 + 152);

  if (sub_27591D730(v6))
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 240);
    v10 = *(v0 + 176);
    v9 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);

    sub_27590F878(v13, v12, v11);

LABEL_42:
    v73 = *(v0 + 8);

    return v73();
  }

  v21 = *(v0 + 152);
  v22 = sub_2759B8988();
  v23 = sub_2759BA668();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 152);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v76 = v26;
    *v25 = 136315138;
    v27 = sub_2759BA298();
    v29 = sub_2758937B8(v27, v28, &v76);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_275819000, v22, v23, "App is not installed for dataclass: %s. Launching flow to present app download sheet.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x277C85860](v26, -1, -1);
    MEMORY[0x277C85860](v25, -1, -1);
  }

  v30 = *(v0 + 208);
  v31 = *(v0 + 216);
  v32 = *(v0 + 176);
  swift_getKeyPath();
  *(v0 + 80) = v32;
  sub_2759B8638();

  v33 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v34 = *(v32 + v33);
  if (!v34)
  {
LABEL_38:
    v61 = *(v0 + 184);
    v62 = *(v0 + 152);

    v63 = v62;
    v64 = sub_2759B8988();
    v65 = sub_2759BA648();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = *(v0 + 152);
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v76 = v68;
      *v67 = 136315138;
      v69 = sub_2759BA298();
      v71 = sub_2758937B8(v69, v70, &v76);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_275819000, v64, v65, "No iTunes item ID found for dataclass: %s. Still proceeding to show drill down as a fallback.", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x277C85860](v68, -1, -1);
      MEMORY[0x277C85860](v67, -1, -1);
    }

    v7 = *(v0 + 232);
    v39 = *(v0 + 240);
    v72 = *(v0 + 176);
    sub_27590F878(*(v0 + 152), *(v0 + 160), *(v0 + 168));
LABEL_41:

    goto LABEL_42;
  }

  v35 = *(*(v34 + OBJC_IVAR___ICSHomeDataModel_icloudAppsCard) + OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_apps);
  if (v35 >> 62)
  {
    v36 = sub_2759BA9E8();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v36)
  {
LABEL_31:

    goto LABEL_38;
  }

  v37 = 0;
  v75 = *(v0 + 152);
  while (1)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x277C846A0](v37, v35);
    }

    else
    {
      if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v38 = *(v35 + 8 * v37 + 32);
    }

    v39 = v38;
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v41 = *&v38[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_dataclass];
    v42 = *&v38[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_dataclass + 8];
    if (v41 == sub_2759BA298() && v42 == v43)
    {
      break;
    }

    v45 = sub_2759BAAC8();

    if (v45)
    {
      goto LABEL_33;
    }

    ++v37;
    if (v40 == v36)
    {
      goto LABEL_31;
    }
  }

LABEL_33:

  v46 = *&v39[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_iTunesItemId + 8];
  if (!v46)
  {

    goto LABEL_38;
  }

  v47 = *&v39[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_iTunesItemId];
  v48 = *(v0 + 176);
  v49 = *&v39[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_iTunesItemId + 8];

  v50 = sub_27587A858();
  if (!v50)
  {
    v7 = *(v0 + 240);
    v74 = *(v0 + 184);

    goto LABEL_41;
  }

  v7 = v50;
  v51 = *(v0 + 216);
  v52 = *(v0 + 224);
  v53 = *(v0 + 208);
  v54 = *(v0 + 176);
  swift_getKeyPath();
  *(v0 + 144) = v54;
  sub_2759B8638();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v56 = result;
    v58 = *(v0 + 232);
    v57 = *(v0 + 240);
    v59 = *(v0 + 184);

    v60 = [v56 topMostViewController];

    sub_275956A84(v47, v46, v60);

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

uint64_t sub_27590F81C(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

void sub_27590F878(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  v7 = a1;
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v75 = v11;
    *v10 = 136315138;
    v12 = sub_2759BA298();
    v14 = sub_2758937B8(v12, v13, &v75);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_275819000, v8, v9, "Showing view for dataclass: %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v15 = *MEMORY[0x277CB8960];
  v16 = sub_2759BA298();
  v18 = v17;
  if (v16 == sub_2759BA298() && v18 == v19)
  {
    goto LABEL_12;
  }

  v21 = sub_2759BAAC8();

  if (v21)
  {
LABEL_13:

    sub_27591023C();
    return;
  }

  v22 = *MEMORY[0x277CB8A08];
  v23 = sub_2759BA298();
  v25 = v24;
  if (v23 == sub_2759BA298() && v25 == v26)
  {
LABEL_12:

    goto LABEL_13;
  }

  v27 = sub_2759BAAC8();

  if (v27)
  {
    goto LABEL_13;
  }

  v28 = *MEMORY[0x277CB8A58];
  v29 = sub_2759BA298();
  v31 = v30;
  if (v29 == sub_2759BA298() && v31 == v32)
  {

LABEL_21:
    v34 = [objc_opt_self() buildViewControllerWithAccountManager:*(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager) dataclass:v28];
    osloga = v34;
    v35 = 0xD000000000000015;
    v36 = 0x80000002759E1500;
LABEL_22:
    sub_27590C4A0(v34, 1, 0, v35, v36);
LABEL_23:

    return;
  }

  v33 = sub_2759BAAC8();

  if (v33)
  {
    goto LABEL_21;
  }

  v37 = *MEMORY[0x277CB89C0];
  v38 = sub_2759BA298();
  v40 = v39;
  if (v38 == sub_2759BA298() && v40 == v41)
  {

LABEL_30:
    v34 = [objc_opt_self() buildViewControllerWithAccountManager:*(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager) dataclass:v37];
    osloga = v34;
    v36 = 0x80000002759E14E0;
    v35 = 0xD000000000000012;
    goto LABEL_22;
  }

  v42 = sub_2759BAAC8();

  if (v42)
  {
    goto LABEL_30;
  }

  v43 = *MEMORY[0x277CB89F8];
  v44 = sub_2759BA298();
  v46 = v45;
  if (v44 == sub_2759BA298() && v46 == v47)
  {

LABEL_35:
    v34 = [objc_opt_self() buildViewControllerWithAccountManager:*(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager) dataclass:v43];
    osloga = v34;
    v35 = 0x65746F4E776F6873;
    v36 = 0xEF29287765695673;
    goto LABEL_22;
  }

  v48 = sub_2759BAAC8();

  if (v48)
  {
    goto LABEL_35;
  }

  v49 = *MEMORY[0x277CB89D8];
  v50 = sub_2759BA298();
  v52 = v51;
  if (v50 != sub_2759BA298() || v52 != v53)
  {
    v54 = sub_2759BAAC8();

    if (v54)
    {
      goto LABEL_40;
    }

    v55 = *MEMORY[0x277CB89C8];
    v56 = sub_2759BA298();
    v58 = v57;
    if (v56 == sub_2759BA298() && v58 == v59)
    {
    }

    else
    {
      v60 = sub_2759BAAC8();

      if ((v60 & 1) == 0)
      {
        v66 = v7;
        osloga = sub_2759B8988();
        v67 = sub_2759BA648();

        if (os_log_type_enabled(osloga, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v75 = v69;
          *v68 = 136315138;
          v70 = sub_2759BA298();
          v72 = sub_2758937B8(v70, v71, &v75);

          *(v68 + 4) = v72;
          _os_log_impl(&dword_275819000, osloga, v67, "Action for dataclass (%s) not supported.", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          MEMORY[0x277C85860](v69, -1, -1);
          MEMORY[0x277C85860](v68, -1, -1);

          return;
        }

        goto LABEL_23;
      }
    }

    sub_275910450();
    sub_27591058C();
    swift_getKeyPath();
    v75 = v3;
    sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8638();

    v61 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__mailSettingsProvider);
    if (v61)
    {
      v62 = v61;
      v63 = a2;
      sub_2759B8898();
      v64 = 0;
    }

    else
    {
      swift_getKeyPath();
      v75 = v3;
      sub_2759B8638();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        v64 = 2;
        v63 = a2;
        goto LABEL_52;
      }

      v62 = Strong;
      v64 = 1;
      v63 = a2;
    }

LABEL_52:

    sub_27595287C(v64, v63, a3, sub_27594A594);

    return;
  }

LABEL_40:

  sub_2759100E8();
}

void sub_2759100E8()
{
  v1 = v0;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = [objc_opt_self() messagesCloudSettingsViewControllerWithAccountManager_];
  sub_27590C4A0(v6, 1, 0, 0xD000000000000012, 0x80000002759E1540);
}

void sub_27591023C()
{
  v0 = objc_opt_self();
  v1 = sub_2759BA258();
  v2 = sub_2759BA258();

  v3 = sub_2759BA258();
  v4 = NSClassFromString(v3);

  if (v4 && (swift_getObjCClassMetadata(), sub_275861AF8(0, &qword_280A0EF20, 0x277D75D28), swift_dynamicCastMetatype()))
  {
    oslog = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_27590C4A0(oslog, 1, 0, 0xD000000000000010, 0x80000002759E1520);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_2815ADE70);
    oslog = sub_2759B8988();
    v6 = sub_2759BA648();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      MEMORY[0x277C85860](v7, -1, -1);
    }
  }
}

void sub_275910450()
{
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  if (!*(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter))
  {
    swift_getKeyPath();
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_275879710([objc_allocWithZone(ICSCustomEmailPresenter) initWithAccountManager:*(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager) presenter:Strong]);
    }
  }
}

void sub_27591058C()
{
  v1 = v0;
  swift_getKeyPath();
  v13 = v0;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  if (!*(v0 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__mailSettingsProvider))
  {
    swift_getKeyPath();
    v13 = v0;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager);
      objc_allocWithZone(sub_2759B88B8());
      v5 = v4;
      v6 = v3;
      v7 = sub_2759B88A8();
      sub_27587A2C4(v7);
    }

    else
    {
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v8 = sub_2759B89A8();
      __swift_project_value_buffer(v8, qword_2815ADE70);
      v9 = sub_2759B8988();
      v10 = sub_2759BA648();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_2758937B8(0xD000000000000017, 0x80000002759E1560, &v13);
        _os_log_impl(&dword_275819000, v9, v10, "%s missing presentingController, mail buttons may not work as expected", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x277C85860](v12, -1, -1);
        MEMORY[0x277C85860](v11, -1, -1);
      }
    }
  }
}

void sub_2759107E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v41 - v6;
  if ([objc_opt_self() isCloudPrivateRelayAllowed])
  {
    swift_getKeyPath();
    v42[0] = v1;
    sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8638();

    v8 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    v9 = *(v1 + v8);
    if (v9)
    {
      if (*(*(v9 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_isiCloudPlusSubscriber))
      {
LABEL_4:
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v10 = sub_2759B89A8();
        __swift_project_value_buffer(v10, qword_2815ADE70);
        v11 = sub_2759B8988();
        v12 = sub_2759BA668();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_275819000, v11, v12, "Showing private relay settings.", v13, 2u);
          MEMORY[0x277C85860](v13, -1, -1);
        }

        v14 = sub_2759BA518();
        (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
        sub_2759BA4C8();

        v15 = v2;
        v16 = sub_2759BA4B8();
        v17 = swift_allocObject();
        v18 = MEMORY[0x277D85700];
        v17[2] = v16;
        v17[3] = v18;
        v17[4] = v15;
        v17[5] = a1;
        sub_27587D460(0, 0, v7, &unk_2759C8FB0, v17);

        return;
      }
    }

    else if ([objc_opt_self() isCloudSubscriber])
    {
      goto LABEL_4;
    }

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v23 = sub_2759B89A8();
    __swift_project_value_buffer(v23, qword_2815ADE70);
    v24 = sub_2759B8988();
    v25 = sub_2759BA668();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_275819000, v24, v25, "User is not a subscriber. showPrivateRelayView will show freshmint instead.", v26, 2u);
      MEMORY[0x277C85860](v26, -1, -1);
    }

    swift_getKeyPath();
    v42[0] = v2;
    sub_2759B8638();

    v27 = *&v2[v8];
    if (v27)
    {
      v28 = *(v27 + OBJC_IVAR___ICSHomeDataModel_upsellCard);
      if (v28)
      {
        v29 = *(v28 + OBJC_IVAR____TtC14iCloudSettings10UpsellCard_action);
        v30 = sub_2759BA518();
        (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
        sub_2759BA4C8();
        v31 = v29;
        v32 = v2;
        v33 = sub_2759BA4B8();
        v34 = swift_allocObject();
        v35 = MEMORY[0x277D85700];
        v34[2] = v33;
        v34[3] = v35;
        v34[4] = v32;
        v34[5] = v31;
        sub_27587D460(0, 0, v7, &unk_2759C8FA0, v34);

        return;
      }
    }

    if (a1)
    {
      v41[1] = 1752457584;
      v41[2] = 0xE400000000000000;
      sub_2759BA878();
      if (*(a1 + 16))
      {
        v36 = sub_2758A24F8(v42);
        if (v37)
        {
          sub_275864C94(*(a1 + 56) + 32 * v36, &v43);
          sub_275864C40(v42);
          if (*(&v44 + 1))
          {
            if (swift_dynamicCast())
            {
              sub_27587C744(v42[0], v42[1]);
              return;
            }

            goto LABEL_33;
          }

LABEL_32:
          sub_27586BF04(&v43, &qword_280A0ED70, &qword_2759C6C60);
LABEL_33:
          v38 = sub_2759B8988();
          v39 = sub_2759BA648();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            MEMORY[0x277C85860](v40, -1, -1);
          }

          return;
        }
      }

      sub_275864C40(v42);
    }

    v43 = 0u;
    v44 = 0u;
    goto LABEL_32;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v19 = sub_2759B89A8();
  __swift_project_value_buffer(v19, qword_2815ADE70);
  v41[0] = sub_2759B8988();
  v20 = sub_2759BA648();
  if (os_log_type_enabled(v41[0], v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_275819000, v41[0], v20, "Private Relay is restricted by profile. Skipping showPrivateRelayView action.", v21, 2u);
    MEMORY[0x277C85860](v21, -1, -1);
  }

  v22 = v41[0];
}

void sub_275910ECC()
{
  v1 = v0;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "Showing HME view.", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  sub_275879564([objc_allocWithZone(ICSHMEPresenter) initWithAccountManager_]);
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v6 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter;
  v7 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter);
  if (v7)
  {
    [v7 setDelegate_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v8 = *(v1 + v6);
  if (v8)
  {
    swift_getKeyPath();
    v9 = v8;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [v9 showHMEWithPresenter_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_275911124()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!v3)
  {
    goto LABEL_27;
  }

  v4 = *(v3 + OBJC_IVAR___ICSHomeDataModel_icloudPlusCard);
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = *(v4 + OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_features);
  if (v5 >> 62)
  {
    v6 = sub_2759BA9E8();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v1;

  if (!v6)
  {
LABEL_20:

LABEL_27:
    if (qword_2815ADD30 != -1)
    {
LABEL_37:
      swift_once();
    }

    v23 = sub_2759B89A8();
    __swift_project_value_buffer(v23, qword_2815ADE70);
    v24 = sub_2759B8988();
    v25 = sub_2759BA668();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_275819000, v24, v25, "Do not have enough info to show premiumApp view.", v26, 2u);
      MEMORY[0x277C85860](v26, -1, -1);
    }

    return;
  }

  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x277C846A0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = *&v8[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId + 8];
    if (v11)
    {
      v12 = *&v8[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId] == 0x5F4D55494D455250 && v11 == 0xEB00000000505041;
      if (v12 || (sub_2759BAAC8() & 1) != 0)
      {
        break;
      }
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_20;
    }
  }

  if (!*&v9[OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier + 8] || (v13 = *&v9[OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId + 8]) == 0)
  {

    goto LABEL_27;
  }

  v14 = *&v9[OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier];
  v15 = *&v9[OBJC_IVAR____TtC14iCloudSettings7Feature_iTunesItemId];
  v16 = *&v9[OBJC_IVAR____TtC14iCloudSettings7Feature_bundleIdentifier + 8];

  if (sub_2758814A8())
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    v18 = [objc_opt_self() defaultWorkspace];
    if (v18)
    {
      v19 = v18;

      v20 = sub_2759BA258();

      aBlock[4] = sub_275918310;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_275956A0C;
      aBlock[3] = &block_descriptor_176;
      v21 = _Block_copy(aBlock);
      v22 = v17;
      [v19 openApplicationWithBundleIdentifier:v20 usingConfiguration:v22 completionHandler:v21];

      _Block_release(v21);
      return;
    }

    __break(1u);
  }

  else
  {
    v27 = sub_27587A858();
    if (!v27)
    {

      return;
    }

    v28 = v27;
    swift_getKeyPath();
    aBlock[0] = v32;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;

      v31 = [v30 topMostViewController];

      sub_275956A84(v15, v13, v31);

      return;
    }
  }

  __break(1u);
}

id sub_275911618()
{
  v1 = v0;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "Showing Custom Email Domain view.", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  sub_275910450();
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  return [*(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter) showCustomEmailDomainView];
}

uint64_t sub_275911788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_2759BA4C8();
  v5[3] = sub_2759BA4B8();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_27588B550;

  return sub_275911844(a5);
}

uint64_t sub_275911844(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = sub_2759B8508();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v2[17] = *(v5 + 64);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  sub_2759BA4C8();
  v2[20] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275911984, v7, v6);
}

uint64_t sub_275911984()
{
  v64 = v0;
  v1 = v0[20];
  v2 = v0[12];

  v4 = *(v2 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
  v3 = *(v2 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8);
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  sub_2759B84F8();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_27586BF04(v0[14], &unk_280A0EB10, &qword_2759C0740);
LABEL_4:
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v8 = v0[12];
    v9 = sub_2759B89A8();
    __swift_project_value_buffer(v9, qword_2815ADE70);
    v10 = v8;
    v11 = sub_2759B8988();
    v12 = sub_2759BA648();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v63 = v14;
      *v13 = 136315138;
      if (v3)
      {
        v15 = v3;
      }

      else
      {
        v4 = 7104878;
        v15 = 0xE300000000000000;
      }

      v16 = sub_2758937B8(v4, v15, &v63);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_275819000, v11, v12, "Tried to create %s but could not create URL instance.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x277C85860](v14, -1, -1);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    goto LABEL_31;
  }

  v17 = v0[13];
  v61 = *(v0[16] + 32);
  v61(v0[19], v0[14], v0[15]);
  v18 = [objc_allocWithZone(MEMORY[0x277CDB708]) init];
  [v18 setBarCollapsingEnabled_];
  v19 = objc_allocWithZone(MEMORY[0x277CDB700]);
  v20 = v18;
  v21 = sub_2759B84B8();
  v22 = [v19 initWithURL:v21 configuration:v20];

  v62 = v20;
  sub_275879F28(v22);
  swift_getKeyPath();
  v0[8] = v17;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v23 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController;
  v24 = *(v17 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController);
  if (v24)
  {
    [v24 setDelegate_];
  }

  v25 = objc_opt_self();
  v26 = [v25 currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if (v27 == 1 || (v28 = [v25 currentDevice], v29 = objc_msgSend(v28, sel_userInterfaceIdiom), v28, v29 == 6))
  {
    v30 = v0[13];
    swift_getKeyPath();
    v0[11] = v30;
    sub_2759B8638();

    v31 = *(v17 + v23);
    if (!v31)
    {
      goto LABEL_21;
    }

    v32 = 2;
  }

  else
  {
    v33 = v0[13];
    swift_getKeyPath();
    v0[9] = v33;
    sub_2759B8638();

    v31 = *(v17 + v23);
    if (!v31)
    {
      goto LABEL_21;
    }

    v32 = 7;
  }

  [v31 setModalPresentationStyle_];
LABEL_21:
  v34 = v0[13];
  swift_getKeyPath();
  v0[10] = v34;
  sub_2759B8638();

  v35 = *(v17 + v23);
  if (v35)
  {
    v36 = v0[13];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v38 = Strong;
      v39 = v0[18];
      v41 = v0[16];
      v40 = v0[17];
      v42 = v0[15];
      (*(v41 + 16))(v39, v0[19], v42);
      v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v44 = swift_allocObject();
      v61(v44 + v43, v39, v42);
      v0[6] = sub_27591EAE8;
      v0[7] = v44;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_27586249C;
      v0[5] = &block_descriptor_187;
      v45 = _Block_copy(v0 + 2);
      v46 = v0[7];
      v47 = v35;

      [v38 presentViewController:v47 animated:1 completion:v45];
      _Block_release(v45);
    }

    (*(v0[16] + 8))(v0[19], v0[15]);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v48 = sub_2759B89A8();
    __swift_project_value_buffer(v48, qword_2815ADE70);
    v49 = sub_2759B8988();
    v50 = sub_2759BA648();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[19];
    v53 = v0[15];
    v54 = v0[16];
    if (v51)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_275819000, v49, v50, "Unable to instantiate Safari Web View controller with provided URL. Bailing.", v55, 2u);
      MEMORY[0x277C85860](v55, -1, -1);
    }

    else
    {
    }

    (*(v54 + 8))(v52, v53);
  }

LABEL_31:
  v57 = v0[18];
  v56 = v0[19];
  v58 = v0[14];

  v59 = v0[1];

  return v59();
}

uint64_t sub_275912078(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v30 - v8;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v10 = sub_2759B89A8();
  __swift_project_value_buffer(v10, qword_2815ADE70);
  v11 = sub_2759B8988();
  v12 = sub_2759BA668();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_275819000, v11, v12, "Launching family sharing flow.", v13, 2u);
    MEMORY[0x277C85860](v13, -1, -1);
  }

  [v3 didStartLoadingWithView_];
  v14 = MEMORY[0x277D837D0];
  if (!a1)
  {
    v41 = MEMORY[0x277D837D0];
    *&v40 = 0x6974634172657355;
    *(&v40 + 1) = 0xEA00000000006E6FLL;
    v39 = MEMORY[0x277D839B0];
    LOBYTE(v38[0]) = 1;
    v37 = MEMORY[0x277D837D0];
    *&v36 = 0x6E6F74747562;
    *(&v36 + 1) = 0xE600000000000000;
    goto LABEL_22;
  }

  if (*(a1 + 16) && (v15 = sub_27586F8A0(0x6F74736575716572, 0xE900000000000072), (v16 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v15, v38);
    sub_2758A2ECC(v38, &v40);
    if (!*(a1 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v41 = v14;
    *&v40 = 0x6974634172657355;
    *(&v40 + 1) = 0xEA00000000006E6FLL;
    if (!*(a1 + 16))
    {
      goto LABEL_14;
    }
  }

  v17 = sub_27586F8A0(0x707369447473756DLL, 0xEB0000000079616CLL);
  if (v18)
  {
    sub_275864C94(*(a1 + 56) + 32 * v17, &v36);
    sub_2758A2ECC(&v36, v38);
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_14:
  v39 = MEMORY[0x277D839B0];
  LOBYTE(v38[0]) = 1;
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

LABEL_15:
  v19 = sub_27586F8A0(0x457972756372656DLL, 0xEC0000007972746ELL);
  if (v20)
  {
    sub_275864C94(*(a1 + 56) + 32 * v19, &v34);
    sub_2758A2ECC(&v34, &v36);
    if (!*(a1 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_18:
  v37 = v14;
  *&v36 = 0x6E6F74747562;
  *(&v36 + 1) = 0xE600000000000000;
  if (!*(a1 + 16))
  {
LABEL_22:
    v35 = v14;
    strcpy(&v34, "sendInvitation");
    HIBYTE(v34) = -18;
    goto LABEL_23;
  }

LABEL_19:
  v21 = sub_27586F8A0(1701869940, 0xE400000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_275864C94(*(a1 + 56) + 32 * v21, v33);
  sub_2758A2ECC(v33, &v34);
LABEL_23:
  v23 = sub_2759BA518();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  sub_275864C94(&v40, v33);
  sub_275864C94(v38, v32);
  sub_275864C94(&v36, v31);
  sub_275864C94(&v34, v30);
  sub_2759BA4C8();
  v24 = a2;
  v25 = v3;
  v26 = sub_2759BA4B8();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  sub_2758A2ECC(v33, (v27 + 32));
  sub_2758A2ECC(v32, (v27 + 64));
  sub_2758A2ECC(v31, (v27 + 96));
  sub_2758A2ECC(v30, (v27 + 128));
  *(v27 + 160) = v25;
  *(v27 + 168) = a2;
  sub_27587D460(0, 0, v9, &unk_2759C8EC0, v27);

  __swift_destroy_boxed_opaque_existential_1(&v34);
  __swift_destroy_boxed_opaque_existential_1(&v36);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return __swift_destroy_boxed_opaque_existential_1(&v40);
}