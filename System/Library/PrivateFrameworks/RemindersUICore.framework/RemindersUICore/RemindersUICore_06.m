char *sub_21D172200(uint64_t a1)
{
  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  if (!*(a1 + 32))
  {
    type metadata accessor for RemindersUICoreBundleLookupObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_21DBFA12C();

    v13 = sub_21DBFA12C();
    v14 = [v11 URLForResource:v12 withExtension:v13];

    if (v14)
    {
      sub_21DBF546C();

      (*(v4 + 32))(v9, v6, v3);
      v15 = sub_21DBFA11C();
      v16 = (v4 + 8);
      if (!v1)
      {
        v6 = v15;
        (*v16)(v9, v3);
        goto LABEL_3;
      }

      (*v16)(v9, v3);
    }

    sub_21D176F60();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    return v6;
  }

  v6 = *(a1 + 24);
LABEL_3:
  sub_21DBF8E0C();
  return v6;
}

uint64_t sub_21D172484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersPrintingViewModel.Item(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D179E38(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v17 = v11[5];
    v18 = v11[3];
    v34 = v11[4];
    v35 = v17;
    v19 = v11[5];
    v36[0] = v11[6];
    *(v36 + 10) = *(v11 + 106);
    v20 = v11[1];
    v30 = *v11;
    v31 = v20;
    v21 = v11[3];
    v23 = *v11;
    v22 = v11[1];
    v32 = v11[2];
    v33 = v21;
    v28[4] = v34;
    v28[5] = v19;
    v29[0] = v11[6];
    *(v29 + 10) = *(v11 + 106);
    v28[0] = v23;
    v28[1] = v22;
    v28[2] = v32;
    v28[3] = v18;
    v13 = sub_21D1726C0(v28);
    v15 = v24;
    result = sub_21D179E9C(&v30);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21D17A79C(v11, v8, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
    v13 = sub_21D172B7C(v8, a2);
    v15 = v14;
    result = sub_21D17A824(v8, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
LABEL_5:
    *a3 = v13;
    a3[1] = v15;
    return result;
  }

  *&v30 = 7760228;
  *(&v30 + 1) = 0xE300000000000000;
  *&v31 = &unk_282EA6198;
  *(&v31 + 1) = MEMORY[0x277D84F90];
  v32 = 0uLL;
  *&v33 = MEMORY[0x277D84F90];
  v25 = sub_21D174BD4();
  v27 = v26;

  swift_bridgeObjectRelease_n();

  *a3 = v25;
  a3[1] = v27;
  return result;
}

uint64_t sub_21D1726C0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 64);
  v5 = v4 >> 6;
  v6 = MEMORY[0x277D84F90];
  if (v4 >> 6 > 1)
  {
    if (v5 == 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = a1[4];
    if (!v5)
    {
      v10 = v1;
      v49 = a1[2];
      v50 = v8;
      v51 = v9;
      v52 = a1[5];
      v53 = a1[6];
      v54 = a1[7];
      LOBYTE(v55) = v4 & 1;
      v44 = v53;
      v45 = v52;
      v43 = v54;
      sub_21D0FB960(v7, v8, v9, v52, v53, v54, v4 & 1);
      v11 = TTRListColors.Color.nativeColor.getter();
      swift_beginAccess();
      v12 = *(v1 + 40);
      v46 = v8;
      if (*(v12 + 16))
      {
        v13 = sub_21D17E0CC(v11);
        if (v14)
        {
          v15 = (*(v12 + 56) + 16 * v13);
          v16 = *v15;
          v17 = v15[1];
          sub_21DBF8E0C();
LABEL_14:
          MEMORY[0x223D42AA0](0x28726176203ALL, 0xE600000000000000);
          MEMORY[0x223D42AA0](v16, v17);

          MEMORY[0x223D42AA0](15145, 0xE200000000000000);
          swift_endAccess();

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_21DC08D00;
          *(v38 + 32) = 0x726F6C6F63;
          *(v38 + 40) = 0xE500000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58328);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_21DC08D00;
          v48 = 0;
          *(v39 + 32) = v3;
          *(v39 + 40) = v2;
          *(v39 + 88) = 0;
          sub_21DBF8E0C();
          sub_21D179EF0(v7, v46, v9, v45, v44, v43, v4);
          goto LABEL_15;
        }

        v42 = v7;
      }

      else
      {
        v42 = v7;
      }

      strcpy(v47, "--list-color-");
      HIWORD(v47[1]) = -4864;
      v34 = sub_21DBFC5BC();
      MEMORY[0x223D42AA0](v34);

      v16 = v47[0];
      v17 = v47[1];
      v35 = v11;
      v36 = v11;
      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47[0] = *(v10 + 40);
      *(v10 + 40) = 0x8000000000000000;
      sub_21D4768E0(v16, v17, v36, isUniquelyReferenced_nonNull_native);

      v11 = v35;
      *(v10 + 40) = v47[0];
      v7 = v42;
      goto LABEL_14;
    }

    if ((v9 & 1) == 0)
    {
      v19 = sub_21DBFA12C();
      v20 = [v19 substringWithRange_];
      v21 = sub_21DBFA16C();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58328);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_21DC08D00;
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      *(v24 + 88) = 0;
      v25 = [v19 substringToIndex_];
      v26 = sub_21DBFA16C();
      v28 = v27;

      v29 = [v19 substringFromIndex_];
      v30 = sub_21DBFA16C();
      v32 = v31;

      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_21DC08D10;
      LOBYTE(v47[0]) = 0;
      *(v33 + 32) = v26;
      *(v33 + 40) = v28;
      *(v33 + 88) = 0;
      v48 = 1;
      *(v33 + 96) = 1851879539;
      *(v33 + 104) = 0xE400000000000000;
      *(v33 + 112) = &unk_282EA6048;
      *(v33 + 120) = v6;
      *(v33 + 128) = 0;
      *(v33 + 136) = 0;
      *(v33 + 144) = v24;
      *(v33 + 152) = 1;
      LOBYTE(v49) = 0;
      *(v33 + 160) = v30;
      *(v33 + 168) = v32;
      *(v33 + 216) = 0;

      goto LABEL_15;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58328);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21DC08D00;
  LOBYTE(v49) = 0;
  *(v18 + 32) = v3;
  *(v18 + 40) = v2;
  *(v18 + 88) = 0;
  sub_21DBF8E0C();
LABEL_15:
  v40 = sub_21D174BD4();

  return v40;
}

uint64_t sub_21D172B7C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for TTRRemindersPrintingViewModel(0) + 32);
  v93 = v7;
  v11 = *(v7 + 16);
  v94 = v6;
  v11(v9, a2 + v10, v6);
  v12 = *a1;
  v13 = 0x800000021DC440F0;
  v14 = 0xD000000000000016;
  if ((v12 & 1) == 0)
  {
    v14 = 0x6576656C2D706F74;
    v13 = 0xE90000000000006CLL;
  }

  if (v12 == 2)
  {
    v15 = 0x6B736174627573;
  }

  else
  {
    v15 = v14;
  }

  if (v12 == 2)
  {
    v16 = 0xE700000000000000;
  }

  else
  {
    v16 = v13;
  }

  v17 = a1[16];
  if (v17)
  {
    v18 = 0x6574656C706D6F63;
  }

  else
  {
    v18 = 0;
  }

  if (a1[16])
  {
    v19 = 0xE900000000000064;
  }

  else
  {
    v19 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21DC08D10;
  *(v20 + 32) = 0xD000000000000012;
  *(v20 + 40) = 0x800000021DC43FC0;
  *(v20 + 48) = v15;
  *(v20 + 56) = v16;
  *(v20 + 64) = v18;
  *(v20 + 72) = v19;
  v115 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
  sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
  v21 = sub_21DBFA41C();

  v115 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  v23 = sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v92 = v22;
  v91 = v23;
  v86 = sub_21DBFA07C();
  v87 = v24;

  v25 = *(a1 + 1);
  v90 = v3;
  v88 = sub_21D175460(v17, v25);
  v89 = v26;
  v28 = *(a1 + 3);
  v27 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58328);
  v29 = swift_allocObject();
  v95 = xmmword_21DC08D00;
  *(v29 + 16) = xmmword_21DC08D00;
  v100 = 0;
  *(v29 + 32) = v28;
  *(v29 + 40) = v27;
  *(v29 + 88) = 0;
  v30 = MEMORY[0x277D84F90];
  v115 = 7760228;
  v116 = 0xE300000000000000;
  v117 = &unk_282EA6168;
  v118 = MEMORY[0x277D84F90];
  v119 = 0;
  v120 = 0;
  v121 = v29;
  sub_21DBF8E0C();
  v83 = sub_21D174BD4();
  v84 = v31;

  v32 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v80 = a1[v32[13]];
  v33 = *(a1 + 6);
  if (v33)
  {
    v34 = *(a1 + 5);
    v35 = swift_allocObject();
    *(v35 + 16) = v95;
    LOBYTE(v101) = 0;
    *(v35 + 32) = v34;
    *(v35 + 40) = v33;
    *(v35 + 88) = 0;
    v108 = 7760228;
    v109 = 0xE300000000000000;
    v110 = &unk_282EA60A8;
    v111 = v30;
    v112 = 0;
    v113 = 0;
    v114 = v35;
    sub_21DBF8E0C();
    v82 = sub_21D174BD4();
    v81 = v36;

    v37 = *(a1 + 8);
    if (v37)
    {
LABEL_17:
      v38 = *(a1 + 7);
      v39 = swift_allocObject();
      *(v39 + 16) = v95;
      LOBYTE(v97) = 0;
      *(v39 + 32) = v38;
      *(v39 + 40) = v37;
      *(v39 + 88) = 0;
      v101 = 7760228;
      v102 = 0xE300000000000000;
      v103 = &unk_282EA60E8;
      v104 = v30;
      v105 = 0;
      v106 = 0;
      v107 = v39;
      sub_21DBF8E0C();
      *&v95 = sub_21D174BD4();
      v79 = v40;

      goto LABEL_20;
    }
  }

  else
  {
    v82 = 0;
    v81 = 0;
    v37 = *(a1 + 8);
    if (v37)
    {
      goto LABEL_17;
    }
  }

  *&v95 = 0;
  v79 = 0;
LABEL_20:
  v41 = *(a1 + 10);
  v42 = a1[88];
  v97 = *(a1 + 9);
  v98 = v41;
  v99 = v42;
  v43 = *(a1 + 12);
  v44 = *(a1 + 13);
  sub_21DBF8E0C();
  v77 = sub_21D179F14(&v97, v43, v44);
  v46 = v45;

  v47 = v90;
  v48 = sub_21D1756A0(&a1[v32[12]], v9);
  v50 = v49;
  v78 = v51;
  v53 = v52;
  v54 = *(*&a1[v32[14]] + 16);
  v85 = v9;
  if (v54)
  {
    v90 = sub_21D175998(a1, v47, v9);
    v56 = v55;
  }

  else
  {
    v90 = 0;
    v56 = 0;
  }

  v97 = 0;
  v98 = 0xE000000000000000;
  sub_21DBFBEEC();
  MEMORY[0x223D42AA0](0x616C63207669643CLL, 0xEC000000223D7373);
  MEMORY[0x223D42AA0](v86, v87);

  MEMORY[0x223D42AA0](0xD000000000000038, 0x800000021DC43FE0);
  MEMORY[0x223D42AA0](v88, v89);

  MEMORY[0x223D42AA0](0xD00000000000006CLL, 0x800000021DC44020);
  MEMORY[0x223D42AA0](v83, v84);

  MEMORY[0x223D42AA0](0x202020202020200ALL, 0xED00002020202020);
  if (v80)
  {
    v57 = 0xD00000000000001DLL;
  }

  else
  {
    v57 = 0;
  }

  if (v80)
  {
    v58 = 0x800000021DC440D0;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  MEMORY[0x223D42AA0](v57, v58);

  MEMORY[0x223D42AA0](0x202020202020200ALL, 0xED00002020202020);
  if (v50)
  {
    v59 = v48;
  }

  else
  {
    v59 = 0;
  }

  if (v50)
  {
    v60 = v50;
  }

  else
  {
    v60 = 0xE000000000000000;
  }

  MEMORY[0x223D42AA0](v59, v60);

  MEMORY[0x223D42AA0](0xD000000000000018, 0x800000021DC44090);
  if (v81)
  {
    v61 = v82;
  }

  else
  {
    v61 = 0;
  }

  if (v81)
  {
    v62 = v81;
  }

  else
  {
    v62 = 0xE000000000000000;
  }

  MEMORY[0x223D42AA0](v61, v62);

  MEMORY[0x223D42AA0](0x202020202020200ALL, 0xE900000000000020);
  if (v79)
  {
    v63 = v95;
  }

  else
  {
    v63 = 0;
  }

  if (v79)
  {
    v64 = v79;
  }

  else
  {
    v64 = 0xE000000000000000;
  }

  MEMORY[0x223D42AA0](v63, v64);

  MEMORY[0x223D42AA0](0x202020202020200ALL, 0xE900000000000020);
  if (v46)
  {
    v65 = v77;
  }

  else
  {
    v65 = 0;
  }

  if (v46)
  {
    v66 = v46;
  }

  else
  {
    v66 = 0xE000000000000000;
  }

  MEMORY[0x223D42AA0](v65, v66);

  MEMORY[0x223D42AA0](0x202020202020200ALL, 0xE900000000000020);
  if (v53)
  {
    v67 = v78;
  }

  else
  {
    v67 = 0;
  }

  if (v53)
  {
    v68 = v53;
  }

  else
  {
    v68 = 0xE000000000000000;
  }

  MEMORY[0x223D42AA0](v67, v68);

  MEMORY[0x223D42AA0](0x202020202020200ALL, 0xE900000000000020);
  if (v56)
  {
    v69 = v90;
  }

  else
  {
    v69 = 0;
  }

  if (v56)
  {
    v70 = v56;
  }

  else
  {
    v70 = 0xE000000000000000;
  }

  MEMORY[0x223D42AA0](v69, v70);

  MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC440B0);
  v71 = v97;
  v72 = v98;
  v73 = swift_allocObject();
  *(v73 + 16) = MEMORY[0x277D84F90];
  v74 = (v73 + 16);
  v97 = v71;
  v98 = v72;
  sub_21D176F0C();

  sub_21DBFBB2C();

  swift_beginAccess();
  v96 = *v74;
  sub_21DBF8E0C();
  v75 = sub_21DBFA07C();
  (*(v93 + 8))(v85, v94);

  return v75;
}

