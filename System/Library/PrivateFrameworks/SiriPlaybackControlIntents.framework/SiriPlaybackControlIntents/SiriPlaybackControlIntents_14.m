uint64_t sub_268A02860(uint64_t a1)
{
  v2 = sub_268B35494();
  v66 = OUTLINED_FUNCTION_1(v2);
  v67 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v66);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v59 - v13;
  v65 = type metadata accessor for MediaIntent();
  v15 = *(*(v65 - 1) + 64);
  MEMORY[0x28223BE20](v65);
  v61 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B37A54();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v64 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v59 - v25;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v59 = *(v20 + 16);
  v60 = v27;
  v59(v26);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v63 = a1;
    v31 = v10;
    v32 = v17;
    v33 = v8;
    v34 = v20;
    v35 = v30;
    *v30 = 0;
    _os_log_impl(&dword_2688BB000, v28, v29, "MediaFlowProvider#makeflow making flow from parse", v30, 2u);
    v36 = v35;
    v20 = v34;
    v8 = v33;
    v17 = v32;
    v10 = v31;
    a1 = v63;
    MEMORY[0x26D6266E0](v36, -1, -1);
  }

  v37 = *(v20 + 8);
  v63 = v20 + 8;
  v37(v26, v17);
  v38 = v66;
  v39 = *(v67 + 16);
  v39(v10, a1, v66);
  sub_26892E840(v10);
  if (__swift_getEnumTagSinglePayload(v14, 1, v65) == 1)
  {
    v65 = v10;
    sub_268A03080(v14);
    v40 = v64;
    (v59)(v64, v60, v17);
    v39(v8, a1, v38);
    v41 = v38;
    v42 = sub_268B37A34();
    v43 = sub_268B37EE4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v68 = v62;
      *v44 = 136315138;
      v39(v65, v8, v41);
      v45 = sub_268B37C24();
      v47 = v46;
      v48 = OUTLINED_FUNCTION_0_11();
      v49(v48);
      v50 = sub_26892CDB8(v45, v47, &v68);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v42, v43, "MediaFlowProvider#makeflow failed to create MediaIntent from parse: %s", v44, 0xCu);
      v51 = v62;
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x26D6266E0](v51, -1, -1);
      MEMORY[0x26D6266E0](v44, -1, -1);

      v52 = v64;
    }

    else
    {

      v56 = OUTLINED_FUNCTION_0_11();
      v57(v56);
      v52 = v40;
    }

    v37(v52, v17);
    return 0;
  }

  else
  {
    v53 = v61;
    sub_26893207C(v14, v61);
    sub_268A02D6C(v53);
    v55 = v54;
    sub_26895F7A8(v53);
  }

  return v55;
}

void sub_268A02D6C(unsigned __int8 *a1)
{
  v2 = *a1;
  switch(*a1)
  {
    case 2u:

      goto LABEL_5;
    case 3u:
      goto LABEL_6;
    default:
      v4 = sub_268B38444();

      if ((v4 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      if ((a1[1] & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v1, v1[3]);
        sub_268B0605C();
        return;
      }

LABEL_6:
      v5 = a1[2];
      if (v5 == 5)
      {
        goto LABEL_7;
      }

      if (sub_268932314(a1[2]) == 0x656C746974627573 && v6 == 0xE900000000000073)
      {
        goto LABEL_32;
      }

      v8 = sub_268B38444();

      if (v8)
      {
        goto LABEL_33;
      }

      if (sub_268932314(v5) == 25443 && v9 == 0xE200000000000000)
      {
        goto LABEL_32;
      }

      v11 = sub_268B38444();

      if (v11)
      {
        goto LABEL_33;
      }

      if (sub_268932314(v5) == 6841459 && v12 == 0xE300000000000000)
      {
LABEL_32:

        goto LABEL_33;
      }

      v14 = sub_268B38444();

      if (v14)
      {
LABEL_33:
        __swift_project_boxed_opaque_existential_1(v1, v1[3]);
        sub_268B0638C();
        return;
      }

      if (sub_268932314(v5) == 0x6F69647561 && v15 == 0xE500000000000000)
      {
LABEL_9:

LABEL_35:
        __swift_project_boxed_opaque_existential_1(v1, v1[3]);
        sub_268B066BC();
        return;
      }

      v17 = sub_268B38444();

      if (v17)
      {
        goto LABEL_35;
      }

LABEL_7:
      if (*(a1 + 2))
      {
        switch(v2)
        {
          case 1:
          case 2:
            v18 = sub_268B38444();

            if (v18)
            {
              goto LABEL_35;
            }

            break;
          case 3:
            return;
          default:
            goto LABEL_9;
        }
      }

      return;
  }
}

uint64_t sub_268A03080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268A030E8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v27 = MEMORY[0x277D84F98];
  v3 = sub_2688EFD0C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v5 context];
    if (v7)
    {
      v8 = sub_268AE10A4(v7);
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v12 = sub_268A759D0();
    v13 = v2[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_25;
    }

    v16 = v11;
    if (v2[3] < v15)
    {
      sub_268ADEF34(v15);
      v2 = v27;
      v17 = sub_268A759D0();
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_27;
      }

      v12 = v17;
    }

    if (v16)
    {

      v20 = (v2[7] + 8 * v12);
      MEMORY[0x26D6256C0](v19);
      if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_268B3BBA0;
      *(v21 + 32) = v6;
      v2[(v12 >> 6) + 8] |= 1 << v12;
      v22 = (v2[6] + 16 * v12);
      *v22 = v8;
      v22[1] = v10;
      *(v2[7] + 8 * v12) = v21;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      v2[2] = v25;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

uint64_t sub_268A03350(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v26 = MEMORY[0x277D84F98];
  v3 = sub_2688EFD0C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_2689CC3AC(v5);
    v9 = v8;
    v11 = sub_268A759D0();
    v12 = v2[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_22;
    }

    v15 = v10;
    if (v2[3] < v14)
    {
      sub_268ADF134(v14);
      v2 = v26;
      v16 = sub_268A759D0();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

      v11 = v16;
    }

    if (v15)
    {

      v19 = (v2[7] + 8 * v11);
      MEMORY[0x26D6256C0](v18);
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_268B3BBA0;
      *(v20 + 32) = v6;
      v2[(v11 >> 6) + 8] |= 1 << v11;
      v21 = (v2[6] + 16 * v11);
      *v21 = v7;
      v21[1] = v9;
      *(v2[7] + 8 * v11) = v20;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v2[2] = v24;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

uint64_t sub_268A0358C(uint64_t a1, uint64_t a2)
{
  v16 = MEMORY[0x277D84F98];
  v5 = sub_2688EFD0C(a1);
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v2 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);

      __break(1u);
      return result;
    }

    v15 = v7;
    sub_268986C68(&v16, &v15);
  }

  v2 = 0;
  v8 = v16;
  v9 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v10 = *(a2 + 16);
  while (v10 != v2)
  {
    if (v2 >= v10)
    {
      goto LABEL_20;
    }

    v11 = *(sub_268B378C4() - 8);
    v12 = (v2 + 1);
    if (__OFADD__(v2, 1))
    {
      goto LABEL_21;
    }

    sub_2689870EC(a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v2++, v8, &v15);
    if (v15)
    {
      MEMORY[0x26D6256C0]();
      v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
      {
        OUTLINED_FUNCTION_23_11(v13);
        sub_268B37D14();
      }

      sub_268B37D44();
      v9 = v16;
      v2 = v12;
    }
  }

  return v9;
}

uint64_t sub_268A0383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v119 = sub_268B37AB4();
  v5 = OUTLINED_FUNCTION_1(v119);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v116 = v8;
  v9 = sub_268B37B14();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v115 = v13;
  v111 = sub_268B37594();
  v14 = OUTLINED_FUNCTION_19_0(v111);
  v117 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_79(v18);
  v103 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v21);
  v22 = sub_268B37A54();
  v23 = OUTLINED_FUNCTION_1(v22);
  v107 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v29 = v28 - v27;
  v30 = sub_268B37AC4();
  v31 = OUTLINED_FUNCTION_1(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v38 = v37 - v36;
  v99 = dispatch_group_create();
  sub_2688C2FC8();
  (*(v33 + 104))(v38, *MEMORY[0x277D851C8], v30);
  v114 = sub_268B37F84();
  (*(v33 + 8))(v38, v30);
  OUTLINED_FUNCTION_168_0();
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D84F90];
  v118 = v39;
  *(v39 + 16) = MEMORY[0x277D84F90];
  v41 = *(a1 + 16);
  v42 = a1 + 32;
  v43 = v40;
  v120 = v9;
  for (i = v29; v41; --v41)
  {
    sub_26890C900(v42, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, v124);
    if (sub_268B375B4())
    {
      sub_2688E6514(&aBlock, &v127);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = *(v43 + 16);
        OUTLINED_FUNCTION_39_4();
        v43 = v132;
      }

      v48 = *(v43 + 16);
      v47 = *(v43 + 24);
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_23_11(v47);
        sub_26894472C();
      }

      v49 = v130;
      v50 = v131;
      __swift_mutable_project_boxed_opaque_existential_1(&v127, v130);
      OUTLINED_FUNCTION_31_10();
      v52 = *(v51 + 64);
      MEMORY[0x28223BE20](v53);
      OUTLINED_FUNCTION_1_0();
      v56 = v55 - v54;
      (*(v57 + 16))(v55 - v54);
      sub_26892D904(v48, v56, &v132, v49, v50);
      __swift_destroy_boxed_opaque_existential_0Tm(&v127);
      v43 = v132;
      v9 = v120;
      v29 = i;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    }

    v42 += 40;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v58 = __swift_project_value_buffer(v22, qword_2802CDA10);
  (*(v107 + 16))(v29, v58, v22);

  v59 = sub_268B37A34();
  v60 = sub_268B37ED4();

  v61 = os_log_type_enabled(v59, v60);
  v62 = MEMORY[0x277D84F90];
  if (v61)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&aBlock = v64;
    *v63 = 136315138;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A40, &qword_268B3C080);
    v66 = MEMORY[0x26D6256F0](v43, v65);
    v68 = sub_26892CDB8(v66, v67, &aBlock);
    v9 = v120;

    *(v63 + 4) = v68;
    _os_log_impl(&dword_2688BB000, v59, v60, "FromEntity homeAutomationEntities: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    v62 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v107 + 8))(v29, v22);
  v69 = v118;
  v70 = sub_268B37504();

  v71 = *(v70 + 16);
  v72 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  v73 = v115;
  v74 = v119;
  if (v71)
  {
    v108 = *(v117 + 16);
    v75 = *(v117 + 80);
    v76 = v70 + ((v75 + 32) & ~v75);
    v106 = *(v117 + 72);
    v105 = (v117 + 32);
    v104 = (v75 + 16) & ~v75;
    OUTLINED_FUNCTION_17_15((v103 + v104 + 7) & 0xFFFFFFFFFFFFFFF8);
    OUTLINED_FUNCTION_17_15(v77);
    OUTLINED_FUNCTION_17_15(v78);
    v100 = v79;
    OUTLINED_FUNCTION_43_2(v128);
    OUTLINED_FUNCTION_43_2(&v127);
    do
    {
      v108(v109, v76, v111);
      dispatch_group_enter(v99);
      v80 = *v105;
      (*v105)(v110, v109, v111);
      v81 = swift_allocObject();
      v80(v81 + v104, v110, v111);
      *(v81 + v103) = v113;
      *(v81 + v102) = a2;
      *(v81 + v101) = v118;
      *(v81 + v100) = v99;
      v125 = sub_268A09D5C;
      v126 = v81;
      OUTLINED_FUNCTION_1_35();
      *(&aBlock + 1) = 1107296256;
      OUTLINED_FUNCTION_15_16(&v131);
      v123 = v82;
      v124 = &block_descriptor_31;
      v83 = _Block_copy(&aBlock);
      v84 = v99;

      sub_268B37AE4();
      v127 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_2_23();
      sub_268A09C2C(&unk_2802A7010, v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
      sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
      v73 = v115;
      sub_268B38124();
      MEMORY[0x26D625950](v99, v115, v116, v83);
      v86 = v83;
      v9 = v120;
      _Block_release(v86);

      OUTLINED_FUNCTION_146(&v130);
      v87(v116, v119);
      OUTLINED_FUNCTION_146(v129);
      v88(v115, v120);

      v76 += v106;
      --v71;
    }

    while (v71);

    v69 = v118;
    v74 = v119;
    v62 = MEMORY[0x277D84F90];
    v72 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  }

  else
  {
  }

  v121 = sub_268B37F54();
  OUTLINED_FUNCTION_220();
  v89 = swift_allocObject();
  v89[2] = v69;
  v89[3] = a3;
  v89[4] = a4;
  v125 = sub_268A09E2C;
  v126 = v89;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_14_14(*&v72[287]);
  v123 = v90;
  v124 = &block_descriptor_37;
  v91 = _Block_copy(&aBlock);

  sub_268B37AE4();
  v127 = v62;
  OUTLINED_FUNCTION_2_23();
  sub_268A09C2C(v92, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  sub_268B38124();
  sub_268B37F24();

  _Block_release(v91);
  OUTLINED_FUNCTION_153(v128);
  v94(v116, v74);
  OUTLINED_FUNCTION_153(&v127);
  v95(v73, v9);
}

uint64_t sub_268A04350(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = a4;
  v48 = a5;
  v46 = a3;
  v7 = sub_268B37594();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_268B37A54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_2802CDA10);
  (*(v13 + 16))(v16, v17, v12);
  v44 = *(v8 + 16);
  v45 = a1;
  v44(v11, a1, v7);
  v18 = sub_268B37A34();
  v43 = v12;
  v19 = v18;
  v20 = sub_268B37ED4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v13;
    v22 = v7;
    v23 = v21;
    v40 = swift_slowAlloc();
    v49 = v40;
    *v23 = 136315138;
    sub_268A09C2C(&qword_2802A5BE8, MEMORY[0x277D5F918]);
    v24 = sub_268B38404();
    v42 = a2;
    v26 = v25;
    (*(v8 + 8))(v11, v22);
    v27 = sub_26892CDB8(v24, v26, &v49);
    a2 = v42;

    *(v23 + 4) = v27;
    v28 = v20;
    v29 = v22;
    _os_log_impl(&dword_2688BB000, v19, v28, "Selecting devices based on predicate: %s", v23, 0xCu);
    v30 = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x26D6266E0](v30, -1, -1);
    MEMORY[0x26D6266E0](v23, -1, -1);

    (*(v41 + 8))(v16, v43);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v16, v43);
    v29 = v7;
  }

  v31 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A28, qword_268B43980);
  v32 = *(v8 + 72);
  v33 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_268B3BBC0;
  v44((v34 + v33), v45, v29);
  v35 = swift_allocObject();
  v36 = v47;
  v35[2] = v46;
  v35[3] = a2;
  v37 = v48;
  v35[4] = v36;
  v35[5] = v37;

  v38 = v37;
  sub_268B37424();
}

void sub_268A047A4(uint64_t a1, char **a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2802A4F30 != -1)
  {
LABEL_19:
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();

  v17 = os_log_type_enabled(v15, v16);
  v30[1] = a4;
  v31 = a5;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v30[0] = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32[0] = v20;
    *v19 = 136315138;
    v21 = sub_268B378C4();
    v22 = MEMORY[0x26D6256F0](a1, v21);
    a5 = v23;
    v24 = sub_26892CDB8(v22, v23, v32);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_2688BB000, v15, v16, "Device selector returned devices: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x26D6266E0](v20, -1, -1);
    v25 = v19;
    a2 = v30[0];
    MEMORY[0x26D6266E0](v25, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  a1 = sub_268A0358C(a2, a1);
  v32[0] = MEMORY[0x277D84F90];
  v10 = sub_2688EFD0C(a1);
  v9 = 0;
  a4 = a1 & 0xC000000000000001;
  a2 = &selRef_groupLeader;
  while (v10 != v9)
  {
    if (a4)
    {
      v26 = MEMORY[0x26D625BD0](v9, a1);
    }

    else
    {
      if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v26 = *(a1 + 8 * v9 + 32);
    }

    v27 = v26;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v28 = [v26 context];
    if (v28 && (v13 = v28, a5 = [v28 nowPlayingState], v13, a5 == 1))
    {
      v13 = v32;
      sub_268B38214();
      a5 = *(v32[0] + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v9;
  }

  v29 = sub_268A08F04();

  swift_beginAccess();
  sub_268984A98(v29);
  swift_endAccess();
  dispatch_group_leave(v31);
}

uint64_t sub_268A04B14(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_268B37A34();
  v13 = sub_268B37F04();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = a3;
    v17 = v16;
    *v15 = 138412290;
    swift_beginAccess();
    v18 = *(a1 + 16);
    type metadata accessor for MediaStream();

    v19 = sub_268B37CE4();

    *(v15 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_2688BB000, v12, v13, "Returning sourceStreams: %@", v15, 0xCu);
    sub_2688C058C(v17, &qword_2802A6420, &unk_268B3C680);
    MEMORY[0x26D6266E0](v17, -1, -1);
    v20 = v15;
    a2 = v25;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  v21 = *(a1 + 16);

  a2(v22);
}

uint64_t sub_268A04D9C(unint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v248 = a5;
  v247 = a4;
  LODWORD(v254) = a3;
  v275 = a2;
  v283 = a1;
  v257 = sub_268B37924();
  v5 = OUTLINED_FUNCTION_1(v257);
  v241 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v9);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA0, &qword_268B3CE28);
  v10 = OUTLINED_FUNCTION_4(v256);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_79(&v235 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v18);
  v279 = sub_268B37AB4();
  v19 = OUTLINED_FUNCTION_1(v279);
  v251 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v23);
  v287 = sub_268B37564();
  v24 = OUTLINED_FUNCTION_1(v287);
  v238 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v29);
  v288 = sub_268B37594();
  v30 = OUTLINED_FUNCTION_1(v288);
  v285 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_79(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v38);
  v240 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v41);
  v252 = sub_268B37A54();
  v42 = OUTLINED_FUNCTION_1(v252);
  v253 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v49);
  v50 = sub_268B37464();
  v51 = OUTLINED_FUNCTION_1(v50);
  v264 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v55);
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  v56 = OUTLINED_FUNCTION_4(i);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  v60 = (&v235 - v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v65);
  v282 = sub_268B37F44();
  v66 = OUTLINED_FUNCTION_1(v282);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v71);
  v276 = sub_268B37F34();
  v72 = OUTLINED_FUNCTION_4(v276);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v75);
  v284 = sub_268B37B14();
  v76 = OUTLINED_FUNCTION_1(v284);
  v250 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_1_0();
  v82 = v81 - v80;
  v83 = sub_268B37AC4();
  v84 = OUTLINED_FUNCTION_1(v83);
  v86 = v85;
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_1_0();
  v91 = v90 - v89;
  v286 = dispatch_group_create();
  v92 = sub_2688C2FC8();
  (*(v86 + 104))(v91, *MEMORY[0x277D851C8], v83);
  v289 = sub_268B37F84();
  (*(v86 + 8))(v91, v83);
  sub_268B37AE4();
  *&aBlock = MEMORY[0x277D84F90];
  sub_268A09C2C(&unk_2802A5890, MEMORY[0x277D85230]);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  v277 = v82;
  sub_268B38124();
  (*(v68 + 104))(v280, *MEMORY[0x277D85260], v282);
  v246 = v92;
  v276 = sub_268B37F74();
  OUTLINED_FUNCTION_168_0();
  v94 = swift_allocObject();
  v95 = "ambiguousGroupsSync";
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6FC0, &unk_268B43970);
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  swift_allocObject();
  v280 = v94;
  *(v94 + 16) = sub_268B37094();
  v99 = (v94 + 16);
  v236 = v99;
  if (v254)
  {
    v100 = v283;

    v101 = v289;
  }

  else
  {
    v117 = *(v283 + 16);
    v93 = (v283 + 32);
    v100 = MEMORY[0x277D84F90];
    while (1)
    {
      v101 = v289;
      if (!v117)
      {
        break;
      }

      sub_26890C900(v93, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v292);
      if (sub_268B375B4())
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      }

      else
      {
        sub_2688E6514(&aBlock, &v295);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v299 = v100;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v119 = *(v100 + 16);
          OUTLINED_FUNCTION_39_4();
          v100 = v299;
        }

        v121 = *(v100 + 16);
        v120 = *(v100 + 24);
        if (v121 >= v120 >> 1)
        {
          OUTLINED_FUNCTION_23_11(v120);
          sub_26894472C();
        }

        v122 = v297;
        v123 = v298;
        __swift_mutable_project_boxed_opaque_existential_1(&v295, v297);
        v95 = &v235;
        OUTLINED_FUNCTION_31_10();
        v125 = *(v124 + 64);
        MEMORY[0x28223BE20](v126);
        OUTLINED_FUNCTION_1_0();
        v99 = (v128 - v127);
        (*(v129 + 16))(v128 - v127);
        sub_26892D904(v121, v99, &v299, v122, v123);
        __swift_destroy_boxed_opaque_existential_0Tm(&v295);
        v100 = v299;
      }

      v93 += 5;
      --v117;
    }
  }

  v102 = *(v100 + 16);
  v283 = v100;
  v282 = v102;
  if (!v102)
  {
    LODWORD(v99) = 0;
    goto LABEL_31;
  }

  v103 = 0;
  v104 = v100 + 32;
  v266 = v264 + 104;
  LODWORD(v265) = *MEMORY[0x277D5F868];
  v259 = v264 + 32;
  v262 = (v264 + 8);
  v93 = &qword_2802A5BA8;
  v101 = &qword_268B3C690;
  v264 = v60;
  while (1)
  {
    if (v103 >= *(v100 + 16))
    {
      goto LABEL_89;
    }

    sub_26890C900(v104, &aBlock);
    LODWORD(v99) = v292;
    __swift_project_boxed_opaque_existential_1(&aBlock, v292);
    v105 = v268;
    sub_268B37604();
    OUTLINED_FUNCTION_146(v296);
    v106 = OUTLINED_FUNCTION_33_11();
    v107(v106, v265, v50);
    OUTLINED_FUNCTION_40_6();
    v108 = *(i + 48);
    sub_2688F1FA4(v105, v60, &qword_2802A5BA8, &qword_268B3C690);
    sub_2688F1FA4(v95, v60 + v108, &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_11_21(v60);
    if (v109)
    {
      break;
    }

    v99 = v263;
    sub_2688F1FA4(v60, v263, &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_11_21(v60 + v108);
    if (v109)
    {
      OUTLINED_FUNCTION_29_8(v95);
      OUTLINED_FUNCTION_29_8(v105);
      OUTLINED_FUNCTION_146(&v293);
      v110(v99, v50);
      v100 = v283;
LABEL_14:
      sub_2688C058C(v60, &qword_2802A5BA0, &unk_268B41020);
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_146(&aBlock + 8);
    v111 = v60 + v108;
    v112 = v50;
    v113 = v99;
    v114 = v260;
    v115(v260, v111, v112);
    sub_268A09C2C(&qword_2802A5BB0, MEMORY[0x277D5F880]);
    LODWORD(v261) = sub_268B37BB4();
    v95 = v262;
    v99 = *v262;
    (*v262)(v114, v112);
    OUTLINED_FUNCTION_29_8(v271);
    OUTLINED_FUNCTION_29_8(v268);
    v116 = v113;
    v50 = v112;
    (v99)(v116, v112);
    OUTLINED_FUNCTION_29_8(v60);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    v100 = v283;
    if (v261)
    {
      goto LABEL_29;
    }

LABEL_16:
    ++v103;
    v104 += 40;
    v60 = v264;
    if (v282 == v103)
    {
      LODWORD(v99) = 0;
      goto LABEL_30;
    }
  }

  OUTLINED_FUNCTION_29_8(v95);
  OUTLINED_FUNCTION_29_8(v105);
  OUTLINED_FUNCTION_11_21(v60 + v108);
  v100 = v283;
  if (!v109)
  {
    goto LABEL_14;
  }

  sub_2688C058C(v60, &qword_2802A5BA8, &qword_268B3C690);
  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
LABEL_29:
  LODWORD(v99) = 1;
LABEL_30:
  v101 = v289;
LABEL_31:
  v50 = v284;
  v103 = v252;
  v104 = v253;
  v60 = v249;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    v130 = __swift_project_value_buffer(v103, qword_2802CDA10);
    v131 = *(v104 + 16);
    v243 = v130;
    v244 = v104 + 16;
    v242 = v131;
    v131(v60);

    v132 = sub_268B37A34();
    v133 = sub_268B37EC4();

    v134 = os_log_type_enabled(v132, v133);
    LODWORD(v271) = v99;
    if (v134)
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *&aBlock = v136;
      *v135 = 136315394;
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A40, &qword_268B3C080);
      v138 = MEMORY[0x26D6256F0](v100, v137);
      v93 = sub_26892CDB8(v138, v139, &aBlock);

      *(v135 + 4) = v93;
      *(v135 + 12) = 1024;
      *(v135 + 14) = v254 & 1;
      _os_log_impl(&dword_2688BB000, v132, v133, "Getting ambiguous groups for homeAutomationEntities: %s, includeFromEntities: %{BOOL}d", v135, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v136);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v140 = *(v104 + 8);
      v141 = v249;
    }

    else
    {

      v140 = *(v104 + 8);
      v141 = v60;
    }

    v249 = v140;
    (v140)(v141, v103);
    v60 = v286;
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_27_9();
    v142 = sub_268B37504();
    v99 = v142;
    v100 = *(v142 + 16);
    if (v100 < 2)
    {
      break;
    }

    v100 = v237;
    OUTLINED_FUNCTION_18_10();
    v143();
    v144 = sub_268B37A34();
    v133 = sub_268B37ED4();
    if (os_log_type_enabled(v144, v133))
    {
      v145 = OUTLINED_FUNCTION_14();
      *v145 = 0;
      _os_log_impl(&dword_2688BB000, v144, v133, "Multiple predicates found, filtering out .allDevices", v145, 2u);
      v60 = v286;
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_43_2(&v283);
    (v249)(v100, v103);
    v103 = 0;
    v268 = v99[2];
    v266 = v285 + 16;
    LODWORD(v265) = *MEMORY[0x277D5F8C0];
    v264 = v238 + 104;
    v263 = (v238 + 8);
    v260 = (v285 + 32);
    v261 = v285 + 8;
    v254 = MEMORY[0x277D84F90];
    v146 = v288;
    v50 = v239;
    for (i = v99; ; v99 = i)
    {
      if (v268 == v103)
      {

        v100 = *(v254 + 16);
        v50 = v284;
        v101 = v289;
        OUTLINED_FUNCTION_27_9();
        goto LABEL_52;
      }

      if (v103 >= v99[2])
      {
        break;
      }

      v262 = ((*(v285 + 80) + 32) & ~*(v285 + 80));
      v104 = *(v285 + 72);
      (*(v285 + 16))(v50, v262 + v99 + v104 * v103, v146);
      v101 = v269;
      v100 = v146;
      sub_268B37574();
      OUTLINED_FUNCTION_146(&v295);
      v147 = OUTLINED_FUNCTION_33_11();
      v148 = v287;
      v149(v147, v265, v287);
      sub_268A09C2C(&qword_2802A6FC8, MEMORY[0x277D5F900]);
      v150 = sub_268B37BB4();
      v93 = v263;
      v151 = *v263;
      (*v263)(v133, v148);
      v151(v101, v148);
      if (v150)
      {
        OUTLINED_FUNCTION_146(&v292);
        v152(v50, v100);
        ++v103;
        v60 = v286;
        OUTLINED_FUNCTION_28_12();
        v146 = v100;
      }

      else
      {
        v153 = v104;
        v104 = v262;
        v93 = *v260;
        (*v260)(v245, v50, v100);
        v154 = v254;
        v155 = swift_isUniquelyReferenced_nonNull_native();
        v156 = v154;
        *&aBlock = v154;
        if (v155)
        {
          v146 = v100;
        }

        else
        {
          v157 = *(v154 + 16);
          sub_2689447CC();
          v146 = v288;
          v156 = aBlock;
        }

        v60 = v286;
        v100 = *(v156 + 16);
        v158 = *(v156 + 24);
        v101 = (v100 + 1);
        if (v100 >= v158 >> 1)
        {
          OUTLINED_FUNCTION_23_11(v158);
          sub_2689447CC();
          v146 = v288;
          v156 = aBlock;
        }

        ++v103;
        *(v156 + 16) = v101;
        v254 = v156;
        (v93)(v156 + v104 + v100 * v153, v245, v146);
        OUTLINED_FUNCTION_28_12();
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    OUTLINED_FUNCTION_0_0();
  }

  v146 = v288;
LABEL_52:
  if (v100)
  {
    v159 = v285 + 16;
    v270 = *(v285 + 16);
    v160 = *(v285 + 80);
    v254 = v142;
    v161 = v142 + ((v160 + 4) & ~v160);
    v268 = *(v285 + 72);
    i = v285 + 32;
    v269 = v160;
    v266 = (v160 + 3) & ~v160;
    v162 = (v240 + v266 + 7) & 0xFFFFFFFFFFFFFFF8;
    v264 = (v162 + 15) & 0xFFFFFFFFFFFFFFF8;
    v265 = v162;
    OUTLINED_FUNCTION_17_15((v162 + 31) & 0xFFFFFFFFFFFFFFF8);
    v262 = v163;
    v261 = &v291;
    OUTLINED_FUNCTION_43_2(&v281);
    v260 = v164;
    OUTLINED_FUNCTION_43_2(&v280);
    v259 = v165;
    v167 = *(v166 + 2296);
    v285 = v159;
    do
    {
      v168 = v272;
      v270(v272, v161, v146);
      dispatch_group_enter(v60);
      v169 = *i;
      v170 = v273;
      (*i)(v273, v168, v146);
      v171 = v262;
      v172 = swift_allocObject();
      *(v172 + 16) = v274;
      v169(v172 + v266, v170, v288);
      v173 = v276;
      *(v172 + v265) = v276;
      v174 = v172 + v264;
      v133 = v275;
      *v174 = v275;
      *(v174 + 8) = v271;
      *(v263 + v172) = v280;
      *(v171 + v172) = v60;
      v293 = sub_268A09870;
      v294 = v172;
      OUTLINED_FUNCTION_1_35();
      *(&aBlock + 1) = v167;
      OUTLINED_FUNCTION_15_16(&v292);
      v291 = v175;
      v292 = &block_descriptor_4;
      v176 = _Block_copy(&aBlock);
      v287 = v60;

      v177 = v173;

      v178 = v277;
      sub_268B37AE4();
      v295 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_2_23();
      sub_268A09C2C(&unk_2802A7010, v179);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
      sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
      v180 = v278;
      v93 = v279;
      v60 = v286;
      sub_268B38124();
      MEMORY[0x26D625950](v60, v178, v180, v176);
      v146 = v288;
      v181 = v176;
      v50 = v284;
      _Block_release(v181);

      OUTLINED_FUNCTION_146(&v291);
      v182(v180, v93);
      OUTLINED_FUNCTION_146(&aBlock + 8);
      v183(v178, v50);

      v161 += v268;
      --v100;
    }

    while (v100);

    v101 = v289;
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_27_9();
  }

  else
  {
  }

  if (v282)
  {
    v104 = 0;
    v103 = v283 + 32;
    v288 = (v241 + 104);
    LODWORD(v287) = *MEMORY[0x277D5FA08];
    v274 = v241 + 32;
    v285 = v241 + 8;
    v99 = &qword_2802A5CA8;
    v60 = &unk_268B3CE30;
    while (1)
    {
      if (v104 >= *(v283 + 16))
      {
        goto LABEL_90;
      }

      sub_26890C900(v103, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v292);
      sub_268B37644();
      v184 = *v288;
      v100 = v133;
      v185 = OUTLINED_FUNCTION_33_11();
      v186 = v257;
      v187(v185, v287, v257);
      OUTLINED_FUNCTION_40_6();
      v188 = *(v256 + 48);
      v189 = v255;
      sub_2688F1FA4(v133, v255, &qword_2802A5CA8, &unk_268B3CE30);
      sub_2688F1FA4(v133, v189 + v188, &qword_2802A5CA8, &unk_268B3CE30);
      OUTLINED_FUNCTION_11_21(v189);
      if (v109)
      {
        break;
      }

      sub_2688F1FA4(v189, v93, &qword_2802A5CA8, &unk_268B3CE30);
      OUTLINED_FUNCTION_11_21(v189 + v188);
      if (v191)
      {
        OUTLINED_FUNCTION_30_9(v258);
        OUTLINED_FUNCTION_27_9();
        OUTLINED_FUNCTION_30_9(v133);
        (*v285)(v93, v186);
        v50 = v284;
        v190 = v189;
        v101 = v289;
LABEL_68:
        sub_2688C058C(v190, &qword_2802A5CA0, &qword_268B3CE28);
        __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_146(&v300);
      v192 = OUTLINED_FUNCTION_33_11();
      v193(v192);
      sub_268A09C2C(&qword_2802A5CB0, MEMORY[0x277D5FA18]);
      v194 = sub_268B37BB4();
      v93 = v189;
      v100 = v285;
      v195 = *v285;
      (*v285)(v133, v186);
      OUTLINED_FUNCTION_30_9(v258);
      OUTLINED_FUNCTION_27_9();
      OUTLINED_FUNCTION_30_9(v133);
      v195(v281, v186);
      OUTLINED_FUNCTION_28_12();
      OUTLINED_FUNCTION_30_9(v196);
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      v50 = v284;
      v101 = v289;
      if (v194)
      {
        goto LABEL_73;
      }

LABEL_70:
      ++v104;
      v103 += 40;
      if (v282 == v104)
      {
        goto LABEL_71;
      }
    }

    OUTLINED_FUNCTION_30_9(v133);
    OUTLINED_FUNCTION_30_9(v133);
    OUTLINED_FUNCTION_11_21(v189 + v188);
    v50 = v284;
    v190 = v189;
    v101 = v289;
    if (v109)
    {
      sub_2688C058C(v190, &qword_2802A5CA8, &unk_268B3CE30);
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
LABEL_73:

      OUTLINED_FUNCTION_18_10();
      v211();
      v212 = sub_268B37A34();
      v213 = sub_268B37ED4();
      if (os_log_type_enabled(v212, v213))
      {
        v214 = OUTLINED_FUNCTION_14();
        *v214 = 0;
        _os_log_impl(&dword_2688BB000, v212, v213, "HomeAutomation entity contains reference for 'this'.", v214, 2u);
        OUTLINED_FUNCTION_12();
      }

      v100 = v253 + 8;
      OUTLINED_FUNCTION_38_4();
      v215();
      v104 = v275;
      v103 = sub_2688EFD0C(v275);
      v216 = 0;
      v99 = (v104 & 0xC000000000000001);
      v60 = (v104 & 0xFFFFFFFFFFFFFF8);
      v93 = &unk_279C42000;
      while (v103 != v216)
      {
        if (v99)
        {
          v217 = MEMORY[0x26D625BD0](v216, v104);
        }

        else
        {
          if (v216 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_92;
          }

          v217 = *(v104 + 8 * v216 + 32);
        }

        v218 = v217;
        if (__OFADD__(v216, 1))
        {
          goto LABEL_91;
        }

        v219 = [v217 proximity];
        if ((v219 - 1) >= 4)
        {
          if (v219)
          {
            *&aBlock = v219;
            result = sub_268B38474();
            __break(1u);
            return result;
          }

          type metadata accessor for GroupingUtil();
          v220 = v218;
          v221 = sub_268A03764(v218);

          OUTLINED_FUNCTION_18_10();
          v222();
          v223 = sub_268B37A34();
          v224 = sub_268B37ED4();
          if (os_log_type_enabled(v223, v224))
          {
            v225 = OUTLINED_FUNCTION_14();
            *v225 = 0;
            _os_log_impl(&dword_2688BB000, v223, v224, "Found primary context and creating a 'this' DeviceGroup for the local device.", v225, 2u);
            OUTLINED_FUNCTION_12();
          }

          OUTLINED_FUNCTION_38_4();
          v226();
          v227 = v236;
          swift_beginAccess();
          v228 = *v227;
          type metadata accessor for DeviceGroup();
          sub_268B36C54();

          v229 = sub_268B36C24();
          v231 = v230;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
          OUTLINED_FUNCTION_220();
          v232 = swift_allocObject();
          *(v232 + 16) = xmmword_268B3BBA0;
          *(v232 + 32) = v221;
          v233 = v221;
          v234 = sub_2689CBA40(v229, v231, 5, 0, v232);
          *&aBlock = v234;
          sub_268B370A4();

          goto LABEL_72;
        }

        ++v216;
      }

      goto LABEL_72;
    }

    goto LABEL_68;
  }

LABEL_71:

LABEL_72:
  v197 = sub_268B37F54();
  OUTLINED_FUNCTION_220();
  v198 = swift_allocObject();
  v199 = v247;
  v198[2] = v280;
  v198[3] = v199;
  v198[4] = v248;
  v293 = sub_268A09924;
  v294 = v198;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_14_14(COERCE_DOUBLE(1107296256));
  v291 = v200;
  v292 = &block_descriptor_10;
  v201 = _Block_copy(&aBlock);

  v202 = v277;
  sub_268B37AE4();
  v299 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_23();
  sub_268A09C2C(v203, v204);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v205 = v278;
  v206 = v279;
  sub_268B38124();
  v207 = v286;
  sub_268B37F24();

  _Block_release(v201);
  OUTLINED_FUNCTION_153(&v281);
  v208(v205, v206);
  OUTLINED_FUNCTION_153(&v280);
  v209(v202, v50);
}

uint64_t sub_268A06BB4(void *a1, unint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v34 = a6;
  v35 = a7;
  v33 = a5;
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v8 = sub_268B37594();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[6];
  v32 = a1[5];
  v36 = v11;
  v31 = __swift_project_boxed_opaque_existential_1(a1 + 2, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A28, qword_268B43980);
  v12 = *(v9 + 72);
  v13 = *(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_268B3BBC0;
  v15 = *(v9 + 16);
  v16 = v28;
  v15(v14 + ((v13 + 32) & ~v13), v28, v8);
  v15(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v8);
  v17 = (v13 + 24) & ~v13;
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v29;
  *(v20 + 16) = v29;
  (*(v9 + 32))(v20 + v17, v27, v8);
  *(v20 + v18) = v30;
  v22 = v20 + v28;
  *v22 = a1;
  *(v22 + 8) = v33;
  v23 = v35;
  *(v20 + v19) = v34;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v24 = v21;

  v25 = v23;
  sub_268B37424();
}

uint64_t sub_268A06E1C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, NSObject *a8)
{
  v24 = a8;
  v28 = a6;
  v26 = a4;
  v27 = a5;
  v29 = a2;
  v11 = sub_268B37594();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a7 + 16;
  (*(v12 + 16))(v14, a3, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v15, v14, v11);
  *(v18 + v16) = a1;
  v19 = v27;
  *(v18 + v17) = v26;
  v20 = v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v19;
  *(v20 + 8) = v28;
  *(v18 + ((v17 + 31) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_268A09B74;
  *(v21 + 24) = v18;
  aBlock[4] = sub_268A09C24;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0BE18;
  aBlock[3] = &block_descriptor_22;
  v22 = _Block_copy(aBlock);

  dispatch_sync(v29, v22);
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    dispatch_group_leave(v24);
  }

  return result;
}

uint64_t sub_268A070B8(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v120 = a6;
  v118 = a5;
  v124 = a3;
  v8 = sub_268B37564();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_268B371E4();
  v116 = *(v12 - 8);
  v117 = v12;
  v13 = *(v116 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v115 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v113 - v16;
  v17 = sub_268B37594();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_268B37A54();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v125 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v123 = &v113 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v122 = &v113 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v113 - v31;
  if (qword_2802A4F30 != -1)
  {
LABEL_51:
    swift_once();
  }

  v33 = __swift_project_value_buffer(v22, qword_2802CDA10);
  v34 = *(v23 + 16);
  v129 = v33;
  v130 = v23 + 16;
  v128 = v34;
  v34(v32);
  v35 = *(v18 + 16);
  v121 = a1;
  v35(v21, a1, v17);

  v36 = a2;
  v37 = sub_268B37A34();
  v38 = sub_268B37ED4();
  v126 = v23;
  v39 = v38;

  v127 = v37;
  v40 = os_log_type_enabled(v37, v39);
  v119 = v11;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v113 = v22;
    v43 = v42;
    v132[0] = v42;
    *v41 = 136315394;
    sub_268A09C2C(&qword_2802A5BE8, MEMORY[0x277D5F918]);
    v44 = sub_268B38404();
    v46 = v45;
    (*(v18 + 8))(v21, v17);
    v47 = sub_26892CDB8(v44, v46, v132);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2080;
    v48 = sub_268B378C4();
    v49 = MEMORY[0x26D6256F0](v36, v48);
    v21 = sub_26892CDB8(v49, v50, v132);
    a2 = v36;

    *(v41 + 14) = v21;
    v51 = v127;
    _os_log_impl(&dword_2688BB000, v127, v39, "Selecting devices based on predicate: %s, devices: %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v43, -1, -1);
    MEMORY[0x26D6266E0](v41, -1, -1);

    v52 = *(v126 + 8);
    v53 = v32;
    v23 = v113;
  }

  else
  {

    (*(v18 + 8))(v21, v17);
    v52 = *(v126 + 8);
    v53 = v32;
    v23 = v22;
  }

  v127 = v52;
  (v52)(v53);
  v11 = MEMORY[0x277D84F90];
  v133 = MEMORY[0x277D84F90];
  v18 = sub_268A0358C(v124, a2);
  v132[0] = v11;
  v17 = sub_2688EFD0C(v18);
  a1 = 0;
  v22 = v18 & 0xC000000000000001;
  v32 = (v18 & 0xFFFFFFFFFFFFFF8);
  while (v17 != a1)
  {
    if (v22)
    {
      v54 = MEMORY[0x26D625BD0](a1, v18);
    }

    else
    {
      if (a1 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v54 = *(v18 + 8 * a1 + 32);
    }

    v21 = v54;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    a2 = v54;
    Device.isPlayingOrHasPausedContentOnScreen.getter();
    if (v55)
    {
      a2 = v132;
      sub_268B38214();
      v56 = *(v132[0] + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++a1;
  }

  a1 = 0;
  v21 = v132[0];
  v132[0] = v11;
  while (v17 != a1)
  {
    if (v22)
    {
      v57 = MEMORY[0x26D625BD0](a1, v18);
    }

    else
    {
      if (a1 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v57 = *(v18 + 8 * a1 + 32);
    }

    v11 = v57;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_49;
    }

    a2 = v57;
    Device.isPlayingOrHasPausedContentOnScreen.getter();
    if (v58)
    {
    }

    else
    {
      a2 = v132;
      sub_268B38214();
      v59 = *(v132[0] + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    ++a1;
  }

  v60 = v132[0];
  v61 = sub_268A08F04();

  v62 = v122;
  v63 = v23;
  v128(v122, v129, v23);

  v64 = sub_268B37A34();
  v65 = sub_268B37ED4();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v132[0] = v67;
    *v66 = 136315138;
    v68 = type metadata accessor for MediaStream();
    v69 = MEMORY[0x26D6256F0](v61, v68);
    v71 = sub_26892CDB8(v69, v70, v132);

    *(v66 + 4) = v71;
    v63 = v23;
    _os_log_impl(&dword_2688BB000, v64, v65, "Playing streams: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    MEMORY[0x26D6266E0](v67, -1, -1);
    MEMORY[0x26D6266E0](v66, -1, -1);
  }

  (v127)(v62, v63);
  v72 = v125;
  v73 = v123;
  sub_268984A98(v61);
  if (sub_2688EFD0C(v60))
  {
    sub_2688EFD10(0, (v60 & 0xC000000000000001) == 0, v60);
    if ((v60 & 0xC000000000000001) != 0)
    {
      v74 = MEMORY[0x26D625BD0](0, v60);
    }

    else
    {
      v74 = *(v60 + 32);
    }

    v75 = v74;
    type metadata accessor for MediaStream();
    v76 = v75;
    v77 = sub_2688F34B0(v60, v76);
    v128(v73, v129, v63);
    v78 = v77;
    v79 = sub_268B37A34();
    v80 = sub_268B37ED4();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v78;
      *v82 = v78;
      v83 = v78;
      _os_log_impl(&dword_2688BB000, v79, v80, "Adding a stream for paused devices: %@", v81, 0xCu);
      sub_2688C058C(v82, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v82, -1, -1);
      MEMORY[0x26D6266E0](v81, -1, -1);
    }

    v84 = (v127)(v73, v63);
    MEMORY[0x26D6256C0](v84);
    if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_268B37D14();
    }

    sub_268B37D44();
  }

  else
  {
  }

  v85 = v133;
  if (!sub_2688EFD0C(v133))
  {
  }

  if (v118)
  {
    v86 = 1;
  }

  else
  {
    v88 = v114;
    sub_268B371A4();
    v89 = v115;
    sub_268B374E4();
    sub_268A09C2C(&qword_2802A5BE0, MEMORY[0x277D5F7E0]);
    v90 = v117;
    v86 = sub_268B380F4();
    v91 = *(v116 + 8);
    v91(v89, v90);
    v91(v88, v90);
  }

  v128(v72, v129, v63);
  v92 = sub_268B37A34();
  v93 = sub_268B37ED4();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v132[0] = v95;
    *v94 = 67109378;
    *(v94 + 4) = v86 & 1;
    *(v94 + 8) = 2080;
    v96 = type metadata accessor for MediaStream();

    v98 = MEMORY[0x26D6256F0](v97, v96);
    v99 = v63;
    v101 = v100;

    v102 = sub_26892CDB8(v98, v101, v132);

    *(v94 + 10) = v102;
    _os_log_impl(&dword_2688BB000, v92, v93, "Adding a group includingTVs: %{BOOL}d for streams: %s", v94, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v95);
    MEMORY[0x26D6266E0](v95, -1, -1);
    MEMORY[0x26D6266E0](v94, -1, -1);

    v103 = v125;
    v104 = v99;
  }

  else
  {

    v103 = v72;
    v104 = v63;
  }

  (v127)(v103, v104);
  v106 = v119;
  v105 = v120;
  type metadata accessor for DeviceGroup();
  v107 = sub_268B37524();
  v109 = v108;
  sub_268B37574();
  v110 = sub_268A57AEC(v106);

  v111 = sub_2689CBA40(v107, v109, v110, v86 & 1, v85);
  swift_beginAccess();
  v112 = *v105;
  v131 = v111;

  sub_268B370A4();
}

void sub_268A07D28(NSObject *a1, void (*a2)(NSObject *), uint64_t a3)
{
  v139 = a3;
  v140 = a2;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v152 = &v131 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v131 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v141 = &v131 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v131 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v131 - v20);
  if (qword_2802A4F30 != -1)
  {
LABEL_99:
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_2802CDA10);
  v23 = v5[2];
  v154 = v22;
  v155 = v5 + 2;
  v153 = v23;
  (v23)(v21);

  v24 = sub_268B37A34();
  v25 = sub_268B37F04();

  v26 = os_log_type_enabled(v24, v25);
  v143 = v4;
  v134 = v14;
  v142 = v19;
  v138 = v9;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v162 = v28;
    *v27 = 136315138;
    swift_beginAccess();
    isa = a1[2].isa;

    v30 = v5;
    v31 = sub_268B370B4();

    v32 = type metadata accessor for DeviceGroup();
    v33 = MEMORY[0x26D6256F0](v31, v32);
    v4 = v34;
    v35 = v30;

    v36 = sub_26892CDB8(v33, v4, &v162);
    v19 = v143;

    *(v27 + 4) = v36;
    v37 = v25;
    v38 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
    _os_log_impl(&dword_2688BB000, v24, v37, "GroupingUtil#ambiguousGroups found groups: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x26D6266E0](v28, -1, -1);
    MEMORY[0x26D6266E0](v27, -1, -1);

    v39 = v35[1];
    v5 = v35 + 1;
    v156 = v39;
    v39(v21, v19);
  }

  else
  {

    v40 = v5[1];
    ++v5;
    v156 = v40;
    v40(v21, v4);
    v19 = v4;
    v38 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  }

  swift_beginAccess();
  v41 = a1[2].isa;

  v42 = sub_268B370B4();

  v43 = sub_268A03350(v42);
  v21 = v43;
  a1 = MEMORY[0x277D84F90];
  v161 = MEMORY[0x277D84F90];
  v44 = v43 + 64;
  v45 = 1 << *(v43 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v9 = v46 & *(v43 + 64);
  v47 = (v45 + 63) >> 6;

  v14 = 0;
  *&v49 = v38[259];
  v145 = v49;
  *&v49 = 136315394;
  v137 = v49;
  v144 = a1;
  v146 = v5;
  v148 = v48;
  v147 = v44;
  v151 = v47;
LABEL_8:
  v50 = v14;
  while (1)
  {
    while (1)
    {
      if (!v9)
      {
        while (1)
        {
          v14 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          if (v14 >= v47)
          {

            v121 = v138;
            (v153)(v138, v154, v19);
            v122 = v144;

            v123 = sub_268B37A34();
            v124 = sub_268B37F04();
            if (os_log_type_enabled(v123, v124))
            {
              v125 = swift_slowAlloc();
              v126 = swift_slowAlloc();
              v158 = v126;
              *v125 = v145;
              v127 = type metadata accessor for DeviceGroup();
              v128 = MEMORY[0x26D625710](v122, v127);
              v130 = sub_26892CDB8(v128, v129, &v158);

              *(v125 + 4) = v130;
              v122 = v144;

              _os_log_impl(&dword_2688BB000, v123, v124, "Returning ambiguousGroups: %s", v125, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v126);
              MEMORY[0x26D6266E0](v126, -1, -1);
              MEMORY[0x26D6266E0](v125, -1, -1);

              v156(v121, v19);
            }

            else
            {

              v156(v121, v19);
            }

            v140(v122);

            return;
          }

          v9 = *(v44 + 8 * v14);
          ++v50;
          if (v9)
          {
            v51 = v19;
            v4 = v5;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v51 = v19;
      v4 = v5;
      v14 = v50;
LABEL_15:
      v52 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v53 = (v21[6] + ((v14 << 10) | (16 * v52)));
      v54 = v53[1];
      v157 = *v53;
      v55 = v21[2];

      if (v55)
      {
        v56 = sub_268A759D0();
        if (v57)
        {
          v150 = v54;
          v19 = *(v21[7] + 8 * v56);
          if (v19 >> 62)
          {
            if (v19 < 0)
            {
              v108 = *(v21[7] + 8 * v56);
            }

            a1 = sub_268B382A4();
          }

          else
          {
            a1 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v54 = v150;
          if (a1)
          {
            break;
          }
        }
      }

      v19 = v51;
      v61 = v152;
      v153();

      a1 = sub_268B37A34();
      v62 = sub_268B37EE4();

      if (os_log_type_enabled(a1, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v159 = v54;
        v160 = v64;
        *v63 = v145;
        v158 = v157;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
        v65 = sub_268B37C24();
        v67 = sub_26892CDB8(v65, v66, &v160);
        v5 = v146;

        *(v63 + 4) = v67;
        v61 = v152;
        _os_log_impl(&dword_2688BB000, a1, v62, "Could not find any groups for %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        v68 = v64;
        v21 = v148;
        MEMORY[0x26D6266E0](v68, -1, -1);
        v69 = v63;
        v44 = v147;
        MEMORY[0x26D6266E0](v69, -1, -1);
      }

      else
      {

        v5 = v4;
      }

      v156(v61, v19);
      v50 = v14;
      v47 = v151;
    }

    v21 = (v19 & 0xC000000000000001);
    if ((v19 & 0xC000000000000001) == 0)
    {
      break;
    }

    v59 = MEMORY[0x26D625BD0](0, v19);
    v5 = v4;
LABEL_23:
    if (v19 >> 62)
    {
      v60 = sub_268B382A4();
    }

    else
    {
      v60 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v60 == 1)
    {

      a1 = v59;
      MEMORY[0x26D6256C0]();
      if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();

      v144 = v161;
      v21 = v148;
      v44 = v147;
      v47 = v151;
      v19 = v51;
      goto LABEL_8;
    }

    v136 = v59;
    v149 = v60;
    v70 = v51;
    (v153)(v142, v154, v51);
    v71 = v150;

    v72 = sub_268B37A34();
    v73 = sub_268B37ED4();

    v135 = v73;
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v159 = v71;
      v160 = v133;
      *v74 = v137;
      v158 = v157;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
      v75 = sub_268B37C24();
      v77 = sub_26892CDB8(v75, v76, &v160);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2112;
      type metadata accessor for DeviceGroup();
      v78 = sub_268B37CE4();
      *(v74 + 14) = v78;
      v79 = v132;
      *v132 = v78;
      _os_log_impl(&dword_2688BB000, v72, v135, "Groups for %s: %@", v74, 0x16u);
      sub_2688C058C(v79, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v79, -1, -1);
      v80 = v133;
      __swift_destroy_boxed_opaque_existential_0Tm(v133);
      MEMORY[0x26D6266E0](v80, -1, -1);
      MEMORY[0x26D6266E0](v74, -1, -1);

      v156(v142, v143);
    }

    else
    {

      v156(v142, v70);
    }

    v81 = 0;
    v5 = (v19 & 0xFFFFFFFFFFFFFF8);
    v82 = &selRef_groupLeader;
    v4 = v149;
    while (a1 != v81)
    {
      if (v21)
      {
        v83 = MEMORY[0x26D625BD0](v81, v19);
      }

      else
      {
        if (v81 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_95;
        }

        v83 = *(v19 + 8 * v81 + 32);
      }

      v84 = v83;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_93;
      }

      if ([v83 type] == 2)
      {
LABEL_79:

        v109 = v141;
        v110 = v143;
        (v153)(v141, v154, v143);
        v111 = v150;

        a1 = v84;
        v112 = sub_268B37A34();
        v113 = sub_268B37ED4();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v4 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v159 = v111;
          v160 = v115;
          *v114 = v137;
          v158 = v157;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
          v116 = sub_268B37C24();
          v118 = sub_26892CDB8(v116, v117, &v160);

          *(v114 + 4) = v118;
          *(v114 + 12) = 2112;
          *(v114 + 14) = a1;
          *v4 = a1;
          v119 = a1;
          _os_log_impl(&dword_2688BB000, v112, v113, "Adding deduplicated group for %s: %@", v114, 0x16u);
          sub_2688C058C(v4, &qword_2802A6420, &unk_268B3C680);
          v19 = v143;
          MEMORY[0x26D6266E0](v4, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v115);
          MEMORY[0x26D6266E0](v115, -1, -1);
          MEMORY[0x26D6266E0](v114, -1, -1);

          v5 = v146;
          v120 = (v156)(v141, v19);
        }

        else
        {

          v5 = v146;
          v120 = (v156)(v109, v110);
          v19 = v110;
        }

        MEMORY[0x26D6256C0](v120);
        v21 = v148;
        if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268B37D14();
        }

        sub_268B37D44();
        v144 = v161;

        v44 = v147;
        v47 = v151;
        goto LABEL_8;
      }

      v81 = (v81 + 1);
    }

    for (i = 0; a1 != i; i = (i + 1))
    {
      if (v21)
      {
        v86 = MEMORY[0x26D625BD0](i, v19);
      }

      else
      {
        if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v86 = *(v19 + 8 * i + 32);
      }

      v84 = v86;
      if (__OFADD__(i, 1))
      {
        goto LABEL_94;
      }

      if ([v86 type] == 1)
      {
        goto LABEL_79;
      }
    }

    for (j = 0; a1 != j; j = (j + 1))
    {
      if (v21)
      {
        v88 = MEMORY[0x26D625BD0](j, v19);
      }

      else
      {
        if (j >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_98;
        }

        v88 = *(v19 + 8 * j + 32);
      }

      v84 = v88;
      if (__OFADD__(j, 1))
      {
        goto LABEL_96;
      }

      if ([v88 type] == 3)
      {
        goto LABEL_79;
      }
    }

    if (v4)
    {
      v158 = MEMORY[0x277D84F90];
      sub_26894484C(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        goto LABEL_101;
      }

      v89 = 0;
      a1 = v158;
      do
      {
        if (v21)
        {
          v90 = MEMORY[0x26D625BD0](v89, v19);
        }

        else
        {
          v90 = *(v19 + 8 * v89 + 32);
        }

        v91 = v90;
        v92 = [v90 v82[11]];

        v158 = a1;
        v94 = a1[2].isa;
        v93 = a1[3].isa;
        if (v94 >= v93 >> 1)
        {
          sub_26894484C(v93 > 1, v94 + 1, 1);
          a1 = v158;
        }

        ++v89;
        a1[2].isa = (v94 + 1);
        a1[v94 + 4].isa = v92;
        v82 = &selRef_groupLeader;
      }

      while (v149 != v89);
    }

    else
    {

      a1 = MEMORY[0x277D84F90];
    }

    v95 = v134;
    v4 = v143;
    (v153)(v134, v154, v143);
    v96 = v150;

    v97 = sub_268B37A34();
    v98 = sub_268B37EE4();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v159 = v96;
      v160 = v4;
      *v99 = v137;
      v158 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
      v100 = sub_268B37C24();
      v102 = sub_26892CDB8(v100, v101, &v160);

      *(v99 + 4) = v102;
      *(v99 + 12) = 2080;
      v103 = MEMORY[0x26D6256F0](a1, &type metadata for GroupType);
      v105 = v104;

      v106 = sub_26892CDB8(v103, v105, &v160);

      *(v99 + 14) = v106;
      _os_log_impl(&dword_2688BB000, v97, v98, "%s has multiple groups but none are zone/room/accessory. GroupTypes: %s", v99, 0x16u);
      swift_arrayDestroy();
      a1 = v143;
      MEMORY[0x26D6266E0](v4, -1, -1);
      MEMORY[0x26D6266E0](v99, -1, -1);

      v107 = v95;
      v19 = a1;
      v5 = v146;
      v156(v107, a1);
      v50 = v14;
      v21 = v148;
      v44 = v147;
      v47 = v151;
    }

    else
    {

      v5 = v146;
      v156(v95, v4);
      v50 = v14;
      v21 = v148;
      v44 = v147;
      v47 = v151;
      v19 = v4;
    }
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = v4;
    v58 = *(v19 + 32);

    v59 = v58;
    goto LABEL_23;
  }

  __break(1u);
LABEL_101:
  __break(1u);
}

NSObject *sub_268A08F04()
{
  v0 = sub_268B37A54();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v69 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (&v69 - v12);
  v89[0] = MEMORY[0x277D84F90];

  v87 = sub_268A030E8(v14);
  v74 = 0;
  if (qword_2802A4F30 != -1)
  {
LABEL_64:
    OUTLINED_FUNCTION_0_0();
  }

  v76 = v11;
  v15 = __swift_project_value_buffer(v0, qword_2802CDA10);
  v16 = v3[2];
  v83 = (v3 + 2);
  v84 = v15;
  v82 = v16;
  (v16)(v13);
  v17 = sub_268B37A34();
  v18 = sub_268B37ED4();
  v19 = os_log_type_enabled(v17, v18);
  v80 = v0;
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_14();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "Grouping devices into streams", v20, 2u);
    v0 = v80;
    OUTLINED_FUNCTION_12();
  }

  v21 = v3[1];
  ++v3;
  v81 = v21;
  v21(v13, v0);
  v22 = v87 + 64;
  v23 = 1 << *(v87 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v87 + 64);
  v26 = (v23 + 63) >> 6;

  v11 = 0;
  v78 = MEMORY[0x277D84F90];
  *&v27 = 136315138;
  v79 = v27;
  *&v27 = 136315394;
  v75 = v27;
  v77 = xmmword_268B3BBA0;
  v85 = v3;
  v86 = v8;
  while (1)
  {
    while (1)
    {
      v28 = v11;
      if (!v25)
      {
        while (1)
        {
          v11 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v11 >= v26)
          {

            return v78;
          }

          v25 = *(v22 + 8 * v11);
          ++v28;
          if (v25)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_64;
      }

LABEL_11:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = (*(v87 + 48) + ((v11 << 10) | (16 * v29)));
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v87 + 16);

      if (!v33)
      {
        goto LABEL_15;
      }

      v34 = sub_268A759D0();
      if ((v35 & 1) == 0)
      {
        goto LABEL_15;
      }

      v8 = *(*(v87 + 56) + 8 * v34);
      if (!(v8 >> 62))
      {
        break;
      }

      if (v8 < 0)
      {
        v42 = *(*(v87 + 56) + 8 * v34);
      }

      result = sub_268B382A4();
      if (result)
      {
        goto LABEL_27;
      }

LABEL_15:
      v8 = v86;
      v82(v86, v84, v0);

      v13 = sub_268B37A34();
      v37 = sub_268B37EE4();

      if (os_log_type_enabled(v13, v37))
      {
        v38 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v88[0] = v8;
        *v38 = v79;
        if (v31)
        {
          v39 = v32;
        }

        else
        {
          v39 = 0x3E6C696E3CLL;
        }

        if (!v31)
        {
          v31 = 0xE500000000000000;
        }

        v40 = sub_26892CDB8(v39, v31, v88);

        *(v38 + 4) = v40;
        _os_log_impl(&dword_2688BB000, v13, v37, "No devices found in group: %s. Skipping this group.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        OUTLINED_FUNCTION_12();
        v0 = v80;
        OUTLINED_FUNCTION_12();

        v41 = v86;
      }

      else
      {

        v41 = v8;
      }

      v3 = v85;
      v81(v41, v0);
    }

    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_15;
    }

LABEL_27:
    v73 = v8 & 0xC000000000000001;
    v78 = result;
    if ((v8 & 0xC000000000000001) != 0)
    {

      v44 = MEMORY[0x26D625BD0](0, v8);
      goto LABEL_30;
    }

    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v43 = *(v8 + 32);

    v44 = v43;
LABEL_30:
    v71 = v44;
    v82(v76, v84, v0);

    v45 = sub_268B37A34();
    v3 = sub_268B37ED4();

    v70 = v3;
    v72 = v45;
    if (os_log_type_enabled(v45, v3))
    {
      v3 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v88[0] = v69;
      *v3 = v75;
      if (v31)
      {
        v46 = v32;
      }

      else
      {
        v46 = 0x3E6C696E3CLL;
      }

      if (v31)
      {
        v47 = v31;
      }

      else
      {
        v47 = 0xE500000000000000;
      }

      v48 = sub_26892CDB8(v46, v47, v88);

      *(v3 + 4) = v48;
      *(v3 + 6) = 2080;
      v49 = type metadata accessor for Device();
      v50 = MEMORY[0x26D6256F0](v8, v49);
      v52 = sub_26892CDB8(v50, v51, v88);

      *(v3 + 14) = v52;
      v53 = v72;
      _os_log_impl(&dword_2688BB000, v72, v70, "Creating stream for groupId: %s from devicesInGroup: %s", v3, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v54 = v76;
      v55 = v80;
    }

    else
    {

      v54 = v76;
      v55 = v0;
    }

    v81(v54, v55);
    if (v31)
    {
      v56 = v32 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v56 = 0;
    }

    if (v31)
    {
      v57 = v31;
    }

    else
    {
      v57 = 0xE000000000000000;
    }

    if ((v57 & 0x2000000000000000) != 0)
    {
      v58 = HIBYTE(v57) & 0xF;
    }

    else
    {
      v58 = v56;
    }

    result = type metadata accessor for MediaStream();
    if (v58)
    {
      v59 = v71;
      v60 = sub_2688F34B0(v8, v59);
      v13 = v89;
      MEMORY[0x26D6256C0](v60);
      OUTLINED_FUNCTION_32_7();
      if (v62)
      {
        OUTLINED_FUNCTION_23_11(v61);
        sub_268B37D14();
      }

      sub_268B37D44();

      v78 = v89[0];
      v0 = v80;
    }

    else
    {
      v72 = result;
      if (v78 < 1)
      {
        goto LABEL_66;
      }

      v63 = 0;
      do
      {
        if (v73)
        {
          v64 = MEMORY[0x26D625BD0](v63, v8);
        }

        else
        {
          v64 = *(v8 + 8 * v63 + 32);
        }

        v65 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v66 = swift_allocObject();
        *(v66 + 16) = v77;
        *(v66 + 32) = v65;
        v3 = v65;
        v67 = sub_2688F34B0(v66, v3);
        v13 = v89;
        MEMORY[0x26D6256C0](v67);
        OUTLINED_FUNCTION_32_7();
        if (v62)
        {
          OUTLINED_FUNCTION_23_11(v68);
          sub_268B37D14();
        }

        ++v63;
        sub_268B37D44();

        v0 = v80;
      }

      while (v78 != v63);
      v78 = v89[0];
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_268A09750()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_268A09784()
{
  v5 = sub_268B37594();
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v8 = *(v6 + 80);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_19_12();
  v11 = *(v0 + 16);

  (*(v7 + 8))(v0 + ((v8 + 24) & ~v8), v5);

  v12 = *(v0 + v2);

  v13 = *(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v8 | 7);
}

uint64_t sub_268A09870()
{
  v1 = sub_268B37594();
  OUTLINED_FUNCTION_19_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_25_9();
  v9 = *(v0 + 16);
  v11 = *(v0 + v10);
  v13 = *(v0 + v12);
  v14 = *(v0 + v12 + 8);
  v16 = *(v0 + v15);
  v18 = *(v0 + v17);

  return sub_268A06BB4(v9, v0 + v8, v11, v13, v14, v16, v18);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A09930()
{
  v5 = sub_268B37594();
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v8 = *(v6 + 80);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_19_12();

  (*(v7 + 8))(v0 + ((v8 + 24) & ~v8), v5);
  v11 = *(v0 + v1);

  v12 = *(v0 + v2);

  v13 = *(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v8 | 7);
}

uint64_t sub_268A09A1C(uint64_t a1)
{
  v3 = sub_268B37594();
  OUTLINED_FUNCTION_19_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_25_9();
  v11 = *(v1 + 16);
  v13 = *(v1 + v12);
  v15 = *(v1 + v14);
  v16 = *(v1 + v14 + 8);
  v18 = *(v1 + v17);
  v20 = *(v1 + v19);

  return sub_268A06E1C(a1, v11, v1 + v10, v13, v15, v16, v18, v20);
}

uint64_t sub_268A09AC8()
{
  v4 = sub_268B37594();
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 8);
  v5 += 8;
  v7 = *(v5 + 72);
  v8 = *(v5 + 56);
  OUTLINED_FUNCTION_21_10();
  v10(v0 + v9);
  v11 = *(v0 + v1);

  v12 = *(v0 + v2);

  v13 = *(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, ((v2 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | 7);
}

uint64_t sub_268A09B74()
{
  v1 = sub_268B37594();
  OUTLINED_FUNCTION_19_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_226_0();
  v10 = *(v0 + v9);
  v12 = *(v0 + v11);
  v13 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
  v14 = v0 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v0 + v13);

  return sub_268A070B8(v0 + v8, v10, v12, v15, v16, v17);
}

uint64_t sub_268A09C2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268A09C74()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_268A09CA8()
{
  v4 = sub_268B37594();
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 8);
  v5 += 8;
  v7 = *(v5 + 72);
  v8 = *(v5 + 56);
  OUTLINED_FUNCTION_21_10();
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11(v0 + v10);
  v12 = *(v0 + v1);

  v13 = *(v0 + v2);

  v14 = *(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v7 | 7);
}

uint64_t sub_268A09D5C()
{
  v1 = sub_268B37594();
  OUTLINED_FUNCTION_19_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_25_9();
  v10 = *(v0 + v9);
  v12 = *(v0 + v11);
  v14 = *(v0 + v13);
  v16 = *(v0 + v15);

  return sub_268A04350(v0 + v8, v10, v12, v14, v16);
}

uint64_t objectdestroy_6Tm_1()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_268A09E38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

void OUTLINED_FUNCTION_39_4()
{

  sub_26894472C();
}

uint64_t OUTLINED_FUNCTION_40_6()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t sub_268A0A098()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6828, &qword_268B40A38);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v56 = &v51 - v2;
  v3 = sub_268B37A54();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v51 - v9;
  v10 = sub_268B35894();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B358D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_268B36124();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_268B36114();
  sub_268B360F4();
  v58 = v23;
  if (sub_268B360E4())
  {
    (*(v11 + 104))(v14, *MEMORY[0x277D5F638], v10);
    sub_268B35884();
    v54 = v15;
    (*(v11 + 8))(v14, v10);
    sub_268B358A4();
    sub_268B357B4();

    (*(v16 + 8))(v19, v54);
  }

  v24 = v58;
  if (MEMORY[0x26D6237C0](v58))
  {
    v25 = sub_268B35BD4();
    v26 = v57;
    __swift_storeEnumTagSinglePayload(v57, 1, 1, v25);
    v27 = MEMORY[0x26D623510](v24, v26);
    sub_268A0A78C(v26);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v3, qword_2802CDA10);
    v29 = v55;
    (*(v55 + 16))(v6, v28, v3);

    v57 = v27;
    v30 = sub_268B37A34();
    v31 = v57;
    v54 = v6;
    v32 = v30;
    v33 = sub_268B37ED4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v53 = v10;
      v35 = v34;
      v36 = swift_slowAlloc();
      v52 = v11;
      v37 = v36;
      v59 = v31;
      v60 = v36;
      *v35 = 136315138;
      sub_268B36624();
      v38 = v29;
      sub_268A0A7F4();
      v39 = sub_268B38404();
      v41 = sub_26892CDB8(v39, v40, &v60);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_2688BB000, v32, v33, "RREntityProvidingIntent#getVolumeRREntities UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      v42 = v37;
      v11 = v52;
      MEMORY[0x26D6266E0](v42, -1, -1);
      v43 = v35;
      v10 = v53;
      MEMORY[0x26D6266E0](v43, -1, -1);

      (*(v38 + 8))(v54, v3);
    }

    else
    {

      (*(v29 + 8))(v54, v3);
    }

    v45 = MEMORY[0x277D5F638];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6820, &qword_268B40A30);
    v46 = *(sub_268B37A94() - 8);
    v47 = *(v46 + 72);
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_268B3BBC0;
    (*(v11 + 104))(v14, *v45, v10);
    sub_268B35884();
    (*(v11 + 8))(v14, v10);
    v49 = sub_268B37A74();
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v49);

    sub_268B37A84();
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  return v44;
}

uint64_t sub_268A0A78C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268A0A7F4()
{
  result = qword_2802A6830;
  if (!qword_2802A6830)
  {
    sub_268B36624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6830);
  }

  return result;
}

uint64_t sub_268A0A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v10 + 16))(v13, v14, v9);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "SetRepeatStateDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v17, 2u);
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v18 = sub_268B35244();
  sub_268AE2278(v18);
  v20 = v19;

  v21 = sub_268B35244();
  sub_268AE23DC(v21);
  v23 = v22;

  v24 = *(v6 + 56);
  sub_268AB4F68(v20, v23 & 1, a4, a5);
}