uint64_t sub_21D173584(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_21D18E698(0, v1, 0);
  v2 = v29;
  v4 = a1 + 64;
  result = sub_21DBFBCCC();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v24 = v1;
  v25 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v26 = v7;
    v11 = (*(a1 + 56) + 16 * v6);
    v12 = v11[1];
    v13 = *(v29 + 16);
    v14 = *(v29 + 24);
    v27 = *v11;
    v28 = v13 + 1;
    v15 = *(*(a1 + 48) + 8 * v6);
    result = sub_21DBF8E0C();
    if (v13 >= v14 >> 1)
    {
      result = sub_21D18E698((v14 > 1), v28, 1);
    }

    *(v29 + 16) = v28;
    v16 = (v29 + 24 * v13);
    v16[4] = v27;
    v16[5] = v12;
    v16[6] = v15;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v25;
    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_21D15746C(v6, v25, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_21D15746C(v6, v25, 0);
    }

LABEL_4:
    v7 = v26 + 1;
    v6 = v9;
    if (v26 + 1 == v24)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21D1737DC(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_21D18E678(0, v5, 0);
  v6 = v20;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(v19, v10);
    if (v4)
    {
      break;
    }

    v13 = v19[0];
    v12 = v19[1];
    v20 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_21D18E678((v14 > 1), v15 + 1, 1);
      v6 = v20;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D173940(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v37 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v8 = a3;
    v9 = a3 + 64;
    v10 = sub_21DBFBCCC();
    v11 = 0;
    v31 = *(a3 + 36);
    v29 = a3 + 72;
    v30 = v5;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v8 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_20;
      }

      v33 = v11;
      v15 = *(v8 + 56);
      v16 = v8;
      v17 = *(*(v8 + 48) + 8 * v10);
      v18 = *(v15 + 8 * v10);
      v19 = v18;
      v34 = v17;
      v35 = v18;
      a1(&v36, &v34);
      if (v4)
      {
        goto LABEL_24;
      }

      v4 = 0;
      v20 = v35;

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v12 = 1 << *(v16 + 32);
      if (v10 >= v12)
      {
        goto LABEL_21;
      }

      v21 = *(v9 + 8 * v14);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v8 = v16;
      if (v31 != *(v16 + 36))
      {
        goto LABEL_23;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v12 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v30;
      }

      else
      {
        v23 = v14 << 6;
        v24 = v14 + 1;
        v13 = v30;
        v25 = (v29 + 8 * v14);
        while (v24 < (v12 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            v12 = __clz(__rbit64(v26)) + v23;
            break;
          }
        }
      }

      v11 = v33 + 1;
      v10 = v12;
      if (v33 + 1 == v13)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v28 = v35;

    __break(1u);
  }

  return result;
}

uint64_t sub_21D173B74(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_21D173CE8(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x277D84F90];
  sub_21D18EB04(0, v10, 0);
  v11 = v22;
  for (i = (a3 + 48); ; i += 3)
  {
    v13 = *(i - 1);
    v14 = *i;
    v21[0] = *(i - 2);
    v21[1] = v13;
    v21[2] = v14;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v19(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v11;
    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_21D18EB04(v15 > 1, v16 + 1, 1);
      v11 = v22;
    }

    *(v11 + 16) = v16 + 1;
    sub_21D0D523C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_27CE65260);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D173F24(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v28 = MEMORY[0x277D84F90];
  sub_21D18ED30(0, v5, 0);
  v6 = v28;
  for (i = (a3 + 72); ; i += 6)
  {
    v10 = *(i - 3);
    v11 = *(i - 2);
    v12 = *(i - 1);
    v13 = *i;
    v21 = *(i - 5);
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    a1(&v26, &v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v14 = v26;
    v15 = v27;
    v28 = v6;
    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      v20 = v27;
      sub_21D18ED30((v16 > 1), v17 + 1, 1);
      v15 = v20;
      v6 = v28;
    }

    *(v6 + 16) = v17 + 1;
    v18 = v6 + 24 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D17408C(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_21DBFA28C();
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v9 = v7;
  v25 = MEMORY[0x277D84F90];
  sub_21D18EF24(0, v7 & ~(v7 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v8 = v25;
    v20 = v9;
    while (!__OFADD__(v10, 1))
    {
      v22 = v10 + 1;
      v11 = a4;
      v23[0] = sub_21DBFA3CC();
      v23[1] = v12;
      a1(v24, v23);
      if (v5)
      {
        goto LABEL_12;
      }

      v5 = 0;

      v13 = v24[0];
      v14 = v24[1];
      v25 = v8;
      v15 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v15 >= v16 >> 1)
      {
        v19 = v24[0];
        sub_21D18EF24((v16 > 1), v15 + 1, 1);
        v13 = v19;
        v8 = v25;
      }

      *(v8 + 16) = v15 + 1;
      v17 = v8 + 16 * v15;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      a4 = v11;
      sub_21DBFA29C();
      ++v10;
      if (v22 == v20)
      {
        return v8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_12:

  __break(1u);
  return result;
}

uint64_t sub_21D1742D4(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;
      sub_21DBF8E0C();
      a1(&v12, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_21D174430(void (*a1)(id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v26 = a6;
  v27 = a1;
  v8 = v6;
  v28 = a2;
  v10 = a4(0);
  v25 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v30 = MEMORY[0x277D84F90];
    (a5)(0, i & ~(i >> 63), 0, v11);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v30;
    v23 = i;
    v24 = a3 & 0xC000000000000001;
    v21 = a5;
    v22 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a5 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v24)
      {
        v17 = MEMORY[0x223D44740](v15, a3);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v17 = *(a3 + 8 * v15 + 32);
      }

      i = v17;
      v29 = v17;
      v27(&v29);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;

      v30 = v16;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        v21(v18 > 1, v19 + 1, 1);
        v16 = v30;
      }

      *(v16 + 16) = v19 + 1;
      sub_21D17A79C(v13, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19, v26);
      ++v15;
      if (a5 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_21D1746BC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(BOOL, unint64_t, uint64_t), uint64_t (*a7)(void))
{
  v30 = a7;
  v31 = a1;
  v32 = a2;
  v11 = a5(0);
  v29 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  v33 = a4;
  v15 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = v7;
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v36 = MEMORY[0x277D84F90];
  (a6)(0, v15 & ~(v15 >> 63), 0, v12);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v27 = a6;
    v17 = 0;
    v16 = v36;
    v18 = v33;
    if (v33 <= a3)
    {
      v18 = a3;
    }

    v28 = v18 - a3 + 1;
    while (v17 < v15)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_17;
      }

      v35 = a3 + v17;
      v20 = v14;
      v21 = v34;
      v31(&v35);
      v34 = v21;
      if (v21)
      {
        goto LABEL_22;
      }

      v36 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        v27(v22 > 1, v23 + 1, 1);
        v16 = v36;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23;
      v14 = v20;
      sub_21D17A79C(v20, v24, v30);
      if (v33 < a3)
      {
        goto LABEL_18;
      }

      if (v28 == ++v17)
      {
        goto LABEL_19;
      }

      if (v19 == v15)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_21D1748E8()
{
  swift_beginAccess();
  v0 = sub_21DBF8E0C();
  v22 = sub_21D173584(v0);
  sub_21DBF8E0C();
  sub_21D175EE4(&v22);

  v1 = v22;
  v2 = *(v22 + 16);
  if (v2)
  {
    v24 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v2, 0);
    v3 = v24;
    v4 = objc_opt_self();
    v5 = (v1 + 6);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v22 = 538976288;
      v23 = 0xE400000000000000;
      sub_21DBF8E0C();
      v9 = v8;
      MEMORY[0x223D42AA0](v7, v6);
      MEMORY[0x223D42AA0](8250, 0xE200000000000000);
      v10 = [v4 traitCollectionWithUserInterfaceStyle_];
      v11 = [v9 resolvedColorWithTraitCollection_];

      v12 = UIColor.cssRGBARepresentation()();
      MEMORY[0x223D42AA0](v12._countAndFlagsBits, v12._object);

      MEMORY[0x223D42AA0](59, 0xE100000000000000);

      v13 = v22;
      v14 = v23;
      v24 = v3;
      v16 = v3[2];
      v15 = v3[3];
      if (v16 >= v15 >> 1)
      {
        sub_21D18E678((v15 > 1), v16 + 1, 1);
        v3 = v24;
      }

      v3[2] = v16 + 1;
      v17 = &v3[2 * v16];
      v17[4] = v13;
      v17[5] = v14;
      v5 += 3;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v22 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v18 = sub_21DBFA07C();
  v20 = v19;

  v22 = 0xA7B20746F6F723ALL;
  v23 = 0xE800000000000000;
  MEMORY[0x223D42AA0](v18, v20);

  MEMORY[0x223D42AA0](32010, 0xE200000000000000);
  return v22;
}

uint64_t sub_21D174BD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC08D00;
  v3 = *v0;
  v4 = v0[1];
  *(v2 + 32) = *v0;
  *(v2 + 40) = v4;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
  sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
  sub_21DBFA41C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v5 = sub_21DBFA07C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    MEMORY[0x223D42AA0](v5, v7);

    MEMORY[0x223D42AA0](34, 0xE100000000000000);
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_21D210A84((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 16) = v10 + 1;
    v11 = v2 + 16 * v10;
    *(v11 + 32) = 0x223D7373616C63;
    *(v11 + 40) = 0xE700000000000000;
  }

  else
  {
  }

  sub_21DBFA41C();
  v12 = sub_21DBFA07C();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    if (!v1[5])
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  MEMORY[0x223D42AA0](v12, v14);

  MEMORY[0x223D42AA0](34, 0xE100000000000000);
  v17 = *(v2 + 16);
  v16 = *(v2 + 24);
  if (v17 >= v16 >> 1)
  {
    v2 = sub_21D210A84((v16 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 16) = v17 + 1;
  v18 = v2 + 16 * v17;
  *(v18 + 32) = 0x223D656C797473;
  *(v18 + 40) = 0xE700000000000000;
  if (v1[5])
  {
LABEL_14:
    MEMORY[0x223D42AA0](v1[4]);
    MEMORY[0x223D42AA0](34, 0xE100000000000000);
    v20 = *(v2 + 16);
    v19 = *(v2 + 24);
    if (v20 >= v19 >> 1)
    {
      v2 = sub_21D210A84((v19 > 1), v20 + 1, 1, v2);
    }

    *(v2 + 16) = v20 + 1;
    v21 = v2 + 16 * v20;
    *(v21 + 32) = 0x223D637273;
    *(v21 + 40) = 0xE500000000000000;
  }

LABEL_18:
  v22 = v1[6];
  v23 = *(v22 + 16);
  if (v23)
  {
    v48 = v4;
    v49 = v3;
    v53 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v23, 0);
    v24 = v22 + 48;
    v25 = v53;
    do
    {
      v51 = v23;
      v52 = v25;
      v26 = *v24;
      v27 = *(v24 + 8);
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      v30 = *(v24 + 32);
      v50 = *(v24 - 16);
      v31 = *(v24 - 8);
      if (*(v24 + 40))
      {
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v32 = sub_21DBF8E0C();
        v33 = sub_21D174BD4(v32);
        v35 = v34;
        sub_21D17A908(v50, v31, v26, v27, v29, v28, v30, 1);
      }

      else
      {
        sub_21D176F0C();
        sub_21DBF8E0C();
        sub_21DBFBB5C();
        swift_beginAccess();
        sub_21DBFBB5C();

        sub_21DBFBB5C();

        sub_21DBFBB5C();

        sub_21DBF8E0C();
        v33 = sub_21DBFBB5C();
        v35 = v36;
        sub_21D17A908(v50, v31, v26, v27, v29, v28, v30, 0);
        swift_bridgeObjectRelease_n();
      }

      v25 = v52;
      v38 = *(v52 + 16);
      v37 = *(v52 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_21D18E678((v37 > 1), v38 + 1, 1);
        v25 = v52;
      }

      *(v25 + 16) = v38 + 1;
      v39 = v25 + 16 * v38;
      *(v39 + 32) = v33;
      *(v39 + 40) = v35;
      v24 += 64;
      v23 = v51 - 1;
    }

    while (v51 != 1);
    v4 = v48;
    v3 = v49;
  }

  v40 = sub_21DBFA07C();
  v42 = v41;

  v43 = sub_21DBFA07C();
  v45 = v44;

  v46 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v46 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    goto LABEL_34;
  }

  if (qword_27CE56520 != -1)
  {
    swift_once();
  }

  if ((sub_21D1E1CE8(v3, v4, qword_27CE580E0) & 1) == 0)
  {
LABEL_34:
    MEMORY[0x223D42AA0](v43, v45);

    MEMORY[0x223D42AA0](62, 0xE100000000000000);
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v40, v42);

    MEMORY[0x223D42AA0](v3, v4);
    MEMORY[0x223D42AA0](62, 0xE100000000000000);
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](12092, 0xE200000000000000);
  }

  else
  {

    MEMORY[0x223D42AA0](v43, v45);

    MEMORY[0x223D42AA0](4075296, 0xE300000000000000);
  }

  return 60;
}

uint64_t sub_21D175460(char a1, void *a2)
{
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  if (a1)
  {
    v5 = v2;
    swift_beginAccess();
    v7 = *(v2 + 40);
    if (*(v7 + 16) && (v8 = sub_21D17E0CC(a2), (v9 & 1) != 0))
    {
      v10 = (*(v7 + 56) + 16 * v8);
      v12 = *v10;
      v11 = v10[1];
      sub_21DBF8E0C();
    }

    else
    {
      strcpy(v21, "--list-color-");
      HIWORD(v21[1]) = -4864;
      v13 = sub_21DBFC5BC();
      MEMORY[0x223D42AA0](v13);

      v12 = v21[0];
      v11 = v21[1];
      v14 = a2;
      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21[0] = *(v5 + 40);
      *(v5 + 40) = 0x8000000000000000;
      sub_21D4768E0(v12, v11, v14, isUniquelyReferenced_nonNull_native);

      *(v5 + 40) = v21[0];
    }

    v21[0] = 0xD000000000000010;
    v21[1] = 0x800000021DC44250;
    MEMORY[0x223D42AA0](0x28726176203ALL, 0xE600000000000000);
    MEMORY[0x223D42AA0](v12, v11);

    MEMORY[0x223D42AA0](15145, 0xE200000000000000);
    swift_endAccess();
    v4 = sub_21D210BA4(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = v4[2];
    v16 = v4[3];
    if (v17 >= v16 >> 1)
    {
      v4 = sub_21D210BA4((v16 > 1), v17 + 1, 1, v4);
    }

    v4[2] = v17 + 1;
    v18 = &v4[2 * v17];
    v18[4] = 0xD000000000000010;
    v18[5] = 0x800000021DC44250;
  }

  v22[0] = 7760228;
  v22[1] = 0xE300000000000000;
  v22[2] = &unk_282EA6078;
  v22[3] = v4;
  v22[4] = 0;
  v22[5] = 0;
  v22[6] = v3;
  v19 = sub_21D174BD4();
  sub_21D17A8D8(v22);
  return v19;
}

uint64_t sub_21D1756A0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-v7];
  v9 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0D3954(a1, v8, &qword_27CE58330);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE58330);
    return 0;
  }

  else
  {
    sub_21D17A79C(v8, v12, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment);
    v14 = &v12[*(v9 + 20)];
    v16 = *v14;
    v15 = v14[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58328);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21DC08D00;
    v21[16] = 0;
    *(v17 + 32) = v16;
    *(v17 + 40) = v15;
    v22 = 7760228;
    v23 = 0xE300000000000000;
    v18 = MEMORY[0x277D84F90];
    *(v17 + 88) = 0;
    v24 = &unk_282EA6128;
    v25 = v18;
    v26 = 0;
    v27 = 0;
    v28 = v17;
    sub_21DBF8E0C();
    sub_21D174BD4();

    MEMORY[0x28223BE20](v19);
    *&v21[-16] = a2;
    *&v21[-8] = v5;
    v20 = sub_21D322DA8(sub_21D17A804);
    sub_21D17A824(v12, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment);
    return v20;
  }
}

uint64_t sub_21D175998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + *(type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0) + 56));
  v11[2] = a2;
  v11[3] = a3;
  v6 = sub_21D1737DC(sub_21D17A1DC, v11, v5, type metadata accessor for TTRRemindersPrintingViewModel.Reminder.ImageAttachment);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_21DBFBEEC();
  MEMORY[0x223D42AA0](0xD000000000000076, 0x800000021DC44110);
  v11[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v7 = sub_21DBFA07C();
  v9 = v8;

  MEMORY[0x223D42AA0](v7, v9);

  MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC441B0);
  return v12;
}

uint64_t sub_21D175B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_21D17A210(a1, a2);
  v4 = sub_21D174BD4();
  v6 = v5;

  swift_bridgeObjectRelease_n();

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t _s15RemindersUICore21TTRAlertSpecificationV11ActionStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D175C1C()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderPrintingHTMLGenerator.deinit()
{

  return v0;
}

uint64_t TTRReminderPrintingHTMLGenerator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D175CD8()
{
  v0 = sub_21D1CDB50(&unk_282EA5EB8);
  result = swift_arrayDestroy();
  qword_27CE580E0 = v0;
  return result;
}

uint64_t sub_21D175D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21DBF4CAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = a1;
  v21[2] = a2;
  sub_21DBF4BBC();
  sub_21D176F0C();
  v11 = sub_21DBFBB3C();
  v13 = v12;
  (*(v8 + 8))(v10, v7);

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    swift_beginAccess();
    v16 = *(a4 + 16);
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_21D210A84(0, *(v16 + 2) + 1, 1, v16);
      *(a4 + 16) = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_21D210A84((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v20 = &v16[16 * v19];
    *(v20 + 4) = a1;
    *(v20 + 5) = a2;
    *(a4 + 16) = v16;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_21D175EE4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D82E418(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_21D175F50(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21D175F50(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21DBFC59C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58320);
        v5 = sub_21DBFA69C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21D17613C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21D176058(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21D176058(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_21DBFC64C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D17613C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_21D82E300(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_21D176748((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_21DBFC64C();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_21DBFC64C();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v30 + v23);
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21D210B90(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_21D210B90((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_21D176748((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21D82E300(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_21D82E274(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = sub_21DBFC64C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_21D176748(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_21DBFC64C() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (sub_21DBFC64C() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

unint64_t sub_21D1769A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58338);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_21DBF8E0C();
      result = sub_21D17E0CC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21D176AF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58328);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  *(v4 + 88) = 0;
  v5 = MEMORY[0x277D84F90];
  sub_21DBF8E0C();
  v6 = sub_21D174BD4();
  v8 = v7;

  v9 = 0;
  v10 = 0;
  if ((a1[4] & 1) == 0)
  {
    v11 = objc_opt_self();
    v12 = sub_21DBFABEC();
    v13 = [v11 localizedStringFromNumber:v12 numberStyle:1];

    v14 = sub_21DBFA16C();
    v16 = v15;

    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21DC08D00;
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    *(v17 + 88) = 0;
    sub_21DBF8E0C();
    v9 = sub_21D174BD4();
    v10 = v18;
  }

  sub_21DBFBEEC();

  MEMORY[0x223D42AA0](v6, v8);

  MEMORY[0x223D42AA0](0x202020200ALL, 0xE500000000000000);
  if (v10)
  {
    v19 = v9;
  }

  else
  {
    v19 = 0;
  }

  if (v10)
  {
    v20 = v10;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x223D42AA0](v19, v20);

  MEMORY[0x223D42AA0](0x3E7669642F3C0ALL, 0xE700000000000000);
  *(swift_allocObject() + 16) = v5;
  sub_21D176F0C();

  sub_21DBFBB2C();

  swift_beginAccess();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v21 = sub_21DBFA07C();

  return v21;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_21D176F0C()
{
  result = qword_280D17910;
  if (!qword_280D17910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D17910);
  }

  return result;
}

unint64_t sub_21D176F60()
{
  result = qword_27CE580F8;
  if (!qword_27CE580F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE580F8);
  }

  return result;
}

unint64_t sub_21D176FB4()
{
  result = qword_27CE58100;
  if (!qword_27CE58100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58100);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderPrintingHTMLGenerator.HTMLGenerationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

unint64_t sub_21D177118()
{
  result = qword_27CE58108;
  if (!qword_27CE58108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58108);
  }

  return result;
}

unint64_t sub_21D17716C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582E8);
    v3 = sub_21DBFC40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21D0D3954(v4, &v13, &qword_27CE5A6B0);
      v5 = v13;
      v6 = v14;
      result = sub_21D0CEF70(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21D0CF2E8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_21D17729C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58310);
    v3 = sub_21DBFC40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21D0D3954(v4, &v11, &qword_27CE58318);
      v5 = v11;
      result = sub_21D10FE34(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21D0CF2E8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_21D1773C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308);
    v3 = sub_21DBFC40C();

    for (i = a1 + 40; ; i += 56)
    {
      v5 = *(i - 8);
      v6 = *i;
      v7 = *(i + 8);
      v8 = *(i + 16);
      v9 = *(i + 24);
      v10 = *(i + 32);
      v11 = *(i + 40);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v12 = v5;
      v13 = v6;
      v14 = v7;
      v15 = v8;
      result = sub_21D17E07C(v12);
      if (v17)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v12;
      v18 = v3[7] + 48 * result;
      *v18 = v13;
      *(v18 + 8) = v7;
      *(v18 + 16) = v8;
      *(v18 + 24) = v9;
      *(v18 + 32) = v10;
      *(v18 + 40) = v11;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v3[2] = v21;
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

unint64_t sub_21D177598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58218);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58220);
    v7 = sub_21DBFC40C();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21D0D3954(v9, v5, &qword_27CE58218);
      result = sub_21D0F55D0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21DBF56BC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 192 * v13);
      v18 = *(v8 + 10);
      v17 = *(v8 + 11);
      v19 = *(v8 + 9);
      v16[8] = *(v8 + 8);
      v16[9] = v19;
      v16[10] = v18;
      v16[11] = v17;
      v21 = *(v8 + 6);
      v20 = *(v8 + 7);
      v22 = *(v8 + 5);
      v16[4] = *(v8 + 4);
      v16[5] = v22;
      v16[6] = v21;
      v16[7] = v20;
      v24 = *(v8 + 2);
      v23 = *(v8 + 3);
      v25 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v25;
      v16[2] = v24;
      v16[3] = v23;
      v26 = v7[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_10;
      }

      v7[2] = v28;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21D1777B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582E0);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_21DBF8E0C();
      v8 = v7;
      result = sub_21D0CEF70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_21D1778CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58140);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_21D17E07C(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21D1779BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582D0);
    v7 = sub_21DBFC40C();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21D0D3954(v9, v5, &qword_27CE582C8);
      result = sub_21D0F55D0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21DBF56BC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21D177BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65230);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      result = sub_21D0CEF70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_21D177CD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C0);
    v7 = sub_21DBFC40C();
    v22 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_21D0D3954(v8, v5, &qword_27CE581B8);
      result = sub_21D181E00(v5, v10);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      sub_21D17A79C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
      result = sub_21D0D523C(&v5[v22], v16 + *(*(v17 - 8) + 72) * v13, &qword_27CE5CDA0);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21D177F2C(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582B8);
    v9 = sub_21DBFC40C();
    v10 = *(v4 + 48);
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);

    while (1)
    {
      sub_21D0D3954(v11, v7, &qword_27CE582B0);
      result = a2(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      result = sub_21D17A79C(v7, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
      *(v9[7] + v15) = v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_21D178114(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582A8);
    v9 = sub_21DBFC40C();
    v10 = *(v4 + 48);
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);

    while (1)
    {
      sub_21D0D3954(v11, v7, &qword_27CE582A0);
      result = a2(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      result = sub_21D17A79C(v7, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
      *(v9[7] + v15) = v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_21D178314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58260);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58268);
    v7 = sub_21DBFC40C();
    v22 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_21D0D3954(v8, v5, &qword_27CE58260);
      result = sub_21D181E00(v5, v10);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      sub_21D17A79C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58270);
      result = sub_21D0D523C(&v5[v22], v16 + *(*(v17 - 8) + 72) * v13, &qword_27CE58270);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21D178564(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_21DBFC40C();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_21D17865C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58138);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_21DBF8E0C();
      result = sub_21D0CEF70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21D17876C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58118);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = v5;
      result = sub_21D17EB08(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_21D17886C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_21DBFC40C();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);
      sub_21DBF8E0C();
      result = sub_21D17E07C(v7);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v6;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {

        return v4;
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

uint64_t sub_21D17895C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65270);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v25 - v4);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58278);
  v7 = sub_21DBFC40C();
  v26 = *(v2 + 48);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = *(v3 + 72);

  sub_21D0D3954(a1 + v8, v5, &unk_27CE65270);
  v10 = v5[3];
  v29 = v5[2];
  v30 = v10;
  v31 = v5[4];
  v11 = v5[1];
  v27 = *v5;
  v28 = v11;
  v12 = sub_21D17E454(&v27);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v14 = v12;
  v15 = a1 + v9 + v8;
  while (1)
  {
    *(v7 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    memmove((v7[6] + 80 * v14), v5, 0x50uLL);
    v16 = v7[7];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260);
    result = sub_21D0D523C(v5 + v26, v16 + *(*(v17 - 8) + 72) * v14, &qword_27CE65260);
    v19 = v7[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v7[2] = v21;
    if (!--v6)
    {
      goto LABEL_8;
    }

    sub_21D0D3954(v15, v5, &unk_27CE65270);
    v22 = v5[3];
    v29 = v5[2];
    v30 = v22;
    v31 = v5[4];
    v23 = v5[1];
    v27 = *v5;
    v28 = v23;
    v14 = sub_21D17E454(&v27);
    v15 += v9;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21D178BC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58250);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58258);
    v7 = sub_21DBFC40C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21D0D3954(v9, v5, &qword_27CE58250);
      result = sub_21D17EB98(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21DBF5E4C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21D178DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58128);
    v3 = sub_21DBFC40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21D0D3954(v4, &v11, &qword_27CE58130);
      v5 = v11;
      result = sub_21D10FE34(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21D0CF2E8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_21D178ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58240);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58248);
    v7 = sub_21DBFC40C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21D0D3954(v9, v5, &qword_27CE58240);
      result = sub_21D17ED0C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21DBF799C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_21DBF563C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21D1790F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58230);
    v3 = sub_21DBFC40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21D0D3954(v4, v13, &qword_27CE58238);
      result = sub_21D17EA0C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_21D0CF2E8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_21D17922C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58228);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v10 = v9;
      result = sub_21D0CEF70(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 24 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_21D179350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581F0);
    v3 = sub_21DBFC40C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_21D17E780(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_21D17942C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581E0);
    v3 = sub_21DBFC40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21D0D3954(v4, &v11, &qword_27CE581E8);
      v5 = v11;
      result = sub_21D17E07C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21D0CF2E8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_21D17957C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_21DBFC40C();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_21D179668(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581D8);
    v9 = sub_21DBFC40C();
    v10 = *(v4 + 48);
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);

    while (1)
    {
      sub_21D0D3954(v11, v7, &qword_27CE581D0);
      result = a2(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      result = sub_21D17A79C(v7, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
      *(v9[7] + v15) = v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_21D179864(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_21DBFC40C();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);
      v8 = v6;
      result = sub_21D17E07C(v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v8;
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_21D179954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58170);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58178);
    v7 = sub_21DBFC40C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21D0D3954(v9, v5, &qword_27CE58170);
      result = sub_21D0F55D0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21DBF56BC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
      result = sub_21D17A79C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for TTRUserDefaults.SmartListVersionWarning);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21D179B70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58148);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58150);
    v7 = sub_21DBFC40C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21D0D3954(v9, v5, &qword_27CE58148);
      v11 = *v5;
      result = sub_21D17E07C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
      result = sub_21D17A79C(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for TTRTemplatesListViewModel.Template);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