void sub_268A0AA98()
{
  type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268A0AB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A0AC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A0ACE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A0AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A0AE38()
{
  type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268A0AECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C008] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_268A0AFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();
  *v17 = v8;
  v17[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

uint64_t sub_268A0B190(uint64_t a1, uint64_t a2)
{
  result = sub_268A0B1E8(&qword_2802A6FD8, a2, type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A0B1E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)()
{
  v0 = sub_268B367E4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268B367D4();
  sub_268B367C4();
}

uint64_t sub_268A0B300(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void static ErrorFilingHelper.setupAdditionalTTRInfo(intentResponse:params:)()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36F14();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  sub_268B36EB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7008, &qword_268B43BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B43BA0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000268B59760;
  v7 = sub_268B36EF4();
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v10;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x8000000268B59740;
  v11 = sub_268B36EE4();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  *(inited + 80) = v13;
  *(inited + 88) = v14;
  *(inited + 96) = 0xD000000000000013;
  *(inited + 104) = 0x8000000268B597A0;
  v15 = sub_268B36F04();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  *(inited + 112) = v17;
  *(inited + 120) = v18;
  v19 = sub_268B37B84();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
  *&v24 = v19;
  sub_2688EF2B0(&v24, v23);

  swift_isUniquelyReferenced_nonNull_native();
  sub_268A0E268(v23, 0xD000000000000011, 0x8000000268B59720);
  v20 = *(v3 + 8);
  v21 = OUTLINED_FUNCTION_153_0();
  v22(v21);
  OUTLINED_FUNCTION_23();
}

void static ErrorFilingHelper.setupTrialClient()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B37AB4();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_268B37B14();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  v18 = sub_268B37AC4();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v26 = v25 - v24;
  if (AFIsInternalInstall())
  {
    sub_2688C2FC8();
    (*(v21 + 104))(v26, *MEMORY[0x277D851C0], v18);
    v34 = sub_268B37F84();
    (*(v21 + 8))(v26, v18);
    v35[4] = sub_268A0DC28;
    v35[5] = 0;
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
    v35[2] = v27;
    v35[3] = &block_descriptor_5;
    v28 = _Block_copy(v35);
    sub_268B37AE4();
    OUTLINED_FUNCTION_5_13();
    sub_268A0E800(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
    sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
    sub_268B38124();
    MEMORY[0x26D625950](0, v17, v8, v28);
    _Block_release(v28);

    v31 = *(v3 + 8);
    v32 = OUTLINED_FUNCTION_153_0();
    v33(v32);
    (*(v12 + 8))(v17, v9);
  }

  OUTLINED_FUNCTION_23();
}

void static ErrorFilingHelper.fileTTR(errorToReport:errorDomain:extraInfo:extraDescInfo:duc:attachmentURLs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_26();
  v90 = v23;
  v91 = v24;
  v92 = v25;
  v93 = v26;
  v28 = v27;
  v30 = v29;
  v100 = v31;
  v32 = a23;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7028, &qword_268B43BC8);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v99 = v87 - v35;
  v101 = sub_268B36B54();
  v36 = OUTLINED_FUNCTION_1(v101);
  v98 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v96 = v41 - v40;
  v97 = sub_268B36B34();
  v42 = OUTLINED_FUNCTION_1(v97);
  v95 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  v94 = v47 - v46;
  v48 = sub_268B37A54();
  v49 = OUTLINED_FUNCTION_1(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  v56 = v55 - v54;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v102 = a21;
  v57 = __swift_project_value_buffer(v48, qword_2802CDA10);
  (*(v51 + 16))(v56, v57, v48);
  v58 = sub_268B37A34();
  v59 = sub_268B37F04();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_2688BB000, v58, v59, "ErrorFilingHelper#fileTTR called to capture some error condition", v60, 2u);
    v61 = v60;
    v32 = a23;
    MEMORY[0x26D6266E0](v61, -1, -1);
  }

  v62 = *(v51 + 8);
  v63 = OUTLINED_FUNCTION_189();
  v64(v63);
  if (v28)
  {
    v65 = v30;
  }

  else
  {
    v65 = 0;
  }

  v66 = 0xE000000000000000;
  if (v28)
  {
    v67 = v28;
  }

  else
  {
    v67 = 0xE000000000000000;
  }

  v68 = static ErrorFilingHelper.getTrialPolicy()();
  if (v69 >> 60 == 15)
  {
    v70 = 0;
  }

  else
  {
    v70 = v68;
  }

  if (v69 >> 60 == 15)
  {
    v71 = 0xC000000000000000;
  }

  else
  {
    v71 = v69;
  }

  v88 = v71;
  v89 = v70;
  v72 = sub_268B36B94();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  sub_268A0E3C8(v70, v71);
  v87[3] = sub_268B36B84();
  v75 = sub_268A0E030(v102, a22);
  v90 = a22;
  v76 = v75;
  v78 = v77;
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_268B381C4();
  MEMORY[0x26D625650](0xD00000000000003BLL, 0x8000000268B5A540);
  MEMORY[0x26D625650](v65, v67);

  MEMORY[0x26D625650](v76, v78);

  MEMORY[0x26D625650](v91, v100);
  v87[1] = v104;
  v87[2] = v103;
  v103 = 0x203A726F727245;
  v104 = 0xE700000000000000;
  v79 = OUTLINED_FUNCTION_153_0();
  MEMORY[0x26D625650](v79);
  if (v93)
  {
    v80 = v92;
  }

  else
  {
    v80 = 0;
  }

  if (v93)
  {
    v66 = v93;
  }

  MEMORY[0x26D625650](v80, v66);

  v93 = v103;
  v81 = v94;
  MEMORY[0x26D624510](0xD000000000000011, 0x8000000268B5A580, 0xD000000000000011, 0x8000000268B5A5A0, 1071828);
  if (v32)
  {
    v82 = v32;
  }

  else
  {
    v82 = MEMORY[0x277D84F90];
  }

  v83 = v96;
  MEMORY[0x26D624530](v82, &unk_287950218, 0, 0xD000000000000014, 0x8000000268B5A5C0);
  v84 = v98;
  v85 = v99;
  v86 = v101;
  (*(v98 + 16))(v99, v83, v101);
  __swift_storeEnumTagSinglePayload(v85, 0, 1, v86);
  OUTLINED_FUNCTION_153_0();
  sub_268B36B74();

  sub_268910B4C(v89, v88);
  sub_268A0E420(v85);
  (*(v84 + 8))(v83, v86);
  (*(v95 + 8))(v81, v97);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A0BED0()
{
  v10 = sub_268B37F44();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268B37F34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268B37B14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2688C2FC8();
  sub_268B37B04();
  v11 = MEMORY[0x277D84F90];
  sub_268A0E800(&unk_2802A5890, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268B37F74();
  qword_2802A6FE0 = result;
  return result;
}

void *sub_268A0C120()
{
  type metadata accessor for ErrorFilingHelper.TrialClientManager();
  swift_allocObject();
  result = sub_268A0C1A0();
  qword_2802A6FF8 = result;
  return result;
}

id sub_268A0C160()
{
  result = [objc_opt_self() clientWithIdentifier_];
  qword_2802A7000 = result;
  return result;
}

void *sub_268A0C1A0()
{
  v1 = v0;
  v35 = *v0;
  v2 = sub_268B37AB4();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_268B37B14();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_268B37A34();
  v17 = sub_268B37ED4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "ErrorFilingHelper#TrialClientManager#init", v18, 2u);
    MEMORY[0x26D6266E0](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  if (qword_2802A4E30 != -1)
  {
    swift_once();
  }

  v19 = qword_2802A6FE0;
  v41 = sub_268A0E848;
  v42 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v31 = &v39;
  v39 = sub_268A0B300;
  v40 = &block_descriptor_22_0;
  v20 = _Block_copy(&aBlock);

  sub_268B37AE4();
  v36 = MEMORY[0x277D84F90];
  sub_268A0E800(&unk_2802A7010, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  sub_268B38124();
  MEMORY[0x26D625950](0, v9, v5, v20);
  _Block_release(v20);
  (*(v34 + 8))(v5, v2);
  (*(v32 + 8))(v9, v33);

  if (qword_2802A4E40 != -1)
  {
    swift_once();
  }

  v21 = qword_2802A7000;
  v22 = sub_268B37BC4();
  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 16) = v1;
  *(v23 + 24) = v24;
  v41 = sub_268A0E884;
  v42 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_268A0CA60;
  v40 = &block_descriptor_28;
  v25 = _Block_copy(&aBlock);

  v26 = [v21 addUpdateHandlerForNamespaceName:v22 queue:v19 usingBlock:v25];
  _Block_release(v25);
  swift_unknownObjectRelease();

  v27 = sub_268B37CE4();
  v28 = sub_268B37BC4();
  v41 = sub_268A0CAC0;
  v42 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_268A0CFAC;
  v40 = &block_descriptor_32;
  v29 = _Block_copy(&aBlock);
  [v21 downloadLevelsForFactors:v27 withNamespace:v28 queue:v19 options:0 progress:0 completion:v29];
  _Block_release(v29);

  return v1;
}

uint64_t sub_268A0C7E4(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v6, v7, v2);
  swift_unknownObjectRetain();
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = a1;
    v17 = v11;
    *v10 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A70B0, &qword_268B43C60);
    v12 = sub_268B37C24();
    v14 = sub_26892CDB8(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2688BB000, v8, v9, "ErrorFilingHelper#TrialClientManager update handler called with %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x26D6266E0](v11, -1, -1);
    MEMORY[0x26D6266E0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  if (qword_2802A4E40 != -1)
  {
    swift_once();
  }

  [qword_2802A7000 refresh];
  return sub_268A0D024();
}

uint64_t sub_268A0CA60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_268A0CAC0(uint64_t a1, void *a2)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v43 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v14 = v4[2];
  v14(v12, v13, v3);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = v3;
    v18 = v4;
    v19 = v10;
    v20 = a2;
    v21 = v17;
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "ErrorFilingHelper#TrialClientManager downloadLevels", v17, 2u);
    v22 = v21;
    a2 = v20;
    v10 = v19;
    v4 = v18;
    v3 = v42;
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  v23 = v4[1];
  v23(v12, v3);
  if (a2)
  {
    v14(v10, v13, v3);
    v24 = a2;
    v25 = sub_268B37A34();
    v26 = sub_268B37EE4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v23;
      v29 = v28;
      v44 = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_26892CDB8(0xD00000000000001DLL, 0x8000000268B56B30, &v44);
      v30 = a2;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_26892CDB8(0xD00000000000002FLL, 0x8000000268B5A710, &v44);
      *(v27 + 22) = 2080;
      swift_getErrorValue();
      v31 = sub_268B384A4();
      v33 = sub_26892CDB8(v31, v32, &v44);

      *(v27 + 24) = v33;
      _os_log_impl(&dword_2688BB000, v25, v26, "Error downloading levels for factor: %s in namespace: %s. Error: %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v29, -1, -1);
      MEMORY[0x26D6266E0](v27, -1, -1);

      return v43(v10, v3);
    }

    v40 = v10;
  }

  else
  {
    v35 = v43;
    v14(v43, v13, v3);
    v36 = sub_268B37A34();
    v37 = sub_268B37EC4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_26892CDB8(0xD00000000000001DLL, 0x8000000268B56B30, &v44);
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_26892CDB8(0xD00000000000002FLL, 0x8000000268B5A710, &v44);
      _os_log_impl(&dword_2688BB000, v36, v37, "Successfully downloaded levels for factor: %s in namespace: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v39, -1, -1);
      MEMORY[0x26D6266E0](v38, -1, -1);
    }

    v40 = v35;
  }

  return (v23)(v40, v3);
}

void sub_268A0CFAC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_268A0D024()
{
  v0 = sub_268B34534();
  v44 = *(v0 - 8);
  v45 = v0;
  v1 = *(v44 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v39 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_2802CDA10);
  v47 = v5[2];
  v48 = v13;
  v47(v12);
  v14 = sub_268B37A34();
  v15 = sub_268B37ED4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "ErrorFilingHelper#TrialClientManager#loadLatest...", v16, 2u);
    MEMORY[0x26D6266E0](v16, -1, -1);
  }

  v43 = v3;

  v17 = v5[1];
  v17(v12, v4);
  if (qword_2802A4E40 != -1)
  {
    swift_once();
  }

  v18 = qword_2802A7000;
  v19 = sub_268B37BC4();
  v20 = sub_268B37BC4();
  v21 = [v18 levelForFactor:v19 withNamespaceName:v20];

  v42 = v21;
  v22 = sub_268A0DA38(v21);
  v24 = v23;
  v25 = v46;
  (v47)(v46, v48, v4);

  v26 = sub_268B37A34();
  v27 = sub_268B37ED4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v17;
    v30 = v29;
    v49 = v29;
    *v28 = 136446210;

    v31 = sub_26892CDB8(v22, v24, &v49);

    *(v28 + 4) = v31;
    _os_log_impl(&dword_2688BB000, v26, v27, "ErrorFilingHelper#TrialClientManager#loadLatest level path: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    v32 = v30;
    v33 = v40;
    MEMORY[0x26D6266E0](v32, -1, -1);
    MEMORY[0x26D6266E0](v28, -1, -1);

    v33(v46, v4);
  }

  else
  {

    v17(v25, v4);
  }

  v34 = v43;
  sub_268B34524();

  v35 = sub_268B34544();
  v37 = v36;
  type metadata accessor for ErrorFilingHelper();
  sub_268A0E3C8(v35, v37);
  static ErrorFilingHelper.setTrialPolicy(dataPolicy:)();
  sub_268910B4C(v35, v37);

  sub_268910B4C(v35, v37);
  return (*(v44 + 8))(v34, v45);
}