id sub_21D179D54(id result, uint64_t a2, char a3, unint64_t a4)
{
  v4 = a4 >> 61;
  if ((a4 >> 61) > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v7 = result;
        result = a2;
      }

      else
      {
        if (v4 != 4)
        {
          return result;
        }

        sub_21D179E10(result, a2, a3);
        result = (a4 & 0x1FFFFFFFFFFFFFFFLL);
      }

      return result;
    }

LABEL_11:

    return result;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  if (v4 == 1)
  {

    return sub_21D179E10(result, a2, a3);
  }

  return result;
}

id sub_21D179E10(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    return result;
  }

  return sub_21DBF8E0C();
}

uint64_t sub_21D179E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersPrintingViewModel.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21D179EF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >> 6 == 2)
  {
  }

  else if (!(a7 >> 6))
  {
    sub_21D1078C0(a1, a2, a3, a4, a5, a6, a7 & 1);
  }
}

uint64_t sub_21D179F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v5 = *a1;
  v6 = *(a1 + 16);
  if (a3)
  {
    v8 = qword_280D1BAA8;
    sub_21DBF8E0C();
    if (v8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC08D20;
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_21D17A884();
    *(v9 + 32) = v5;
    *(v9 + 40) = v3;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 64) = v11;
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;
    sub_21DBF8E0C();
    v5 = sub_21DBFA17C();
    v3 = v12;
  }

  else
  {
    sub_21DBF8E0C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21DC08D10;
  *(v14 + 32) = 0xD000000000000011;
  *(v14 + 40) = 0x800000021DC441E0;
  *(v14 + 48) = xmmword_21DC08D30;
  v15 = 0x6575647265766FLL;
  if ((v6 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = 0xE700000000000000;
  if ((v6 & 1) == 0)
  {
    v16 = 0;
  }

  *(v14 + 64) = v15;
  *(v14 + 72) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58328);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21DC08D00;
  *(v17 + 32) = v5;
  *(v17 + 40) = v3;
  *(v17 + 88) = 0;
  sub_21DBF8E0C();
  v13 = sub_21D174BD4();

  return v13;
}

uint64_t sub_21D17A1DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21D17A62C(a1, *(v2 + 24));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21D17A210(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v11 - 8);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v29 = a1;
  sub_21DBF531C();
  (*(v5 + 16))(v15, a2, v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v19 = *(v8 + 56);
  sub_21D0D3954(v18, v10, &qword_27CE5EA20);
  sub_21D0D3954(v15, &v10[v19], &qword_27CE5EA20);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) != 1)
  {
    sub_21D0D3954(v10, v28, &qword_27CE5EA20);
    if (v20(&v10[v19], 1, v4) != 1)
    {
      v22 = v27;
      (*(v5 + 32))(v27, &v10[v19], v4);
      sub_21D17A744();
      v23 = v28;
      v24 = sub_21DBFA10C();
      v25 = *(v5 + 8);
      v25(v22, v4);
      sub_21D0CF7E0(v15, &qword_27CE5EA20);
      sub_21D0CF7E0(v18, &qword_27CE5EA20);
      v25(v23, v4);
      sub_21D0CF7E0(v10, &qword_27CE5EA20);
      if (v24)
      {
        return sub_21DBF537C();
      }

      return sub_21DBF535C();
    }

    sub_21D0CF7E0(v15, &qword_27CE5EA20);
    sub_21D0CF7E0(v18, &qword_27CE5EA20);
    (*(v5 + 8))(v28, v4);
LABEL_6:
    sub_21D0CF7E0(v10, &unk_27CE5F2A0);
    return sub_21DBF535C();
  }

  sub_21D0CF7E0(v15, &qword_27CE5EA20);
  sub_21D0CF7E0(v18, &qword_27CE5EA20);
  if (v20(&v10[v19], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_21D0CF7E0(v10, &qword_27CE5EA20);
  return sub_21DBF537C();
}

uint64_t sub_21D17A62C(uint64_t a1, uint64_t a2)
{
  sub_21D17A210(a1, a2);
  v3 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.ImageAttachment(0);
  v4 = *(a1 + *(v3 + 20)) < *(a1 + *(v3 + 20) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D20;
  *(v5 + 32) = xmmword_21DC08D40;
  v6 = vdup_n_s32(v4);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  *(v5 + 48) = vandq_s8(vcltzq_s64(vshlq_n_s64(v7, 0x3FuLL)), xmmword_21DC08D50);
  v8 = sub_21D174BD4();

  swift_bridgeObjectRelease_n();

  return v8;
}

unint64_t sub_21D17A744()
{
  result = qword_280D171D0;
  if (!qword_280D171D0)
  {
    sub_21DBF54CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D171D0);
  }

  return result;
}

uint64_t sub_21D17A79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D17A824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21D17A884()
{
  result = qword_280D17900;
  if (!qword_280D17900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D17900);
  }

  return result;
}

uint64_t sub_21D17A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{

  if (a8)
  {
  }

  return result;
}

uint64_t destroy for HTMLElement()
{
}