void static ErrorFilingHelper.setTrialPolicy(dataPolicy:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37AB4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v58 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = sub_268B37B14();
  v15 = OUTLINED_FUNCTION_1(v14);
  v56 = v16;
  v57 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v22 = sub_268B37A54();
  v23 = OUTLINED_FUNCTION_1(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v30 = v29 - v28;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v31 = __swift_project_value_buffer(v22, qword_2802CDA10);
    (*(v25 + 16))(v30, v31, v22);
    v32 = OUTLINED_FUNCTION_10_17();
    sub_268A0E488(v32, v33);
    v34 = sub_268B37A34();
    v35 = sub_268B37ED4();
    if (!os_log_type_enabled(v34, v35))
    {
      v40 = OUTLINED_FUNCTION_10_17();
      sub_268A0E49C(v40, v41);
      goto LABEL_7;
    }

    v55 = v1;
    v36 = swift_slowAlloc();
    v1 = v36;
    *v36 = 134217984;
    if (v3 >> 60 == 15)
    {
      break;
    }

    v37 = 0;
    switch(v3 >> 62)
    {
      case 1uLL:
        LODWORD(v37) = HIDWORD(v5) - v5;
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          __break(1u);
          JUMPOUT(0x268A0DA28);
        }

        v37 = v37;
        goto LABEL_5;
      case 2uLL:
        v53 = *(v5 + 16);
        v52 = *(v5 + 24);
        v54 = __OFSUB__(v52, v53);
        v37 = v52 - v53;
        if (!v54)
        {
          goto LABEL_5;
        }

        __break(1u);
        break;
      case 3uLL:
        goto LABEL_5;
      default:
        v37 = BYTE6(v3);
        goto LABEL_5;
    }

LABEL_17:
    OUTLINED_FUNCTION_0_0();
  }

  v37 = 0;
LABEL_5:
  *(v36 + 4) = v37;
  v38 = OUTLINED_FUNCTION_10_17();
  sub_268A0E49C(v38, v39);
  _os_log_impl(&dword_2688BB000, v34, v35, "ErrorFilingHelper#setTrialPolicy... policy is %ld bytes", v1, 0xCu);
  MEMORY[0x26D6266E0](v1, -1, -1);
  v1 = v55;
LABEL_7:

  (*(v25 + 8))(v30, v22);
  if (qword_2802A4E30 != -1)
  {
    OUTLINED_FUNCTION_7_19();
  }

  v42 = swift_allocObject();
  v42[2] = v5;
  v42[3] = v3;
  v42[4] = v1;
  v59[4] = sub_268A0E4F8;
  v59[5] = v42;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v59[2] = v43;
  v59[3] = &block_descriptor_3;
  v44 = _Block_copy(v59);
  v45 = OUTLINED_FUNCTION_10_17();
  sub_268A0E488(v45, v46);
  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  sub_268B38124();
  MEMORY[0x26D625950](0, v21, v13, v44);
  _Block_release(v44);
  v49 = *(v58 + 8);
  v50 = OUTLINED_FUNCTION_153_0();
  v51(v50);
  (*(v56 + 8))(v21, v57);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A0DA38(void *a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_8;
  }

  result = [a1 fileValue];
  if (!result)
  {
    __break(1u);
    return result;
  }

  result = sub_268A0E790(result);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

LABEL_8:
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v10, v2);
    v11 = sub_268B37A34();
    v12 = sub_268B37ED4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2688BB000, v11, v12, "ErrorFilingHelper#TrialClientManager#getPathForFactor using default local file system path", v13, 2u);
      MEMORY[0x26D6266E0](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0xD000000000000074;
  }

  return result;
}

uint64_t sub_268A0DC28()
{
  v0 = sub_268B37A54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2802CDA10);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_268B37A34();
  v7 = sub_268B37ED4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2688BB000, v6, v7, "ErrorFilingHelper#setupTrialClient...", v8, 2u);
    MEMORY[0x26D6266E0](v8, -1, -1);
  }

  result = (*(v1 + 8))(v4, v0);
  if (qword_2802A4E38 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_268A0DDE4(uint64_t a1, unint64_t a2)
{
  v2 = qword_2802A6FE8;
  v3 = unk_2802A6FF0;
  qword_2802A6FE8 = a1;
  unk_2802A6FF0 = a2;
  sub_268A0E488(a1, a2);
  sub_268A0E49C(v2, v3);
  sub_268B372E4();
  return sub_268B372C4();
}

uint64_t static ErrorFilingHelper.getTrialPolicy()()
{
  v11 = xmmword_268B43BB0;
  if (qword_2802A4E30 != -1)
  {
    OUTLINED_FUNCTION_7_19();
  }

  v1 = qword_2802A6FE0;
  v2 = swift_allocObject();
  *(v2 + 16) = &v11;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_268A0E514;
  *(v3 + 24) = v2;
  v10[4] = sub_268A0E51C;
  v10[5] = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_268A0BE18;
  v10[3] = &block_descriptor_12;
  v4 = _Block_copy(v10);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_189();
    sub_268A0E488(v6, v7);
    v8 = OUTLINED_FUNCTION_189();
    sub_268A0E49C(v8, v9);

    return OUTLINED_FUNCTION_189();
  }

  return result;
}

uint64_t sub_268A0DFE0(uint64_t *a1)
{
  v2 = qword_2802A6FE8;
  v1 = unk_2802A6FF0;
  v3 = *a1;
  v4 = a1[1];
  *a1 = qword_2802A6FE8;
  a1[1] = v1;
  sub_268A0E488(v2, v1);

  return sub_268A0E49C(v3, v4);
}

uint64_t sub_268A0E030(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  MEMORY[0x26D625650](8236, 0xE200000000000000);
  return a1;
}

uint64_t sub_268A0E09C(char a1, const char *a2)
{
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v7 + 16))(v12, v13, v4);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a1 & 1;
    _os_log_impl(&dword_2688BB000, v14, v15, a2, v16, 8u);
    MEMORY[0x26D6266E0](v16, -1, -1);
  }

  return (*(v7 + 8))(v12, v4);
}

uint64_t sub_268A0E238@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

_OWORD *sub_268A0E268(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_268A75754();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A70B8, &qword_268B43C68);
  if ((sub_268B38264() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_268A75754();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_268B38494();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);

    return sub_2688EF2B0(a1, v17);
  }

  else
  {
    sub_268A0E6DC(v11, a2, a3, a1, v16);
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A0E3C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_268A0E420(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7028, &qword_268B43BC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268A0E488(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268A0E3C8(a1, a2);
  }

  return a1;
}

uint64_t sub_268A0E49C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268910B4C(a1, a2);
  }

  return a1;
}

uint64_t sub_268A0E4B0()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_268910B4C(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268A0E51C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_268A0E5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_268A75754();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7030, &qword_268B43C48);
  if ((sub_268B38264() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  OUTLINED_FUNCTION_153_0();
  v14 = sub_268A75754();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_268B38494();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_268A0E748(v11, a2, a3, a1, v16);
  }
}

_OWORD *sub_268A0E6DC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2688EF2B0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_268A0E748(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_268A0E790(void *a1)
{
  v2 = [a1 path];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268B37BF4();

  return v3;
}

uint64_t sub_268A0E800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268A0E84C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268A0E884(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_268A0C7E4(a1);
}

uint64_t OUTLINED_FUNCTION_7_19()
{

  return swift_once();
}

id sub_268A0E93C()
{
  if (qword_2802A4D20 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD8D0;
  qword_2802CD978 = qword_2802CD8D0;

  return v1;
}

void sub_268A0E9A0()
{
  OUTLINED_FUNCTION_26();
  v197 = v0;
  v198 = v1;
  v199 = v2;
  v195 = v4;
  v196 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_3();
  v202 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v191 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_78();
  v185 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_3();
  v192 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v201 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v188 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v190 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v179 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_78();
  v184 = v26;
  OUTLINED_FUNCTION_9();
  v193 = sub_268B34E24();
  v27 = OUTLINED_FUNCTION_1(v193);
  v203 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v200 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18();
  v189 = v33;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_78();
  v183 = v35;
  OUTLINED_FUNCTION_9();
  v36 = sub_268B367A4();
  v37 = OUTLINED_FUNCTION_1(v36);
  v181 = v38;
  v182 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  v180 = v42 - v41;
  OUTLINED_FUNCTION_9();
  v43 = sub_268B37A54();
  v44 = OUTLINED_FUNCTION_1(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v44);
  v51 = &v177 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18();
  v187 = v52;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18();
  v186 = v54;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v55);
  v57 = &v177 - v56;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v58 = __swift_project_value_buffer(v43, qword_2802CDA10);
  v194 = *(v46 + 16);
  v194(v57, v58, v43);
  v59 = sub_268B37A34();
  v60 = sub_268B37ED4();
  v61 = os_log_type_enabled(v59, v60);
  v204 = v6;
  if (v61)
  {
    v6 = OUTLINED_FUNCTION_14();
    *v6 = 0;
    _os_log_impl(&dword_2688BB000, v59, v60, "SkipTimeHandleIntentStrategy.makeIntentHandledResponse()", v6, 2u);
    OUTLINED_FUNCTION_19_13();
  }

  v62 = *(v46 + 8);
  v62(v57, v43);
  v63 = sub_268B18100();
  if (!v63)
  {
    goto LABEL_13;
  }

  v64 = v63;
  if (!sub_2688EFD0C(v63))
  {

LABEL_13:
    OUTLINED_FUNCTION_25_10();
    v74();
    v75 = sub_268B37A34();
    v76 = sub_268B37EE4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_14();
      *v77 = 0;
      _os_log_impl(&dword_2688BB000, v75, v76, "No device found in intent", v77, 2u);
      OUTLINED_FUNCTION_19_13();
    }

    v62(v51, v43);
    v78 = sub_268B36E84();
    v79 = v193;
    if (!v80)
    {
      sub_268947F08();
    }

    v195 = v78;
    OUTLINED_FUNCTION_21_11();
    (*(v203 + 104))(v200, *MEMORY[0x277D5BC00], v79);
    v81 = sub_268B350F4();
    v82 = v201;
    v83 = OUTLINED_FUNCTION_34_6();
    __swift_storeEnumTagSinglePayload(v83, v84, 1, v81);
    v85 = *MEMORY[0x277D5B908];
    v86 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v86);
    (*(v87 + 104))(v202, v85, v86);
    OUTLINED_FUNCTION_40_7();
    v88.isa = v75->isa;
    v89 = v82;
    v90 = v192;
    sub_2688F1FA4(v89, v192, &unk_2802A57B0, &unk_268B3CE00);
    v91 = OUTLINED_FUNCTION_34_6();
    if (__swift_getEnumTagSinglePayload(v91, v92, v81) == 1)
    {
      sub_2688C058C(v90, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v81 - 8) + 8))(v90, v81);
    }

    v93 = v202;
    sub_2688E2D50();

    sub_2688C058C(v93, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v201, &unk_2802A57B0, &unk_268B3CE00);
    v94 = OUTLINED_FUNCTION_30_10();
    v95(v94);
    OUTLINED_FUNCTION_21_11();
    sub_2688C2ECC();
    v97 = OUTLINED_FUNCTION_26_1();
    v98 = -123;
    goto LABEL_21;
  }

  v202 = v46 + 8;
  v65 = [(uint8_t *)v6 duration];
  if (!v65)
  {

    v102 = v187;
    OUTLINED_FUNCTION_25_10();
    v103();
    v104 = sub_268B37A34();
    v105 = sub_268B37EE4();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = OUTLINED_FUNCTION_14();
      *v106 = 0;
      _os_log_impl(&dword_2688BB000, v104, v105, "Did not receive valid duration", v106, 2u);
      OUTLINED_FUNCTION_12();
    }

    v62(v102, v43);
    v107 = sub_268B36E84();
    v108 = v193;
    if (!v109)
    {
      sub_268947F08();
    }

    v202 = v107;
    OUTLINED_FUNCTION_21_11();
    (*(v203 + 104))(v189, *MEMORY[0x277D5BC00], v108);
    v115 = sub_268B350F4();
    v116 = v190;
    __swift_storeEnumTagSinglePayload(v190, 1, 1, v115);
    v117 = *MEMORY[0x277D5B908];
    v118 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v118);
    (*(v119 + 104))(v191, v117, v118);
    OUTLINED_FUNCTION_40_7();
    v120.isa = v104->isa;
    v121 = v116;
    v122 = v188;
    sub_2688F1FA4(v121, v188, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v122, 1, v115) == 1)
    {
      sub_2688C058C(v122, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v115 - 8) + 8))(v122, v115);
    }

    v123 = v191;
    sub_2688E2D50();

    sub_2688C058C(v123, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v190, &unk_2802A57B0, &unk_268B3CE00);
    v124 = OUTLINED_FUNCTION_30_10();
    v125(v124);
    OUTLINED_FUNCTION_21_11();
    sub_2688C2ECC();
    v97 = OUTLINED_FUNCTION_26_1();
    v98 = -122;
LABEL_21:
    *v96 = v98;
    OUTLINED_FUNCTION_6_26();
    sub_26894B450();

    v99 = OUTLINED_FUNCTION_26_1();
    *v100 = v98;
    v101 = OUTLINED_FUNCTION_8_16(v99);
    v198(v101);
    goto LABEL_22;
  }

  v66 = v65;
  v67 = [v65 duration];
  if (!v67)
  {
LABEL_11:

    sub_2688C2ECC();
    v71 = OUTLINED_FUNCTION_28_5();
    *v72 = -121;
    v73 = OUTLINED_FUNCTION_8_16(v71);
    v198(v73);

    goto LABEL_22;
  }

  v68 = v67;
  v69 = sub_268B37E64();
  if (v70)
  {

    goto LABEL_11;
  }

  v190 = v69;
  v201 = v68;
  v208 = 0;
  v110 = v197;
  v192 = sub_268AAC34C(v197 + 2, v64, &v208);
  v111 = *__swift_project_boxed_opaque_existential_1(v110 + 8, v110[11]);
  if (v111 && (v112 = OUTLINED_FUNCTION_28_1(), v113 = [v111 BOOLForKey_], v112, (v113 & 1) != 0))
  {
    v114 = 1;
  }

  else
  {
    v114 = v208;
  }

  LODWORD(v191) = v114;
  sub_268B36754();
  v126 = sub_268B36734();
  if (!v126)
  {
    v126 = sub_268B36744();
  }

  v127 = v126;
  v200 = v64;
  v128 = v186;
  OUTLINED_FUNCTION_25_10();
  v129();

  v130 = v127;
  v131 = sub_268B37A34();
  v132 = sub_268B37ED4();

  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v178 = v66;
    v134 = v133;
    v6 = swift_slowAlloc();
    v209[0] = v6;
    *v134 = 136315138;
    sub_268B36714();
    LODWORD(v194) = v132;
    v135 = v180;
    sub_268B36B14();

    v136 = sub_268B36784();
    v138 = v137;
    (*(v181 + 8))(v135, v182);
    v139 = sub_26892CDB8(v136, v138, v209);

    *(v134 + 4) = v139;
    v130 = v127;
    _os_log_impl(&dword_2688BB000, v131, v194, "SkipTimeHandleIntentStrategy.makeIntentHandledResponse cached responseMode = %s", v134, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_19_13();
    v66 = v178;
    OUTLINED_FUNCTION_12();

    v140 = v186;
  }

  else
  {

    v140 = v128;
  }

  v62(v140, v43);
  v141 = v197;
  v142 = v198;
  v143 = swift_allocObject();
  *(v143 + 16) = v130;
  *(v143 + 24) = v141;
  v145 = v195;
  v144 = v196;
  *(v143 + 32) = v6;
  *(v143 + 40) = v145;
  v146 = v192;
  *(v143 + 48) = v144;
  *(v143 + 56) = v146;
  v147 = v130;
  v148 = v6;
  v149 = v199;
  *(v143 + 64) = v142;
  *(v143 + 72) = v149;
  *(v143 + 80) = v191;

  v204 = v148;
  v150 = v145;

  v151 = [v66 direction];
  if (v151 == 2)
  {
    sub_268AC65D8(v205, v190);
    memcpy(v206, &v205[1], 0x51uLL);
    sub_2688C058C(v206, &qword_2802A5C88, qword_268B418C0);
    OUTLINED_FUNCTION_16_20();
    sub_268AE38FC();

    OUTLINED_FUNCTION_42_6();
    v153 = OUTLINED_FUNCTION_12_16();
    sub_268ABBD20(v153);

    memcpy(v207, v205, 0x68uLL);
    sub_268A14558(v207);
    goto LABEL_23;
  }

  if (v151 == 1)
  {
    sub_268AC65D8(v205, v190);
    memcpy(v206, &v205[1], 0x51uLL);
    sub_2688C058C(v206, &qword_2802A5C88, qword_268B418C0);
    OUTLINED_FUNCTION_16_20();
    sub_268AE38D4();

    OUTLINED_FUNCTION_42_6();
    v152 = OUTLINED_FUNCTION_12_16();
    sub_268AB6F1C(v152);

    memcpy(v207, v205, 0x68uLL);
    sub_268A145AC(v207);
    goto LABEL_23;
  }

  v154 = sub_268B36E84();
  v178 = v66;
  v189 = v147;
  if (!v155)
  {
    sub_268947F08();
  }

  v202 = v154;
  v156 = __swift_project_boxed_opaque_existential_1(v141 + 18, v141[21]);
  (*(v203 + 104))(v183, *MEMORY[0x277D5BC00], v193);
  v157 = sub_268B350F4();
  v158 = v184;
  v159 = OUTLINED_FUNCTION_34_6();
  __swift_storeEnumTagSinglePayload(v159, v160, 1, v157);
  v161 = *MEMORY[0x277D5B908];
  v162 = sub_268B34B94();
  OUTLINED_FUNCTION_4(v162);
  v164 = v185;
  (*(v163 + 104))(v185, v161, v162);
  __swift_storeEnumTagSinglePayload(v164, 0, 1, v162);
  v165 = *v156;
  v166 = v158;
  v167 = v179;
  sub_2688F1FA4(v166, v179, &unk_2802A57B0, &unk_268B3CE00);
  v168 = OUTLINED_FUNCTION_34_6();
  if (__swift_getEnumTagSinglePayload(v168, v169, v157) == 1)
  {
    sub_2688C058C(v167, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(*(v157 - 8) + 8))(v167, v157);
  }

  v170 = v183;
  v171 = v185;
  sub_2688E2D50();

  sub_2688C058C(v171, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v184, &unk_2802A57B0, &unk_268B3CE00);
  (*(v203 + 8))(v170, v193);
  __swift_project_boxed_opaque_existential_1(v197 + 18, v197[21]);
  sub_2688C2ECC();
  v172 = OUTLINED_FUNCTION_28_5();
  *v173 = -118;
  OUTLINED_FUNCTION_6_26();
  sub_26894B450();

  v174 = OUTLINED_FUNCTION_28_5();
  *v175 = -118;
  v176 = OUTLINED_FUNCTION_8_16(v174);
  v142(v176);

LABEL_22:
  sub_2688C058C(v209, &unk_2802A57C0, &qword_268B3BE00);
LABEL_23:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A0FB7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8, char a9)
{
  v68 = a7;
  v67 = a8;
  v58 = a6;
  v66 = a5;
  v61 = a4;
  v69 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v59 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v57 - v18;
  v65 = sub_268B34E24();
  v63 = *(v65 - 8);
  v19 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v57 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v57 - v30);
  sub_2688F1FA4(a1, &v57 - v30, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    sub_268B36E84();
    if (!v33)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v42 = a2;
    v43 = __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    (*(v63 + 104))(v62, *MEMORY[0x277D5BC00], v65);
    v44 = sub_268B350F4();
    v45 = v64;
    __swift_storeEnumTagSinglePayload(v64, 1, 1, v44);
    v46 = sub_268B34B94();
    v47 = v60;
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v46);
    v48 = *v43;
    v49 = v45;
    v50 = v59;
    sub_2688F1FA4(v49, v59, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v50, 1, v44) == 1)
    {
      sub_2688C058C(v50, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v61 = v48;
      sub_268B350B4();
      (*(*(v44 - 8) + 8))(v50, v44);
    }

    v51 = v62;
    sub_2688E2D50();

    sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v64, &unk_2802A57B0, &unk_268B3CE00);
    (*(v63 + 8))(v51, v65);
    v52 = __swift_project_boxed_opaque_existential_1(v42 + 18, v42[21]);
    sub_2688C2ECC();
    v53 = swift_allocError();
    *v54 = -119;
    v55 = *v52;
    sub_26894B450();

    v70[0] = v32;
    v71 = 1;
    v56 = v32;
    v68(v70);

    return sub_2688C058C(v70, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v34 = v61;
    sub_2689186C8(v31, v27);
    v35 = a2[27];
    __swift_project_boxed_opaque_existential_1(a2 + 23, a2[26]);
    v36 = sub_268B36FA4();
    sub_2688F1FA4(v27, v25, &unk_2802A56E0, &unk_268B3CDF0);
    v37 = *(v21 + 48);
    v38 = *&v25[v37];
    if (v36)
    {
      v39 = *&v25[v37];
      sub_268A10210();
    }

    else
    {
      sub_268A10E74(v25, v38, v69, v34, v66, a9 & 1, v58, v68, v67);
    }

    sub_2688C058C(v27, &unk_2802A56E0, &unk_268B3CDF0);
    v40 = sub_268B350F4();
    return (*(*(v40 - 8) + 8))(v25, v40);
  }
}