void *initializeWithCopy for HTMLElement(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  a1[6] = a2[6];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for HTMLElement(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  sub_21DBF8E0C();

  a1[3] = a2[3];
  sub_21DBF8E0C();

  a1[4] = a2[4];
  a1[5] = a2[5];
  sub_21DBF8E0C();

  a1[6] = a2[6];
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for HTMLElement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for HTMLElement(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for HTMLElement(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D17AC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v8 = vars8;
  }

  return sub_21DBF8E0C();
}

uint64_t initializeWithCopy for HTMLElement.Child(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  sub_21D17AC50(*a2, v4, v5, v6, v7, v8, v9, v10);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  return a1;
}

uint64_t assignWithCopy for HTMLElement.Child(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  sub_21D17AC50(*a2, v4, v5, v6, v7, v8, v9, v10);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  sub_21D17A908(v11, v12, v13, v14, v15, v16, v17, v18);
  return a1;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for HTMLElement.Child(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  sub_21D17A908(v5, v7, v6, v8, v9, v10, v11, v12);
  return a1;
}

uint64_t getEnumTagSinglePayload for HTMLElement.Child(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HTMLElement.Child(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t UIPasteboard.ttr_contains(type:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF843C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TTRSystemPasteboardDataType();
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [v2 pasteboardTypes];
  v13 = sub_21DBFA5EC();

  sub_21D17B164(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v15 = *v11;
    v16 = v11[1];
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    v15 = sub_21DBF836C();
    v16 = v17;
    EnumCaseMultiPayload = (*(v5 + 8))(v7, v4);
  }

  v21[0] = v15;
  v21[1] = v16;
  MEMORY[0x28223BE20](EnumCaseMultiPayload);
  *&v20[-16] = v21;
  v18 = sub_21D17B510(sub_21D17B73C, &v20[-32], v13);

  return v18 & 1;
}

uint64_t sub_21D17B164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSystemPasteboardDataType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UIPasteboard.ttr_string(for:)()
{
  v1 = [v0 string];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

id UIPasteboard.ttr_attributedString(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF843C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TTRSystemPasteboardDataType();
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D17B164(a1, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_21DBF836C();
    (*(v5 + 8))(v7, v4);
  }

  v11 = sub_21DBFA12C();

  v12 = [v2 dataForPasteboardType_];

  if (!v12)
  {
    return 0;
  }

  v13 = sub_21DBF551C();
  v15 = v14;

  v16 = sub_21D17729C(MEMORY[0x277D84F90]);
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_21D17B794(v13, v15, v16, 0);
  sub_21D17B8A8(v13, v15);
  result = v18;
  if (!v18)
  {
    return 0;
  }

  return result;
}

uint64_t sub_21D17B484()
{
  v1 = [*v0 string];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t sub_21D17B510(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_21DBF8E0C();
      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_21D17B5BC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x223D44740](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_21DBFBD7C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_21D17B6E4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21DBFC64C() & 1;
  }
}

uint64_t sub_21D17B73C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21DBFC64C() & 1;
  }
}

id sub_21D17B794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_21DBF54FC();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_21D17B8FC();
  v7 = sub_21DBF9E5C();

  v12[0] = 0;
  v8 = [v4 initWithData:v6 options:v7 documentAttributes:a4 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_21D17B8A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_21D17B8FC()
{
  result = qword_27CE57F18;
  if (!qword_27CE57F18)
  {
    type metadata accessor for DocumentReadingOptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE57F18);
  }

  return result;
}

id sub_21D17B970()
{
  type metadata accessor for RemindersUICoreBundleLookupObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CE58340 = result;
  return result;
}

void sub_21D17B9C8()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_280D17A28 = v3;
}

void sub_21D17BA6C()
{
  if (qword_27CE56528 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE58340;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  qword_27CE58348 = v4;
}

void sub_21D17BB64()
{
  if (qword_27CE56528 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE58340;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  qword_27CE58350 = v4;
}

id static TTRIAsset.Image.WelcomeBullet.one.getter()
{
  if (qword_27CE56528 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE58340;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  v5 = [objc_opt_self() systemGreenColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:1];

  return v6;
}

id sub_21D17BDC4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v5);
  v7 = v6;

  v8 = [objc_opt_self() *a3];
  v9 = [v7 imageWithTintColor:v8 renderingMode:1];

  return v9;
}

uint64_t static TTRIAsset.Image.WelcomeBullet.four.getter()
{
  if (qword_27CE56528 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE58340;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  return v4;
}

id static TTRIAsset.Image.WelcomeBullet.smiling.getter()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  v4 = [objc_opt_self() systemBlueColor];
  v5 = [v3 imageWithTintColor:v4 renderingMode:1];

  return v5;
}

id static TTRIAsset.Image.WelcomeBullet.collaboration.getter()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  v4 = [objc_opt_self() systemBlueColor];
  v5 = [v3 imageWithTintColor:v4 renderingMode:1];

  return v5;
}

id sub_21D17C198(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v2 = *a2;
  v3 = [objc_opt_self() systemBlueColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

uint64_t static TTRIAsset.Image.UpgradeWarmingSheet.upgradeHeader.getter()
{
  if (qword_27CE56528 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE58340;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  return v4;
}

uint64_t getEnumTagSinglePayload for TTRDebugMenuUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TTRDebugMenuUtilities(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void *REMHashtagLabelCollection.localizedDescription.getter()
{
  v0 = *(sub_21DBF785C() + 16);

  if (v0 <= 1)
  {
    v8 = sub_21DBF785C();
    if (!*(v8 + 16))
    {

      return 0;
    }

    v7 = *(v8 + 32);
    sub_21DBF8E0C();
LABEL_10:

    return v7;
  }

  result = sub_21DBF785C();
  v2 = result[2];
  if (v0 != 2)
  {
    if (v2)
    {
      v9 = result[4];
      v10 = result[5];
      sub_21DBF8E0C();

      v11 = *(sub_21DBF785C() + 16);

      v7 = sub_21D37C480(v9, v10, v11 - 1);
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = result[4];
  v4 = result[5];
  sub_21DBF8E0C();

  result = sub_21DBF785C();
  if (result[2] >= 2uLL)
  {
    v5 = result[6];
    v6 = result[7];
    sub_21DBF8E0C();

    v7 = sub_21D37C300(v3, v4, v5, v6);

    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21D17C564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_21D476A30(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_21D0CEF70(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_21D2201D4();
        v16 = v18;
      }

      result = sub_21D4B36F4(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_21D17C66C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_21D0CF7E0(a1, &qword_27CE58380);
    sub_21D983230(a2, v7);
    sub_21D107290(a2, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    return sub_21D0CF7E0(v7, &qword_27CE58380);
  }

  else
  {
    sub_21D181D90(a1, v11, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_21D476F40(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_21D107290(a2, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_21D17C854(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_21D0CF2E8(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_21D4770EC(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_21DBFC1BC();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_21D0CF7E0(a1, &qword_27CE583F8);
    sub_21D9833C8(a2, v9);
    v7 = sub_21DBFC1BC();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_21D0CF7E0(v9, &qword_27CE583F8);
  }

  return result;
}

uint64_t sub_21D17C970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_21D0CF2E8(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_21D0CFB00(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_21D0CF7E0(a1, &qword_27CE5C690);
    sub_21D983614(a2, a3, v9);

    return sub_21D0CF7E0(v9, &qword_27CE5C690);
  }

  return result;
}

uint64_t sub_21D17CA40(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_21D0CF7E0(a1, &qword_27CE583F0);
    sub_21D9836B8(a2, v7, v13);
    sub_21D107290(a2, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return sub_21D0CF7E0(v7, &qword_27CE583F0);
  }

  else
  {
    sub_21D0D523C(a1, v11, &qword_27CE5CDA0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_21D477630(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_21D107290(a2, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_21D17CC2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_21D0CF7E0(a1, &unk_27CE58E70);
    v14 = sub_21D17E780(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21D222508();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_21D4B48D4(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_21D0CF7E0(v8, &unk_27CE58E70);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_21D4778F0(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_21D17CE7C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_21D0CF7E0(a1, &qword_27CE583E0);
    sub_21D9836F4(a2, v7, v13);
    sub_21D107290(a2, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return sub_21D0CF7E0(v7, &qword_27CE583E0);
  }

  else
  {
    sub_21D0D523C(a1, v11, &unk_27CE5CD80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_21D477CBC(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_21D107290(a2, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *v2 = v17;
  }

  return result;
}

void sub_21D17D068(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_21D0CF7E0(a1, &qword_27CE583E8);
    sub_21D983930(a2, v7);

    sub_21D0CF7E0(v7, &qword_27CE583E8);
  }

  else
  {
    sub_21D181D90(a1, v11, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_21D478064(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }
}

uint64_t sub_21D17D220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v21 - v16;
  if ((*(v18 + 48))(a1, 1, v15) == 1)
  {
    sub_21D0CF7E0(a1, &qword_27CE583A0);
    sub_21D983A98(a2, a3, a4, a5, v13);

    return sub_21D0CF7E0(v13, &qword_27CE583A0);
  }

  else
  {
    sub_21D0D523C(a1, v17, &qword_27CE583A8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    sub_21D4781D0(v17, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v22;
  }

  return result;
}

unint64_t sub_21D17D428(char a1, char a2)
{
  v3 = v2;
  if (a1 == 4)
  {
    result = sub_21D10186C(a2);
    if (v5)
    {
      v6 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v12 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21D224B88();
        v8 = v12;
      }

      result = sub_21D4B57B0(v6, v8);
      *v3 = v8;
    }
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_21D478B7C(a1, a2, v11);
    *v2 = v13;
  }

  return result;
}

uint64_t sub_21D17D4E4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE58358);
  v1 = __swift_project_value_buffer(v0, qword_27CE58358);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void TTRProcessEnvironment.isolatedStoreContainerToken.setter(void *a1)
{
  sub_21D181AF0(a1);
}

void (*TTRProcessEnvironment.isolatedStoreContainerToken.modify(uint64_t *a1))(id **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = sub_21DBF56BC();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[4] = v8;
  *v5 = TTRProcessEnvironment.isolatedStoreContainerToken.getter();
  return sub_21D17D6DC;
}

void sub_21D17D6DC(id **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    if (v3)
    {
      v5 = v2[3];
      v4 = v2[4];
      v6 = v2[2];
      v7 = [v3 identifier];
      sub_21DBF568C();

      v8 = sub_21DBF565C();
      v10 = v9;
      v5[1](v4, v6);
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v18 = v2[4];
    sub_21D17C564(v8, v10, 0xD00000000000001DLL, 0x800000021DC44400);

    v3 = *v2;
  }

  else
  {
    if (v3)
    {
      v12 = v2[3];
      v11 = v2[4];
      v13 = v2[2];
      v14 = [**a1 identifier];
      sub_21DBF568C();

      v15 = sub_21DBF565C();
      v17 = v16;
      v12[1](v11, v13);
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = v2[4];
    sub_21D17C564(v15, v17, 0xD00000000000001DLL, 0x800000021DC44400);
  }

  free(v18);

  free(v2);
}

uint64_t sub_21D17D870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  sub_21D0D3954(a1, &v16 - v6, &qword_27CE5EA20);
  sub_21D0D3954(v7, v4, &qword_27CE5EA20);
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5EA20);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = sub_21DBF535C();
    v14 = v13;
    (*(v9 + 8))(v4, v8);
    v11 = v14;
    v10 = v12;
  }

  sub_21D17C564(v10, v11, 0xD000000000000019, 0x800000021DC44420);
  return sub_21D0CF7E0(v7, &qword_27CE5EA20);
}

uint64_t TTRProcessEnvironment.targetNavigationURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  sub_21D0D3954(a1, &v13 - v3, &qword_27CE5EA20);
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5EA20);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = sub_21DBF535C();
    v11 = v10;
    (*(v6 + 8))(v4, v5);
    v8 = v11;
    v7 = v9;
  }

  sub_21D17C564(v7, v8, 0xD000000000000019, 0x800000021DC44420);
  return sub_21D0CF7E0(a1, &qword_27CE5EA20);
}

void (*TTRProcessEnvironment.targetNavigationURL.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[4] = v7;
  TTRProcessEnvironment.targetNavigationURL.getter(v7);
  return sub_21D17DCF4;
}

void sub_21D17DCF4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v4 = v2[2];
    sub_21D0D3954(v3, v4, &qword_27CE5EA20);
    sub_21D0D3954(v4, v5, &qword_27CE5EA20);
    v6 = sub_21DBF54CC();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = v2[1];
    if (v8 == 1)
    {
      sub_21D0CF7E0(v2[1], &qword_27CE5EA20);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v19 = sub_21DBF535C();
      v21 = v20;
      (*(v7 + 8))(v9, v6);
      v11 = v21;
      v10 = v19;
    }

    v23 = v2[3];
    v22 = v2[4];
    v25 = v2[1];
    v24 = v2[2];
    sub_21D17C564(v10, v11, 0xD000000000000019, 0x800000021DC44420);
    sub_21D0CF7E0(v24, &qword_27CE5EA20);
  }

  else
  {
    v12 = v2[3];
    sub_21D0D3954(v3, v12, &qword_27CE5EA20);
    v13 = sub_21DBF54CC();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v12, 1, v13);
    v16 = v2[3];
    if (v15 == 1)
    {
      sub_21D0CF7E0(v2[3], &qword_27CE5EA20);
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v26 = sub_21DBF535C();
      v28 = v27;
      (*(v14 + 8))(v16, v13);
      v18 = v28;
      v17 = v26;
    }

    v23 = v2[3];
    v22 = v2[4];
    v25 = v2[1];
    v24 = v2[2];
    sub_21D17C564(v17, v18, 0xD000000000000019, 0x800000021DC44420);
  }

  sub_21D0CF7E0(v22, &qword_27CE5EA20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

uint64_t TTRProcessEnvironment.assertOnMainThreadFetches.setter(char a1)
{
  if (a1)
  {
    v1 = 49;
  }

  else
  {
    v1 = 48;
  }

  return sub_21D17C564(v1, 0xE100000000000000, 0xD00000000000001CLL, 0x800000021DC44440);
}

uint64_t (*TTRProcessEnvironment.assertOnMainThreadFetches.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = TTRProcessEnvironment.assertOnMainThreadFetches.getter() & 1;
  return sub_21D17E024;
}

uint64_t sub_21D17E024(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = 49;
  }

  else
  {
    v1 = 48;
  }

  return sub_21D17C564(v1, 0xE100000000000000, 0xD00000000000001CLL, 0x800000021DC44440);
}

unint64_t sub_21D17E11C(unsigned __int8 a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  v2 = sub_21DBFC82C();

  return sub_21D17F29C(a1, v2);
}

unint64_t sub_21D17E244(unsigned __int8 a1)
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](a1);
  v2 = sub_21DBFC82C();
  return sub_21D1807E0(a1, v2);
}

unint64_t sub_21D17E2D8(uint64_t a1)
{
  sub_21DBFC1BC();
  v2 = sub_21DBF9FFC();

  return sub_21D17FDA4(a1, v2);
}

unint64_t sub_21D17E33C(unsigned __int8 a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  v2 = sub_21DBFC82C();

  return sub_21D17FF3C(a1, v2);
}

unint64_t sub_21D17E454(uint64_t *a1)
{
  sub_21DBFC7DC();
  TTRParticipantModel.hash(into:)();
  v2 = sub_21DBFC82C();

  return sub_21D180138(a1, v2);
}

unint64_t sub_21D17E4D8(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_21DBFC7DC();
  sub_21D0D3954(a1, v8, &qword_27CE5FB90);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21D181D90(v8, v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21DBFC7FC();
    TTRRemindersListViewModel.ItemID.hash(into:)();
    sub_21D107290(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  v9 = sub_21DBFC82C();
  return sub_21D1803CC(a1, v9);
}

unint64_t sub_21D17E6AC(uint64_t a1)
{
  sub_21DBF5D5C();
  v2 = MEMORY[0x277CC9AF8];
  sub_21D0F56A4(&qword_280D17160, MEMORY[0x277CC9AF8]);
  v3 = sub_21DBF9FFC();
  return sub_21D0F56EC(a1, v3, MEMORY[0x277CC9AF8], &qword_280D17150, v2, MEMORY[0x277CC9B18]);
}

unint64_t sub_21D17E7BC(uint64_t a1)
{
  sub_21DBFC7DC();
  TTRRemindersListViewModel.ItemID.hash(into:)();
  v2 = sub_21DBFC82C();
  return sub_21D180850(a1, v2);
}

unint64_t sub_21D17E824(uint64_t a1)
{
  sub_21DBF5C4C();
  v2 = MEMORY[0x277CC9A70];
  sub_21D0F56A4(&qword_27CE58378, MEMORY[0x277CC9A70]);
  v3 = sub_21DBF9FFC();
  return sub_21D0F56EC(a1, v3, MEMORY[0x277CC9A70], &qword_27CE64FE0, v2, MEMORY[0x277CC9A88]);
}

unint64_t sub_21D17E948(void *a1, uint64_t a2, char a3)
{
  sub_21DBFC7DC();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x223D44FA0](1);
      sub_21DBFA27C();
      goto LABEL_7;
    }

    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x223D44FA0](v6);
  sub_21DBFB64C();
LABEL_7:
  v7 = sub_21DBFC82C();

  return sub_21D1809B0(a1, a2, a3, v7);
}

unint64_t sub_21D17EA0C(uint64_t a1)
{
  v2 = sub_21DBFBDFC();

  return sub_21D180CC8(a1, v2);
}

unint64_t sub_21D17EA50(double *a1)
{
  sub_21DBFC7DC();
  v2 = a1[10];
  v3 = a1[11];
  v4 = a1[12];
  TTRParticipantModel.hash(into:)();
  sub_21D4B18DC(v2, v3, v4);
  v5 = sub_21DBFC82C();

  return sub_21D180D90(a1, v5);
}

unint64_t sub_21D17EB08(void *a1)
{
  sub_21DBFC7DC();
  sub_21DBFC7FC();
  if (a1)
  {
    v2 = a1;
    sub_21DBFB64C();
  }

  v3 = sub_21DBFC82C();

  return sub_21D1810EC(a1, v3);
}

unint64_t sub_21D17EB98(uint64_t a1)
{
  sub_21DBF5E4C();
  v2 = MEMORY[0x277D08668];
  sub_21D0F56A4(&qword_27CE583D0, MEMORY[0x277D08668]);
  v3 = sub_21DBF9FFC();
  return sub_21D0F56EC(a1, v3, MEMORY[0x277D08668], &qword_27CE583D8, v2, MEMORY[0x277D08678]);
}

unint64_t sub_21D17EC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();
  sub_21DBFA27C();
  v8 = sub_21DBFC82C();

  return sub_21D1811F0(a1, a2, a3, a4, v8);
}

unint64_t sub_21D17ED0C(uint64_t a1)
{
  sub_21DBF799C();
  v2 = MEMORY[0x277D456A0];
  sub_21D0F56A4(&qword_27CE583C0, MEMORY[0x277D456A0]);
  v3 = sub_21DBF9FFC();
  return sub_21D0F56EC(a1, v3, MEMORY[0x277D456A0], &qword_27CE583C8, v2, MEMORY[0x277D456B0]);
}

unint64_t sub_21D17EDE0(uint64_t a1)
{
  sub_21DBF63EC();
  v2 = MEMORY[0x277D44FE8];
  sub_21D0F56A4(&qword_27CE583B0, MEMORY[0x277D44FE8]);
  v3 = sub_21DBF9FFC();
  return sub_21D0F56EC(a1, v3, MEMORY[0x277D44FE8], &qword_27CE583B8, v2, MEMORY[0x277D44FF8]);
}

unint64_t sub_21D17EEB4(uint64_t a1)
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](a1);
  v2 = sub_21DBFC82C();
  return sub_21D1812F0(a1, v2);
}

unint64_t sub_21D17EF1C(uint64_t a1)
{
  sub_21DBFC7DC();
  TTRRemindersListViewModel.ItemID.hash(into:)();
  v2 = type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey();
  MEMORY[0x223D44FA0](*(a1 + *(v2 + 20)));
  v3 = sub_21DBFC82C();

  return sub_21D18135C(a1, v3);
}

unint64_t sub_21D17EFA0(void *a1)
{
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_21DBFC7DC();
  sub_21DBFB64C();
  v9 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  sub_21D0D3954(a1 + *(v9 + 20), v8, &qword_27CE5EA20);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_21DBFC7FC();
    sub_21D0F56A4(&qword_280D171E0, MEMORY[0x277CC9260]);
    sub_21DBFA00C();
    (*(v3 + 8))(v5, v2);
  }

  v10 = sub_21DBFC82C();
  return sub_21D181500(a1, v10);
}

unint64_t sub_21D17F1D0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_21D0D8CF0(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_21DBFB63C();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21D17F29C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
          v8 = 0x646E656B656577;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x57664F7472617473;
          }

          else
          {
            v8 = 0x6D6F74737563;
          }

          if (v7 == 4)
          {
            v9 = 0xEE007961646B6565;
          }

          else
          {
            v9 = 0xE600000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x7961646F74;
        }

        else
        {
          v8 = 0x776F72726F6D6F74;
        }

        if (v7 == 1)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      else
      {
        v9 = 0xE400000000000000;
        v8 = 1701736302;
      }

      v10 = 0x57664F7472617473;
      if (v6 != 4)
      {
        v10 = 0x6D6F74737563;
      }

      v11 = 0xEE007961646B6565;
      if (v6 != 4)
      {
        v11 = 0xE600000000000000;
      }

      if (v6 == 3)
      {
        v10 = 0x646E656B656577;
        v11 = 0xE700000000000000;
      }

      v12 = 0x776F72726F6D6F74;
      if (v6 == 1)
      {
        v12 = 0x7961646F74;
      }

      v13 = 0xE500000000000000;
      if (v6 != 1)
      {
        v13 = 0xE800000000000000;
      }

      if (!v6)
      {
        v12 = 1701736302;
        v13 = 0xE400000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_21DBFC64C();

      if ((v16 & 1) == 0)
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

unint64_t sub_21D17F4E0(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v48 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v54);
  v56 = &v48 - v10;
  v53 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v53);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58390);
  MEMORY[0x28223BE20](v63);
  v13 = &v48 - v12;
  v65 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  MEMORY[0x28223BE20](v65);
  MEMORY[0x28223BE20](v14);
  v61 = &v48 - v15;
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = v2 + 64;
  v62 = v2;
  v22 = -1 << *(v2 + 32);
  v23 = a2 & ~v22;
  if (((*(v2 + 64 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
    return v23;
  }

  v48 = v7;
  v24 = ~v22;
  v50 = (v5 + 48);
  v51 = v4;
  v25 = *(v17 + 72);
  v26 = &unk_27CE5CD70;
  v59 = v25;
  v60 = v18;
  v57 = ~v22;
  v58 = v21;
  while (1)
  {
    v27 = v26;
    sub_21D107158(*(v62 + 48) + v25 * v23, v20, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    v28 = *(v63 + 48);
    sub_21D107158(v20, v13, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    sub_21D107158(v64, &v13[v28], type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_21D107290(v20, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          goto LABEL_31;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_21D107290(v20, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_21D107290(v20, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_4;
    }

    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_21D107290(v20, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    sub_21D107158(v13, v61, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_4;
    }

    if (*v61 == v13[v28])
    {
      goto LABEL_31;
    }

    sub_21D107290(v13, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
LABEL_5:
    v23 = (v23 + 1) & v24;
    if (((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      return v23;
    }
  }

  v30 = v60;
  sub_21D107158(v13, v60, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D107290(v20, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    sub_21D107290(v30, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v24 = v57;
    v21 = v58;
    v25 = v59;
LABEL_4:
    sub_21D0CF7E0(v13, &qword_27CE58390);
    goto LABEL_5;
  }

  v31 = &v13[v28];
  v32 = v55;
  sub_21D181D90(v31, v55, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    sub_21D107290(v20, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    v24 = v57;
    v21 = v58;
    v25 = v59;
LABEL_28:
    sub_21D107290(v32, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D107290(v60, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D107290(v13, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    v26 = v27;
    goto LABEL_5;
  }

  v49 = *(v53 + 20);
  v33 = *(v54 + 48);
  v34 = v30 + v49;
  v35 = v56;
  sub_21D0D3954(v34, v56, v27);
  v36 = v32 + v49;
  v49 = v33;
  sub_21D0D3954(v36, v35 + v33, v27);
  v37 = v51;
  v38 = *v50;
  if ((*v50)(v35, 1, v51) != 1)
  {
    v40 = v56;
    sub_21D0D3954(v56, v52, &unk_27CE5CD70);
    v41 = v40 + v49;
    v42 = v49;
    v43 = v38(v41, 1, v37);
    v24 = v57;
    if (v43 != 1)
    {
      v44 = v56;
      v45 = v48;
      sub_21D181D90(v56 + v42, v48, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v46 = v52;
      LODWORD(v49) = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v52, v45);
      sub_21D107290(v45, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D107290(v20, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
      sub_21D107290(v46, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D0CF7E0(v44, &unk_27CE5CD70);
      v32 = v55;
      v21 = v58;
      v25 = v59;
      if (v49)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    sub_21D107290(v20, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    sub_21D107290(v52, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v32 = v55;
    v21 = v58;
    v25 = v59;
    goto LABEL_26;
  }

  sub_21D107290(v20, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  v39 = v38(v56 + v49, 1, v37);
  v32 = v55;
  v24 = v57;
  v21 = v58;
  v25 = v59;
  if (v39 != 1)
  {
LABEL_26:
    sub_21D0CF7E0(v56, &qword_27CE58388);
    goto LABEL_28;
  }

  sub_21D0CF7E0(v56, &unk_27CE5CD70);
LABEL_30:
  sub_21D107290(v32, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D107290(v60, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_31:
  sub_21D107290(v13, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
  return v23;
}

unint64_t sub_21D17FDA4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_21DBFC1BC();
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = sub_21DBFA10C();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_21D17FF3C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v19 + 48) + v4);
      if (v6 <= 1)
      {
        v7 = *(*(v19 + 48) + v4) ? 0x72756F487478656ELL : 1701736302;
        v8 = *(*(v19 + 48) + v4) ? 0xE800000000000000 : 0xE400000000000000;
      }

      else if (v6 == 2)
      {
        v8 = 0xE700000000000000;
        v7 = 0x746867696E6F74;
      }

      else
      {
        v7 = v6 == 3 ? 0x776F72726F6D6F74 : 0x54646E4165746164;
        v8 = v6 == 3 ? 0xEF676E696E726F4DLL : 0xEB00000000656D69;
      }

      if (v5 == 3)
      {
        v9 = 0x776F72726F6D6F74;
      }

      else
      {
        v9 = 0x54646E4165746164;
      }

      if (v5 == 3)
      {
        v10 = 0xEF676E696E726F4DLL;
      }

      else
      {
        v10 = 0xEB00000000656D69;
      }

      if (v5 == 2)
      {
        v9 = 0x746867696E6F74;
        v10 = 0xE700000000000000;
      }

      v11 = v5 ? 0x72756F487478656ELL : 1701736302;
      v12 = v5 ? 0xE800000000000000 : 0xE400000000000000;
      v13 = v5 <= 1 ? v11 : v9;
      v14 = v5 <= 1 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = sub_21DBFC64C();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_21D180138(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = a1[1];
    v41 = *a1;
    v8 = a1[3];
    v35 = a1[2];
    v33 = a1[4];
    v36 = a1[5];
    v31 = a1[6];
    v34 = a1[7];
    v30 = a1[8];
    v32 = a1[9];
    v9 = *(v2 + 48);
    v38 = ~v4;
    v39 = v2 + 64;
    v40 = v8;
    v37 = v9;
    do
    {
      v10 = (v9 + 80 * v5);
      v11 = v10[1];
      v12 = v10[2];
      v13 = v10[3];
      v14 = v10[4];
      v15 = v10[5];
      v16 = v10[6];
      v17 = v10[7];
      v18 = v10[8];
      v19 = v10[9];
      if (v11)
      {
        if (!v7)
        {
          goto LABEL_4;
        }

        if (*v10 != v41 || v11 != v7)
        {
          v21 = sub_21DBFC64C();
          v9 = v37;
          v6 = v38;
          v3 = v39;
          v8 = v40;
          if ((v21 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v7)
      {
        goto LABEL_4;
      }

      if (v13)
      {
        if (!v8)
        {
          goto LABEL_4;
        }

        if (v12 != v35 || v13 != v8)
        {
          v23 = sub_21DBFC64C();
          v9 = v37;
          v6 = v38;
          v3 = v39;
          v8 = v40;
          if ((v23 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v8)
      {
        goto LABEL_4;
      }

      if (v15)
      {
        if (!v36)
        {
          goto LABEL_4;
        }

        if (v14 != v33 || v15 != v36)
        {
          v25 = sub_21DBFC64C();
          v9 = v37;
          v6 = v38;
          v3 = v39;
          v8 = v40;
          if ((v25 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v36)
      {
        goto LABEL_4;
      }

      if (v17)
      {
        if (!v34)
        {
          goto LABEL_4;
        }

        if (v16 != v31 || v17 != v34)
        {
          v27 = sub_21DBFC64C();
          v9 = v37;
          v6 = v38;
          v3 = v39;
          v8 = v40;
          if ((v27 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v34)
      {
        goto LABEL_4;
      }

      if (v19)
      {
        if (v32)
        {
          if (v18 == v30 && v19 == v32)
          {
            return v5;
          }

          v28 = sub_21DBFC64C();
          v9 = v37;
          v6 = v38;
          v3 = v39;
          v8 = v40;
          if (v28)
          {
            return v5;
          }
        }
      }

      else if (!v32)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21D1803CC(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v33);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90) - 8;
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = v2 + 64;
  v35 = v2;
  v16 = -1 << *(v2 + 32);
  v17 = a2 & ~v16;
  if ((*(v2 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v30 = v12;
    v31 = ~v16;
    v18 = (v5 + 48);
    v32 = *(v11 + 72);
    v27 = v4;
    v29 = v15;
    while (1)
    {
      sub_21D0D3954(*(v35 + 48) + v32 * v17, v14, &qword_27CE5FB90);
      v19 = *(v33 + 48);
      sub_21D0D3954(v14, v8, &qword_27CE5FB90);
      sub_21D0D3954(v34, &v8[v19], &qword_27CE5FB90);
      v20 = *v18;
      if ((*v18)(v8, 1, v4) == 1)
      {
        break;
      }

      v21 = v30;
      sub_21D0D3954(v8, v30, &qword_27CE5FB90);
      if (v20(&v8[v19], 1, v4) == 1)
      {
        sub_21D0CF7E0(v14, &qword_27CE5FB90);
        sub_21D107290(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v15 = v29;
LABEL_4:
        sub_21D0CF7E0(v8, &qword_27CE5F2E0);
        goto LABEL_5;
      }

      v22 = v28;
      sub_21D181D90(&v8[v19], v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v23 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v21, v22);
      v24 = v22;
      v4 = v27;
      sub_21D107290(v24, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v14, &qword_27CE5FB90);
      sub_21D107290(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v8, &qword_27CE5FB90);
      v15 = v29;
      if (v23)
      {
        return v17;
      }

LABEL_5:
      v17 = (v17 + 1) & v31;
      if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return v17;
      }
    }

    sub_21D0CF7E0(v14, &qword_27CE5FB90);
    if (v20(&v8[v19], 1, v4) == 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE5FB90);
      return v17;
    }

    goto LABEL_4;
  }

  return v17;
}

unint64_t sub_21D1807E0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21D180850(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_21D107158(*(v2 + 48) + v12 * v10, v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v13 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v8, a1);
      sub_21D107290(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_21D1809B0(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v21 = ~v6;
    do
    {
      v12 = *(v8 + 48) + 24 * v7;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (*(v12 + 16))
      {
        if (v15 == 1)
        {
          if (a3 != 1)
          {
            goto LABEL_4;
          }

          if (v14 == a1 && v13 == a2)
          {
            sub_21D179E10(a1, a2, 1);
            sub_21D179E10(a1, a2, 1);
            sub_21D181CB8(a1, a2, 1);
            sub_21D181CB8(a1, a2, 1);
            return v7;
          }

          v17 = sub_21DBFC64C();
          sub_21D179E10(v14, v13, 1);
          sub_21D179E10(a1, a2, 1);
          sub_21D181CB8(v14, v13, 1);
          sub_21D181CB8(a1, a2, 1);
          if (v17)
          {
            return v7;
          }
        }

        else
        {
          if (a3 != 2)
          {
LABEL_4:
            sub_21D179E10(v14, v13, v15);
            sub_21D179E10(a1, a2, a3);
            sub_21D181CB8(v14, v13, v15);
            sub_21D181CB8(a1, a2, a3);
            goto LABEL_5;
          }

          sub_21D0D8CF0(0, &qword_280D17680);
          sub_21D179E10(v14, v13, 2);
          sub_21D179E10(v14, v13, 2);
          sub_21D179E10(a1, a2, 2);
          v18 = sub_21DBFB63C();
          sub_21D181CB8(v14, v13, 2);
          sub_21D181CB8(v14, v13, 2);
          sub_21D181CB8(a1, a2, 2);
          if (v18)
          {
            return v7;
          }
        }
      }

      else
      {
        if (a3)
        {
          goto LABEL_4;
        }

        sub_21D0D8CF0(0, &qword_280D17680);
        sub_21D179E10(v14, v13, 0);
        sub_21D179E10(v14, v13, 0);
        sub_21D179E10(a1, a2, 0);
        v19 = sub_21DBFB63C();
        sub_21D181CB8(v14, v13, 0);
        sub_21D181CB8(v14, v13, 0);
        sub_21D181CB8(a1, a2, 0);
        if (v19)
        {
          return v7;
        }
      }

LABEL_5:
      v7 = (v7 + 1) & v21;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_21D180CC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21D181CE0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D445C0](v9, a1);
      sub_21D181D3C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21D180D90(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *(a1 + 1);
    v64 = *a1;
    v8 = *(a1 + 3);
    v57 = *(a1 + 2);
    v55 = *(a1 + 4);
    v58 = *(a1 + 5);
    v53 = *(a1 + 6);
    v56 = *(a1 + 7);
    v52 = *(a1 + 8);
    v54 = *(a1 + 9);
    v9 = a1[10];
    v10 = a1[11];
    v11 = a1[12];
    v51 = *(a1 + 104);
    v12 = *(v2 + 48);
    v60 = ~v4;
    v61 = v2 + 64;
    v63 = v8;
    v59 = v12;
    do
    {
      v13 = v12 + 112 * v5;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      v17 = *(v13 + 32);
      v18 = *(v13 + 40);
      v19 = *(v13 + 48);
      v20 = *(v13 + 56);
      v21 = *(v13 + 64);
      v22 = *(v13 + 72);
      v24 = *(v13 + 80);
      v23 = *(v13 + 88);
      v25 = *(v13 + 96);
      v26 = *(v13 + 104);
      if (v14)
      {
        if (!v7)
        {
          goto LABEL_4;
        }

        if (*v13 != *&v64 || v14 != v7)
        {
          v62 = *(v13 + 32);
          v28 = *(v13 + 56);
          v29 = *(v13 + 48);
          v30 = v7;
          v31 = *(v13 + 72);
          v32 = *(v13 + 64);
          v33 = *(v13 + 104);
          v34 = sub_21DBFC64C();
          v26 = v33;
          v21 = v32;
          v22 = v31;
          v7 = v30;
          v19 = v29;
          v20 = v28;
          v17 = v62;
          v8 = v63;
          v12 = v59;
          v6 = v60;
          v3 = v61;
          if ((v34 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v7)
      {
        goto LABEL_4;
      }

      if (v16)
      {
        if (!v8)
        {
          goto LABEL_4;
        }

        if (v15 != v57 || v16 != v8)
        {
          v36 = v26;
          v37 = sub_21DBFC64C();
          v26 = v36;
          v12 = v59;
          v6 = v60;
          v8 = v63;
          v3 = v61;
          if ((v37 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v8)
      {
        goto LABEL_4;
      }

      if (v18)
      {
        if (!v58)
        {
          goto LABEL_4;
        }

        if (v17 != v55 || v18 != v58)
        {
          v39 = v26;
          v40 = sub_21DBFC64C();
          v26 = v39;
          v12 = v59;
          v6 = v60;
          v8 = v63;
          v3 = v61;
          if ((v40 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v58)
      {
        goto LABEL_4;
      }

      if (v20)
      {
        if (!v56)
        {
          goto LABEL_4;
        }

        if (v19 != v53 || v20 != v56)
        {
          v42 = v26;
          v43 = sub_21DBFC64C();
          v26 = v42;
          v12 = v59;
          v6 = v60;
          v8 = v63;
          v3 = v61;
          if ((v43 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v56)
      {
        goto LABEL_4;
      }

      if (v22)
      {
        if (!v54)
        {
          goto LABEL_4;
        }

        if (v21 != v52 || v22 != v54)
        {
          v44 = v26;
          v45 = sub_21DBFC64C();
          v12 = v59;
          v6 = v60;
          v8 = v63;
          v3 = v61;
          if ((v45 & 1) == 0)
          {
            goto LABEL_4;
          }

          v46 = v24 == v9 && v23 == v10;
          if (!v46 || v25 != v11)
          {
            goto LABEL_4;
          }

          v26 = v44;
          goto LABEL_62;
        }
      }

      else if (v54)
      {
        goto LABEL_4;
      }

      if (v24 != v9 || v23 != v10 || v25 != v11)
      {
        goto LABEL_4;
      }

LABEL_62:
      if (((v26 ^ v51) & 1) == 0)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21D1810EC(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_21D0D8CF0(0, &qword_280D17880);
          v10 = v9;
          v11 = a1;
          v12 = sub_21DBFB63C();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21D1811F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_21DBFC64C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_21DBFC64C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_21D1812F0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21D18135C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey();
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_21D107158(*(v2 + 48) + v12 * v10, v8, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
      if (_s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v8, a1))
      {
        v13 = v8[*(v5 + 20)];
        sub_21D107290(v8, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
        if (v13 == *(a1 + *(v5 + 20)))
        {
          return v10;
        }
      }

      else
      {
        sub_21D107290(v8, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_21D181500(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v31 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  MEMORY[0x28223BE20](v44);
  v12 = &v31 - v11;
  v43 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  v13 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = -1 << *(v2 + 32);
  v17 = a2 & ~v16;
  v46 = v2 + 64;
  if (((*(v2 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
    return v17;
  }

  v41 = v6;
  v18 = ~v16;
  v19 = sub_21D0D8CF0(0, &qword_280D17680);
  v42 = a1;
  v20 = *a1;
  v39 = v2;
  v40 = (v7 + 48);
  v32 = (v7 + 32);
  v35 = (v7 + 8);
  v36 = v18;
  v21 = *(v13 + 72);
  v37 = v20;
  v38 = v19;
  while (1)
  {
    sub_21D107158(*(v3 + 48) + v21 * v17, v15, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
    if ((sub_21DBFB63C() & 1) == 0)
    {
      goto LABEL_5;
    }

    v23 = *(v43 + 20);
    v24 = *(v44 + 48);
    sub_21D0D3954(&v15[v23], v12, &qword_27CE5EA20);
    sub_21D0D3954(v42 + v23, &v12[v24], &qword_27CE5EA20);
    v25 = v41;
    v26 = *v40;
    if ((*v40)(v12, 1, v41) == 1)
    {
      break;
    }

    sub_21D0D3954(v12, v45, &qword_27CE5EA20);
    if (v26(&v12[v24], 1, v25) == 1)
    {
      (*v35)(v45, v25);
      v3 = v39;
      goto LABEL_4;
    }

    v27 = &v12[v24];
    v28 = v33;
    (*v32)(v33, v27, v25);
    sub_21D0F56A4(&qword_280D171D0, MEMORY[0x277CC9260]);
    v34 = sub_21DBFA10C();
    v29 = *v35;
    (*v35)(v28, v25);
    v29(v45, v25);
    sub_21D0CF7E0(v12, &qword_27CE5EA20);
    v3 = v39;
    v18 = v36;
    if (v34)
    {
      goto LABEL_14;
    }

LABEL_5:
    sub_21D107290(v15, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
    v17 = (v17 + 1) & v18;
    if (((*(v46 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return v17;
    }
  }

  v22 = v26(&v12[v24], 1, v25);
  v3 = v39;
  if (v22 != 1)
  {
LABEL_4:
    sub_21D0CF7E0(v12, &unk_27CE5F2A0);
    v18 = v36;
    goto LABEL_5;
  }

  sub_21D0CF7E0(v12, &qword_27CE5EA20);
LABEL_14:
  sub_21D107290(v15, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
  return v17;
}

char *sub_21D1819FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58400);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_21D181AF0(uint64_t a1)
{
  v2 = sub_21DBF56BC();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v8 = [v4 identifier];
    sub_21DBF568C();

    v9 = sub_21DBF565C();
    v11 = v10;
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return sub_21D17C564(v9, v11, 0xD00000000000001DLL, 0x800000021DC44400);
}

uint64_t getEnumTagSinglePayload for TTRProcessEnvironment(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for TTRProcessEnvironment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21D181CB8(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_21D181D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TTRCloudKitNetworkActivityMonitor.Activity.description.getter()
{
  if (*v0)
  {
    return 1701670771;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t TTRCloudKitNetworkActivityMonitor.Activity.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D181EA0()
{
  if (*v0)
  {
    return 1701670771;
  }

  else
  {
    return 1701736302;
  }
}

id TTRCloudKitNetworkActivityMonitor.__allocating_init(queue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_executeToken] = 0;
  *&v3[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_queue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t TTRCloudKitNetworkActivityMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRCloudKitNetworkActivityMonitor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

void sub_21D1820A0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id TTRCloudKitNetworkActivityMonitor.init(queue:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_executeToken] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRCloudKitNetworkActivityMonitor_queue] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_21D1821A8(void *a1)
{
  if (qword_280D17EB0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F1C8);
  v3 = a1;
  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAECC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_21DBFC74C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "Unable to get syncPerformer. {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

void sub_21D182340(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_21D1823A8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v5 = a3 & 1;
    return sub_21D0EB944(&v5);
  }

  return result;
}

id TTRCloudKitNetworkActivityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRCloudKitNetworkActivityMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21D182540()
{
  result = qword_27CE58420;
  if (!qword_27CE58420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58420);
  }

  return result;
}

uint64_t sub_21D1825E8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE58488);
  v1 = __swift_project_value_buffer(v0, qword_27CE58488);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D1826C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 TTRListSectionEditor.__allocating_init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  result = *a2;
  v8 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v8;
  *(v6 + 56) = *(a2 + 32);
  *(v6 + 64) = a3;
  return result;
}

uint64_t TTRListSectionEditor.init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v4 = *(a2 + 16);
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(a2 + 32);
  *(v3 + 64) = a3;
  return v3;
}

Swift::Void __swiftcall TTRListSectionEditor.edit(displayName:)(Swift::String displayName)
{
  object = displayName._object;
  countAndFlagsBits = displayName._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = [v4 displayName];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = v6 == countAndFlagsBits && v8 == object;
  if (v9 || (sub_21DBFC64C() & 1) != 0)
  {
  }

  else
  {
    if (qword_27CE56550 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE58488);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [v4 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Updating list section's display name {listSectionID: %@}", v13, 0xCu);
      sub_21D0CF7E0(v14, &unk_27CE60070);
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    v16 = sub_21DBFA12C();
    [v4 setDisplayName_];

    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = v8;
    sub_21D182A2C(sub_21D18387C, v17);
  }
}

uint64_t sub_21D182A2C(uint64_t a1, uint64_t a2)
{
  v10[3] = sub_21D0D8CF0(0, &qword_280D17880);
  v10[0] = [*(v2 + 16) objectID];
  v5 = sub_21D0D8CF0(0, &qword_27CE584F8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58500);
  *&v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D00;
  sub_21D0CEB98(v10, v6 + 32);
  sub_21D0CF2E8(&v8, (v6 + 64));
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_21D1C3958(v6, a1, a2);
}

uint64_t sub_21D182B38(uint64_t a1, uint64_t a2)
{
  v10[3] = sub_21D0D8CF0(0, &qword_280D17880);
  v10[0] = [*(v2 + 16) objectID];
  v5 = sub_21D0D8CF0(0, &qword_280D17690);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584F0);
  *&v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
  v6 = swift_allocObject();
  v6[1] = xmmword_21DC08D00;
  sub_21D0CEB98(v10, (v6 + 2));
  sub_21D0CF2E8(&v8, v6 + 4);
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_21D1C3EB8(v6, a1, a2);
}

uint64_t sub_21D182C44(uint64_t a1, uint64_t a2)
{
  v11[3] = &type metadata for TTRSmartListEditor.ID;
  v5 = *(v2 + 16);
  v11[0] = [v5 smartListType];
  v11[1] = [v5 objectID];
  v6 = sub_21D0D8CF0(0, &qword_280D0C320);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E0);
  *&v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DC08D00;
  sub_21D0CEB98(v11, v7 + 32);
  sub_21D0CF2E8(&v9, (v7 + 64));
  __swift_destroy_boxed_opaque_existential_0(v11);
  sub_21D1C498C(v7, a1, a2);
}

uint64_t sub_21D182D68(uint64_t a1, uint64_t a2)
{
  v10[3] = sub_21D0D8CF0(0, &qword_280D17880);
  v10[0] = [*(v2 + 16) objectID];
  v5 = sub_21D0D8CF0(0, &qword_27CE584C8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584D0);
  *&v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D00;
  sub_21D0CEB98(v10, v6 + 32);
  sub_21D0CF2E8(&v8, (v6 + 64));
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_21D1C4F54(v6, a1, a2);
}

uint64_t sub_21D182E74(uint64_t a1, uint64_t a2)
{
  v10[3] = sub_21D0D8CF0(0, &qword_280D17880);
  v10[0] = [*(v2 + 16) objectID];
  v5 = sub_21D0D8CF0(0, &qword_280D17860);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
  *&v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D00;
  sub_21D0CEB98(v10, v6 + 32);
  sub_21D0CF2E8(&v8, (v6 + 64));
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_21D1C442C(v6, a1, a2);
}

uint64_t sub_21D182F80(uint64_t a1, uint64_t a2)
{
  v10[3] = sub_21D0D8CF0(0, &qword_280D17880);
  v10[0] = [*(v2 + 16) objectID];
  v5 = sub_21D0D8CF0(0, &qword_27CE5DDD0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584D8);
  *&v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D00;
  sub_21D0CEB98(v10, v6 + 32);
  sub_21D0CF2E8(&v8, (v6 + 64));
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_21D1C54B4(v6, a1, a2);
}

uint64_t sub_21D18308C(uint64_t a1, uint64_t a2)
{
  v10[3] = sub_21D0D8CF0(0, &qword_280D17880);
  v10[0] = [*(v2 + 16) objectID];
  v5 = sub_21D0D8CF0(0, &qword_27CE584B8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584C0);
  *&v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
  v6 = swift_allocObject();
  v6[1] = xmmword_21DC08D00;
  sub_21D0CEB98(v10, (v6 + 2));
  sub_21D0CF2E8(&v8, v6 + 4);
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_21D1C5A14(v6, a1, a2);
}

uint64_t sub_21D183198(uint64_t a1, uint64_t a2)
{
  v10[3] = sub_21D0D8CF0(0, &qword_280D17880);
  v10[0] = [*(v2 + 16) objectID];
  v5 = sub_21D0D8CF0(0, &qword_27CE584A8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584B0);
  *&v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
  v6 = swift_allocObject();
  v6[1] = xmmword_21DC08D00;
  sub_21D0CEB98(v10, (v6 + 2));
  sub_21D0CF2E8(&v8, v6 + 4);
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_21D1C5F88(v6, a1, a2);
}

uint64_t TTRListSectionEditor.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80);

  return swift_deallocClassInstance();
}

id static TTRListSectionEditor.store(for:)(void *a1)
{
  v1 = [a1 store];

  return v1;
}

__n128 TTRListSectionEditor.__allocating_init(item:saveRequest:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, id a2, uint64_t a3, char a4)
{
  v8 = [a2 updateListSection_];

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  result = *a3;
  v11 = *(a3 + 16);
  *(v9 + 24) = *a3;
  *(v9 + 40) = v11;
  *(v9 + 56) = *(a3 + 32);
  *(v9 + 64) = a4;
  return result;
}

__n128 sub_21D1833FC@<Q0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = [a1 updateListSection_];

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  result = *a3;
  v13 = *(a3 + 16);
  *(v11 + 24) = *a3;
  *(v11 + 40) = v13;
  *(v11 + 56) = *(a3 + 32);
  *(v11 + 64) = a4;
  *a5 = v11;
  return result;
}

id sub_21D18349C(id *a1)
{
  v1 = [*a1 store];

  return v1;
}

id static TTRListSectionEditor.changeItem(with:in:)(uint64_t a1, id a2)
{
  v2 = [a2 _trackedListSectionChangeItemForObjectID_];

  return v2;
}

{
  v2 = [a2 updateListSection_];

  return v2;
}

id static TTRListSectionEditor.id(for:)(void *a1)
{
  v1 = [a1 objectID];

  return v1;
}

id TTRListSectionEditor.id.getter()
{
  v1 = [*(v0 + 16) objectID];

  return v1;
}

id TTRListSectionEditor.store.getter()
{
  v1 = [*(v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

__n128 TTRListSectionEditor.__allocating_init(changeItem:undoContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  *(v4 + 56) = *(a2 + 32);
  *(v4 + 64) = 0;
  return result;
}

id sub_21D183688@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_21D1838A8(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_21D1836B8(void *a1, id a2)
{
  v2 = [a2 _trackedListSectionChangeItemForObjectID_];

  return v2;
}

id sub_21D1836F8(void *a1, id a2)
{
  v2 = [a2 updateListSection_];

  return v2;
}

id sub_21D183738@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 objectID];
  *a2 = result;
  return result;
}

id sub_21D183770()
{
  v1 = [*(*v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

__n128 sub_21D1837DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  result = *a2;
  v8 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v8;
  *(v6 + 56) = *(a2 + 32);
  *(v6 + 64) = 0;
  *a3 = v6;
  return result;
}

id sub_21D18383C@<X0>(void *a1@<X8>)
{
  result = [*(*v1 + 16) objectID];
  *a1 = result;
  return result;
}

id sub_21D1838A8(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [a2 fetchListSectionWithObjectID:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_21D183968(uint64_t a1)
{
  result = sub_21D183990();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_21D183990()
{
  result = qword_27CE584A0;
  if (!qword_27CE584A0)
  {
    type metadata accessor for TTRListSectionEditor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE584A0);
  }

  return result;
}

unint64_t sub_21D183A0C()
{
  result = qword_280D17870;
  if (!qword_280D17870)
  {
    sub_21D0D8CF0(255, &qword_280D17880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D17870);
  }

  return result;
}

uint64_t sub_21D183AA0(uint64_t a1)
{
  v1 = a1;
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v26 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    result = sub_21DBFC20C();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v26 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  result = sub_21DBFBCCC();
  v5 = *(v1 + 36);
  v23 = result;
  v24 = v5;
  v25 = 0;
LABEL_7:
  v6 = 0;
  v20 = v2;
  while (v6 < v2)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v13 = v23;
    v14 = v24;
    v15 = v25;
    sub_21D198FB4(v23, v24, v25, v1);
    v17 = v16;
    sub_21DBFADFC();
    v18 = v1;

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    result = sub_21DBFBFFC();
    if (v21)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      if (sub_21DBFC24C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589F0);
      v19 = sub_21DBF9EEC();
      sub_21DBFC30C();
      result = v19(v22, 0);
    }

    else
    {
      v7 = sub_21DB84AE0(v13, v14, v15, v1);
      v9 = v8;
      v11 = v10;
      result = sub_21D15746C(v13, v14, v15);
      v23 = v7;
      v24 = v9;
      v25 = v11 & 1;
      v1 = v18;
      v2 = v20;
    }

    ++v6;
    if (v12 == v2)
    {
      sub_21D15746C(v23, v24, v25);
      return v26;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21D183D0C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE58508);
  v1 = __swift_project_value_buffer(v0, qword_27CE58508);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D183E24(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58520);
    sub_21DBFA1AC();
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    v8 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();
  }

  return swift_unknownObjectRelease();
}

void (*sub_21D183FD0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D184070;
}

void sub_21D184070(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v3[3] = *v3[5];
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58520);
      sub_21DBFA1AC();
      MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
      v8 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();
    }
  }

  free(v3);
}

void sub_21D18422C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21D18428C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t TTRShowGroupDataModelSource.__allocating_init(group:store:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, void *a2, _BYTE *a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v10 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
  *(v10 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group) = 0;
  *(v10 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_dataViewMonitor) = 0;
  *(v10 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_listFetchManager) = 0;
  *(v10 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_smartListFetchManager) = 0;
  swift_beginAccess();
  *(v10 + v11) = a1;
  *(v10 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_store) = a2;
  *(v10 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_countCompleted) = a3;
  v12 = qword_280D1AA10;
  v13 = a1;
  v14 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v16 = swift_allocObject();
  v17 = sub_21D193548(0, 2u, v15, v16);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_showCompletedContextInstance) = v17;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 18) = 0;
  *(v10 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_tipKitContextInstance) = v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v20 = sub_21DBF70DC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v10 + v19, a4, v20);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v10 + 16) = a5 & 1;
  swift_beginAccess();
  v17[3] = &protocol witness table for TTRShowGroupDataModelSource;
  swift_unknownObjectWeakAssign();
  v23 = 10;

  sub_21D1860F4(&v23);

  (*(v21 + 8))(a4, v20);
  return v10;
}

uint64_t TTRShowGroupDataModelSource.init(group:store:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, void *a2, char *a3, uint64_t a4, char a5)
{
  v10 = *a3;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_dataViewMonitor) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_listFetchManager) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_smartListFetchManager) = 0;
  swift_beginAccess();
  *(v5 + v11) = a1;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_store) = a2;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_countCompleted) = v10;
  v12 = qword_280D1AA10;
  v13 = a1;
  v14 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v16 = swift_allocObject();
  v17 = sub_21D193548(0, 2u, v15, v16);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_showCompletedContextInstance) = v17;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 18) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_tipKitContextInstance) = v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v20 = sub_21DBF70DC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v5 + v19, a4, v20);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v5 + 16) = a5 & 1;
  swift_beginAccess();
  v17[3] = &protocol witness table for TTRShowGroupDataModelSource;
  swift_unknownObjectWeakAssign();
  v23 = 10;

  sub_21D1860F4(&v23);

  (*(v21 + 8))(a4, v20);
  return v5;
}

void sub_21D1847C0(void *a1, int a2)
{
  v22 = a2;
  v4 = sub_21DBF70DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  v11 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
  swift_beginAccess();
  v12 = *(v2 + v11);
  *(v2 + v11) = a1;
  v13 = a1;
  v14 = [v13 objectID];
  v15 = v14;
  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_12;
    }

    v12 = 0;
    goto LABEL_10;
  }

  v16 = [v12 objectID];
  v17 = v16;
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_12;
    }

    v15 = v16;
    goto LABEL_10;
  }

  if (!v16)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_21D0D8CF0(0, &qword_280D17880);
  v18 = sub_21DBFB63C();

  if ((v18 & 1) == 0)
  {
LABEL_11:
    v19 = [v13 sortingStyle];
    sub_21DBFAF7C();

    (*(v5 + 16))(v7, v10, v4);
    v20 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    (*(v5 + 40))(v2 + v20, v7, v4);
    swift_endAccess();
    (*(v5 + 8))(v10, v4);
    v23[0] = 0;
    sub_21D1860F4(v23);
    goto LABEL_14;
  }

LABEL_12:
  if (v22)
  {
    sub_21D852368();
  }

LABEL_14:
}

uint64_t sub_21D184A40(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_listFetchManager))
  {
    MEMORY[0x28223BE20](a1);
    v3 = v2;
    sub_21DBF5EFC();

    sub_21DBF814C();

    sub_21D18B65C(v3, sub_21D1953A8, &unk_282EA9F78, sub_21D1951E0, &block_descriptor_90);
  }

  else
  {
    if (qword_27CE56558 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE58508);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Using listFetchManager before it is initialized", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_21D184C3C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_smartListFetchManager))
  {
    MEMORY[0x28223BE20](a1);
    v3 = v2;
    sub_21DBF5EFC();

    sub_21DBF814C();

    sub_21D18B65C(v3, sub_21D1953A8, &unk_282EA9E38, sub_21D195170, &block_descriptor_65);
  }

  else
  {
    if (qword_27CE56558 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE58508);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Using smartListFetchManager before it is initialized", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_21D184E70@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v80 = a1;
  v84 = a2;
  v62 = *v2;
  v60 = sub_21DBF773C();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v57 - v5;
  v71 = sub_21DBF6C9C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v66 = &v57 - v10;
  v69 = sub_21DBFB1AC();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF714C();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x28223BE20](v12);
  v74 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF734C();
  v85 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF70DC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58568);
  v65 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v22 = &v57 - v21;
  v23 = sub_21DBF71BC();
  v82 = *(v23 - 8);
  v83 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = (&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = sub_21D8526E8(v25);
  v26 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v27 = *(v18 + 16);
  v77 = v17;
  v27(v20, v2 + v26, v17);
  v28 = *MEMORY[0x277D45500];
  v29 = *(v85 + 104);
  v78 = v14;
  v29(v16, v28, v14);
  v30 = v75;
  v31 = v74;
  v32 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x277D45460]);
  v72 = v22;
  v81 = v25;
  sub_21DBF6CAC();
  v33 = v64;
  v34 = v63;
  (*(v30 + 8))(v31, v32);
  (*(v85 + 8))(v16, v78);
  (*(v18 + 8))(v20, v77);
  v35 = v66;
  v36 = sub_21DBF76DC();
  v37 = v68;
  MEMORY[0x223D3F430](v36);
  v38 = *(v70 + 8);
  v39 = v35;
  v40 = v71;
  v38(v39, v71);
  v41 = v67;
  v42 = v69;
  if ((*(v67 + 48))(v37, 1, v69) == 1)
  {

    (*(v65 + 8))(v72, v73);
    (*(v82 + 8))(v81, v83);
    result = sub_21D0CF7E0(v37, &qword_27CE58560);
    v44 = v84;
    *v84 = 0u;
    v44[1] = 0u;
    v44[2] = 0u;
    v44[3] = 0u;
  }

  else
  {
    (*(v41 + 32))(v34, v37, v42);
    v45 = sub_21DBF76DC();
    v46 = v58;
    MEMORY[0x223D3F440](v45);
    v38(v33, v40);
    v85 = sub_21DBF718C();
    (*(v59 + 8))(v46, v60);
    v47 = v61;
    v48 = v73;
    v49 = v72;
    sub_21DBF76DC();
    v80 = sub_21DBF6C2C();
    v38(v47, v40);
    v50 = sub_21DBFB18C();
    LOWORD(v47) = sub_21DBFB19C();
    v51 = sub_21DBFB17C();
    v53 = v52;
    (*(v41 + 8))(v34, v42);
    (*(v65 + 8))(v49, v48);
    result = (*(v82 + 8))(v81, v83);
    v54 = v84;
    v56 = v79;
    v55 = v80;
    *v84 = v85;
    *(v54 + 1) = v56;
    *(v54 + 2) = v55;
    *(v54 + 24) = 0;
    *(v54 + 4) = v50;
    *(v54 + 20) = v47;
    *(v54 + 6) = v51;
    *(v54 + 7) = v53;
  }

  return result;
}

uint64_t sub_21D1859F8()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for TTRShowGroupDataModelSourceDeleteCompletedContext(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC15RemindersUICore49TTRShowGroupDataModelSourceDeleteCompletedContext_listForBatchDelete;
  *(v3 + v4) = [v2 objectID];
  v5 = *MEMORY[0x277D45958];
  v6 = sub_21DBF806C();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  return v3;
}

uint64_t TTRShowGroupDataModelSourceDeleteCompletedContext.__allocating_init(group:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC15RemindersUICore49TTRShowGroupDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = [a1 objectID];

  *(v2 + v3) = v4;
  v5 = *MEMORY[0x277D45958];
  v6 = sub_21DBF806C();
  (*(*(v6 - 8) + 104))(v2 + v3, v5, v6);
  return v2;
}

id sub_21D185BD0@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_store);
  v3 = type metadata accessor for TTRShowAllTipKitDataModelSource();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = &protocol witness table for TTRTipKitDataModelSourceBase;
  *a1 = v4;

  return v6;
}

uint64_t sub_21D185C48@<X0>(uint64_t *a1@<X8>)
{
  v45 = a1;
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF71BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_group;
  result = swift_beginAccess();
  v17 = *(v1 + v15);
  if (v17)
  {
    v41 = v5;
    v42 = v3;
    v43 = v2;
    v18 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_showCompletedContextInstance);
    if (*(v18 + 40))
    {
      v19 = *MEMORY[0x277D45468];
      v20 = *(v7 + 104);
      v20(v11, v19, v6);
      v20(v14, v19, v6);
      v21 = v17;
    }

    else
    {
      swift_beginAccess();
      *v11 = *(v18 + 48);
      v23 = *(v7 + 104);
      v23(v11, *MEMORY[0x277D45480], v6);
      v39 = *(v7 + 8);
      v24 = v17;
      sub_21DBF8E0C();
      v39(v11, v6);
      v23(v14, *MEMORY[0x277D45470], v6);
    }

    v25 = v14;
    v26 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRShowGroupDataModelSource_store);
    v27 = *(v7 + 16);
    v28 = v44;
    v40 = v25;
    v27(v44, v25, v6);
    v29 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    v31 = v41;
    v30 = v42;
    v32 = v1 + v29;
    v33 = v43;
    (*(v42 + 16))(v41, v32, v43);
    v34 = type metadata accessor for TTRShowGroupPrintingDataModelSource(0);
    v35 = swift_allocObject();
    *(v35 + 16) = v17;
    *(v35 + 24) = v26;
    (*(v7 + 32))(v35 + OBJC_IVAR____TtC15RemindersUICore35TTRShowGroupPrintingDataModelSource_showCompleted, v28, v6);
    (*(v30 + 32))(v35 + OBJC_IVAR____TtC15RemindersUICore35TTRShowGroupPrintingDataModelSource_sortingStyle, v31, v33);
    v36 = v45;
    v45[3] = v34;
    v36[4] = &protocol witness table for TTRShowGroupPrintingDataModelSource;
    *v36 = v35;
    v37 = *(v7 + 8);
    v38 = v26;
    return v37(v40, v6);
  }

  else
  {
    v22 = v45;
    v45[4] = 0;
    *v22 = 0u;
    *(v22 + 1) = 0u;
  }

  return result;
}