void sub_268A10210()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v80 = v2;
  v81 = v3;
  v79 = v4;
  v83 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_268B35044();
  v13 = OUTLINED_FUNCTION_1(v12);
  v84 = v14;
  v85 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v82 = v18 - v17;
  OUTLINED_FUNCTION_9();
  v19 = sub_268B37A54();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v29 = OUTLINED_FUNCTION_1(v28);
  *(&v75 + 1) = v30;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v29);
  v76 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_78();
  v86 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v68 - v36;
  v38 = sub_268B350F4();
  v77 = *(v38 - 8);
  v78 = v38;
  (*(v77 + 16))(v37, v11);
  *&v37[*(v28 + 48)] = v9;
  v39 = qword_2802A4F30;
  v40 = v9;
  if (v39 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v41 = __swift_project_value_buffer(v19, qword_2802CDA10);
  (*(v22 + 16))(v27, v41, v19);
  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_14();
    *&v75 = v28;
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "SkipTimeHandleIntentStrategy#intentHandledResponse...", v44, 2u);
    v28 = v75;
    OUTLINED_FUNCTION_12();
  }

  (*(v22 + 8))(v27, v19);
  sub_26890C900((v1 + 33), v87);
  v72 = v89;
  v73 = v88;
  *&v75 = __swift_project_boxed_opaque_existential_1(v87, v88);
  v45 = v86;
  sub_2688F1FA4(v37, v86, &unk_2802A56E0, &unk_268B3CDF0);
  v74 = *(v45 + *(v28 + 48));
  if (sub_268B18100())
  {
    v46 = v1[38];
    sub_268921344();
    v48 = v47;

    if (v48[2])
    {
      v49 = v48[5];
      v70 = v48[4];
      v71 = v49;
    }

    else
    {
      OUTLINED_FUNCTION_6_19();
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
  }

  v50 = *__swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  if (v50)
  {
    v51 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v69) = [v50 BOOLForKey_];
  }

  else
  {
    HIDWORD(v69) = 0;
  }

  v52 = v82;
  sub_268A82B50(v7, v82);
  v53 = sub_2689F0948();
  v54 = v76;
  sub_2688F1FA4(v37, v76, &unk_2802A56E0, &unk_268B3CDF0);
  v55 = (*(*(&v75 + 1) + 80) + 40) & ~*(*(&v75 + 1) + 80);
  v56 = v37;
  v57 = v7;
  v58 = (v32 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v59[2] = v57;
  v59[3] = v1;
  v59[4] = v80;
  sub_2689186C8(v54, v59 + v55);
  v60 = (v59 + v58);
  v61 = v81;
  *v60 = v79;
  v60[1] = v61;
  v62 = v57;

  LOBYTE(v66) = v53 & 1;
  v63 = (v1 + 13);
  v64 = v86;
  v65 = v74;
  sub_268A83648(v86, v74, v70, v71, HIDWORD(v69), v83, v52, v63, v66, sub_268A1440C, v59, v73, v72, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);

  (*(v84 + 8))(v52, v85);
  sub_2688C058C(v56, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v77 + 8))(v64, v78);
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A107BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v60 = a4;
  v69 = a2;
  v70 = a3;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v54 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v13 = v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  v21 = sub_268B34E24();
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v65 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v59 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v54 - v29;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v57 = v25[2];
  v58 = v31;
  v57(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = v13;
    v35 = a5;
    v36 = v25;
    v37 = v34;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "SkipTimeHandleIntentStrategy#intentHandledResponse output has been created.", v34, 2u);
    v38 = v37;
    v25 = v36;
    a5 = v35;
    v13 = v61;
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  v39 = v25[1];
  v61 = (v25 + 1);
  v56 = v39;
  v39(v30, v24);
  sub_268947F08();
  v54[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1((v70 + 144), *(v70 + 168));
  (*(v66 + 104))(v65, *MEMORY[0x277D5BC10], v67);
  sub_2688F1FA4(a5, v13, &unk_2802A56E0, &unk_268B3CDF0);

  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 32))(v20, v13, v42);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v42);
  v44 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v44);
  v45 = *v41;
  sub_2688F1FA4(v20, v18, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v42) == 1)
  {
    sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v43 + 8))(v18, v42);
  }

  v46 = v65;
  v47 = v68;
  sub_2688E2D50();

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  (*(v66 + 8))(v46, v67);
  v48 = *__swift_project_boxed_opaque_existential_1((v70 + 144), *(v70 + 168));
  sub_26894B450();
  v49 = v59;
  (v57)(v59, v58, v24);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "SkipTimeHandleIntentStrategy#intentHandledResponse returning output", v52, 2u);
    MEMORY[0x26D6266E0](v52, -1, -1);
  }

  v56(v49, v24);
  return v64(v62);
}

uint64_t sub_268A112C0(void *a1, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, char *a9)
{
  v98 = a8;
  v99 = a7;
  v96 = a6;
  v97 = a5;
  v104 = a3;
  LODWORD(v94) = a2;
  v100 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v92 = &v85 - v12;
  v93 = sub_268B35044();
  v91 = *(v93 - 8);
  v13 = *(v91 + 64);
  MEMORY[0x28223BE20](v93);
  v90 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v89 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v85 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v85 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v87 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v88 = &v85 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v85 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v85 - v36;
  v38 = sub_268B34E24();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v95 = &v85 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v85 - v44;
  v102 = v43;
  v103 = a4;
  v101 = v39;
  if (v94)
  {
    v46 = v96;
    sub_268B36E84();
    if (!v47)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v69 = v101;
    v68 = v102;
    v70 = v89;
    v71 = v87;
    v72 = __swift_project_boxed_opaque_existential_1(v103 + 18, v103[21]);
    (*(v69 + 104))(v95, *MEMORY[0x277D5BC00], v68);
    sub_2688F1FA4(v46, v24, &unk_2802A56E0, &unk_268B3CDF0);

    v73 = sub_268B350F4();
    v74 = *(v73 - 8);
    v75 = v88;
    (*(v74 + 32))(v88, v24, v73);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v73);
    v76 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v76);
    v77 = *v72;
    sub_2688F1FA4(v75, v71, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v71, 1, v73) == 1)
    {
      sub_2688C058C(v71, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v74 + 8))(v71, v73);
    }

    v78 = v95;
    sub_2688E2D50();

    sub_2688C058C(v70, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v75, &unk_2802A57B0, &unk_268B3CE00);
    (*(v101 + 8))(v78, v102);
    v79 = __swift_project_boxed_opaque_existential_1(v103 + 18, v103[21]);
    sub_2688C2ECC();
    v80 = swift_allocError();
    *v81 = -120;
    v82 = *v79;
    sub_26894B450();

    v107[0] = v100;
    v110 = 1;
    v83 = v100;
  }

  else
  {
    v95 = a9;
    sub_268947F08();
    v89 = v48;
    v94 = v49;
    v50 = __swift_project_boxed_opaque_existential_1(a4 + 18, a4[21]);
    (*(v39 + 104))(v45, *MEMORY[0x277D5BC10], v38);
    sub_2688F1FA4(v96, v26, &unk_2802A56E0, &unk_268B3CDF0);

    v51 = sub_268B350F4();
    v52 = *(v51 - 8);
    (*(v52 + 32))(v37, v26, v51);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v51);
    v53 = sub_268B34B94();
    v54 = v86;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v53);
    v55 = *v50;
    sub_2688F1FA4(v37, v35, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v35, 1, v51) == 1)
    {
      sub_2688C058C(v35, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v52 + 8))(v35, v51);
    }

    v56 = v104;
    sub_2688E2D50();

    sub_2688C058C(v54, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v37, &unk_2802A57B0, &unk_268B3CE00);
    (*(v101 + 8))(v45, v102);
    v57 = v103;
    v58 = *__swift_project_boxed_opaque_existential_1(v103 + 18, v103[21]);
    sub_26894B450();
    v59 = __swift_project_boxed_opaque_existential_1(v57 + 18, v57[21]);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v107[0] = v100;
    v60 = *v59;

    sub_268948494(v107);
    sub_2688C058C(v107, &byte_2802A6450, &byte_268B3BE10);
    v61 = v90;
    sub_268A82B50(v56, v90);
    v108 = sub_268B354F4();
    v109 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v107);
    v62 = 0;
    if (sub_2689F0948())
    {
      v62 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688C063C();
      v63 = sub_268B38064();
      [v62 setMinimumAutoDismissalTimeInMs_];

      [v62 setPremptivelyResumeMedia_];
    }

    v64 = v57[6];
    __swift_project_boxed_opaque_existential_1(v57 + 2, v57[5]);
    sub_268B34CA4();
    v65 = v91;
    v66 = v92;
    v67 = v93;
    (*(v91 + 16))(v92, v61, v93);
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v67);
    v106 = 0;
    memset(v105, 0, sizeof(v105));
    sub_268B34EF4();

    sub_2688C058C(v105, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v66, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v65 + 8))(v61, v67);
    v110 = 0;
  }

  v99(v107);
  return sub_2688C058C(v107, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268A11E3C()
{
  OUTLINED_FUNCTION_26();
  v163 = v1;
  v164 = v0;
  v155 = v2;
  v4 = v3;
  v6 = v5;
  v160 = v7;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v8 = OUTLINED_FUNCTION_4(v149);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v136 - v11;
  v13 = sub_268B367A4();
  v14 = OUTLINED_FUNCTION_1(v13);
  v145 = v15;
  v146 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v144 = v19 - v18;
  OUTLINED_FUNCTION_9();
  v20 = sub_268B37A54();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v148 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  v151 = v28;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  v147 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  v150 = v32;
  OUTLINED_FUNCTION_8();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v136 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v136 - v37;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v39 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v40 = *(v23 + 16);
  v156 = v39;
  v157 = v40;
  v158 = v23 + 16;
  (v40)(v38);
  v41 = sub_268B37A34();
  v42 = sub_268B37ED4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    v162 = v23;
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "SkipTimeHandleIntentStrategy.makeFailureHandlingIntentResponse()", v43, 2u);
    v23 = v162;
    OUTLINED_FUNCTION_12();
  }

  v45 = *(v23 + 8);
  v44 = v23 + 8;
  v159 = v45;
  v45(v38, v20);
  v46 = [v6 duration];
  if (v46)
  {
    v47 = v46;
    v161 = v20;
    v141 = v12;
    v139 = [v46 direction];

    v154 = sub_268B36E84();
    v142 = v6;
    if (v48)
    {
      v152 = v48;
    }

    else
    {
      v54 = OBJC_IVAR___SkipTimeIntentResponse_code;
      swift_beginAccess();
      v167[0] = *(v4 + v54);
      sub_268B38404();
      sub_268947F08();
      v154 = v55;
      v152 = v56;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x8000000268B572E0;
    v58 = OBJC_IVAR___SkipTimeIntentResponse_code;
    swift_beginAccess();
    v167[0] = *(v4 + v58);
    sub_268B38404();
    v59 = sub_268B36E94();
    v61 = v60;

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v59;
    *(inited + 56) = v61;
    v62 = sub_268B37B84();
    v63 = sub_268B36754();
    v64 = sub_268B36734();
    v162 = v44;
    v143 = v62;
    v140 = v63;
    if (!v64)
    {
      v64 = sub_268B36744();
    }

    v65 = v64;
    v66 = v161;
    v157(v36, v156, v161);

    v67 = v65;
    v68 = sub_268B37A34();
    v69 = sub_268B37ED4();

    v70 = os_log_type_enabled(v68, v69);
    v153 = v67;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v137 = v36;
      v138 = v4;
      v72 = v71;
      v73 = swift_slowAlloc();
      v167[0] = v73;
      *v72 = 136315138;
      sub_268B36714();
      v74 = v144;
      sub_268B36B14();

      v75 = sub_268B36784();
      v77 = v76;
      (*(v145 + 8))(v74, v146);
      v67 = sub_26892CDB8(v75, v77, v167);

      *(v72 + 4) = v67;
      _os_log_impl(&dword_2688BB000, v68, v69, "SkipTimeHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      OUTLINED_FUNCTION_12();
      v4 = v138;
      OUTLINED_FUNCTION_12();

      v78 = v137;
    }

    else
    {

      v78 = v36;
    }

    v159(v78, v66);
    if (*(v4 + v58) == 100)
    {
      v79 = swift_allocObject();
      v80 = v154;
      v81 = v164;
      v79[2] = v153;
      v79[3] = v81;
      OUTLINED_FUNCTION_18_11(v79, v80);

      v82 = v67;

      v157(v150, v156, v161);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v83 = v82;
      OUTLINED_FUNCTION_29_9();
      swift_retain_n();
      v84 = v82;
      v85 = sub_268B37A34();
      v86 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_160_0(v86))
      {
        v87 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_52_1(v87);
        OUTLINED_FUNCTION_50_0(&dword_2688BB000, v88, v89, "callIntentHandledFailedUnsupportedCommand in SkipTimeDialogTemplatingService");
        OUTLINED_FUNCTION_12();
      }

      v90 = v162;
      v159(v150, v161);
      sub_268A13A00(v165);
      if (v166 == 2)
      {
        v91 = OUTLINED_FUNCTION_39_5();
        v92(v91);
        v93 = sub_268B37A34();
        v94 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_160_0(v94))
        {
          v95 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_52_1(v95);
          OUTLINED_FUNCTION_50_0(&dword_2688BB000, v96, v97, "Could not create skip error params");
          v90 = v162;
          OUTLINED_FUNCTION_12();
        }

        v159(v147, v161);
        sub_2688C2ECC();
        v98 = OUTLINED_FUNCTION_28_5();
        OUTLINED_FUNCTION_5_14(v98, v99, 141);
        OUTLINED_FUNCTION_37_9();
        MEMORY[0x28223BE20](v100);
        OUTLINED_FUNCTION_1_36();
        OUTLINED_FUNCTION_17_16(v101);
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_13_11(v166);
      if (v126)
      {
        OUTLINED_FUNCTION_33_12();
        OUTLINED_FUNCTION_4_23();
        sub_268AC6488();
        sub_2688C058C(v165, &qword_2802A70C8, qword_268B43DE0);
      }

      else
      {
        if (v125 != 2)
        {
          sub_2688C058C(v165, &qword_2802A70C8, qword_268B43DE0);
          sub_2688C2ECC();
          v128 = OUTLINED_FUNCTION_28_5();
          OUTLINED_FUNCTION_5_14(v128, v129, 142);
          OUTLINED_FUNCTION_37_9();
          MEMORY[0x28223BE20](v130);
          OUTLINED_FUNCTION_1_36();
          OUTLINED_FUNCTION_17_16(v131);
LABEL_37:
          OUTLINED_FUNCTION_28_13();
          sub_2688C058C(v90, &qword_2802A6300, &unk_268B3BD80);
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_33_12();
        OUTLINED_FUNCTION_4_23();
        sub_268AC64DC();
        sub_2688C058C(v165, &qword_2802A70C8, qword_268B43DE0);
      }

LABEL_38:

      swift_bridgeObjectRelease_n();
LABEL_42:

      goto LABEL_43;
    }

    v102 = swift_allocObject();
    v103 = v154;
    v104 = v164;
    v102[2] = v153;
    v102[3] = v104;
    OUTLINED_FUNCTION_18_11(v102, v103);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v105 = v67;
    OUTLINED_FUNCTION_29_9();
    swift_retain_n();
    v106 = v67;
    v157(v151, v156, v161);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v107 = v106;
    OUTLINED_FUNCTION_29_9();
    swift_retain_n();
    v84 = v106;
    v108 = sub_268B37A34();
    v109 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_160_0(v109))
    {
      v110 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_52_1(v110);
      OUTLINED_FUNCTION_50_0(&dword_2688BB000, v111, v112, "callGenericIntentHandledFailed in SkipTimeDialogTemplatingService");
      OUTLINED_FUNCTION_12();
    }

    v113 = v162;
    v159(v151, v161);
    sub_268A13A00(v165);
    if (v166 == 2)
    {
      v114 = OUTLINED_FUNCTION_39_5();
      v115(v114);
      v116 = sub_268B37A34();
      v117 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_160_0(v117))
      {
        v118 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_52_1(v118);
        OUTLINED_FUNCTION_50_0(&dword_2688BB000, v119, v120, "Could not create skip error params");
        v113 = v162;
        OUTLINED_FUNCTION_12();
      }

      v159(v148, v161);
      sub_2688C2ECC();
      v121 = OUTLINED_FUNCTION_28_5();
      OUTLINED_FUNCTION_5_14(v121, v122, 143);
      OUTLINED_FUNCTION_37_9();
      MEMORY[0x28223BE20](v123);
      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_17_16(v124);
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_13_11(v166);
    if (v126)
    {
      OUTLINED_FUNCTION_33_12();
      OUTLINED_FUNCTION_4_23();
      sub_268ABAEA4();
      sub_2688C058C(v165, &qword_2802A70C8, qword_268B43DE0);
    }

    else
    {
      if (v127 != 2)
      {
        sub_2688C058C(v165, &qword_2802A70C8, qword_268B43DE0);
        sub_2688C2ECC();
        v132 = OUTLINED_FUNCTION_28_5();
        OUTLINED_FUNCTION_5_14(v132, v133, 144);
        OUTLINED_FUNCTION_37_9();
        MEMORY[0x28223BE20](v134);
        OUTLINED_FUNCTION_1_36();
        OUTLINED_FUNCTION_17_16(v135);
LABEL_40:
        OUTLINED_FUNCTION_28_13();
        sub_2688C058C(v113, &qword_2802A6300, &unk_268B3BD80);
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_33_12();
      OUTLINED_FUNCTION_4_23();
      sub_268ABB0EC();
      sub_2688C058C(v165, &qword_2802A70C8, qword_268B43DE0);
    }

LABEL_41:

    swift_bridgeObjectRelease_n();

    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1((v164 + 144), *(v164 + 168));
  sub_2688C2ECC();
  v49 = OUTLINED_FUNCTION_26_1();
  *v50 = -117;
  OUTLINED_FUNCTION_6_26();
  sub_26894B450();

  v51 = OUTLINED_FUNCTION_26_1();
  *v52 = -117;
  v53 = OUTLINED_FUNCTION_8_16(v51);
  v155(v53);
  sub_2688C058C(v167, &unk_2802A57C0, &qword_268B3BE00);
LABEL_43:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A12C6C(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v125 = a8;
  v123 = a6;
  v124 = a7;
  v121 = a3;
  v122 = a5;
  v126 = a4;
  v128 = a2;
  v115 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v114 = &v105 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v119 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v119);
  v113 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v107 = &v105 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v105 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v111 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v110 = &v105 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v108 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v118 = &v105 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v105 - v30;
  MEMORY[0x28223BE20](v29);
  v109 = &v105 - v32;
  v120 = sub_268B34E24();
  v127 = *(v120 - 8);
  v33 = *(v127 + 64);
  v34 = MEMORY[0x28223BE20](v120);
  v117 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v116 = &v105 - v36;
  v37 = sub_268B37A54();
  v131 = *(v37 - 8);
  v38 = *(v131 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v112 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v105 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v105 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v105 - v48);
  sub_2688F1FA4(v115, &v105 - v48, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *v49;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v37, qword_2802CDA10);
    (*(v131 + 16))(v45, v51, v37);
    v52 = sub_268B37A34();
    v53 = sub_268B37EE4();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v120;
    v56 = v109;
    if (v54)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "SkipTimeHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v57, 2u);
      MEMORY[0x26D6266E0](v57, -1, -1);
    }

    (*(v131 + 8))(v45, v37);
    v58 = __swift_project_boxed_opaque_existential_1(v128 + 18, v128[21]);
    (*(v127 + 104))(v116, *MEMORY[0x277D5BC00], v55);
    v59 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v59);
    v60 = *MEMORY[0x277D5B8E0];
    v61 = sub_268B34B94();
    v62 = v110;
    (*(*(v61 - 8) + 104))(v110, v60, v61);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
    v63 = *v58;
    sub_2688F1FA4(v56, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v59) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v59 - 8) + 8))(v31, v59);
    }

    v81 = v116;
    sub_2688E2D50();

    sub_2688C058C(v62, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v56, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v81, v55);
    v82 = __swift_project_boxed_opaque_existential_1(v128 + 18, v128[21]);
    sub_2688C2ECC();
    v83 = swift_allocError();
    *v84 = -90;
    v85 = *v82;
    sub_26894B450();

    v86 = swift_allocError();
    *v87 = -90;
    v129[0] = v86;
    v130 = 1;
    v124(v129);

    return sub_2688C058C(v129, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v49, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v64 = __swift_project_value_buffer(v37, qword_2802CDA10);
    v65 = *(v131 + 16);
    v110 = v64;
    v109 = v65;
    (v65)(v43);
    v66 = sub_268B37A34();
    v67 = sub_268B37ED4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2688BB000, v66, v67, "SkipTimeHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v68, 2u);
      MEMORY[0x26D6266E0](v68, -1, -1);
    }

    v69 = *(v131 + 8);
    v131 += 8;
    v106 = v69;
    v69(v43, v37);
    v70 = __swift_project_boxed_opaque_existential_1(v128 + 18, v128[21]);
    v71 = v120;
    (*(v127 + 104))(v117, *MEMORY[0x277D5BC00], v120);
    v116 = v17;
    v72 = v107;
    sub_2688F1FA4(v17, v107, &unk_2802A56E0, &unk_268B3CDF0);

    v73 = sub_268B350F4();
    v74 = *(v73 - 8);
    v75 = v118;
    (*(v74 + 32))(v118, v72, v73);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v73);
    v76 = sub_268B34B94();
    v77 = v111;
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v76);
    v78 = *v70;
    v79 = v108;
    sub_2688F1FA4(v75, v108, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v73);
    v115 = v74;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v79, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v107 = v78;
      sub_268B350B4();
      (*(v74 + 8))(v79, v73);
    }

    v89 = v117;
    sub_2688E2D50();

    sub_2688C058C(v77, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v118, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v89, v71);
    v90 = __swift_project_boxed_opaque_existential_1(v128 + 18, v128[21]);
    sub_2688C2ECC();
    v91 = swift_allocError();
    *v92 = -116;
    v93 = *v90;
    sub_26894B450();

    v94 = v112;
    (v109)(v112, v110, v37);
    v95 = sub_268B37A34();
    v96 = sub_268B37ED4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_2688BB000, v95, v96, "SkipTimeHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v97, 2u);
      MEMORY[0x26D6266E0](v97, -1, -1);
    }

    v106(v94, v37);
    v98 = v128[36];
    v99 = v128[37];
    __swift_project_boxed_opaque_existential_1(v128 + 33, v98);
    v100 = v116;
    v101 = v113;
    sub_2688F1FA4(v116, v113, &unk_2802A56E0, &unk_268B3CDF0);
    v102 = *(v101 + *(v119 + 48));
    v103 = v114;
    sub_268A82B50(v126, v114);
    v104 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v103, 0, 1, v104);
    (*(v99 + 40))(v101, v102, v103, v124, v125, v98, v99);

    sub_2688C058C(v103, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v100, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v115 + 8))(v101, v73);
  }
}

void *sub_268A13A00@<X0>(void *a1@<X8>)
{
  LOWORD(__src[0]) = 0;
  BYTE2(__src[0]) = 0;
  __src[1] = 0;
  __src[2] = 0;
  __src[3] = 1;
  memset(&__src[4], 0, 61);
  v2 = sub_268B18100();
  if (v2)
  {
    if (sub_2688EFD0C(v2))
    {
      memcpy(__dst, &__src[1], 0x51uLL);
      sub_2688C058C(__dst, &qword_2802A5C88, qword_268B418C0);
      LODWORD(__src[1]) = 0;
      memset(&__src[2], 0, 72);
      LOBYTE(__src[11]) = 1;
      sub_268AE38AC();
    }
  }

  memcpy(v5, __src, 0x5DuLL);
  memcpy(__dst, __src, 0x5DuLL);
  sub_268A13FC8(v5, v4);
  sub_2689E9FB8(__dst);
  return memcpy(a1, __src, 0x5DuLL);
}

uint64_t sub_268A13B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A13BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A13C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A13CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A13D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A13DDC()
{
  if (qword_2802A4E48 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD978;

  return v1;
}

uint64_t sub_268A13E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A13E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A13EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A13F48(uint64_t a1)
{
  result = sub_268A13F70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A13F70()
{
  result = qword_2802A70C0;
  if (!qword_2802A70C0)
  {
    type metadata accessor for SkipTimeHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A70C0);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_268A140E8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v1 + 24);

  v11 = *(v1 + 32);

  v12 = v1 + v5;
  v13 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v13);
  (*(v14 + 8))(v12);

  v15 = *(v1 + v7 + 8);

  v16 = *(v1 + v8);

  return MEMORY[0x2821FE8E8](v1, v9 + 8, v4 | 7);
}

uint64_t sub_268A14220(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_268A112C0(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8));
}

uint64_t sub_268A142FC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v1 + 24);

  v9 = *(v1 + 32);

  v10 = v1 + v5;
  v11 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v11);
  (*(v12 + 8))(v10);

  v13 = *(v1 + v7 + 8);

  return MEMORY[0x2821FE8E8](v1, v7 + 16, v4 | 7);
}

uint64_t sub_268A1440C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A107BC(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A144C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_268A14528()
{
  OUTLINED_FUNCTION_38_5();
  v2 = *(v0 + 80);
  return sub_268A0FABC();
}

void OUTLINED_FUNCTION_1_36()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[18];
  v4 = v0[19];
}

uint64_t OUTLINED_FUNCTION_4_23()
{
  result = v1 - 192;
  v3 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  **(v3 + 40) = a1;
  v5 = *(v3 + 104);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_8_16(uint64_t a1)
{
  *(v1 - 192) = a1;
  *(v1 - 152) = 1;
  return v1 - 192;
}

__n128 OUTLINED_FUNCTION_13_11@<Q0>(uint64_t a1@<X8>)
{
  *(v2 + 96) = *v2;
  *(v3 - 176) = *(v1 + 384);
  *(v3 - 168) = a1;
  v4 = *(v2 + 48);
  *(v2 + 128) = *(v2 + 32);
  *(v2 + 144) = v4;
  *(v2 + 160) = *(v2 + 64);
  result = *(v2 + 77);
  *(v2 + 173) = result;
  v6 = *(v1 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_20()
{
  *(v0 + 248) = 0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  *(v0 + 328) = 1;
  return *(v0 + 184);
}

void OUTLINED_FUNCTION_17_16(uint64_t a1@<X8>)
{
  *(a1 - 32) = v1;
  *(a1 - 24) = v4;
  v5 = *(v3 + 216);
  *(a1 - 16) = v2;
  *(a1 - 8) = v5;
}

uint64_t OUTLINED_FUNCTION_18_11@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[6];
  a1[4] = v2[24];
  a1[5] = v5;
  v6 = v2[16];
  a1[6] = a2;
  a1[7] = v6;
  a1[8] = v2[19];
  a1[9] = v3;
  return v4;
}

void OUTLINED_FUNCTION_19_13()
{
  v2 = *(v0 + 216);

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_28_13()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 32);

  return sub_268B366F4();
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_35_8()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  return result;
}

void OUTLINED_FUNCTION_38_5()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
}

uint64_t OUTLINED_FUNCTION_39_5()
{
  result = v1;
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[22];
  return result;
}

uint64_t OUTLINED_FUNCTION_40_7()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void *OUTLINED_FUNCTION_42_6()
{
  v4 = *(v1 + 56);

  return memcpy((v2 - 192), (v0 + 240), 0x68uLL);
}

Swift::String_optional __swiftcall UsoTask_decreaseBy_common_Setting.verb()()
{
  v0 = 0x6573616572636564;
  v1 = 0xE800000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268A148F4()
{
  v2 = v0;
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v52 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_268B360B4();
  v10 = OUTLINED_FUNCTION_1(v9);
  v53 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6578, &qword_268B3FA60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6580, &qword_268B3FA68);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_3_31();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v48[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v48[-v27];
  v29 = sub_268A9EA48(v26) - 2;
  result = 0;
  switch(v29)
  {
    case 0:
      return result;
    case 1:
      return 2;
    case 2:
      return 1;
    case 4:
      v50 = v3;
      sub_268B36534();
      if (v54 && (v31 = sub_268B35B94(), , v31))
      {
        sub_268B360A4();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v28, 1, 1, v9);
      }

      (*(v53 + 104))(v25, *MEMORY[0x277D5EE50], v9);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v9);
      v32 = *(v16 + 48);
      sub_26897743C(v28, v19);
      sub_26897743C(v25, &v19[v32]);
      OUTLINED_FUNCTION_1_17(v19);
      if (!v33)
      {
        sub_26897743C(v19, v1);
        OUTLINED_FUNCTION_1_17(&v19[v32]);
        if (!v33)
        {
          v46 = v53;
          (*(v53 + 32))(v15, &v19[v32], v9);
          sub_268A15988(&qword_2802A6588, MEMORY[0x277D5EE58]);
          v49 = sub_268B37BB4();
          v47 = *(v46 + 8);
          v47(v15, v9);
          sub_2688EF38C(v25, &qword_2802A6580, &qword_268B3FA68);
          sub_2688EF38C(v28, &qword_2802A6580, &qword_268B3FA68);
          v47(v1, v9);
          sub_2688EF38C(v19, &qword_2802A6580, &qword_268B3FA68);
          if (v49)
          {
            return 0;
          }

LABEL_17:
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v34 = v50;
          v35 = __swift_project_value_buffer(v50, qword_2802CDA10);
          v37 = v51;
          v36 = v52;
          (*(v52 + 16))(v51, v35, v34);

          v38 = sub_268B37A34();
          v39 = sub_268B37EE4();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v54 = v41;
            *v40 = 136315138;
            v42 = *v2;
            v43 = sub_268B385B4();
            v45 = sub_26892CDB8(v43, v44, &v54);

            *(v40 + 4) = v45;
            _os_log_impl(&dword_2688BB000, v38, v39, "Unable to determine setting name for task %s", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v41);
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();
          }

          (*(v36 + 8))(v37, v34);
          return 3;
        }

        OUTLINED_FUNCTION_11_9(v25);
        OUTLINED_FUNCTION_11_9(v28);
        (*(v53 + 8))(v1, v9);
LABEL_16:
        sub_2688EF38C(v19, &qword_2802A6578, &qword_268B3FA60);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_11_9(v25);
      OUTLINED_FUNCTION_11_9(v28);
      OUTLINED_FUNCTION_1_17(&v19[v32]);
      if (!v33)
      {
        goto LABEL_16;
      }

      sub_2688EF38C(v19, &qword_2802A6580, &qword_268B3FA68);
      return 0;
    default:
      return 3;
  }
}

uint64_t sub_268A14F30()
{
  if (!sub_268B36524())
  {
    return 0;
  }

  v0 = sub_2689BC188();

  if (v0 == 7)
  {
    return 0;
  }

  return v0;
}

uint64_t sub_268A14F8C@<X0>(char *a1@<X8>)
{
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_31();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v39 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v39 - v16;
  v18 = sub_268B36534();
  if (v39[1])
  {
    sub_268963658();
    if (v19)
    {
      if (qword_2802A4F30 != -1)
      {
        v19 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_1_14(v19, qword_2802CDA10);
      v20(v17);
      v21 = sub_268B37A34();
      v22 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v22))
      {
        v23 = OUTLINED_FUNCTION_14();
        *v23 = 0;
        _os_log_impl(&dword_2688BB000, v21, v22, "UsoTask_decreaseBy_common_Setting#shouldHandle Task is settings. Handling in controls", v23, 2u);
        OUTLINED_FUNCTION_12();
      }

      v24 = 2;
    }

    else
    {
      sub_2689633E8();
      if (v29)
      {
        if (qword_2802A4F30 != -1)
        {
          v29 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_14(v29, qword_2802CDA10);
        v30(v15);
        v31 = sub_268B37A34();
        v32 = sub_268B37F04();
        if (OUTLINED_FUNCTION_196(v32))
        {
          v33 = OUTLINED_FUNCTION_14();
          *v33 = 0;
          _os_log_impl(&dword_2688BB000, v31, v32, "UsoTask_increaseBy_common_Setting#shouldHandle Task is mediaPlayer. Handling in controls", v33, 2u);
          OUTLINED_FUNCTION_12();
        }

        v24 = 0;
        v17 = v15;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          v29 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_14(v29, qword_2802CDA10);
        v34(v12);
        v35 = sub_268B37A34();
        v36 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_196(v36))
        {
          v37 = OUTLINED_FUNCTION_14();
          *v37 = 0;
          _os_log_impl(&dword_2688BB000, v35, v36, "UsoTask_decreaseBy_common_Setting#shouldHandle Task is not setting: Not handling in controls", v37, 2u);
          OUTLINED_FUNCTION_12();
        }

        v24 = 3;
        v17 = v12;
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v18 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_1_14(v18, qword_2802CDA10);
    v25(v1);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v27))
    {
      v28 = OUTLINED_FUNCTION_14();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "UsoTask_decreaseBy_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v28, 2u);
      OUTLINED_FUNCTION_12();
    }

    v24 = 3;
    v17 = v1;
  }

  result = (*(v6 + 8))(v17, v3);
  *a1 = v24;
  return result;
}

uint64_t sub_268A153AC(uint64_t a1)
{
  result = sub_268A15988(&qword_2802A70D0, MEMORY[0x277D5F150]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A154F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A15548(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A1559C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A155F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A15644(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A15698(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A156EC()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A15740(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A157A4()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A157F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A1585C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A158C0()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A15924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A15988(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_268A159F0()
{
  result = [objc_allocWithZone(type metadata accessor for SetShuffleStateIntentHandler()) init];
  qword_2802CD980 = result;
  return result;
}

uint64_t sub_268A15A24()
{
  v10 = sub_268B37F44();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268B37F34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268B37B14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v11 = MEMORY[0x277D84F90];
  sub_268A17730(&unk_2802A5890, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268B37F74();
  qword_2802CD988 = result;
  return result;
}

uint64_t sub_268A15C78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v2 = sub_268B35434();
  v3 = OUTLINED_FUNCTION_1(v2);
  v66 = v4;
  v67 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v65 = v8 - v7;
  v9 = sub_268B35494();
  v10 = OUTLINED_FUNCTION_1(v9);
  v70 = v11;
  v71 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v72 = v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v65 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v65 - v19;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v68 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v69 = &v65 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v65 - v31;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v34 = *(v24 + 16);
  v34(v32, v33, v21);
  v35 = sub_268B37A34();
  v36 = sub_268B37F04();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "SetShuffleStateFlowStrategy#actionForInput called", v37, 2u);
    OUTLINED_FUNCTION_12();
  }

  v38 = *(v24 + 8);
  v38(v32, v21);
  v39 = v75;
  v40 = v73;
  sub_268B35414();
  sub_26893BA8C(v39);
  v41 = type metadata accessor for MediaPlayerIntent();
  LODWORD(v39) = __swift_getEnumTagSinglePayload(v20, 1, v41);
  sub_2688C2E64(v20);
  if (v39 == 1)
  {
    v42 = v68;
    v34(v68, v33, v21);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "SetShuffleStateFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v45, 2u);
      OUTLINED_FUNCTION_12();
    }

    v38(v42, v21);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_4_10();
    return sub_268B34ED4();
  }

  else
  {
    v68 = (v24 + 8);
    v47 = v72;
    sub_268B35414();
    v49 = v70;
    v48 = v71;
    v50 = (*(v70 + 88))(v47, v71);
    if (v50 == *MEMORY[0x277D5C128] || v50 == *MEMORY[0x277D5C150] || v50 == *MEMORY[0x277D5C160])
    {
      (*(v49 + 8))(v47, v48);
      return sub_268B34EC4();
    }

    else
    {
      v34(v69, v33, v21);
      v53 = v65;
      v54 = v66;
      v55 = v67;
      (*(v66 + 16))(v65, v40, v67);
      v56 = sub_268B37A34();
      v57 = sub_268B37EE4();
      if (os_log_type_enabled(v56, v57))
      {
        v59 = v53;
        v60 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v76 = v73;
        *v60 = 136315138;
        sub_268B35414();
        v61 = sub_268B37C24();
        v63 = v62;
        (*(v54 + 8))(v59, v55);
        v64 = sub_26892CDB8(v61, v63, &v76);
        v48 = v71;

        *(v60 + 4) = v64;
        _os_log_impl(&dword_2688BB000, v56, v57, "SetShuffleStateFlowStrategy#actionForInput received no valid parse %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        v49 = v70;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v54 + 8))(v53, v55);
      }

      v38(v69, v21);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_1_37();
      OUTLINED_FUNCTION_4_10();
      sub_268B34ED4();
      return (*(v49 + 8))(v72, v48);
    }
  }
}

uint64_t sub_268A162FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v41 = a3;
  v42 = a2;
  v5 = sub_268B37AB4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v47 = v7;
  v48 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = sub_268B37B14();
  v14 = OUTLINED_FUNCTION_1(v13);
  v45 = v15;
  v46 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = sub_268B35494();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4E58 != -1)
  {
    swift_once();
  }

  v40 = qword_2802CD988;
  (*(v24 + 16))(&v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v26 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v24 + 32))(v31 + v28, v27, v21);
  v32 = (v31 + v29);
  v33 = v42;
  v35 = v43;
  v34 = v44;
  *v32 = v41;
  v32[1] = v34;
  *(v31 + v30) = v33;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_268A17624;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_6;
  v36 = _Block_copy(aBlock);
  v37 = v33;

  sub_268B37AE4();
  v49 = MEMORY[0x277D84F90];
  sub_268A17730(&unk_2802A7010, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v38 = v48;
  sub_268B38124();
  MEMORY[0x26D625950](0, v20, v12, v36);
  _Block_release(v36);
  (*(v47 + 8))(v12, v38);
  (*(v45 + 8))(v20, v46);
}

void sub_268A166C4(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t *a4, void *a5)
{
  v67 = a5;
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v69 = a1;
  v71 = sub_268B35494();
  v75 = *(v71 - 8);
  v5 = *(v75 + 64);
  v6 = MEMORY[0x28223BE20](v71);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v63 - v12;
  v68 = type metadata accessor for MediaPlayerIntent();
  v14 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v70 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v63 = v18[2];
  v64 = v24;
  v63(v23);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v30 = v9;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "SetShuffleStateFlowStrategy#makeIntentFromParse called", v31, 2u);
    v32 = v31;
    v9 = v30;
    v18 = v29;
    v17 = v28;
    v16 = v27;
    MEMORY[0x26D6266E0](v32, -1, -1);
  }

  v65 = v18[1];
  v65(v23, v17);
  v33 = *(v75 + 16);
  v34 = v69;
  v35 = v71;
  v33(v9, v69, v71);
  sub_26893BC0C(v9, 1, v36, v37, v38, v39, v40, v41, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  if (__swift_getEnumTagSinglePayload(v13, 1, v68) == 1)
  {
    sub_2688C2E64(v13);
    (v63)(v70, v64, v17);
    v42 = v66;
    v33(v66, v34, v35);
    v43 = v35;
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v76 = v74;
      *v46 = 136315138;
      v33(v9, v42, v43);
      v47 = sub_268B37C24();
      v49 = v48;
      (*(v75 + 8))(v42, v43);
      v50 = sub_26892CDB8(v47, v49, &v76);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v44, v45, "SetShuffleStateFlowStrategy#makeIntentFromParse received unexpected parse: %s", v46, 0xCu);
      v51 = v74;
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x26D6266E0](v51, -1, -1);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    else
    {

      (*(v75 + 8))(v42, v35);
    }

    v65(v70, v17);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
    sub_2688C2ECC();
    v53 = swift_allocError();
    *v54 = 85;
    v72(v53, 1);
  }

  else
  {
    sub_2688C0464(v13, v16);
    if (v74)
    {
      v52 = v74;
    }

    else
    {
      v52 = [objc_allocWithZone(type metadata accessor for SetShuffleStateIntent()) init];
    }

    v55 = v74;
    sub_2689CA4AC(v16);
    v56 = v67;
    v57 = v67[5];
    v58 = v67[6];
    __swift_project_boxed_opaque_existential_1(v67 + 2, v57);
    v59 = v16;
    v60 = swift_allocObject();
    v61 = v73;
    v60[2] = v72;
    v60[3] = v61;
    v60[4] = v52;
    v62 = v52;

    sub_268AD35F4(v62, &off_287953BC8, (v56 + 7), sub_268A17724, v60, v57, v58);

    sub_2688C2F6C(v59);
  }
}

uint64_t sub_268A16D68(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "Finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_268A16F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A16FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268A1703C()
{
  if (qword_2802A4E50 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD980;

  return v1;
}

uint64_t sub_268A17098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A17104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A17170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A171DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A1722C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A17280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A172EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A17368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetShuffleStateFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A174BC(uint64_t a1, uint64_t a2)
{
  result = sub_268A17730(&qword_2802A70F0, a2, type metadata accessor for SetShuffleStateFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A1755C()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

void sub_268A17624()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = *(v5 + 8);

  sub_268A166C4(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A176E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268A17730(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

Swift::String_optional __swiftcall UsoTask_enableSetting_common_MediaItem.verb()()
{
  if (sub_268A1781C() == 3)
  {
    v0 = UsoTask_enableSetting_common_MediaItem.referencedSetting()();
    if (v0)
    {
      sub_268962A68();
      v2 = v1;
      v3 = v1;

      if (v3 != 24)
      {
        v0 = sub_26893E3F8(v2);
        goto LABEL_8;
      }

      v0 = 0;
    }

    v4 = 0;
  }

  else
  {
    v4 = 0xE300000000000000;
    v0 = 7628147;
  }

LABEL_8:
  result.value._object = v4;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268A1781C()
{
  if ((sub_268A9D228() & 0xFE) != 0)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t UsoTask_enableSetting_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_268A178DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D00, &unk_268B51080);
  v0 = OUTLINED_FUNCTION_14_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_268A17924()
{
  v0 = sub_268A9D228();
  if (v0 == 1)
  {
    v1 = 6;
  }

  else
  {
    v1 = 7;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_268A17958()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
  inited = swift_initStackObject();
  inited[1] = xmmword_268B3BBD0;
  inited[2] = xmmword_268B3F0D0;
  inited[3] = xmmword_268B3F0E0;
  UsoTask_enableSetting_common_MediaItem.verb()();
  v1 = sub_268ACD0C0();
  swift_setDeallocating();
  sub_268ACE6C0();

  if (v1)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_268A17A28()
{
  if (UsoTask_enableSetting_common_MediaItem.referencedSetting()())
  {
    sub_268964750();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);
    v1 = OUTLINED_FUNCTION_14_7();

    return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  }
}

uint64_t UsoTask_enableSetting_common_MediaItem.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = UsoTask_enableSetting_common_MediaItem.referencedSetting()();
  if (v16)
  {
    sub_2689633E8();
    if (v17)
    {
      if (qword_2802A4F30 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_1_14(v17, qword_2802CDA10);
      v18(v15);
      v19 = sub_268B37A34();
      v20 = sub_268B37F04();
      if (OUTLINED_FUNCTION_196(v20))
      {
        v21 = OUTLINED_FUNCTION_14();
        *v21 = 0;
        _os_log_impl(&dword_2688BB000, v19, v20, "UsoTask_enableSetting_common_MediaItem#shouldHandle Task is mediaPlayer. Handling in controls", v21, 2u);
        OUTLINED_FUNCTION_12();
      }

      v22 = 0;
    }

    else
    {
      sub_268963658();
      if (v27)
      {
        if (qword_2802A4F30 != -1)
        {
          v27 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_14(v27, qword_2802CDA10);
        v28(v13);
        v29 = sub_268B37A34();
        v30 = sub_268B37F04();
        if (OUTLINED_FUNCTION_196(v30))
        {
          v31 = OUTLINED_FUNCTION_14();
          *v31 = 0;
          _os_log_impl(&dword_2688BB000, v29, v30, "UsoTask_enableSetting_common_MediaItem#shouldHandle Task is settings. Handling in controls", v31, 2u);
          OUTLINED_FUNCTION_12();
        }

        v22 = 2;
        v15 = v13;
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          v27 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_1_14(v27, qword_2802CDA10);
        v32(v10);
        v33 = sub_268B37A34();
        v34 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_196(v34))
        {
          v35 = OUTLINED_FUNCTION_14();
          *v35 = 0;
          _os_log_impl(&dword_2688BB000, v33, v34, "UsoTask_enableSetting_common_MediaItem#shouldHandle Task is not mediaPlayer/setting: Not handling in controls", v35, 2u);
          OUTLINED_FUNCTION_12();
        }

        v22 = 3;
        v15 = v10;
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v16 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_1_14(v16, qword_2802CDA10);
    v23(v7);
    v24 = sub_268B37A34();
    v25 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_196(v25))
    {
      v26 = OUTLINED_FUNCTION_14();
      *v26 = 0;
      _os_log_impl(&dword_2688BB000, v24, v25, "UsoTask_enableSetting_common_MediaItem#shouldHandle no referenced setting found in task. Not handling in Controls", v26, 2u);
      OUTLINED_FUNCTION_12();
    }

    v22 = 3;
    v15 = v7;
  }

  result = (*(v3 + 8))(v15, v2);
  *a1 = v22;
  return result;
}

uint64_t sub_268A17FFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A18050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A180A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A180F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A1814C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A181A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A181F4()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A18248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A182AC()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A18300(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A18364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A183C8()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A1842C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A18490(uint64_t a1)
{
  result = sub_268A1853C(&qword_2802A7108);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A1853C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B364C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A18584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_268B366C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_268A185F0()
{
  if (qword_2802A4EA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_268A1864C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7178, &qword_268B442C8);
  OUTLINED_FUNCTION_245(v0);
  result = OUTLINED_FUNCTION_1_38();
  qword_2802A7120 = result;
  return result;
}

uint64_t sub_268A18698()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7198, &qword_268B442E8);
  OUTLINED_FUNCTION_245(v0);
  result = OUTLINED_FUNCTION_1_38();
  qword_2802A7128 = result;
  return result;
}

uint64_t sub_268A186E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71A0, qword_268B442F0);
  OUTLINED_FUNCTION_245(v0);
  result = OUTLINED_FUNCTION_1_38();
  qword_2802A7130 = result;
  return result;
}

uint64_t sub_268A18730()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7190, &qword_268B442E0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A7138 = result;
  return result;
}

uint64_t sub_268A18784()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7188, &qword_268B442D8);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A7140 = result;
  return result;
}

uint64_t sub_268A187D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A7148 = result;
  return result;
}

uint64_t sub_268A1882C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7180, &qword_268B442D0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13();
  qword_2802A7150 = result;
  return result;
}

uint64_t sub_268A18894(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268A188F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SettingNLv3Intent()
{
  result = qword_2802A71A8;
  if (!qword_2802A71A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A18988()
{
  result = sub_268B366C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268A189F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3E990;
  if (qword_2802A4E68 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A7128;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7198, &qword_268B442E8);
  *(v0 + 64) = sub_268A19C14(&qword_2802A7210, &qword_2802A7198, &qword_268B442E8);
  *(v0 + 32) = v1;
  v2 = qword_2802A4E70;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_2802A7130;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71A0, qword_268B442F0);
  *(v0 + 104) = sub_268A19C14(&qword_2802A7218, &qword_2802A71A0, qword_268B442F0);
  *(v0 + 72) = v3;
  v4 = qword_2802A4E78;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2802A7138;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7190, &qword_268B442E0);
  *(v0 + 144) = sub_268A19C14(&qword_2802A7220, &qword_2802A7190, &qword_268B442E0);
  *(v0 + 112) = v5;
  v6 = qword_2802A4E80;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2802A7140;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7188, &qword_268B442D8);
  *(v0 + 184) = sub_268A19C14(&qword_2802A7228, &qword_2802A7188, &qword_268B442D8);
  *(v0 + 152) = v7;
  v8 = qword_2802A4E90;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2802A7150;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7180, &qword_268B442D0);
  *(v0 + 224) = sub_268A19C14(&qword_2802A7230, &qword_2802A7180, &qword_268B442D0);
  *(v0 + 192) = v9;
  v10 = sub_268B356D4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  result = sub_268B356C4();
  qword_2802A7158 = result;
  return result;
}

uint64_t sub_268A18D00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3BBC0;
  if (qword_2802A4E98 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A7158;
  v2 = sub_268B356D4();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  swift_allocObject();

  result = sub_268B356C4();
  qword_2802A7160 = result;
  return result;
}

uint64_t sub_268A18DF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B442B0;
  if (qword_2802A4EA0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A7160;
  v2 = sub_268B356D4();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_2802A4E60;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2802A7120;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7178, &qword_268B442C8);
  *(v0 + 104) = sub_268A19C14(&qword_2802A71E0, &qword_2802A7178, &qword_268B442C8);
  *(v0 + 72) = v5;
  v6 = qword_2802A4E88;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2802A7148;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  *(v0 + 144) = sub_268A19C14(&qword_2802A71E8, &qword_2802A7170, &qword_268B442C0);
  *(v0 + 112) = v7;
  v8 = qword_2802A4DC8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2802A69D0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  *(v0 + 176) = v10;
  v11 = sub_268A19C14(&qword_2802A71F0, &qword_2802A6A88, &unk_268B414B0);
  *(v0 + 184) = v11;
  *(v0 + 152) = v9;
  v12 = qword_2802A4D88;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2802A6990;
  *(v0 + 216) = v10;
  *(v0 + 224) = v11;
  *(v0 + 192) = v13;
  v14 = qword_2802A4D90;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_2802A6998;
  *(v0 + 256) = v10;
  *(v0 + 264) = v11;
  *(v0 + 232) = v15;
  v16 = qword_2802A4D98;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_2802A69A0;
  *(v0 + 296) = v10;
  *(v0 + 304) = v11;
  *(v0 + 272) = v17;
  v18 = qword_2802A4DA0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_2802A69A8;
  *(v0 + 336) = v10;
  *(v0 + 344) = v11;
  *(v0 + 312) = v19;
  v20 = qword_2802A4DA8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_2802A69B0;
  *(v0 + 376) = v10;
  *(v0 + 384) = v11;
  *(v0 + 352) = v21;
  v22 = qword_2802A4DB0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_2802A69B8;
  *(v0 + 416) = v10;
  *(v0 + 424) = v11;
  *(v0 + 392) = v23;
  v24 = qword_2802A4DB8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_2802A69C0;
  *(v0 + 456) = v10;
  *(v0 + 464) = v11;
  *(v0 + 432) = v25;
  v26 = qword_2802A4DC0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_2802A69C8;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AA0, &unk_268B4B530);
  *(v0 + 504) = sub_268A19C14(&qword_2802A71F8, &qword_2802A6AA0, &unk_268B4B530);
  *(v0 + 472) = v27;
  v28 = qword_2802A4DD0;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_2802A69D8;
  *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A98, &unk_268B414C0);
  *(v0 + 544) = sub_268A19C14(&qword_2802A7200, &qword_2802A6A98, &unk_268B414C0);
  *(v0 + 512) = v29;
  v30 = qword_2802A4DD8;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_2802A69E0;
  *(v0 + 576) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A90, &qword_268B4B540);
  *(v0 + 584) = sub_268A19C14(&qword_2802A7208, &qword_2802A6A90, &qword_268B4B540);
  *(v0 + 552) = v31;
  v32 = sub_268B35774();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  result = sub_268B35764();
  qword_2802A7168 = result;
  return result;
}

uint64_t sub_268A193B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_268B37A54();
  v4 = OUTLINED_FUNCTION_1(v3);
  v68 = v5;
  v69 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v71 = v9 - v8;
  v10 = sub_268B35494();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v65 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v67 = &v61[-v19];
  MEMORY[0x28223BE20](v18);
  v21 = &v61[-v20];
  v22 = sub_268B366C4();
  v23 = OUTLINED_FUNCTION_1(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v30 = (v29 - v28);
  v70 = type metadata accessor for SettingNLv3Intent();
  v31 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_1_0();
  v34 = v33 - v32;
  v66 = *(v13 + 16);
  v66(v21, a1, v10);
  v35 = (*(v13 + 88))(v21, v10);
  v36 = *(v13 + 8);
  if (v35 == *MEMORY[0x277D5C128])
  {
    v36(a1, v10);
    (*(v13 + 96))(v21, v10);
    v37 = *(v25 + 32);
    v37(v30, v21, v22);
    v37(v34, v30, v22);
    v38 = v72;
    sub_268A19C68(v34, v72);
    v39 = 0;
    v40 = v38;
  }

  else
  {
    v64 = *(v13 + 8);
    v36(v21, v10);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = v69;
    v42 = __swift_project_value_buffer(v69, qword_2802CDA10);
    v43 = v68;
    (*(v68 + 16))(v71, v42, v41);
    v44 = v67;
    v45 = v66;
    v66(v67, a1, v10);
    v46 = sub_268B37A34();
    v47 = sub_268B37F04();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v63 = a1;
      v49 = v48;
      v50 = swift_slowAlloc();
      v73 = v50;
      *v49 = 136315138;
      v62 = v47;
      v45(v65, v44, v10);
      v51 = sub_268B37C24();
      v53 = v52;
      v54 = v44;
      v55 = v64;
      v64(v54, v10);
      v56 = sub_26892CDB8(v51, v53, &v73);
      v57 = v43;
      v58 = v56;

      *(v49 + 4) = v58;
      _os_log_impl(&dword_2688BB000, v46, v62, "Unsupported parse while creating SettingNLIntent: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x26D6266E0](v50, -1, -1);
      MEMORY[0x26D6266E0](v49, -1, -1);

      v55(v63, v10);
      (*(v57 + 8))(v71, v69);
    }

    else
    {

      v59 = v64;
      v64(a1, v10);
      v59(v44, v10);
      (*(v43 + 8))(v71, v41);
    }

    v39 = 1;
    v40 = v72;
  }

  return __swift_storeEnumTagSinglePayload(v40, v39, 1, v70);
}

uint64_t sub_268A198E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268B366C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_268A1996C(uint64_t a1)
{
  v2 = sub_268A19BD0(&qword_2802A71C0);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268A199D4(uint64_t a1)
{
  v2 = sub_268A19BD0(&qword_2802A71C0);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_268A19A2C(uint64_t a1)
{
  v2 = sub_268A19BD0(&qword_2802A71C0);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_268A19ABC(uint64_t a1)
{
  result = sub_268A19BD0(&qword_2802A71B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A19B00(uint64_t a1)
{
  *(a1 + 8) = sub_268A19BD0(&qword_2802A71C0);
  result = sub_268A19BD0(&qword_2802A71C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268A19BD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SettingNLv3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A19C14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_268A19C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingNLv3Intent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_38()
{

  return sub_268B35784();
}

void sub_268A19CF0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MediaIntent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  sub_268A1A16C(a1);
  v16 = *(a1 + 16);
  if (v16)
  {
    v36 = *(a1 + 8);
    v37 = v13;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v17 = __swift_project_value_buffer(v8, qword_2802CDA10);
    (*(v9 + 16))(v15, v17, v8);
    v18 = sub_268B37A34();
    v19 = sub_268B37F04();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = a1;
      v21 = v7;
      v22 = v2;
      v23 = v20;
      *v20 = 0;
      _os_log_impl(&dword_2688BB000, v18, v19, "Found language in intent, mapping it to SiriKit intent", v20, 2u);
      v24 = v23;
      v2 = v22;
      v7 = v21;
      a1 = v35;
      MEMORY[0x26D6266E0](v24, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    type metadata accessor for LanguageOption();
    v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v26 = sub_26893A824(0, 0);
    v42 = v36;
    v43 = v16;
    v40 = 95;
    v41 = 0xE100000000000000;
    v38 = 45;
    v39 = 0xE100000000000000;
    sub_26895EF2C();
    v27 = sub_268B380B4();
    sub_268A1A108(v27, v28, v26);
    [v2 setLanguage_];

    v13 = v37;
  }

  sub_268A1A468();
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v29 = __swift_project_value_buffer(v8, qword_2802CDA10);
    (*(v9 + 16))(v13, v29, v8);
    v30 = sub_268B37A34();
    v31 = sub_268B37F04();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "Found home automation nodes, attempting to map them to SiriKit intent", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    sub_268932630(a1, v7);
    v33 = sub_268A91BFC(v7);
    [v2 setDevice_];
  }
}

void sub_268A1A108(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setLanguageTag_];
}

void sub_268A1A16C(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268932630(a1, v10);
  sub_268A1A468();
  v11 = sub_268B37854();
  sub_26895F7A8(v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v24);
      sub_26890C900(v24, v23);
      sub_268AC88F0(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      sub_268B38214();
      v14 = *(v25 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v25;
    v16 = off_28795BBD8;
    v17 = type metadata accessor for SetAudioLanguageIntent();
    v16(v15, v17, &off_28795BBC8);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Home Automation entities are empty, skip adding to intent.", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

unint64_t sub_268A1A468()
{
  result = qword_2802A59A8;
  if (!qword_2802A59A8)
  {
    type metadata accessor for MediaIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A59A8);
  }

  return result;
}

void sub_268A1A4C0(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7290, &qword_268B44568);
    v2 = OUTLINED_FUNCTION_27_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = a1[8];
  OUTLINED_FUNCTION_22_10();
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;

  v10 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = (a1[6] + 16 * v12);
    v14 = v13[1];
    v15 = *(a1[7] + 8 * v12);
    *&v34[0] = *v13;
    *(&v34[0] + 1) = v14;

    v15;
    swift_dynamicCast();
    sub_2688EA03C(0, &qword_2802A6258, 0x277D82BB8);
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_2688EF2B0(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_2688EF2B0(v33, v34);
    v16 = *(v2 + 40);
    v17 = sub_268B38144() & ~(-1 << *(v2 + 32));
    if (((-1 << v17) & ~*(v9 + 8 * (v17 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_32_8();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*(v9 + 8 * v18) != -1)
        {
          OUTLINED_FUNCTION_31_11();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_33_13();
LABEL_21:
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_30_11();
    *(v9 + v22) |= v23;
    v25 = *(v2 + 48) + 40 * v24;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    sub_2688EF2B0(v34, (*(v2 + 56) + 32 * v24));
    ++*(v2 + 16);
  }

  while (v7);
LABEL_8:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = a1[v11 + 8];
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_268A1A748(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7298, qword_268B44570);
    v2 = OUTLINED_FUNCTION_27_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = a1[8];
  OUTLINED_FUNCTION_22_10();
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_12:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (a1[6] + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a1[7] + 8 * v12);

    v17 = v16;
    v18 = sub_268A75754();
    v19 = v18;
    if (v20)
    {
      v21 = (v2[6] + 16 * v18);
      v22 = v21[1];
      *v21 = v15;
      v21[1] = v14;

      v23 = v2[7];
      v24 = *(v23 + 8 * v19);
      *(v23 + 8 * v19) = v17;

      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
      v25 = (v2[6] + 16 * v18);
      *v25 = v15;
      v25[1] = v14;
      *(v2[7] + 8 * v18) = v17;
      v26 = v2[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_20;
      }

      v2[2] = v28;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = a1[v10 + 8];
    ++v9;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_268A1A918(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7290, &qword_268B44568);
    v2 = OUTLINED_FUNCTION_27_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = a1[8];
  OUTLINED_FUNCTION_22_10();
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;

  v10 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = (a1[6] + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2688EF2C0(a1[7] + 32 * v12, v37);
    *&v36 = v15;
    *(&v36 + 1) = v14;
    v34[2] = v36;
    v35[0] = v37[0];
    v35[1] = v37[1];
    v34[0] = v36;

    swift_dynamicCast();
    sub_2688EF2B0(v35, v29);
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_2688EF2B0(v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_2688EF2B0(v33, v34);
    v16 = *(v2 + 40);
    v17 = sub_268B38144() & ~(-1 << *(v2 + 32));
    if (((-1 << v17) & ~*(v9 + 8 * (v17 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_32_8();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*(v9 + 8 * v18) != -1)
        {
          OUTLINED_FUNCTION_31_11();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_33_13();
LABEL_21:
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_30_11();
    *(v9 + v22) |= v23;
    v25 = *(v2 + 48) + 40 * v24;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    sub_2688EF2B0(v34, (*(v2 + 56) + 32 * v24));
    ++*(v2 + 16);
  }

  while (v7);
LABEL_8:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = a1[v11 + 8];
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_268A1AB98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7288, &qword_268B44560);
    v2 = sub_268B382D4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v24 = *(*(a1 + 56) + v11);

    swift_dynamicCast();
    sub_2688EF2B0(&v25, v27);
    sub_2688EF2B0(v27, v28);
    sub_2688EF2B0(v28, &v26);
    result = sub_268A75754();
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      result = sub_2688EF2B0(&v26, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_2688EF2B0(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_268A1ADD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = sub_268B35494();
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v49 - v30;
  v32 = type metadata accessor for MediaPlayerIntent();
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v38 = (v37 - v36);
  sub_268B35414();
  sub_26893BA8C(v25);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_2688C058C(v31, &qword_2802A5650, &unk_268B3BAC0);
  }

  else
  {
    sub_2688C0464(v31, v38);
    v39 = sub_268A1D6D4(v38);
    sub_2688C2F6C(v38);
    if (v39 != 2)
    {
      v45 = sub_268B35434();
      OUTLINED_FUNCTION_4(v45);
      (*(v46 + 16))(v18, a1, v45);
      v44 = 1;
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v45);
      v47 = OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_input;
      swift_beginAccess();
      sub_268A1DEDC(v18, v2 + v47);
      swift_endAccess();
      return v44;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v40 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v7 + 16))(v12, v40, v4);
  v41 = sub_268B37A34();
  v42 = sub_268B37EE4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "SetLyricsStateFlow#onInput not a valid SetLyricsState parse", v43, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v7 + 8))(v12, v4);
  return 0;
}