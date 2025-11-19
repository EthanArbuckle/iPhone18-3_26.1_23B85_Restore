uint64_t sub_26818BD7C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[4];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 24);
  v4 = OUTLINED_FUNCTION_9_10();
  v6 = v5(v4, v2);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_26818BE50;
  v8 = v0[7];
  v9 = v0[5];

  return sub_26818BFCC((v0 + 2), v8, v6 & 1, v9);
}

uint64_t sub_26818BE50()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_26818BF3C, 0, 0);
}

uint64_t sub_26818BF3C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[7];
  v0[3] = v0[2];
  sub_2683CBC28();
  sub_2683CBF28();

  v2 = OUTLINED_FUNCTION_1_16();

  return v3(v2);
}

uint64_t sub_26818BFCC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 664) = a4;
  *(v4 + 744) = a3;
  *(v4 + 656) = a2;
  *(v4 + 648) = a1;
  v5 = *(*(sub_2683CF238() - 8) + 64) + 15;
  *(v4 + 672) = swift_task_alloc();
  v6 = type metadata accessor for StringLocalizer();
  *(v4 + 680) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  v8 = sub_2683CBCE8();
  *(v4 + 704) = v8;
  v9 = *(v8 - 8);
  *(v4 + 712) = v9;
  *(v4 + 720) = *(v9 + 64);
  *(v4 + 728) = swift_task_alloc();
  *(v4 + 736) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26818C114, 0, 0);
}

uint64_t sub_26818C114()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 696);
  v3 = *(v0 + 664);
  *(v0 + 568) = &type metadata for NotebookUnlockDeviceStrategy;
  *(v0 + 576) = sub_26818DBD4();
  sub_2683CBCD8();
  __swift_destroy_boxed_opaque_existential_0((v0 + 544));

  v4 = sub_2683889B8();
  sub_2683CCC48();
  v5 = *(v0 + 616);
  __swift_project_boxed_opaque_existential_1((v0 + 584), *(v0 + 608));
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0((v0 + 584));
  if (qword_28024C8D0 != -1)
  {
    OUTLINED_FUNCTION_7_10();
  }

  v6 = *(v0 + 736);
  v30 = v6;
  v36 = *(v0 + 728);
  v7 = *(v0 + 712);
  v32 = *(v0 + 696);
  v33 = *(v0 + 688);
  v8 = *(v0 + 672);
  v9 = *(v0 + 664);
  v27 = *(v0 + 744);
  v28 = *(v0 + 720);
  v29 = *(v0 + 656);
  v34 = *(v0 + 648);
  v35 = *(v0 + 704);
  v10 = qword_28027C938;
  *(v32 + *(*(v0 + 680) + 20)) = qword_28027C938;
  sub_26818EDD8(v32, v33, type metadata accessor for StringLocalizer);
  v11 = v10;
  v31 = sub_26819251C(v4, v33);
  sub_26818F054(v32, type metadata accessor for StringLocalizer);
  type metadata accessor for NotebookReadingCATsSimple();
  sub_2683CF228();
  OUTLINED_FUNCTION_14_9();
  v12 = sub_2683CF198();
  sub_2683CCC48();
  *(v0 + 128) = &type metadata for NotebookFeatureManager;
  *(v0 + 136) = &protocol witness table for NotebookFeatureManager;
  v13 = sub_2683CC548();
  OUTLINED_FUNCTION_42_3(v13);
  v14 = sub_2683CC538();
  v15 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(v0 + 176) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v0 + 184) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v16 = swift_allocObject();
  *(v0 + 152) = v16;
  v16[6] = &unk_28790DB70;
  v16[7] = &off_28790DB88;
  v16[3] = v15;
  v16[2] = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  *(v0 + 16) = xmmword_2683D6670;
  *(v0 + 32) = xmmword_2683D6680;
  *(v0 + 48) = v12;
  *(v0 + 96) = v27;
  *(v0 + 144) = v14;
  (*(v7 + 16))(v36, v6, v35);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v36, v35);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26818DC28;
  *(v19 + 24) = v18;
  sub_26818DDAC(v0 + 16, v0 + 192);
  v20 = swift_allocObject();
  v20[2] = v29;
  memcpy(v20 + 3, (v0 + 192), 0xB0uLL);
  v20[25] = v9;
  sub_26818DDAC(v0 + 16, v0 + 368);
  v21 = swift_allocObject();
  memcpy((v21 + 16), (v0 + 368), 0xB0uLL);
  _s15RchThenReadFlowCMa();
  OUTLINED_FUNCTION_12_9();
  swift_allocObject();
  *(v0 + 624) = sub_268194218(&unk_2683D6710, v19, &unk_2683D6720, v31, &unk_2683D6730, v20, &unk_2683D6740, v21);

  v22 = v29;
  *(v0 + 632) = sub_26818FF98(v9, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
  sub_26818DF50();
  sub_26818A0C8(&qword_28024E2F8, &qword_28024DF18, &unk_2683D5B80);
  v23 = sub_2683CBF68();

  *(v0 + 640) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF08, &unk_2683D6750);
  sub_26818A0C8(&qword_28024DF10, &qword_28024DF08, &unk_2683D6750);
  v24 = sub_2683CBF28();

  sub_26818DFA8(v0 + 16);
  (*(v7 + 8))(v30, v35);
  *v34 = v24;

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_26818C6D0(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_26818C754()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D2250;
  v0[2] = v1;
  sub_2683CBC18();
  *(v2 + 32) = sub_2683CBF28();
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_26818C808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26818C8B4;

  return sub_26818DFFC(a1, a2, a3);
}

uint64_t sub_26818C8B4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1_16();

  return v6(v5);
}

uint64_t sub_26818C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a3;
  v4[28] = a4;
  v4[25] = a1;
  v4[26] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v7 = *(v6 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26818CA74, 0, 0);
}

uint64_t sub_26818CA74()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  sub_26832A218();
  if (v4)
  {
    v6 = v0[31];
    v5 = v0[32];
    v7 = v0[30];
    v20 = v0[29];
    v8 = v0[27];
    v9 = v0[28];
    v10 = v0[25];
    v11 = v0[26];
    sub_268129504(0, &qword_28024D340, 0x277CD4058);
    sub_268129504(0, &qword_28024D348, 0x277CD4060);

    v12 = v11;
    v13 = v8;
    sub_2683CC838();
    sub_26818DDAC(v9, (v0 + 2));
    (*(v7 + 16))(v6, v5, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E300, &qword_2683D6760);
    OUTLINED_FUNCTION_42_3(v14);
    v0[24] = sub_26818D804((v0 + 2), v6);
    sub_26818A0C8(&qword_28024E308, &qword_28024E300, &qword_2683D6760);
    sub_2683CBF28();

    (*(v7 + 8))(v5, v20);
  }

  v16 = v0[31];
  v15 = v0[32];

  v17 = OUTLINED_FUNCTION_1_16();

  return v18(v17);
}

unint64_t sub_26818CC58(char a1)
{
  result = 0x657079546D657469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x746E65746E6F63;
      break;
    case 3:
      result = 0x737574617473;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x656D695465746164;
      break;
    case 7:
      result = 0x7261655365746164;
      break;
    case 8:
      result = 0x6F6972506B736174;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26818CD7C()
{
  sub_2683D0408();
  OUTLINED_FUNCTION_9_10();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26818CDC4()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_3(v3);
  *v4 = v5;
  v4[1] = sub_26818F620;

  return sub_26818B994(v2, v0 + 16);
}

uint64_t sub_26818CF0C(char a1)
{
  switch(a1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      v1 = OUTLINED_FUNCTION_19_4();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBE0 != -1)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      v1 = OUTLINED_FUNCTION_19_4();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBC0 != -1)
      {
LABEL_22:
        swift_once();
      }

LABEL_19:
      v2 = sub_2681E1F9C();
      goto LABEL_20;
    case 3:
    case 7:
    case 8:
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      v1 = OUTLINED_FUNCTION_19_4();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBF8 != -1)
      {
        swift_once();
      }

      v2 = sub_2681E20E4();
      goto LABEL_20;
    case 4:
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      v1 = OUTLINED_FUNCTION_19_4();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBB8 != -1)
      {
        swift_once();
      }

      v2 = sub_2681E1FB8();
      goto LABEL_20;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_19_11();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D2890;
      if (qword_28024CBA0 != -1)
      {
        swift_once();
      }

      *(v1 + 32) = sub_2681E20C8();
      *(v1 + 40) = v4;
      if (qword_28024CBA8 != -1)
      {
        swift_once();
      }

      *(v1 + 48) = sub_2681E20C8();
      *(v1 + 56) = v5;
      return v1;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      v1 = OUTLINED_FUNCTION_19_4();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CB70 != -1)
      {
        swift_once();
      }

      v2 = sub_2681E1E58();
LABEL_20:
      *(v1 + 32) = v2;
      *(v1 + 40) = v3;
      return v1;
  }
}

uint64_t sub_26818D208(uint64_t a1, char a2)
{
  sub_26818F510(a1, v56, &qword_28024E370, &unk_2683D9AA0);
  if (!v57)
  {
    goto LABEL_33;
  }

  sub_26818F510(v56, v55, &qword_28024E370, &unk_2683D9AA0);
  sub_2683CDE68();
  if (OUTLINED_FUNCTION_0_22())
  {
LABEL_3:
    OUTLINED_FUNCTION_15_11();
    sub_2683CD8F8();
LABEL_4:

    v12 = OUTLINED_FUNCTION_11_14(v4, v5, v6, v7, v8, v9, v10, v11, v49, v50, v51, v52, v53, v54);
    v14 = sub_26818D64C(v12, v13);
    goto LABEL_11;
  }

  sub_2683CDAD8();
  if (OUTLINED_FUNCTION_0_22())
  {
    goto LABEL_6;
  }

  sub_2683CE0D8();
  if (OUTLINED_FUNCTION_0_22())
  {
    goto LABEL_9;
  }

  sub_2683CD9D8();
  if (OUTLINED_FUNCTION_0_22())
  {
    goto LABEL_3;
  }

  sub_2683CD728();
  if (OUTLINED_FUNCTION_0_22())
  {
    goto LABEL_6;
  }

  sub_2683CDD98();
  if (OUTLINED_FUNCTION_0_22())
  {
LABEL_9:
    OUTLINED_FUNCTION_15_11();
    sub_2683CD8F8();
LABEL_10:

    v33 = OUTLINED_FUNCTION_11_14(v25, v26, v27, v28, v29, v30, v31, v32, v49, v50, v51, v52, v53, v54);
    v14 = sub_26818D72C(v33, v34);
    goto LABEL_11;
  }

  sub_2683CDEE8();
  if (OUTLINED_FUNCTION_0_22())
  {
LABEL_6:
    OUTLINED_FUNCTION_15_11();
    sub_2683CD8F8();
LABEL_7:

    v23 = OUTLINED_FUNCTION_11_14(v15, v16, v17, v18, v19, v20, v21, v22, v49, v50, v51, v52, v53, v54);
    v14 = sub_26818D6E4(v23, v24);
    goto LABEL_11;
  }

  sub_2683CE108();
  if (OUTLINED_FUNCTION_0_22())
  {
    goto LABEL_3;
  }

  sub_2683CE208();
  if (OUTLINED_FUNCTION_0_22())
  {
    goto LABEL_9;
  }

  sub_2683CD948();
  if (OUTLINED_FUNCTION_0_22())
  {
    OUTLINED_FUNCTION_15_11();
    sub_2683CDDC8();
    goto LABEL_7;
  }

  sub_2683CDC88();
  if (OUTLINED_FUNCTION_0_22())
  {
    OUTLINED_FUNCTION_15_11();
    sub_2683CDDC8();
    goto LABEL_4;
  }

  sub_2683CDF48();
  if (OUTLINED_FUNCTION_0_22())
  {
    OUTLINED_FUNCTION_15_11();
    sub_2683CDDC8();
    goto LABEL_10;
  }

  sub_2683CD8D8();
  if (OUTLINED_FUNCTION_0_22() || (sub_2683CDBC8(), OUTLINED_FUNCTION_0_22()) || (sub_2683CDF28(), OUTLINED_FUNCTION_0_22()) || (sub_2683CD938(), OUTLINED_FUNCTION_0_22()))
  {

    sub_2683CCFF8();

    if (!v54)
    {

      v35 = 0;
      goto LABEL_12;
    }

    v14 = sub_2683CD1A8();
LABEL_11:
    v35 = v14;

LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(v55);
    goto LABEL_39;
  }

  __swift_destroy_boxed_opaque_existential_0(v55);
LABEL_33:
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v36 = sub_2683CF7E8();
  __swift_project_value_buffer(v36, qword_28027C958);
  sub_26818F56C(a1, v55);
  v37 = sub_2683CF7C8();
  v38 = sub_2683CFE78();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v54 = v40;
    *v39 = 136315394;
    v41 = sub_26818CC58(a2);
    v43 = sub_2681610A0(v41, v42, &v54);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    sub_26818F510(v55, &v50, &qword_28024E370, &unk_2683D9AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
    v44 = sub_2683CFAD8();
    v46 = v45;
    sub_26818F5C8(v55);
    v47 = sub_2681610A0(v44, v46, &v54);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_2680EB000, v37, v38, "[SFNI resolveSelectedEntity] Unable to resolve entity for %s from intent %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v40, -1, -1);
    MEMORY[0x26D617A40](v39, -1, -1);
  }

  else
  {

    sub_26818F5C8(v55);
  }

  v35 = 0;
LABEL_39:
  sub_26812D9E0(v56, &qword_28024E370, &unk_2683D9AA0);
  return v35;
}

uint64_t sub_26818D64C(uint64_t a1, char a2)
{
  if (a2 == 6)
  {
    if (a1)
    {
      v2 = sub_2683CD7C8();
      if (!v2)
      {
        return v2;
      }

      v3 = sub_2683CDA58();

      if (v3)
      {

        v2 = sub_2683CD1A8();

        return v2;
      }
    }

    return 0;
  }

  if (a2 != 1 || !a1)
  {
    return 0;
  }

  return sub_2683CD1A8();
}

uint64_t sub_26818D6E4(uint64_t result, char a2)
{
  if (a2 != 2 && a2 != 1)
  {
    return 0;
  }

  if (result)
  {
    return sub_2683CD1A8();
  }

  return result;
}

uint64_t sub_26818D72C(uint64_t a1, char a2)
{
  if (a2 != 1 || a1 == 0)
  {
    return 0;
  }

  else
  {
    return sub_2683CD1A8();
  }
}

uint64_t sub_26818D790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26818CD7C();
  *a2 = result;
  return result;
}

unint64_t sub_26818D7C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26818CC58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26818D804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_26818DDAC(a1, v3 + 32);
  v6 = *(*v3 + 120);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3 + v6, a2, v7);
  v9 = sub_2683CC818();
  v10 = [v9 notes];
  if (v10)
  {
    v11 = v10;
    sub_268129504(0, &qword_28024D350, 0x277CD3E00);
    v12 = sub_2683CFCA8();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(*v3 + 128);
  *(v3 + v13) = v12;
  v14 = [v9 taskLists];
  if (v14)
  {
    v15 = v14;
    sub_268129504(0, &qword_280253320, 0x277CD4228);
    v16 = sub_2683CFCA8();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = *(*v3 + 136);
  *(v3 + v17) = v16;
  v18 = [v9 tasks];
  if (v18)
  {
    v19 = v18;
    sub_268129504(0, &qword_280253310, 0x277CD4220);
    v20 = sub_2683CFCA8();
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  *(v3 + *(*v3 + 144)) = v20;
  *(v3 + 16) = 0;
  *(v3 + 24) = 3;
  if (sub_2683ABE58(*(v3 + v13)))
  {

    v21 = 1;
  }

  else
  {
    swift_beginAccess();
    v22 = sub_268229348(*(v3 + v17));

    v21 = v22 > 1;
  }

  (*(v8 + 8))(a2, v7);
  sub_26818DFA8(a1);
  *(v3 + 208) = v21;
  return v3;
}

uint64_t sub_26818DB48()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_3(v3);
  *v4 = v5;
  v4[1] = sub_26813D0C0;
  v6 = OUTLINED_FUNCTION_9_0();

  return sub_26818BB70(v6, v7);
}

unint64_t sub_26818DBD4()
{
  result = qword_28024E2E8;
  if (!qword_28024E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E2E8);
  }

  return result;
}

uint64_t sub_26818DC28()
{
  v1 = *(sub_2683CBCE8() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2683CBC98();
}

uint64_t sub_26818DC84()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_3(v3);
  *v4 = v5;
  v4[1] = sub_26818C8B4;
  v6 = OUTLINED_FUNCTION_9_0();

  return v7(v6);
}

uint64_t sub_26818DD24()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_6_3(v1);
  *v2 = v3;
  v2[1] = sub_26818F620;

  return sub_26818C734(v0);
}

uint64_t sub_26818DE08()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);
  v2 = *(v0 + 200);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_3(v3);
  *v4 = v5;
  v4[1] = sub_26818F620;

  return sub_26818C808(v1, v0 + 24, v2);
}

uint64_t sub_26818DEA8()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6_3(v7);
  *v8 = v9;
  v8[1] = sub_26818F620;

  return sub_26818C998(v6, v4, v2, v0 + 16);
}

unint64_t sub_26818DF50()
{
  result = qword_28024E2F0;
  if (!qword_28024E2F0)
  {
    _s15RchThenReadFlowCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E2F0);
  }

  return result;
}

uint64_t sub_26818DFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[267] = a3;
  v3[266] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E310, &qword_2683D6770);
  v3[268] = v5;
  v6 = *(v5 - 8);
  v3[269] = v6;
  v7 = *(v6 + 64) + 15;
  v3[270] = swift_task_alloc();
  v8 = type metadata accessor for SnippetFormatter();
  v3[271] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[272] = swift_task_alloc();
  v10 = *(*(sub_2683CF238() - 8) + 64) + 15;
  v3[273] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E318, &qword_2683D6778);
  v3[274] = v11;
  v12 = *(v11 - 8);
  v3[275] = v12;
  v13 = *(v12 + 64) + 15;
  v3[276] = swift_task_alloc();
  v3[277] = swift_task_alloc();
  v3[235] = &_s15ReadingStrategyVN;
  v3[236] = &off_2879095B8;
  v14 = swift_allocObject();
  v3[232] = v14;
  sub_26818DDAC(a2, v14 + 16);

  return MEMORY[0x2822009F8](sub_26818E1DC, 0, 0);
}

uint64_t sub_26818E1DC()
{
  v36 = *(v0 + 2216);
  v40 = *(v0 + 2200);
  v41 = *(v0 + 2208);
  v38 = *(v0 + 2192);
  v1 = *(v0 + 2184);
  v2 = *(v0 + 2176);
  v3 = *(v0 + 2168);
  v42 = *(v0 + 2160);
  v44 = *(v0 + 2144);
  v45 = *(v0 + 2152);
  v39 = *(v0 + 2136);
  v43 = *(v0 + 2128);
  *(v0 + 1720) = &type metadata for SiriKitExecutionProvider;
  *(v0 + 1728) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v4 = swift_allocObject();
  *(v0 + 1696) = v4;
  *(v4 + 40) = &type metadata for NotebookFeatureManager;
  *(v4 + 48) = &protocol witness table for NotebookFeatureManager;
  *(v0 + 1736) = sub_268372484;
  *(v0 + 1744) = 0;
  sub_2683CCC48();
  type metadata accessor for SearchForNotebookItemsV2CATs();
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_14_9();
  v37 = sub_2683CF0B8();
  type metadata accessor for SearchForNotebookItemsV2CATsSimple();
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_14_9();
  v46 = sub_2683CF198();
  type metadata accessor for NotebookBaseCATs();
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_14_9();
  v5 = sub_2683CF0B8();
  type metadata accessor for NotebookLabelsV2CATs();
  OUTLINED_FUNCTION_16_13();
  v6 = sub_2683CF0B8();
  *(v0 + 1960) = &type metadata for TCCTemplateProvider;
  *(v0 + 1968) = &off_287902CB8;
  v7 = sub_2683CC548();
  v8 = OUTLINED_FUNCTION_42_3(v7);
  sub_2683CC538();
  type metadata accessor for SearchForNotebookItemsCATPatternsExecutor();
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_14_9();
  v9 = sub_2683CF0B8();
  *(v0 + 2000) = v8;
  *(v0 + 2008) = &off_2879014F0;
  *(v0 + 1976) = v9;
  *(v0 + 2040) = &type metadata for NotebookFeatureManager;
  *(v0 + 2048) = &protocol witness table for NotebookFeatureManager;
  sub_26813CA00(v0 + 1856, v0 + 2056);
  v47 = sub_268129504(0, &qword_28024D340, 0x277CD4058);
  sub_268129504(0, &qword_28024D348, 0x277CD4060);
  sub_2683CBEB8();
  v10 = *(v0 + 1928);
  __swift_project_boxed_opaque_existential_1((v0 + 1896), *(v0 + 1920));
  v11 = v3[7];

  sub_2683CC088();
  *v2 = v5;
  v2[1] = v6;
  v2[2] = 0;
  v12 = v3[8];
  *(v2 + v12) = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v13 = v3[9];
  sub_2683CB768();
  sub_26813CA00(v0 + 1896, v0 + 1384);
  sub_26813CA00(v0 + 1936, v0 + 1432);
  *(v0 + 1424) = v6;
  *(v0 + 1328) = &type metadata for AceUserLocationProvider;
  *(v0 + 1336) = &off_28790C920;
  OUTLINED_FUNCTION_20_2();
  *(v0 + 1304) = swift_allocObject();
  sub_2683CC078();
  sub_26813CA00(v0 + 2016, v0 + 1344);
  sub_2683CF318();
  sub_2683CF308();
  v14 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(v0 + 1840) = &unk_28790DB70;
  *(v0 + 1848) = &off_28790DB88;
  *(v0 + 1816) = v14;
  *(v0 + 1808) = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  v17 = sub_2683CC538();
  sub_26813CA00(v0 + 1896, v0 + 1640);
  *(v0 + 1632) = v37;
  *(v0 + 1680) = sub_268372484;
  *(v0 + 1688) = 0;
  sub_26818ED30();

  sub_2683CBD98();
  sub_2683CBE38();
  *(v0 + 2096) = v46;
  *(v0 + 2104) = v17;
  *(v0 + 2112) = sub_2681B86A4;
  *(v0 + 2120) = 0;
  sub_26818ED84();

  sub_2683CBDD8();
  sub_2683CBE88();
  *(v0 + 424) = v3;
  *(v0 + 432) = &off_28790D590;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 400));
  sub_26818EDD8(v2, boxed_opaque_existential_0, type metadata accessor for SnippetFormatter);
  sub_26813CA00(v0 + 1976, v0 + 440);
  sub_26813CA00(v0 + 1896, v0 + 480);
  *(v0 + 544) = v17;
  *(v0 + 584) = 1;
  *(v0 + 616) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v0 + 624) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v19 = swift_allocObject();
  *(v0 + 592) = v19;
  sub_26818EE34(v0 + 1808, v19 + 16);
  *(v0 + 656) = &type metadata for NotebookDisambiguationFlowProducer;
  *(v0 + 664) = &off_28790CD48;
  OUTLINED_FUNCTION_20_2();
  v20 = swift_allocObject();
  *(v0 + 632) = v20;
  sub_26813CA00(v0 + 1896, v20 + 16);
  *(v0 + 520) = v37;
  *(v0 + 528) = v46;
  *(v0 + 536) = v5;
  *(v0 + 672) = 0;
  sub_2681828F0(v0 + 400, v0 + 680);
  v21 = swift_allocObject();
  memcpy((v21 + 16), (v0 + 680), 0x118uLL);

  sub_2683CBE98();
  sub_26813CA00(v0 + 1896, v0 + 32);
  *(v0 + 96) = v3;
  *(v0 + 104) = &off_28790D590;
  v22 = __swift_allocate_boxed_opaque_existential_0((v0 + 72));
  sub_26818EDD8(v2, v22, type metadata accessor for SnippetFormatter);
  *(v0 + 136) = &type metadata for NotebookButtonProvider;
  *(v0 + 144) = &off_287902C78;
  OUTLINED_FUNCTION_12_9();
  v23 = swift_allocObject();
  *(v0 + 112) = v23;
  sub_26818EE98(v0 + 1384, v23 + 16);
  *(v0 + 176) = &type metadata for SiriKitExecutionProvider;
  *(v0 + 184) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v24 = swift_allocObject();
  *(v0 + 152) = v24;
  sub_26813CA00(v0 + 2016, v24 + 16);
  sub_26813CA00(v0 + 2016, v0 + 192);
  sub_26813CA00(v0 + 2056, v0 + 240);
  sub_26818EEF4(v0 + 1264, v0 + 280);
  *(v0 + 16) = v37;
  *(v0 + 24) = v46;
  *(v0 + 232) = v17;
  sub_26818EF50();
  sub_2683CBDA8();
  sub_2683CBE48();
  sub_26813CA00(v0 + 1896, v0 + 1120);
  sub_26813CA00(v0 + 1936, v0 + 1160);
  *(v0 + 1224) = &type metadata for NotebookButtonProvider;
  *(v0 + 1232) = &off_287902C78;
  OUTLINED_FUNCTION_12_9();
  v25 = swift_allocObject();
  *(v0 + 1200) = v25;
  sub_26818EE98(v0 + 1384, v25 + 16);
  *(v0 + 1240) = v47;
  *(v0 + 1248) = sub_2681B86A4;
  *(v0 + 1256) = 0;
  v26 = OUTLINED_FUNCTION_18_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  sub_26818A0C8(&qword_28024E340, &qword_28024E338, &qword_2683D6780);
  sub_2683CBDF8();
  sub_2683CBEA8();
  sub_26813CA00(v0 + 1896, v0 + 960);
  *(v0 + 1024) = &type metadata for NotebookButtonProvider;
  *(v0 + 1032) = &off_287902C78;
  OUTLINED_FUNCTION_12_9();
  v28 = swift_allocObject();
  *(v0 + 1000) = v28;
  sub_26818EE98(v0 + 1384, v28 + 16);
  *(v0 + 1064) = &type metadata for CommonResponseGenerator;
  *(v0 + 1072) = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v29 = swift_allocObject();
  *(v0 + 1040) = v29;
  sub_26813CA00(v0 + 1896, v29 + 16);
  *(v0 + 1104) = &type metadata for CommonLabelGenerator;
  *(v0 + 1112) = &off_28790E058;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E348, &qword_2683D6788);
  sub_26818A0C8(&qword_28024E350, &qword_28024E348, &qword_2683D6788);
  sub_2683CBDC8();
  sub_26812D9E0(v0 + 960, &qword_28024E348, &qword_2683D6788);
  OUTLINED_FUNCTION_18_10();
  sub_2683CBE68();
  sub_26813CA00(v0 + 1896, v0 + 1472);
  *(v0 + 1536) = &type metadata for CommonResponseGenerator;
  *(v0 + 1544) = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v30 = swift_allocObject();
  *(v0 + 1512) = v30;
  sub_26813CA00(v0 + 1896, v30 + 16);
  sub_268180318(v0 + 1472, v0 + 1552);
  v31 = swift_allocObject();
  memcpy((v31 + 16), (v0 + 1552), 0x50uLL);
  sub_2683CBE78();

  sub_26818EFAC(v0 + 1632);
  sub_26818F000(v0 + 1384);
  sub_26818F054(v2, type metadata accessor for SnippetFormatter);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2056));
  __swift_destroy_boxed_opaque_existential_0((v0 + 2016));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1976));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1936));
  sub_26818F0AC(v0 + 1472);
  sub_26812D9E0(v0 + 1120, &qword_28024E338, &qword_2683D6780);
  sub_26818F100(v0 + 16);
  sub_26818F154(v0 + 400);
  sub_26818F1A8(v0 + 1808);
  sub_26818F1FC(v0 + 1264);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1896));
  sub_2683CBDB8();
  sub_2683CBE58();
  (*(v40 + 16))(v41, v36, v38);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E358, &unk_2683D6790);
  OUTLINED_FUNCTION_42_3(v32);
  sub_2683CBEC8();
  sub_26818F250(v0 + 1696, v0 + 1752);
  sub_26818F2AC();
  OUTLINED_FUNCTION_9_10();

  sub_2683CC2E8();
  sub_2683CC2D8();
  OUTLINED_FUNCTION_9_10();

  (*(v45 + 8))(v42, v44);
  (*(v40 + 8))(v36, v38);
  sub_26818F300(v0 + 1696);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1856));

  v33 = OUTLINED_FUNCTION_1_16();

  return v34(v33);
}

uint64_t objectdestroy_32Tm()
{
  v1 = v0[6];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  v2 = v0[18];

  __swift_destroy_boxed_opaque_existential_0(v0 + 19);

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

unint64_t sub_26818ED30()
{
  result = qword_28024E320;
  if (!qword_28024E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E320);
  }

  return result;
}

unint64_t sub_26818ED84()
{
  result = qword_28024E328;
  if (!qword_28024E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E328);
  }

  return result;
}

uint64_t sub_26818EDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_9_0();
  v8(v7);
  return a2;
}

unint64_t sub_26818EF50()
{
  result = qword_28024E330;
  if (!qword_28024E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E330);
  }

  return result;
}

uint64_t sub_26818F054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_26818F2AC()
{
  result = qword_28024E360;
  if (!qword_28024E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E360);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchForNotebookItems.Parameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchForNotebookItems.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26818F4BC()
{
  result = qword_28024E368;
  if (!qword_28024E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E368);
  }

  return result;
}

uint64_t sub_26818F510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_9_0();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_11()
{
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return sub_2683CF228();
}

uint64_t OUTLINED_FUNCTION_20_10()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];
}

uint64_t sub_26818F730(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = v60 - v5;
  v6 = sub_2683CF168();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v60 - v12;
  sub_2683CF258();
  if (!v14)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v44 = sub_2683CF7E8();
    __swift_project_value_buffer(v44, qword_28027C958);

    v45 = sub_2683CF7C8();
    v46 = sub_2683CFE78();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69 = a1;
      v70 = v48;
      *v47 = 136315138;
      sub_2683CF278();
      sub_26816EC88();
      v49 = sub_2683D0568();
      v51 = sub_2681610A0(v49, v50, &v70);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_2680EB000, v45, v46, "Provided app did not have an app id: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    return 0;
  }

  v60[1] = v1;
  sub_2683CFB38();

  v61 = v13;
  v62 = v7;
  (*(v7 + 32))(v13, v11, v6);
  v15 = sub_2683CC558();
  if (!v15 || (v16 = sub_26818FED8(v15)) == 0)
  {
LABEL_15:
    if (qword_28024C8E0 != -1)
    {
LABEL_35:
      OUTLINED_FUNCTION_0_5();
    }

    v34 = sub_2683CF7E8();
    __swift_project_value_buffer(v34, qword_28027C958);

    v35 = sub_2683CF7C8();
    v36 = sub_2683CFE78();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v62;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v69 = a1;
      v70 = v40;
      *v39 = 136315138;
      sub_2683CF278();
      sub_26816EC88();
      v41 = sub_2683D0568();
      v43 = sub_2681610A0(v41, v42, &v70);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2680EB000, v35, v36, "Could not create AppInfo for %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    (*(v38 + 8))(v61, v6);
    return 0;
  }

  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v64 = v6;
    v60[0] = a1;
    v70 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v6 = sub_26818FF48(v17);
    v20 = v17 + 64;
    v21 = v18 - 1;
    v63 = v17 + 64;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v17 + 32))
      {
        a1 = v6 >> 6;
        if ((*(v20 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v19 != *(v17 + 36))
        {
          goto LABEL_31;
        }

        v66 = v21;
        v67 = v19;
        v22 = (*(v17 + 48) + 16 * v6);
        v23 = *v22;
        v24 = v22[1];
        v25 = (*(v17 + 56) + 16 * v6);
        v26 = v25[1];
        v68 = *v25;
        v27 = sub_2683CF1F8();
        v28 = *(v27 + 48);
        v29 = *(v27 + 52);
        swift_allocObject();

        sub_2683CF1E8();
        v30 = v65;
        sub_2683CFB38();
        v31 = v64;
        __swift_storeEnumTagSinglePayload(v30, 0, 1, v64);
        sub_2683CF1C8();

        sub_26812E924(v30);
        sub_2683CFB38();
        __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
        sub_2683CF1B8();

        sub_26812E924(v30);
        sub_2683CF1D8();

        sub_2683D01F8();
        v32 = v70[2];
        sub_2683D0238();
        sub_2683D0248();
        sub_2683D0208();
        if (v6 >= -(-1 << *(v17 + 32)))
        {
          goto LABEL_32;
        }

        v20 = v63;
        if ((*(v63 + 8 * a1) & (1 << v6)) == 0)
        {
          goto LABEL_33;
        }

        if (v67 != *(v17 + 36))
        {
          goto LABEL_34;
        }

        v33 = sub_2683D0078();
        if (!v66)
        {

          v6 = v64;
          goto LABEL_28;
        }

        v6 = v33;
        v19 = *(v17 + 36);
        v21 = v66 - 1;
        if (v33 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_28:
  v53 = sub_2683CF118();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  sub_2683CF108();
  v57 = v61;
  v56 = v62;
  v58 = v65;
  (*(v62 + 16))(v65, v61, v6);
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v6);
  sub_2683CF0F8();

  sub_26812E924(v58);
  sub_2683CF0D8();

  v52 = sub_2683CF128();

  (*(v56 + 8))(v57, v6);
  return v52;
}

uint64_t sub_26818FE4C()
{
  v0 = sub_2683CF118();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2683CF108();
  sub_2683CF0E8();

  return sub_2683CF128();
}

uint64_t sub_26818FED8(void *a1)
{
  v2 = [a1 appNameMap];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CF9C8();

  return v3;
}

uint64_t sub_26818FF48(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2683D0068();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_26818FF98(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_26_7();
  v4 = sub_2683CF238();
  v5 = OUTLINED_FUNCTION_23(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  sub_2683CCC48();
  type metadata accessor for NotebookCommonCATsSimple();
  sub_2683CF228();
  v8 = sub_2683CF198();
  v9 = sub_2683CC548();
  OUTLINED_FUNCTION_42_3(v9);
  v18 = &type metadata for NotebookFeatureManager;
  v19 = &protocol witness table for NotebookFeatureManager;
  v15 = v2;
  v16 = v8;
  v17 = sub_2683CC538();
  v20 = a2 & 1;
  sub_26819320C(v14, v13);

  sub_2683CC868();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E3A8, &qword_2683D6978);
  swift_allocObject();
  v13[0] = sub_2681924D4(v13, &v12);
  sub_26818A0C8(&qword_28024E3B0, &qword_28024E3A8, &qword_2683D6978);
  v10 = sub_2683CBF38();

  sub_268193268(v14);
  return v10;
}

void sub_268190128()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v25 = v2;
  v24 = sub_2683CCBA8();
  v3 = OUTLINED_FUNCTION_0_3(v24);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v8 = OUTLINED_FUNCTION_27_5();
  *(v8 + 16) = xmmword_2683D2250;
  *(v8 + 32) = sub_2681903B0(0);
  v23 = type metadata accessor for RootFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E380, &qword_2683D68F0);
  v9 = sub_2683CBCE8();
  OUTLINED_FUNCTION_3_1(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2683D2890;
  sub_2683CBCB8();
  v16 = v1[3];
  v15 = v1[4];
  v17 = __swift_project_boxed_opaque_existential_1(v1, v16);
  sub_268348CB0(v17, v16, *(v15 + 8));
  v18 = v24;
  (*(v5 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v24);
  sub_26813CA00(v1, v26);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  sub_268128148(v26, v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *&v26[0] = sub_26817EE64(v14, v8, &unk_2683D6900, v20);
  OUTLINED_FUNCTION_0_23();
  sub_268193B2C(v21, v22);
  OUTLINED_FUNCTION_20_11();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681903B0(char a1)
{
  v2 = type metadata accessor for StringLocalizer();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-1] - v7;
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (qword_28024C8D0 != -1)
  {
    swift_once();
  }

  v9 = qword_28027C938;
  *&v8[*(v2 + 20)] = qword_28027C938;
  sub_268192470(v8, v6);
  v10 = v9;
  v11 = sub_26819251C(a1, v6);
  sub_268193EC0(v8, type metadata accessor for StringLocalizer);
  v15[0] = v11;
  sub_2683CBC18();
  v12 = sub_2683CBF28();

  return v12;
}

uint64_t sub_268190538()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26818F620;

  return sub_2681E2100();
}

uint64_t sub_268190608(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268190628, 0, 0);
}

uint64_t sub_268190628()
{
  OUTLINED_FUNCTION_14();
  v1 = [objc_allocWithZone(MEMORY[0x277CEF258]) init];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_2681906F0;
  v4 = v0[2];
  v3 = v0[3];

  return sub_268192984(v4, v3, v1);
}

uint64_t sub_2681906F0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_16();

  return v7(v6);
}

void sub_2681907EC()
{
  OUTLINED_FUNCTION_30_0();
  v23 = v1;
  v24 = v2;
  v3 = sub_2683CCBA8();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = sub_2683CBCE8();
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v15 = OUTLINED_FUNCTION_27_5();
  v22 = xmmword_2683D2250;
  *(v15 + 16) = xmmword_2683D2250;
  sub_2683CBCB8();
  v16 = sub_2683CBC98();
  (*(v12 + 8))(v0, v9);
  *(v15 + 32) = v16;
  v17 = OUTLINED_FUNCTION_27_5();
  *(v17 + 16) = v22;
  *(v17 + 32) = sub_2681903B0(1);
  (*(v6 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v3);
  sub_26813CA00(v24, v25);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v18, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_268128148(v25, v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for RootFlow();
  swift_allocObject();
  *&v25[0] = sub_26817DF10(v15, v17, &unk_2683D6970, v19);
  OUTLINED_FUNCTION_0_23();
  sub_268193B2C(v20, v21);
  OUTLINED_FUNCTION_20_11();
  sub_2683CBF28();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268190A7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_268190A9C, 0, 0);
}

uint64_t sub_268190A9C()
{
  OUTLINED_FUNCTION_14();
  sub_2683B429C(*(v0 + 32), *(v0 + 40), (v0 + 16));
  *(v0 + 24) = *(v0 + 16);
  sub_2683CBC28();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  v1 = OUTLINED_FUNCTION_1_16();

  return v2(v1);
}

void sub_268190B20()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v30 = v3;
  v29 = sub_2683CCBA8();
  v4 = OUTLINED_FUNCTION_0_3(v29);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CBCE8();
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2683D6890;
  sub_2683CBCB8();
  v16 = sub_2683CBC98();
  v17 = *(v12 + 8);
  v17(v0, v9);
  *(v15 + 32) = v16;
  v19 = v2[3];
  v18 = v2[4];
  v20 = __swift_project_boxed_opaque_existential_1(v2, v19);
  sub_268348CB0(v20, v19, *(v18 + 8));
  v21 = sub_2683CBC98();
  v17(v0, v9);
  *(v15 + 40) = v21;
  v23 = v28;
  v22 = v29;
  (*(v6 + 16))(v28, v30, v29);
  sub_26813CA00(v2, v31);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v24, v23, v22);
  sub_268128148(v31, v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for RootFlow();
  swift_allocObject();
  *&v31[0] = sub_26817DF10(v15, MEMORY[0x277D84F90], &unk_2683D6988, v25);
  OUTLINED_FUNCTION_0_23();
  sub_268193B2C(v26, v27);
  OUTLINED_FUNCTION_20_11();
  sub_2683CBF28();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268190DE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26818F620;

  return sub_26818AFA4();
}

void sub_268190EB0()
{
  OUTLINED_FUNCTION_30_0();
  v25 = v0;
  v26 = v1;
  v24 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_2683CCBA8();
  v8 = OUTLINED_FUNCTION_0_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v13 = OUTLINED_FUNCTION_27_5();
  *(v13 + 16) = xmmword_2683D2250;
  *(v13 + 32) = sub_2681903B0(0);
  type metadata accessor for RootFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E380, &qword_2683D68F0);
  v14 = sub_2683CBCE8();
  OUTLINED_FUNCTION_3_1(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2683D1EC0;
  sub_2683CBCB8();
  (*(v10 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v7);
  sub_26813CA00(v4, v27);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v20, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v25(v27, v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27[0] = sub_26817EE64(v19, v13, v26, v21);
  OUTLINED_FUNCTION_0_23();
  sub_268193B2C(v22, v23);
  OUTLINED_FUNCTION_20_11();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26819110C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26818C8B4;

  return sub_26837EED0();
}

void *sub_2681911A8()
{
  OUTLINED_FUNCTION_26_7();
  v1 = sub_2683CF238();
  v2 = OUTLINED_FUNCTION_23(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_45_1();
  sub_2683CC868();
  sub_2683CC078();
  type metadata accessor for NotebookReadingCATs();
  sub_2683CF228();
  v5 = sub_2683CF0B8();
  sub_2683CCC48();
  sub_26813CA00(v25, &v21);
  sub_26813CA00(v23, v22);
  v20 = v5;
  v6 = sub_2683CC1B8();
  OUTLINED_FUNCTION_42_3(v6);

  v22[5] = sub_2683CC198();
  sub_26813CA00(v24, v19);
  sub_26813CA00(v24, v18);
  sub_26813CA00(v25, v16);
  sub_26813CA00(v23, v17);
  sub_268193424(v0, v12);
  v7 = sub_2681D9A00();
  v16[5] = v5;
  v17[5] = v7;
  v17[6] = v8;
  v17[7] = v9;
  sub_268193480(v19, v15);
  sub_2681934DC(v18, v14);
  sub_268193538(&v20, v13);
  sub_268193594(v16, v12);
  v10 = sub_2681935F0(v0, v15, v14, v13, v12);
  sub_268193A30(v16);
  sub_268193A84(v18);
  sub_268193AD8(v19);
  v16[0] = v10;
  type metadata accessor for AnnounceRemindersOrchestratorFlow();
  sub_268193B2C(&qword_28024DEE0, type metadata accessor for AnnounceRemindersOrchestratorFlow);
  sub_2683CBF28();
  OUTLINED_FUNCTION_38_2();

  sub_268193B74(&v20);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v16;
}

void sub_2681913CC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v2 = sub_2683CF238();
  v3 = OUTLINED_FUNCTION_23(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v6 = sub_2683CB668();
  v7 = OUTLINED_FUNCTION_0_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v14 = v13 - v12;
  sub_26812C2A8(v1, &v58, &qword_28024E3C0, &qword_2683D6990);
  if (*(&v59 + 1))
  {
    v15 = 0xD000000000000013;
    sub_268128148(&v58, v69);
    v16 = *__swift_project_boxed_opaque_existential_1(v69, v70);
    v17 = v16 > 0x15;
    v18 = (1 << v16) & 0x2003FE;
    if (v17 || v18 == 0)
    {
      v20 = "reateNote";
    }

    else
    {
      v20 = "reminderListType";
      v15 = 0xD000000000000015;
    }

    sub_2683CCC48();
    __swift_project_boxed_opaque_existential_1(v68, v68[3]);
    sub_2683CC088();
    v53 = v20 | 0x8000000000000000;
    v67[3] = &type metadata for NotebookReferenceResolver;
    v67[4] = &off_287900140;
    v21 = swift_allocObject();
    v67[0] = v21;
    v22 = sub_2683CF6C8();
    v23 = sub_2683CF6B8();
    v24 = MEMORY[0x277D5FDD8];
    v21[5] = v22;
    v21[6] = v24;
    v21[2] = v23;
    v25 = type metadata accessor for InstalledAppProvider();
    v65 = v25;
    v66 = &off_2879042B8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
    v27 = *(v9 + 16);
    v27(boxed_opaque_existential_0 + *(v25 + 20), v14, v6);
    *boxed_opaque_existential_0 = 0;
    v28 = type metadata accessor for RegexAppSearcher();
    v61[3] = v28;
    v61[4] = &off_28790BB20;
    v29 = __swift_allocate_boxed_opaque_existential_0(v61);
    sub_26813CA00(&v64, v29);
    v27(v29 + *(v28 + 20), v14, v6);
    v61[8] = &type metadata for InferredAppResolver;
    v61[9] = &off_287902D60;
    OUTLINED_FUNCTION_14_10();
    v30 = swift_allocObject();
    v61[5] = v30;
    sub_26813CA00(&v64, v30 + 32);
    sub_26812C2A8(v67, v30 + 72, &qword_28024E2C8, &unk_2683D6950);
    *(v30 + 16) = v15;
    *(v30 + 24) = v53;
    sub_26813CA00(&v64, &v58);
    (*(v9 + 8))(v14, v6);
    sub_2681433DC(v67, &qword_28024E2C8, &unk_2683D6950);
    __swift_destroy_boxed_opaque_existential_0(&v64);
    v61[10] = 0;
    __swift_destroy_boxed_opaque_existential_0(v68);
    v31 = __swift_project_boxed_opaque_existential_1(v69, v70);
    v68[0] = sub_26812A20C(*v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E3C8, &qword_2683D69A8);
    v32 = sub_2683CFAD8();
    v34 = sub_26835C42C(0, 1, 0, 0, v32, v33);

    if (v34[2])
    {
      v35 = v34[4];
      v36 = v34[6];
      v37 = v34[7];

      sub_26813CA00(v69, v68);
      sub_2683CCC48();
      type metadata accessor for NotebookCommonCATsSimple();
      sub_2683CF228();
      v38 = sub_2683CF198();
      sub_2683CC868();
      sub_26813CA00(&v64, v62);
      sub_26813CA00(v67, &v57);
      sub_26812C2A8(v68, &v54, &qword_28024E3C0, &qword_2683D6990);
      OUTLINED_FUNCTION_14_10();
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      sub_268128148(&v57, v39 + 24);
      v40 = v55;
      *(v39 + 64) = v54;
      *(v39 + 80) = v40;
      *(v39 + 96) = v56;
      *(v39 + 104) = v35;
      v41 = sub_2683CB948();
      OUTLINED_FUNCTION_42_3(v41);

      v42 = sub_2683CB938();
      __swift_destroy_boxed_opaque_existential_0(&v64);
      __swift_destroy_boxed_opaque_existential_0(v67);
      sub_2681433DC(v68, &qword_28024E3C0, &qword_2683D6990);
      v68[0] = v42;
      sub_2683CBF28();
    }

    else
    {

      sub_26813CA00(v69, v68);
      sub_2683CCC48();
      type metadata accessor for NotebookCommonCATsSimple();
      sub_2683CF228();
      v48 = sub_2683CF198();
      sub_2683CC868();
      sub_26813CA00(&v64, v62);
      sub_26813CA00(v67, &v57);
      sub_26812C2A8(v68, &v54, &qword_28024E3C0, &qword_2683D6990);
      OUTLINED_FUNCTION_14_10();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      sub_268128148(&v57, v49 + 24);
      v50 = v55;
      *(v49 + 64) = v54;
      *(v49 + 80) = v50;
      *(v49 + 96) = v56;
      *(v49 + 104) = 0;
      v51 = sub_2683CB948();
      OUTLINED_FUNCTION_42_3(v51);
      v52 = sub_2683CB938();
      __swift_destroy_boxed_opaque_existential_0(&v64);
      __swift_destroy_boxed_opaque_existential_0(v67);
      sub_2681433DC(v68, &qword_28024E3C0, &qword_2683D6990);
      v68[0] = v52;
      sub_2683CBF28();
    }

    sub_26818DAF4(&v58);
    __swift_destroy_boxed_opaque_existential_0(v69);
  }

  else
  {
    sub_2681433DC(&v58, &qword_28024E3C0, &qword_2683D6990);
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    sub_2683CCC48();
    type metadata accessor for NotebookCommonCATsSimple();
    sub_2683CF228();
    v43 = sub_2683CF198();
    sub_2683CC868();
    sub_26813CA00(v68, v67);
    sub_26813CA00(v69, &v64);
    sub_26812C2A8(&v58, v62, &qword_28024E3C0, &qword_2683D6990);
    OUTLINED_FUNCTION_14_10();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    sub_268128148(&v64, v44 + 24);
    v45 = v62[1];
    *(v44 + 64) = v62[0];
    *(v44 + 80) = v45;
    *(v44 + 96) = v63;
    *(v44 + 104) = 0;
    v46 = sub_2683CB948();
    OUTLINED_FUNCTION_42_3(v46);
    v47 = sub_2683CB938();
    __swift_destroy_boxed_opaque_existential_0(v68);
    __swift_destroy_boxed_opaque_existential_0(v69);
    sub_2681433DC(&v58, &qword_28024E3C0, &qword_2683D6990);
    *&v58 = v47;
    sub_2683CBF28();
    OUTLINED_FUNCTION_38_2();
  }

  OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_29_0();
}

void sub_268191B5C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_26_7();
  v1 = sub_2683CF238();
  v2 = OUTLINED_FUNCTION_23(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_3();
  sub_2683CCC48();
  type metadata accessor for NotebookCommonCATs();
  sub_2683CF228();
  v5 = sub_2683CF0B8();
  sub_2683CCC48();
  type metadata accessor for NotebookLabelsV2CATs();
  sub_2683CF228();
  v6 = sub_2683CF0B8();
  v23[9] = &type metadata for TCCTemplateProvider;
  v23[10] = &off_287902CB8;
  v23[5] = v6;
  sub_2683CC868();
  sub_26813CA00(v24, v21);
  v7 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v21[5] = v5;
  v21[6] = v7;
  v20 = v0;
  v19[3] = &type metadata for DefaultUndoIntentStrategy;
  v19[4] = &off_2879039F0;
  v19[0] = swift_allocObject();
  sub_268191E3C(&v20, v19[0] + 16);
  type metadata accessor for UndoAndSendOutputFlow();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v19, &type metadata for DefaultUndoIntentStrategy);
  v10 = *(off_2879039C8 + 8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  v13 = (v12 - v11);
  (*(v14 + 16))(v12 - v11);
  v8[6] = &type metadata for DefaultUndoIntentStrategy;
  v8[7] = &off_2879039F0;
  v15 = swift_allocObject();
  v16 = v13[1];
  v15[1] = *v13;
  v15[2] = v16;
  v17 = v13[3];
  v15[3] = v13[2];
  v15[4] = v17;
  v8[2] = v0;
  v8[3] = v15;
  swift_bridgeObjectRetain_n();

  __swift_destroy_boxed_opaque_existential_0(v19);
  v19[0] = v8;
  sub_268193B2C(&qword_28024E378, type metadata accessor for UndoAndSendOutputFlow);
  v18 = sub_2683CBF28();

  sub_268191EE8(&v20);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v24);

  sub_26818F000(v23);
  v23[0] = v18;
  sub_2683CBC28();
  sub_2683CBF28();
  OUTLINED_FUNCTION_38_2();

  OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_29_0();
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

uint64_t sub_268191F3C()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9_11();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_4_13(v6);

  return sub_268190538();
}

uint64_t sub_268192014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_2683CB668();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for DefaultUnsupportedIntentStrategy();
  v5[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26819210C, 0, 0);
}

uint64_t sub_26819210C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_38_2();
  sub_2683CC088();
  v5 = sub_2683CC548();
  OUTLINED_FUNCTION_42_3(v5);
  v6 = sub_2683CC538();
  sub_26812C2A8(v3, (v0 + 2), &qword_28024E3C0, &qword_2683D6990);
  v7 = v0[5];
  if (v7)
  {
    v8 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    sub_2681433DC((v0 + 2), &qword_28024E3C0, &qword_2683D6990);
    v8 = 22;
  }

  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];
  *v9 = v0[8];
  (*(v12 + 32))(&v9[v10[5]], v11, v13);
  *&v9[v10[6]] = v6;
  v9[v10[7]] = v8;

  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_268192294;
  v15 = v0[16];
  v16 = v0[11];
  v17 = v0[7];

  return sub_2683BA558();
}

uint64_t sub_268192294()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 136);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_268192404;
  }

  else
  {
    v7 = sub_268192398;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_268192398()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268192404()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_4();

  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1();
}

uint64_t sub_268192470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringLocalizer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681924D4(void *__src, __int128 *a2)
{
  *(v2 + 16) = 1;
  memcpy((v2 + 24), __src, 0x69uLL);
  sub_268128148(a2, v2 + 136);
  return v2;
}

uint64_t sub_26819251C(char a1, uint64_t a2)
{
  sub_2683CBC18();
  OUTLINED_FUNCTION_26_7();
  v9[3] = type metadata accessor for StringLocalizer();
  v9[4] = &off_2878FE958;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  sub_2681925E4(a2, boxed_opaque_existential_0);
  sub_26813CA00(v9, v8);
  v5 = swift_allocObject();
  sub_268128148(v8, v5 + 16);
  *(v5 + 56) = a1;
  v6 = sub_2683CBC08();
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_2681925E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringLocalizer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268192648()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  *v3 = v4;
  v3[1] = sub_2681926D8;

  return sub_268388ADC(v0 + 16, v1);
}

uint64_t sub_2681926D8()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_42();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v4, v2);
}

uint64_t sub_2681927D4()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9_11();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_4_13(v6);

  return sub_26819110C();
}

uint64_t sub_2681928AC()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9_11();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_4_13(v6);

  return sub_268190608(v8, v9);
}

uint64_t sub_268192984(uint64_t a1, uint64_t a2, void *a3)
{
  v3[96] = a2;
  v3[95] = a1;
  v5 = sub_2683CB668();
  v3[97] = v5;
  v6 = *(v5 - 8);
  v3[98] = v6;
  v7 = *(v6 + 64) + 15;
  v3[99] = swift_task_alloc();
  v8 = sub_2683CCBA8();
  v3[100] = v8;
  v9 = *(v8 - 8);
  v3[101] = v9;
  v10 = *(v9 + 64) + 15;
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[51] = sub_268129504(0, &qword_28024E388, 0x277CEF258);
  v3[52] = &off_287901A10;
  v3[48] = a3;
  v11 = a3;

  return MEMORY[0x2822009F8](sub_268192AE4, 0, 0);
}

uint64_t sub_268192AE4()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 768);
  v38 = *(*(v0 + 808) + 16);
  v38(*(v0 + 824), *(v0 + 760), *(v0 + 800));
  sub_26813CA00(v2, v0 + 424);
  sub_26813CA00(v0 + 384, v0 + 464);
  v3 = swift_allocObject();
  sub_268128148((v0 + 424), v3 + 16);
  v37 = v3;
  sub_268128148((v0 + 464), v3 + 56);
  v4 = v2[3];
  v5 = v2[4];
  v6 = __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 528) = v4;
  *(v0 + 536) = *(v5 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 504));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v6, v4);
  *(v0 + 744) = sub_268129504(0, &qword_28024D5B8, 0x277CD4160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E390, &unk_2683D6940);
  v8 = sub_2683CFAD8();
  v35 = v9;
  v36 = v8;
  v10 = sub_2683CF6C8();
  v11 = sub_2683CF6B8();
  *(v0 + 568) = v10;
  *(v0 + 576) = MEMORY[0x277D5FDD8];
  *(v0 + 544) = v11;
  sub_2683CCC48();
  v12 = *(v0 + 616);
  __swift_project_boxed_opaque_existential_1((v0 + 584), *(v0 + 608));
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  sub_26812C2A8(v0 + 544, v0 + 664, &qword_28024E2C0, &unk_2683D66D0);
  if (*(v0 + 688))
  {
    v13 = swift_allocObject();
    v14 = *(v0 + 680);
    *(v13 + 16) = *(v0 + 664);
    *(v13 + 32) = v14;
    *(v13 + 48) = *(v0 + 696);
    v15 = &off_287900140;
    v16 = &type metadata for NotebookReferenceResolver;
  }

  else
  {
    sub_2681433DC(v0 + 664, &qword_28024E2C0, &unk_2683D66D0);
    v13 = 0;
    v16 = 0;
    v15 = 0;
    *(v0 + 632) = 0u;
  }

  v33 = *(v0 + 816);
  v34 = *(v0 + 824);
  v17 = *(v0 + 808);
  v32 = *(v0 + 800);
  v18 = *(v0 + 792);
  v19 = *(v0 + 784);
  v20 = *(v0 + 776);
  *(v0 + 624) = v13;
  *(v0 + 648) = v16;
  *(v0 + 656) = v15;
  v21 = type metadata accessor for InstalledAppProvider();
  *(v0 + 728) = v21;
  *(v0 + 736) = &off_2879042B8;
  v22 = __swift_allocate_boxed_opaque_existential_0((v0 + 704));
  v23 = *(v19 + 16);
  v23(v22 + *(v21 + 20), v18, v20);
  *v22 = 0;
  v24 = type metadata accessor for RegexAppSearcher();
  *(v0 + 80) = v24;
  *(v0 + 88) = &off_28790BB20;
  v25 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_26813CA00(v0 + 704, v25);
  v23(v25 + *(v24 + 20), v18, v20);
  *(v0 + 120) = &type metadata for InferredAppResolver;
  *(v0 + 128) = &off_287902D60;
  OUTLINED_FUNCTION_14_10();
  v26 = swift_allocObject();
  *(v0 + 96) = v26;
  sub_26813CA00(v0 + 704, v26 + 32);
  sub_26812C2A8(v0 + 624, v26 + 72, &qword_28024E2C8, &unk_2683D6950);
  *(v26 + 16) = 0xD000000000000013;
  *(v26 + 24) = 0x80000002683FA8D0;
  (*(v19 + 8))(v18, v20);
  sub_26813CA00(v0 + 704, v0 + 16);
  sub_2681433DC(v0 + 624, &qword_28024E2C8, &unk_2683D6950);
  __swift_destroy_boxed_opaque_existential_0((v0 + 704));
  *(v0 + 136) = 0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 584));
  *(v0 + 168) = &type metadata for AppResolver;
  *(v0 + 176) = &off_28790B8A0;
  v27 = swift_allocObject();
  *(v0 + 144) = v27;
  sub_26818CE54(v0 + 16, v27 + 16);
  sub_26812C2A8(v0 + 504, v0 + 224, &qword_28024E2D0, &qword_2683D66E0);
  *(v0 + 184) = v36;
  *(v0 + 192) = v35;
  *(v0 + 200) = 1;
  *(v0 + 208) = &unk_2683DCA78;
  *(v0 + 216) = 0;
  sub_26818CEB0(v0 + 144, v0 + 264);
  v38(v33, v34, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E398, &qword_2683D6960);
  swift_allocObject();
  v28 = sub_2681E516C((v0 + 264), v33, &unk_2683D6938, v37);
  (*(v17 + 8))(v34, v32);
  sub_2681433DC(v0 + 504, &qword_28024E2D0, &qword_2683D66E0);
  sub_26818DAA0(v0 + 144);
  sub_26818DAF4(v0 + 16);
  sub_2681433DC(v0 + 544, &qword_28024E2C0, &unk_2683D66D0);
  *(v0 + 752) = v28;
  sub_26818A0C8(&qword_28024E3A0, &qword_28024E398, &qword_2683D6960);
  sub_2683CBF28();

  __swift_destroy_boxed_opaque_existential_0((v0 + 384));

  v29 = OUTLINED_FUNCTION_1_16();

  return v30(v29);
}

uint64_t sub_26819309C()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26818F620;

  return sub_268201460();
}

uint64_t sub_268193134()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9_11();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_4_13(v6);

  return sub_268190A7C(v8, v9);
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_2683CCBA8();
  OUTLINED_FUNCTION_0_9(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_26819334C()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9_11();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_4_13(v6);

  return sub_268190DE0();
}

uint64_t sub_2681935F0(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v47[3] = &type metadata for AnnounceReminderProvider;
  v47[4] = &off_28790C0C8;
  v10 = swift_allocObject();
  v47[0] = v10;
  v11 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a2 + 32);
  v46[3] = &type metadata for NotificationProvider;
  v46[4] = &off_28790E260;
  v12 = swift_allocObject();
  v46[0] = v12;
  v13 = *(a3 + 16);
  *(v12 + 16) = *a3;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a3 + 32);
  v45[3] = &type metadata for AnnounceReminderFlowProvider;
  v45[4] = &off_2878FEFD8;
  v45[0] = swift_allocObject();
  memcpy((v45[0] + 16), a4, 0x60uLL);
  v43 = &type metadata for AnnounceFollowUpHintFlow;
  v44 = sub_268193BC8();
  *&v42 = swift_allocObject();
  memcpy((v42 + 16), a5, 0x70uLL);
  type metadata accessor for AnnounceRemindersOrchestratorFlow();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v47, &type metadata for AnnounceReminderProvider);
  v16 = *(off_28790C0A8 + 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v46, &type metadata for NotificationProvider);
  v21 = *(off_28790E240 + 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v45, &type metadata for AnnounceReminderFlowProvider);
  v26 = *(off_2878FEFB0 + 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  *(v14 + 40) = &type metadata for AnnounceReminderProvider;
  *(v14 + 48) = &off_28790C0C8;
  v30 = swift_allocObject();
  *(v14 + 16) = v30;
  v31 = *(v18 + 1);
  *(v30 + 16) = *v18;
  *(v30 + 32) = v31;
  *(v30 + 48) = *(v18 + 4);
  *(v14 + 80) = &type metadata for NotificationProvider;
  *(v14 + 88) = &off_28790E260;
  v32 = swift_allocObject();
  *(v14 + 56) = v32;
  v33 = *(v23 + 1);
  *(v32 + 16) = *v23;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(v23 + 4);
  *(v14 + 120) = &type metadata for AnnounceReminderFlowProvider;
  *(v14 + 128) = &off_2878FEFD8;
  v34 = swift_allocObject();
  *(v14 + 96) = v34;
  memcpy((v34 + 16), v28, 0x60uLL);
  v35 = MEMORY[0x277D84F90];
  *(v14 + 216) = MEMORY[0x277D84FA0];
  *(v14 + 224) = v35;
  *(v14 + 240) = 0;
  sub_268128148(&v42, v14 + 136);
  v36 = a1[3];
  *(v14 + 232) = a1[2];
  *(v14 + 248) = a1[6];
  v37 = a1[4];
  v39 = *a1;
  v38 = a1[1];

  sub_268193C1C(a1);
  *(v14 + 176) = v36;
  *(v14 + 184) = v37;
  *(v14 + 192) = v39;
  *(v14 + 200) = v38;
  *(v14 + 208) = 0;
  __swift_destroy_boxed_opaque_existential_0(v45);
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v47);
  return v14;
}

uint64_t sub_268193B2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_268193BC8()
{
  result = qword_28024E3B8;
  if (!qword_28024E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E3B8);
  }

  return result;
}

uint64_t sub_268193C70()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_13(v1);

  return sub_268192014(v3, v4, v5, v6, v7);
}

uint64_t sub_268193CFC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_13(v1);

  return sub_268192014(v3, v4, v5, v6, v7);
}

uint64_t sub_268193D88()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t objectdestroy_67Tm()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  }

  v2 = v0[13];

  OUTLINED_FUNCTION_14_10();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_268193EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_4()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 128);

  return sub_268193EC0(v3, type metadata accessor for DefaultUnsupportedIntentStrategy);
}

uint64_t OUTLINED_FUNCTION_27_5()
{

  return swift_allocObject();
}

void sub_26819402C()
{
  v1 = v0;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);

  oslog = sub_2683CF7C8();
  v3 = sub_2683CFE68();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = v1[10];
    v7 = v1[11];
    v8 = v1[12];
    v9 = sub_2681955F8();
    v11 = sub_2681610A0(v9, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_2680EB000, oslog, v3, "[SFNI.RchThenReadFlow] transitioned to state %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26D617A40](v5, -1, -1);
    MEMORY[0x26D617A40](v4, -1, -1);
  }
}

void sub_268194194(void *a1, void *a2, void *a3)
{
  v7 = v3[10];
  v8 = v3[11];
  v9 = v3[12];
  v3[10] = a1;
  v3[11] = a2;
  v3[12] = a3;
  sub_268195C90(a1, a2, a3);
  sub_268195CE4(v7, v8, v9);
  sub_26819402C();

  sub_268195CE4(a1, a2, a3);
}

void *sub_268194218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[9] = a8;
  v8[11] = 0;
  v8[12] = 0;
  v8[10] = 0;
  return v8;
}

uint64_t sub_268194238(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  v3 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268194260()
{
  v42 = v0;
  v1 = v0[6];
  v2 = *(v1 + 80);
  v0[7] = v2;
  switch(v2)
  {
    case 0:
LABEL_11:
      v27 = *(v1 + 24);
      OUTLINED_FUNCTION_1_17(*(v1 + 16));
      v29 = *(v28 + 4);
      v25 = swift_task_alloc();
      v0[12] = v25;
      *v25 = v0;
      v26 = sub_2681948A4;
      goto LABEL_12;
    case 1:
    case 3:
LABEL_2:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
        v38 = v0[6];
      }

      v3 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v3, qword_28027C958);

      v4 = sub_2683CF7C8();
      v5 = sub_2683CFE88();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v40[0] = v7;
        *v6 = 136315138;
        v8 = *(v1 + 80);
        v9 = *(v1 + 88);
        v10 = *(v1 + 96);
        v11 = sub_2681955F8();
        v13 = sub_2681610A0(v11, v12, v40);

        *(v6 + 4) = v13;
        OUTLINED_FUNCTION_29();
        _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      goto LABEL_7;
    case 2:
      while (2)
      {
        v22 = *(v1 + 56);
        OUTLINED_FUNCTION_1_17(*(v1 + 48));
        v24 = *(v23 + 4);
        v25 = swift_task_alloc();
        v0[16] = v25;
        *v25 = v0;
        v26 = sub_268194E00;
LABEL_12:
        v25[1] = v26;
        v0 = v25;
        v2 = v41;
        v1 = v40[2];

        switch(v41)
        {
          case 0:
            goto LABEL_11;
          case 1:
          case 3:
            goto LABEL_2;
          case 2:
            continue;
          case 4:
            goto LABEL_7;
          default:
            goto LABEL_15;
        }
      }

    case 4:
LABEL_7:
      v19 = v0[5];
      sub_2683CC3F8();
      OUTLINED_FUNCTION_40();

      result = v20();
      break;
    default:
LABEL_15:
      v30 = *(v1 + 96);
      v0[8] = v30;
      v31 = *(v1 + 88);
      v0[9] = v31;
      v32 = *(v1 + 64);
      v33 = *(v1 + 72);

      v34 = v31;
      v35 = v30;
      v39 = (v32 + *v32);
      v36 = v32[1];
      v37 = swift_task_alloc();
      v0[10] = v37;
      *v37 = v0;
      v37[1] = sub_268194610;

      result = v39(v2, v34, v35);
      break;
  }

  return result;
}

uint64_t sub_268194610()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681946F8()
{
  if (v0[11])
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v1 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v1, qword_28027C958);
    v2 = sub_2683CF7C8();
    v3 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v3))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_13_10(&dword_2680EB000, v4, v5, "[SFNI.RchThenReadFlow] exiting flow by pushing reading flow");
      OUTLINED_FUNCTION_38();
    }

    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = v0[5];

    sub_2683CC3E8();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v10 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v10, qword_28027C958);
    v11 = sub_2683CF7C8();
    v12 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v12))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_29();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_38();
    }

    v7 = v0[8];
    v6 = v0[9];
    v18 = v0[7];
    v19 = v0[5];

    sub_2683CC3F8();
  }

  OUTLINED_FUNCTION_40();

  return v20();
}

uint64_t sub_2681948A4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26819498C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 48);
  v2 = *(v1 + 40);
  v6 = (*(v1 + 32) + **(v1 + 32));
  v3 = *(*(v1 + 32) + 4);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_268194A74;

  return v6();
}

uint64_t sub_268194A74()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_268194B5C()
{
  v1 = v0[15];
  v2 = v0[13];
  type metadata accessor for EachFlow();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
  sub_268195C10(&qword_28024DF00, 255, type metadata accessor for EachFlow);
  sub_26818A0C8(&qword_28024E2F8, &qword_28024DF18, &unk_2683D5B80);
  v4 = sub_2683CBF68();

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v5 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v5, qword_28027C958);
  v6 = sub_2683CF7C8();
  v7 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v7))
  {
    *OUTLINED_FUNCTION_21_5() = 0;
    OUTLINED_FUNCTION_13_10(&dword_2680EB000, v8, v9, "[SFNI.RchThenReadFlow] Pushing preRchFlows guarded by an authentication flow");
    OUTLINED_FUNCTION_38();
  }

  v10 = v0[13];
  v11 = v0[5];
  v12 = v0[6];

  OUTLINED_FUNCTION_24();
  sub_268194194(v13, v14, v15);
  v0[4] = v4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_268195C58;
  *(v16 + 24) = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF08, &unk_2683D6750);
  sub_26818A0C8(&qword_28024DF10, &qword_28024DF08, &unk_2683D6750);
  sub_2683CC398();

  OUTLINED_FUNCTION_40();

  return v17();
}

uint64_t sub_268194E00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_268194EE8()
{
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v1, qword_28027C958);
  v2 = sub_2683CF7C8();
  v3 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v3))
  {
    *OUTLINED_FUNCTION_21_5() = 0;
    OUTLINED_FUNCTION_29();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_38();
  }

  v9 = v0[17];
  v11 = v0[5];
  v10 = v0[6];

  OUTLINED_FUNCTION_24();
  sub_268194194(v12, v13, v14);

  sub_2683CC3A8();

  OUTLINED_FUNCTION_40();

  return v15();
}

void sub_268195040(char a1)
{
  if (a1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v1 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v1, qword_28027C958);
    v2 = sub_2683CF7C8();
    v3 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v3))
    {
      v4 = OUTLINED_FUNCTION_21_5();
      *v4 = 0;
      _os_log_impl(&dword_2680EB000, v2, v3, "[SFNI.RchThenReadFlow] Auth guard flow failed exiting flow without pushing rch flow", v4, 2u);
LABEL_10:
      OUTLINED_FUNCTION_38();
    }
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v5 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v5, qword_28027C958);
    v2 = sub_2683CF7C8();
    v6 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v6))
    {
      v7 = OUTLINED_FUNCTION_21_5();
      *v7 = 0;
      _os_log_impl(&dword_2680EB000, v2, v6, "[SFNI.RchThenReadFlow] Successfully passed auth flow and executed preRchFlows", v7, 2u);
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_24();

  sub_268194194(v8, v9, v10);
}

void sub_268195198(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E3D0, &qword_2683D6AE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = *(v5 + 16);
  v15(&v40 - v13, a1, v4);
  if ((*(v5 + 88))(v14, v4) == *MEMORY[0x277D5BCA0])
  {
    (*(v5 + 96))(v14, v4);
    v16 = *v14;
    v17 = *(v14 + 1);
    v18 = *(v14 + 2);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v19 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v19, qword_28027C958);
    v20 = sub_2683CF7C8();
    v21 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v21))
    {
      v22 = OUTLINED_FUNCTION_21_5();
      *v22 = 0;
      _os_log_impl(&dword_2680EB000, v20, v21, "[SFNI.RchThenReadFlow] RCHFlow executed successfully", v22, 2u);
      OUTLINED_FUNCTION_38();
    }

    v23 = v17;
    v24 = v18;
    sub_268194194(v16, v17, v18);
  }

  else
  {
    v25 = *(v5 + 8);
    v25(v14, v4);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v26 = sub_2683CF7E8();
    __swift_project_value_buffer(v26, qword_28027C958);
    v15(v12, a1, v4);
    v27 = sub_2683CF7C8();
    v28 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v28))
    {
      v29 = swift_slowAlloc();
      v41 = v25;
      v30 = v29;
      v31 = swift_slowAlloc();
      v42 = v2;
      v43 = v31;
      v32 = v31;
      *v30 = 136446210;
      v15(v9, v12, v4);
      v33 = sub_2683CFAD8();
      v35 = v34;
      v41(v12, v4);
      v36 = sub_2681610A0(v33, v35, &v43);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_2680EB000, v27, v28, "[SFNI.RchThenReadFlow] RCHFlow did not exit with complete value, exiting flow without pushing reading flow\nRCHFlow ExitValue: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      v25(v12, v4);
    }

    OUTLINED_FUNCTION_24();
    sub_268194194(v37, v38, v39);
  }
}

uint64_t sub_26819556C()
{
  _s15RchThenReadFlowCMa();
  sub_268195C10(&qword_28024E2F0, v0, _s15RchThenReadFlowCMa);
  return sub_2683CBF48();
}

unint64_t sub_2681956D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_2681955F8();
}

uint64_t sub_2681956E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_268195CE4(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t sub_268195728()
{
  sub_2681956E4();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook09SearchForB5ItemsO15RchThenReadFlowC5State33_A5C4C06F7EEC6A6AB38EAABC083E5E2ELLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2681957AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 24))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268195804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_268195858(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_268195888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_268195938;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268195938()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v4 = *(v3 + 16);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5(v2);
}

uint64_t sub_268195A50(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268195AEC;

  return sub_268194238(a1);
}

uint64_t sub_268195AEC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 16);
  v5 = *v0;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_268195BD4()
{
  _s15RchThenReadFlowCMa();

  return sub_2683CBF88();
}

uint64_t sub_268195C10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_268195C64(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

id sub_268195C90(id result, void *a2, void *a3)
{
  if (result >= 5)
  {

    v5 = a2;

    return a3;
  }

  return result;
}

void sub_268195CE4(unint64_t a1, void *a2, void *a3)
{
  if (a1 >= 5)
  {
  }
}

void OUTLINED_FUNCTION_13_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t type metadata accessor for NotebookLabelsV2CATs()
{
  result = qword_28024E3D8;
  if (!qword_28024E3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268195E28()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_26819674C;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_268195ED4()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268195F80;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_268195F80()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_268196074(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_268196098, 0, 0);
}

uint64_t sub_268196098()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = sub_2683CF138();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v9 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2681961E0;
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, 0xD000000000000022, 0x80000002683FDF10, v2);
}

uint64_t sub_2681961E0()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26819631C, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26819631C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_268196380()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_26819674C;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819642C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_26819674C;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_2681964D8()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_26819674C;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_268196584(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2681965D8(a1, a2);
}

uint64_t sub_2681965D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CF238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2683CF0A8();
  (*(v5 + 8))(a2, v4);
  sub_268163208(a1);
  return v12;
}

void sub_26819675C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = a3;
  if (!a1)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
LABEL_16:
    *(v8 + 3) = 0;
    v26 = *(type metadata accessor for SetTaskAttributeIntentModelNLv4() + 32);
    v27 = sub_2683CB668();
    v28 = *(v27 - 8);
    (*(v28 + 16))(&v8[v26], a2, v27);
    if (a1)
    {
LABEL_17:

      OUTLINED_FUNCTION_3_12();
      sub_2683CDE98();

      if (v38)
      {
        v29 = sub_2683CD4E8();

        v30 = sub_2683CB668();
        OUTLINED_FUNCTION_1(v30);
        (*(v31 + 8))(a2);
LABEL_22:
        *&v8[*(type metadata accessor for SetTaskAttributeIntentModelNLv4() + 36)] = v29;
        return;
      }

      v32 = sub_2683CB668();
      OUTLINED_FUNCTION_1(v32);
      (*(v33 + 8))(a2);
    }

    else
    {
      (*(v28 + 8))(a2, v27);
    }

    v29 = 0;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_3_12();
  sub_2683CDE98();

  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = v38;

  v9 = sub_2683CDE88();

  if (!v9)
  {
    goto LABEL_16;
  }

  v35 = a2;
  v36 = v8;
  swift_getKeyPath();
  v10 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  sub_2683ABE58(v9);
  OUTLINED_FUNCTION_5_12();
  while (1)
  {
    if (a2 == v3)
    {

      v8 = v36;
      *(v36 + 24) = v10;
      v23 = *(type metadata accessor for SetTaskAttributeIntentModelNLv4() + 32);
      v24 = sub_2683CB668();
      OUTLINED_FUNCTION_1(v24);
      a2 = v35;
      (*(v25 + 16))(v36 + v23, v35);
      goto LABEL_17;
    }

    if (v5)
    {
      v11 = MEMORY[0x26D616C90](v3, v9);
    }

    else
    {
      if (v3 >= *(v4 + 16))
      {
        goto LABEL_24;
      }

      v11 = *(v9 + 8 * v3 + 32);
    }

    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v3;
    if (v37)
    {
      v14 = MEMORY[0x26D616770](v13);
      OUTLINED_FUNCTION_8_11(v14, v15, v16, v17, v18, v19, v20, v21, v34, v35, v36, v11, v37, v38);
      if (v22)
      {
        OUTLINED_FUNCTION_4_14();
      }

      sub_2683CFD08();
      v10 = v38;
      v3 = v12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_268196A78(uint64_t a1@<X1>, char *a2@<X8>)
{

  sub_2683CDDE8();
  *a2 = v30;
  OUTLINED_FUNCTION_3_12();
  sub_2683CDDD8();
  v6 = v30;
  *(a2 + 1) = v30;
  if (!v30)
  {
    v8 = 0;
    *(a2 + 2) = 0;
LABEL_17:
    *(a2 + 3) = v8;
    v21 = type metadata accessor for SetTaskAttributeIntentModelNLv4();
    v22 = *(v21 + 32);
    v23 = sub_2683CB668();
    v24 = *(v23 - 8);
    (*(v24 + 16))(&a2[v22], a1, v23);
    OUTLINED_FUNCTION_3_12();
    sub_2683CDDE8();

    if (!v30 || (v25 = sub_2683CD4E8(), , !v25))
    {
      OUTLINED_FUNCTION_3_12();
      sub_2683CDDD8();
      if (!v30)
      {

        v25 = 0;
        goto LABEL_23;
      }

      v25 = sub_2683CD4E8();
    }

LABEL_23:
    (*(v24 + 8))(a1, v23);
    *&a2[*(v21 + 36)] = v25;
    return;
  }

  *(a2 + 2) = sub_2683CD7C8();
  v7 = sub_2683CD7D8();

  if (!v7)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v27 = a1;
  v28 = a2;
  swift_getKeyPath();
  v8 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  sub_2683ABE58(v7);
  OUTLINED_FUNCTION_5_12();
  while (1)
  {
    if (v3 == v6)
    {

      a1 = v27;
      a2 = v28;
      goto LABEL_17;
    }

    if (a1)
    {
      v9 = MEMORY[0x26D616C90](v6, v7);
    }

    else
    {
      if (v6 >= *(v2 + 16))
      {
        goto LABEL_25;
      }

      v9 = *(v7 + 8 * v6 + 32);
    }

    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v6;
    if (v29)
    {
      v12 = MEMORY[0x26D616770](v11);
      OUTLINED_FUNCTION_8_11(v12, v13, v14, v15, v16, v17, v18, v19, v26, v27, v28, v9, v29, v30);
      if (v20)
      {
        OUTLINED_FUNCTION_4_14();
      }

      sub_2683CFD08();
      v8 = v30;
      v6 = v10;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t type metadata accessor for SetTaskAttributeIntentModelNLv4()
{
  result = qword_28024E3E8;
  if (!qword_28024E3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_268196D68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_19_3();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  if (!*v0)
  {
    return 0;
  }

  sub_2683CD7B8();
  if (!v9)
  {
    return 0;
  }

  sub_268129504(0, &qword_280253310, 0x277CD4220);
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v10 = type metadata accessor for SetTaskAttributeIntentModelNLv4();
  sub_268129D44(v0 + *(v10 + 32));

  v11 = sub_26835E5F8();
  v12 = sub_2683CB0D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
  return sub_26835E66C(v11, 0, 0, 0, 0, v8, v5, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_268196F0C()
{
  v1 = *(v0 + 24);
  if (sub_2683970D4(0, v1))
  {
    return 2;
  }

  if (sub_2683970D4(1, v1))
  {
    return 2;
  }

  return 0;
}

uint64_t sub_268196F5C()
{
  v1 = sub_2683CD928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v61 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC60, &qword_2683D4660);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_3();
  v67 = v9 - v10;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v58[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC68, &qword_2683D4668);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_19_3();
  v66 = v16 - v17;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v18);
  v64 = &v58[-v19];
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v20);
  v65 = &v58[-v21];
  OUTLINED_FUNCTION_8_0();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v58[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v58[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v58[-v29];
  v62 = *v0;
  if (v62 && sub_2683CD4D8())
  {
    sub_2683CD918();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v1);
  }

  v34 = *MEMORY[0x277D5EA28];
  v68 = v2;
  v35 = *(v2 + 104);
  v35(v28, v34, v1);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v1);
  v63 = v5;
  v36 = *(v5 + 48);
  sub_26816284C(v30, v13);
  sub_26816284C(v28, &v13[v36]);
  OUTLINED_FUNCTION_2_6(v13);
  if (v38)
  {
    sub_26812D9E0(v28, &qword_28024DC68, &qword_2683D4668);
    sub_26812D9E0(v30, &qword_28024DC68, &qword_2683D4668);
    OUTLINED_FUNCTION_2_6(&v13[v36]);
    if (v38)
    {
      v37 = v13;
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  sub_26816284C(v13, v25);
  OUTLINED_FUNCTION_2_6(&v13[v36]);
  if (v38)
  {
    sub_26812D9E0(v28, &qword_28024DC68, &qword_2683D4668);
    sub_26812D9E0(v30, &qword_28024DC68, &qword_2683D4668);
    (*(v68 + 8))(v25, v1);
LABEL_13:
    sub_26812D9E0(v13, &qword_28024DC60, &qword_2683D4660);
    goto LABEL_14;
  }

  v60 = v35;
  v48 = v61;
  v49 = v68;
  (*(v68 + 32))(v61, &v13[v36], v1);
  sub_2681628BC();
  v59 = sub_2683CFA58();
  v50 = v48;
  v35 = v60;
  v51 = *(v49 + 8);
  v51(v50, v1);
  sub_26812D9E0(v28, &qword_28024DC68, &qword_2683D4668);
  sub_26812D9E0(v30, &qword_28024DC68, &qword_2683D4668);
  v51(v25, v1);
  sub_26812D9E0(v13, &qword_28024DC68, &qword_2683D4668);
  if (v59)
  {
    goto LABEL_29;
  }

LABEL_14:
  if (v62 && sub_2683CD4D8())
  {
    v39 = v65;
    sub_2683CD918();
  }

  else
  {
    v39 = v65;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v1);
  }

  v43 = v67;
  v44 = v63;
  v45 = v64;
  v35(v64, *MEMORY[0x277D5EA58], v1);
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v1);
  v46 = *(v44 + 48);
  sub_26816284C(v39, v43);
  sub_26816284C(v45, v43 + v46);
  OUTLINED_FUNCTION_2_6(v43);
  if (v38)
  {
    OUTLINED_FUNCTION_9_12(v45);
    OUTLINED_FUNCTION_9_12(v39);
    OUTLINED_FUNCTION_2_6(v43 + v46);
    if (!v38)
    {
      goto LABEL_27;
    }

    v37 = v43;
LABEL_23:
    sub_26812D9E0(v37, &qword_28024DC68, &qword_2683D4668);
LABEL_29:
    v55 = 1;
    return v55 & 1;
  }

  sub_26816284C(v43, v66);
  OUTLINED_FUNCTION_2_6(v43 + v46);
  if (v47)
  {
    OUTLINED_FUNCTION_9_12(v45);
    OUTLINED_FUNCTION_9_12(v39);
    (*(v68 + 8))(v66, v1);
LABEL_27:
    sub_26812D9E0(v43, &qword_28024DC60, &qword_2683D4660);
    v55 = 0;
    return v55 & 1;
  }

  v52 = v61;
  v53 = v68;
  (*(v68 + 32))(v61, v43 + v46, v1);
  sub_2681628BC();
  v54 = v66;
  v55 = sub_2683CFA58();
  v56 = *(v53 + 8);
  v56(v52, v1);
  sub_26812D9E0(v45, &qword_28024DC68, &qword_2683D4668);
  sub_26812D9E0(v39, &qword_28024DC68, &qword_2683D4668);
  v56(v54, v1);
  sub_26812D9E0(v43, &qword_28024DC68, &qword_2683D4668);
  return v55 & 1;
}

void sub_2681975FC()
{
  sub_268197780(319, &qword_28024E3F8, MEMORY[0x277D5E918]);
  if (v0 <= 0x3F)
  {
    sub_268197780(319, &qword_28024E400, MEMORY[0x277D5EB38]);
    if (v1 <= 0x3F)
    {
      sub_26819771C();
      if (v2 <= 0x3F)
      {
        sub_2683CB668();
        if (v3 <= 0x3F)
        {
          sub_268197780(319, &qword_28024E418, MEMORY[0x277D5E720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26819771C()
{
  if (!qword_28024E408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024E410, qword_2683D6BC0);
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28024E408);
    }
  }
}

void sub_268197780(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2683CFFA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return sub_2683CFCD8();
}

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1)
{

  return sub_26812D9E0(a1, v1, v2);
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

uint64_t sub_268197860(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2681978A0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2681978FC@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  sub_26812C2A8(a1, &v11 - v7, &qword_28024DD70, &unk_2683D4E80);

  v9 = v2;

  return sub_2681989AC(v9, v8, a2);
}

uint64_t sub_2681979F4@<X0>(uint64_t a1@<X0>, void (**a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  v72 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v57 - v8;
  v9 = sub_2683CF8B8();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v69 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2683CC288();
  v12 = *(v68 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v68);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD30, &qword_2683D4CF8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v59 = &v57 - v18;
  v60 = sub_2683CCF08();
  v58 = *(v60 - 8);
  v19 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  v21 = *(v73 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v73);
  v70 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = (&v57 - v25);
  v61 = a4;
  result = sub_268198178(a1, a4);
  v28 = 0;
  v62 = MEMORY[0x277D84F90];
  v74 = a1;
  v75 = MEMORY[0x277D84F90];
  v29 = *(a1 + 16);
  v66 = v12 + 8;
  v67 = v12 + 16;
  while (v29 != v28)
  {
    if (v28 >= v29)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    result = sub_26812C2A8(v74 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v28, v26, &qword_28024E440, &qword_2683D6CD0);
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_27;
    }

    v31 = v26 + *(v73 + 28);
    v32 = *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428, &qword_2683D6CB0) + 32)];
    if (*(v32 + 16))
    {
      v33 = v68;
      (*(v12 + 16))(v15, v32 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v68);
      v34 = sub_2683CC268();
      v36 = v35;
      (*(v12 + 8))(v15, v33);
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = (v71)(v34, v36, *v26, v26[1]);

    result = sub_26812C310(v26, &qword_28024E440, &qword_2683D6CD0);
    ++v28;
    if (v37)
    {
      MEMORY[0x26D616770](result);
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v62 = v75;
      v28 = v30;
    }
  }

  v38 = v59;
  sub_268368898();

  v39 = v60;
  if (__swift_getEnumTagSinglePayload(v38, 1, v60) == 1)
  {
    sub_26812C310(v38, &qword_28024DD30, &qword_2683D4CF8);
  }

  else
  {
    v41 = v57;
    v40 = v58;
    (*(v58 + 32))(v57, v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD38, &unk_2683D6D10);
    v42 = *(v40 + 72);
    v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_2683D1EC0;
    (*(v40 + 16))(v44 + v43, v41, v39);
    sub_2683CC448();
    (*(v40 + 8))(v41, v39);
  }

  v46 = v64;
  v45 = v65;
  if (v29)
  {
    v73 = v70 + *(v73 + 28);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428, &qword_2683D6CB0) + 36);
    v48 = v74 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v71 = (v63 + 32);
    v72 = v47;
    v49 = MEMORY[0x277D84F90];
    v74 = *(v21 + 72);
    do
    {
      v50 = v70;
      sub_26812C2A8(v48, v70, &qword_28024E440, &qword_2683D6CD0);
      sub_26812C2A8(v73 + v72, v45, &qword_28024DD28, &qword_2683D4CF0);
      sub_26812C310(v50, &qword_28024E440, &qword_2683D6CD0);
      if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
      {
        sub_26812C310(v45, &qword_28024DD28, &qword_2683D4CF0);
      }

      else
      {
        v51 = *v71;
        (*v71)(v69, v45, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = *(v49 + 16);
          sub_2682E48E8();
          v49 = v55;
        }

        v52 = *(v49 + 16);
        if (v52 >= *(v49 + 24) >> 1)
        {
          sub_2682E48E8();
          v49 = v56;
        }

        *(v49 + 16) = v52 + 1;
        v53 = v49 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v52;
        v46 = v64;
        v51(v53, v69, v64);
        v45 = v65;
      }

      v48 += v74;
      --v29;
    }

    while (v29);
  }

  return sub_2683CC418();
}

uint64_t sub_268198178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v90 = sub_2683CC288();
  v3 = *(v90 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v90);
  v79 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v87 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD40, &qword_2683D4D10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v67 - v10;
  v89 = sub_2683CC168();
  v11 = *(v89 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2683CCA28();
  v69 = *(v70 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v72 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v67 - v23;
  v25 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  v81 = v21;
  v82 = v3;
  v68 = a1;
  v67 = v17;
  if (v25)
  {
    v78 = &v24[*(v22 + 28)];
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428, &qword_2683D6CB0);
    v28 = 0;
    v29 = *(v27 + 32);
    v76 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v77 = v29;
    v30 = *(v17 + 72);
    v74 = v25;
    v75 = v30;
    v84 = v11 + 32;
    v85 = (v3 + 16);
    v31 = v26;
    v73 = v24;
    while (1)
    {
      v83 = v28;
      sub_26812C2A8(v76 + v75 * v28, v24, &qword_28024E440, &qword_2683D6CD0);
      v32 = *&v78[v77];
      v33 = *(v32 + 16);
      if (v33)
      {
        v80 = v31;
        v91 = v26;
        sub_268390678(0, v33, 0);
        v26 = v91;
        v34 = v24;
        v35 = v32 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v37 = *v34;
        v36 = v34[1];
        v38 = *(v3 + 72);
        do
        {
          v39 = qword_28024CB80;

          if (v39 != -1)
          {
            swift_once();
          }

          sub_2683CD158();
          v40 = v86;
          sub_2683CC258();
          v41 = v90;
          __swift_storeEnumTagSinglePayload(v40, 0, 1, v90);
          (*v85)(v87, v35, v41);
          v42 = v88;
          sub_2683CC158();
          v91 = v26;
          v44 = *(v26 + 16);
          v43 = *(v26 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_268390678(v43 > 1, v44 + 1, 1);
            v42 = v88;
            v26 = v91;
          }

          *(v26 + 16) = v44 + 1;
          (*(v11 + 32))(v26 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v44, v42, v89);
          v35 += v38;
          --v33;
        }

        while (v33);
        v21 = v81;
        v3 = v82;
        v24 = v73;
        v25 = v74;
        v31 = v80;
      }

      sub_26812C310(v24, &qword_28024E440, &qword_2683D6CD0);
      v45 = *(v26 + 16);
      v46 = *(v31 + 16);
      if (__OFADD__(v46, v45))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v46 + v45 > *(v31 + 24) >> 1)
      {
        sub_2682E4758();
        v31 = v47;
      }

      if (*(v26 + 16))
      {
        if ((*(v31 + 24) >> 1) - *(v31 + 16) < v45)
        {
          goto LABEL_36;
        }

        v48 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v49 = *(v11 + 72);
        swift_arrayInitWithCopy();

        v26 = MEMORY[0x277D84F90];
        v50 = v83;
        if (v45)
        {
          v51 = *(v31 + 16);
          v52 = __OFADD__(v51, v45);
          v53 = v51 + v45;
          if (v52)
          {
            goto LABEL_37;
          }

          *(v31 + 16) = v53;
        }
      }

      else
      {

        v26 = MEMORY[0x277D84F90];
        v50 = v83;
        if (v45)
        {
          goto LABEL_35;
        }
      }

      v28 = v50 + 1;
      if (v28 == v25)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_24:
  if (qword_28024CB88 != -1)
  {
LABEL_38:
    swift_once();
  }

  sub_2683CD158();
  sub_2683CCA08();
  if (v25)
  {
    v80 = v31;
    v91 = MEMORY[0x277D84F90];
    sub_268390620(0, v25, 0);
    v54 = v91;
    v55 = v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v89 = *(v67 + 72);
    do
    {
      v56 = v25;
      sub_26812C2A8(v55, v21, &qword_28024E440, &qword_2683D6CD0);
      v57 = v21;
      v58 = *v21;
      v59 = v21[1];
      v60 = qword_28024CB80;

      if (v60 != -1)
      {
        swift_once();
      }

      sub_2683CD158();
      v61 = v79;
      sub_2683CC258();
      sub_26812C310(v57, &qword_28024E440, &qword_2683D6CD0);
      v91 = v54;
      v63 = *(v54 + 16);
      v62 = *(v54 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_268390620(v62 > 1, v63 + 1, 1);
        v61 = v79;
        v54 = v91;
      }

      *(v54 + 16) = v63 + 1;
      (*(v82 + 32))(v54 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v63, v61, v90);
      v55 += v89;
      v25 = v56 - 1;
      v21 = v81;
    }

    while (v56 != 1);
    v31 = v80;
  }

  v64 = v72;
  v65 = sub_2683CCA18();

  (*(v69 + 8))(v64, v70);
  v91 = v31;
  sub_2682C00E0(v65);
  sub_268169078();
}

uint64_t sub_2681989AC@<X0>(void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v30[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E430, &qword_2683D6CB8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2683CE288();
  v15 = a1;
  Entity<A>.init(_:)(v15, v16, v17, v18, v19, v20, v21, v22, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11]);
  type metadata accessor for Common.EventTrigger(0);
  sub_2683CE278();
  if (sub_2683CD568())
  {
    sub_26812C2A8(a2, v8, &qword_28024DD70, &unk_2683D4E80);
    sub_26819A7D0();
    sub_2683CF868();
    sub_26812C310(a2, &qword_28024DD70, &unk_2683D4E80);

    v23 = sub_2683CF8B8();
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v23);
    if (!__swift_getEnumTagSinglePayload(v12, 1, v23))
    {
      v28 = v30[0];
      (*(*(v23 - 8) + 32))(v30[0], v12, v23);
      v26 = v28;
      v27 = 0;
      v25 = v23;
      return __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
    }

    sub_26812C310(v12, &qword_28024DD28, &qword_2683D4CF0);
  }

  else
  {
    sub_26812C310(a2, &qword_28024DD70, &unk_2683D4E80);
  }

  v25 = sub_2683CF8B8();
  v26 = v30[0];
  v27 = 1;
  return __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
}

uint64_t sub_268198CE0()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[2] = v7;
  v1[3] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_23(v12);
  v14 = *(v13 + 64);
  v1[11] = OUTLINED_FUNCTION_15_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v15);
  v17 = *(v16 + 64);
  v1[12] = OUTLINED_FUNCTION_15_1();
  v18 = sub_2683CF168();
  v1[13] = v18;
  OUTLINED_FUNCTION_3_1(v18);
  v1[14] = v19;
  v21 = *(v20 + 64);
  v1[15] = OUTLINED_FUNCTION_15_1();
  v22 = sub_2683CC598();
  v1[16] = v22;
  OUTLINED_FUNCTION_3_1(v22);
  v1[17] = v23;
  v25 = *(v24 + 64);
  v1[18] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_268198E68, 0, 0);
}

uint64_t sub_268198E68()
{
  v1 = sub_2681DF5DC(*(v0 + 24));
  *(v0 + 152) = v1;
  v2 = v1;
  v3 = *(*(v0 + 72) + 32);
  type metadata accessor for NotebookSpatialEventTriggerConcept(0);
  v4 = sub_268163274(v2);
  *(v0 + 160) = v4;
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_268198FC0;
  v6 = *(v0 + 144);

  return sub_26815F510(v6, v4);
}

uint64_t sub_268198FC0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 168);
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    v7 = sub_26819943C;
  }

  else
  {
    v8 = *(v3 + 160);

    v7 = sub_2681990CC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2681990CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_12_10();
  v19 = v18[18];
  v21 = v18[12];
  v20 = v18[13];
  sub_2681A1324(v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v20) == 1)
  {
    v22 = v18[12];
    v23 = v18[13];
    v24 = v18[15];
    sub_2683CFB38();
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
    {
      sub_26812C310(v18[12], &unk_28024E7C0, &unk_2683D6CA0);
    }
  }

  else
  {
    (*(v18[14] + 32))(v18[15], v18[12], v18[13]);
  }

  v25 = v18[14];
  v68 = v18[13];
  v70 = v18[15];
  v26 = v18[10];
  v62 = v18[11];
  v64 = v18[19];
  v27 = v18[8];
  v28 = v18[9];
  v30 = v18[6];
  v29 = v18[7];
  v32 = v18[4];
  v31 = v18[5];
  v66 = v18[2];
  v33 = *(v28 + 40);
  v34 = *(v28 + 48);

  sub_2683CF818();
  v35 = sub_2683CF828();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v35);
  sub_2681978FC(v26, v62);

  sub_26812C310(v26, &qword_28024DD70, &unk_2683D4E80);
  (*(v25 + 16))(v66, v70, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E420, &unk_2683F6620);
  v36 = sub_2683CC288();
  OUTLINED_FUNCTION_3_1(v36);
  v38 = *(v37 + 72);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2683D1EC0;
  v42 = sub_2683CF158();
  v61 = v43;
  v63 = v42;
  if (qword_28024CBB8 != -1)
  {
    swift_once();
  }

  v44 = v18[18];
  v45 = v18[17];
  v60 = v18[16];
  v46 = v18[14];
  v47 = v18[15];
  v48 = v18[13];
  v67 = v18[19];
  v69 = v18[12];
  v65 = v18[11];
  v71 = v18[10];
  v49 = v18[2];
  sub_2683CCFA8();
  sub_2683CC258();
  (*(v46 + 8))(v47, v48);
  (*(v45 + 8))(v44, v60);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428, &qword_2683D6CB0);
  *(v49 + v50[7]) = v67;
  *(v49 + v50[8]) = v41;
  sub_26819A760(v65, v49 + v50[9]);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_11_15();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, v60, v61, v63, v65, v67, v69, v71, a16, a17, a18);
}

uint64_t sub_26819943C()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);

  OUTLINED_FUNCTION_40();

  return v8();
}

uint64_t sub_2681994E8()
{
  OUTLINED_FUNCTION_14();
  v1[242] = v0;
  v1[241] = v2;
  v1[235] = v3;
  v1[229] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  v1[243] = OUTLINED_FUNCTION_15_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  v1[244] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[245] = v9;
  v11 = *(v10 + 64);
  v1[246] = OUTLINED_FUNCTION_15_1();
  v12 = sub_2683CF168();
  v1[247] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[248] = v13;
  v15 = *(v14 + 64);
  v1[249] = OUTLINED_FUNCTION_15_1();
  v16 = sub_2683CC598();
  v1[250] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v1[251] = v17;
  v19 = *(v18 + 64) + 15;
  v1[252] = swift_task_alloc();
  v1[253] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268199684, 0, 0);
}

uint64_t sub_268199684()
{
  OUTLINED_FUNCTION_12_10();
  v1 = *(v0 + 1928);
  v2 = *(v0 + 1880);
  *(v0 + 2032) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E448, &qword_2683D6CD8);
  v3 = sub_2683CC878();
  *(v0 + 2040) = v3;
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v5 = sub_268129C00();
  *(v0 + 2048) = v5;
  sub_26819A814(v1, v0 + 1336);
  v6 = swift_allocObject();
  *(v0 + 2056) = v6;
  v6[2] = v3;
  v6[3] = v5;
  memcpy(v6 + 4, (v0 + 1336), 0x88uLL);

  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E450, &qword_2683D6CF0);
  swift_asyncLet_begin();
  v8 = sub_2683CC878();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v0 + 1984);
    v11 = *(v0 + 1960);
    v34 = *(v0 + 1952);
    v35 = MEMORY[0x277D84F90];
    sub_2683906D0(0, v9, 0);
    v12 = v35;
    v13 = v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v33 = *(v11 + 72);
    do
    {
      v14 = *(v0 + 1992);
      v15 = *(v0 + 1976);
      v16 = *(v0 + 1968);
      sub_26812C2A8(v13, v16, &qword_28024E440, &qword_2683D6CD0);
      (*(v10 + 16))(v14, v16 + *(v34 + 28), v15);
      sub_26812C310(v16, &qword_28024E440, &qword_2683D6CD0);
      v18 = *(v35 + 16);
      v17 = *(v35 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2683906D0(v17 > 1, v18 + 1, 1);
      }

      v19 = *(v0 + 1992);
      v20 = *(v0 + 1976);
      *(v35 + 16) = v18 + 1;
      (*(v10 + 32))(v35 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v19, v20);
      v13 += v33;
      --v9;
    }

    while (v9);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v21 = *(v0 + 2024);
  v22 = *(v0 + 2000);
  v23 = *(v0 + 1936);
  v24 = *(v23 + 1);
  *(v0 + 2064) = *(v23 + 2);
  *(v0 + 2072) = *(v23 + 3);
  v25 = *(v23 + 4);
  *(v0 + 1752) = *(v23 + 40);
  v26 = swift_allocObject();
  *(v0 + 2080) = v26;
  v27 = v23[2];
  v28 = *(v23 + 6);
  v29 = *v23;
  *(v26 + 32) = v23[1];
  *(v26 + 48) = v27;
  *(v26 + 16) = v29;
  *(v26 + 64) = v28;
  *(v26 + 72) = v12;

  sub_26819A9C4(v0 + 1752, v0 + 1768);
  swift_asyncLet_begin();
  OUTLINED_FUNCTION_6_14();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x282200930](v30);
}

uint64_t sub_2681999F8()
{
  *(v1 + 2088) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, *(v1 + 2024), sub_268199F10, v1 + 1472);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_268199A34);
  }
}

uint64_t sub_268199A34()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 1928);
  (*(*(v0 + 2008) + 16))(*(v0 + 2016), *(v0 + 2024), *(v0 + 2000));
  sub_26813CA00(v1, v0 + 1512);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  *(v0 + 2112) = sub_2683CC0A8() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E740, &qword_2683D80B0);
  inited = swift_initStackObject();
  *(v0 + 2096) = inited;
  *(inited + 16) = xmmword_2683D1EC0;

  return MEMORY[0x282200930](v0 + 16);
}

uint64_t sub_268199B20()
{
  OUTLINED_FUNCTION_7();
  v1[263] = v0;
  if (v0)
  {
    v2 = v1[252];
    v3 = v1[251];
    v4 = v1[250];
    __swift_destroy_boxed_opaque_existential_0(v1 + 189);
    (*(v3 + 8))(v2, v4);
    v5 = sub_26819A010;
  }

  else
  {
    v5 = sub_268199BC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_268199BC8()
{
  OUTLINED_FUNCTION_12_10();
  v1 = *(v0 + 1784);
  *(*(v0 + 2096) + 32) = v1;
  v26 = MEMORY[0x277D84F90];
  v2 = v1;
  for (i = 0; (i & 1) == 0; i = 1)
  {
    v4 = *(*(v0 + 2096) + 32);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    MEMORY[0x26D616770]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2683CFCD8();
    }

    sub_2683CFD08();
  }

  v23 = *(v0 + 2112);
  v6 = *(v0 + 2072);
  v7 = *(v0 + 2064);
  v8 = *(v0 + 2032);
  v22 = *(v0 + 2016);
  v24 = *(v0 + 2008);
  v25 = *(v0 + 2000);
  v9 = *(v0 + 1944);
  v10 = *(v0 + 1880);
  v11 = *(v0 + 1832);
  swift_setDeallocating();
  sub_2681F5544();
  v12 = sub_2683CC878();
  sub_2681979F4(v12, v7, v6, v9);

  v13 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  v14 = sub_2683CCC98();
  *(v0 + 1672) = 0u;
  *(v0 + 1688) = 0u;
  *(v0 + 1704) = 0;
  v15 = MEMORY[0x277D5C1D8];
  v11[3] = v14;
  v11[4] = v15;
  __swift_allocate_boxed_opaque_existential_0(v11);
  sub_2683CC348();

  sub_26812C310(v0 + 1672, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v9, &qword_28024D400, &qword_2683D2460);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1512));
  (*(v24 + 8))(v22, v25);
  OUTLINED_FUNCTION_6_14();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x282200920](v16, v17, v18, v19);
}

uint64_t sub_268199E3C()
{
  v1 = v0[260];
  v2 = v0[257];
  v3 = v0[256];
  v4 = v0[255];
  v5 = v0[253];
  v6 = v0[252];
  v7 = v0[249];
  v8 = v0[246];
  v9 = v0[243];

  OUTLINED_FUNCTION_40();

  return v10();
}

uint64_t sub_268199F58()
{
  v2 = *(v0 + 2088);
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_26819A010()
{
  OUTLINED_FUNCTION_14();
  *(*(v0 + 2096) + 16) = 0;
  swift_setDeallocating();
  sub_2681F5544();
  v1 = OUTLINED_FUNCTION_6_14();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 1712);
}

uint64_t sub_26819A0C4()
{
  v2 = *(v0 + 2104);
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_26819A17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_26819A244;

  return sub_2681A487C(0, a4, a2, a3);
}

uint64_t sub_26819A244()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;

    return MEMORY[0x2822009F8](sub_26819A380, 0, 0);
  }
}

uint64_t sub_26819A380()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_40();
  return v1();
}

uint64_t sub_26819A3B0(uint64_t a1, int **a2, uint64_t a3)
{
  v6 = a2[1];
  v10 = (*a2 + **a2);
  v7 = (*a2)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_268133EC8;

  return v10(a1, a3);
}

uint64_t sub_26819A4B4()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_26819A580;

  return sub_2681994E8();
}

uint64_t sub_26819A580()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_26819A660()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_26819AA20;

  return sub_268198CE0();
}

uint64_t sub_26819A760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26819A7D0()
{
  result = qword_28024E438;
  if (!qword_28024E438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024E438);
  }

  return result;
}

uint64_t sub_26819A870()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2681342AC;

  return sub_26819A17C(v3, v4, v5, v0 + 32);
}

uint64_t sub_26819A91C()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_268133EC8;

  return sub_26819A3B0(v3, (v0 + 16), v4);
}

uint64_t OUTLINED_FUNCTION_3_13()
{
  v2 = v0[260];
  v3 = v0[257];
  v4 = v0[256];
  v5 = v0[255];
  v6 = v0[253];
  v7 = v0[252];
  v8 = v0[249];
  v9 = v0[246];
  v10 = v0[243];
}

uint64_t type metadata accessor for SearchForNotebookItemsCATPatternsExecutor()
{
  result = qword_28024E458;
  if (!qword_28024E458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26819AB2C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819AB40()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12(MEMORY[0x277D55BE8]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(42);

  return v6(v5);
}

uint64_t sub_26819AC3C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819AC50()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12(MEMORY[0x277D55BE8]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(40);

  return v6(v5);
}

uint64_t sub_26819AD4C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819AD60()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12(MEMORY[0x277D55BE8]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(43);

  return v6(v5);
}

uint64_t sub_26819AE5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_26819AEB0(a1, a2);
}

uint64_t sub_26819AEB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CF238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2683CF0A8();
  (*(v5 + 8))(a2, v4);
  sub_268163208(a1);
  return v12;
}

uint64_t Snippet.ReminderList.init(identifier:title:groupName:color:badge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v10 = *(a7 + 16);
  v11 = *(a7 + 24);
  v12 = *a8;
  v13 = a8[1];
  v14 = *(a8 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = *a7;
  *(a9 + 64) = v10;
  *(a9 + 72) = v11;
  v15 = OUTLINED_FUNCTION_8_12();
  result = sub_268151B3C(v15, v16, v17);
  *(a9 + 80) = v12;
  *(a9 + 88) = v13;
  *(a9 + 96) = v14;
  return result;
}

uint64_t Snippet.ReminderList.ListBadgeEmblem.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static Snippet.ReminderList.ListBadge.emblem(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

uint64_t Snippet.ReminderList.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.ReminderList.identifier.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Snippet.ReminderList.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.ReminderList.title.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippet.ReminderList.groupName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.ReminderList.groupName.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

__n128 Snippet.ReminderList.color.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u64[0];
  v3 = v1[4].n128_u8[8];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 Snippet.ReminderList.color.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v2;
  v1[4].n128_u8[8] = v3;
  return result;
}

uint64_t Snippet.ReminderList.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 96);
  *(a1 + 16) = v4;
  return sub_268151B1C(v2, v3, v4);
}

uint64_t Snippet.ReminderList.badge.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_268151B3C(*(v1 + 80), *(v1 + 88), *(v1 + 96));
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  return result;
}

double static Snippet.ReminderList.ListBadge.default.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.81776662e-306;
  *a1 = xmmword_2683D6DC0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t static Snippet.ReminderList.ListBadge.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v11 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v13 = sub_2683D0598();
        OUTLINED_FUNCTION_69();
        OUTLINED_FUNCTION_1_18();
        OUTLINED_FUNCTION_1_18();
        sub_26814304C();
        OUTLINED_FUNCTION_69();
        sub_26814304C();
        return v13 & 1;
      }

      goto LABEL_16;
    }

LABEL_10:
    OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_1_18();
    OUTLINED_FUNCTION_1_18();
    sub_26814304C();
    OUTLINED_FUNCTION_69();
    sub_26814304C();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = *a1;
  if (v3 == v5 && v2 == v4)
  {
LABEL_16:
    OUTLINED_FUNCTION_1_18();
    OUTLINED_FUNCTION_1_18();
    sub_26814304C();
    OUTLINED_FUNCTION_41_0();
    sub_26814304C();
    return 1;
  }

  v9 = sub_2683D0598();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_1_18();
  sub_26814304C();
  OUTLINED_FUNCTION_69();
  sub_26814304C();
  result = 0;
  if (v9)
  {
    return 1;
  }

  return result;
}

uint64_t static Snippet.ReminderList.ListBadgeEmblem.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2683D0598();
  }
}

uint64_t sub_26819B4B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696A6F6D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D656C626D65 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_26819B570(char a1)
{
  if (a1)
  {
    return 0x6D656C626D65;
  }

  else
  {
    return 0x696A6F6D65;
  }
}

uint64_t sub_26819B5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26819B4B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26819B5D0(uint64_t a1)
{
  v2 = sub_26819BA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819B60C(uint64_t a1)
{
  v2 = sub_26819BA00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26819B648(uint64_t a1)
{
  v2 = sub_26819BA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819B684(uint64_t a1)
{
  v2 = sub_26819BA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26819B6C0(uint64_t a1)
{
  v2 = sub_26819BAFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819B6FC(uint64_t a1)
{
  v2 = sub_26819BAFC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ReminderList.ListBadge.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E468, &qword_2683D6DD0);
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v36 = v5;
  v37 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E470, &qword_2683D6DD8);
  v11 = OUTLINED_FUNCTION_0_3(v10);
  v33 = v12;
  v34 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E478, &qword_2683D6DE0);
  OUTLINED_FUNCTION_0_3(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v32 - v24;
  v26 = v0[1];
  v38 = *v0;
  v39 = v26;
  v27 = *(v0 + 16);
  v28 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26819BA00();
  sub_2683D0718();
  if (v27)
  {
    LOBYTE(v40) = 1;
    sub_26819BA54();
    v29 = v35;
    sub_2683D04C8();
    v40 = v38;
    v41 = v39;
    sub_26819BAA8();
    v30 = v37;
    sub_2683D0548();
    (*(v36 + 8))(v29, v30);
  }

  else
  {
    LOBYTE(v40) = 0;
    sub_26819BAFC();
    sub_2683D04C8();
    v31 = v34;
    sub_2683D0518();
    (*(v33 + 8))(v17, v31);
  }

  (*(v20 + 8))(v25, v18);
  OUTLINED_FUNCTION_62();
}

unint64_t sub_26819BA00()
{
  result = qword_28024E480;
  if (!qword_28024E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E480);
  }

  return result;
}

unint64_t sub_26819BA54()
{
  result = qword_28024E488;
  if (!qword_28024E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E488);
  }

  return result;
}

unint64_t sub_26819BAA8()
{
  result = qword_28024E490;
  if (!qword_28024E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E490);
  }

  return result;
}

unint64_t sub_26819BAFC()
{
  result = qword_28024E498;
  if (!qword_28024E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E498);
  }

  return result;
}

uint64_t Snippet.ReminderList.ListBadge.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x26D617190](*(v0 + 16));

  return sub_2683CFB48();
}

uint64_t Snippet.ReminderList.ListBadge.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_79();
  MEMORY[0x26D617190](v3);
  sub_2683CFB48();
  return sub_2683D06D8();
}

void Snippet.ReminderList.ListBadge.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v60 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4A0, &qword_2683D6DE8);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v57 = v7;
  v58 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v51[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4A8, &qword_2683D6DF0);
  OUTLINED_FUNCTION_0_3(v13);
  v56 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v51[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4B0, &unk_2683D6DF8);
  OUTLINED_FUNCTION_0_3(v20);
  v59 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48_1();
  v25 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26819BA00();
  sub_2683D06F8();
  if (v0)
  {
    goto LABEL_8;
  }

  v54 = v13;
  v55 = v19;
  v63 = v3;
  v26 = v60;
  v27 = sub_2683D04B8();
  sub_268151B7C(v27, 0);
  if (v29 == v30 >> 1)
  {
LABEL_7:
    v36 = sub_2683D01D8();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0) + 48);
    *v38 = &type metadata for Snippet.ReminderList.ListBadge;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v59 + 8))(v1, v20);
    v3 = v63;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v3);
LABEL_9:
    OUTLINED_FUNCTION_62();
    return;
  }

  v53 = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    sub_268151B68(v29 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v52 = v31;
      if (v31)
      {
        LOBYTE(v61) = 1;
        sub_26819BA54();
        OUTLINED_FUNCTION_15_12();
        sub_26819D608();
        v41 = v58;
        sub_2683D04A8();
        v53 = 0;
        swift_unknownObjectRelease();
        (*(v57 + 8))(v12, v41);
        v44 = OUTLINED_FUNCTION_4_15();
        v45(v44);
        v46 = v61;
        v47 = v62;
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_26819BAFC();
        v40 = v55;
        OUTLINED_FUNCTION_15_12();
        v42 = v54;
        v43 = sub_2683D0478();
        v53 = 0;
        v46 = v43;
        v47 = v48;
        swift_unknownObjectRelease();
        (*(v56 + 8))(v40, v42);
        v49 = OUTLINED_FUNCTION_4_15();
        v50(v49);
      }

      *v26 = v46;
      *(v26 + 8) = v47;
      *(v26 + 16) = v52;
      __swift_destroy_boxed_opaque_existential_0(v63);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26819C154()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2683D0698();
  MEMORY[0x26D617190](v3);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t Snippet.ReminderList.ListBadgeEmblem.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.ReminderList.ListBadgeEmblem.rawValue.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_26819C238(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26819C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26819C238(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26819C2F8(uint64_t a1)
{
  v2 = sub_26819D65C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819C334(uint64_t a1)
{
  v2 = sub_26819D65C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ReminderList.ListBadgeEmblem.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4C0, &qword_2683D6E08);
  OUTLINED_FUNCTION_0_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48_1();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26819D65C();
  sub_2683D0718();
  sub_2683D0518();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_62();
}

uint64_t Snippet.ReminderList.ListBadgeEmblem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2683CFB48();
}

uint64_t Snippet.ReminderList.ListBadgeEmblem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_79();
  sub_2683CFB48();
  return sub_2683D06D8();
}

void Snippet.ReminderList.ListBadgeEmblem.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4D0, &qword_2683D6E10);
  OUTLINED_FUNCTION_0_3(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48_1();
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26819D65C();
  sub_2683D06F8();
  if (!v0)
  {
    v13 = sub_2683D0478();
    v15 = v14;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_0(v3);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_26819C654()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2683D0698();
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t Snippet.ReminderList.redacted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v22 = v1[6];
  v23 = *v1;
  v20 = v1[8];
  v21 = v1[7];
  v19 = *(v1 + 72);
  v9 = v1[10];
  v8 = v1[11];
  v10 = *(v1 + 96);

  v11 = sub_2683CFAC8();
  v13 = v12;
  if (v7)
  {
    v6 = sub_2683CFAC8();
  }

  else
  {
    v14 = 0;
  }

  *a1 = v23;
  *(a1 + 8) = v3;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = v6;
  *(a1 + 40) = v14;
  *(a1 + 48) = v22;
  *(a1 + 56) = v21;
  *(a1 + 64) = v20;
  *(a1 + 72) = v19;
  sub_268151B1C(v9, v8, v10);
  v15 = OUTLINED_FUNCTION_8_12();
  result = sub_268151B3C(v15, v16, v17);
  *(a1 + 80) = v9;
  *(a1 + 88) = v8;
  *(a1 + 96) = v10;
  return result;
}

BOOL static Snippet.ReminderList.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 64);
  v18 = *(a2 + 72);
  v20 = *(a2 + 80);
  v19 = *(a2 + 88);
  v21 = *(a2 + 96);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }

    OUTLINED_FUNCTION_17_8();
    if (*v27 != *v28 || v22 != v23)
    {
      v67 = v26;
      v70 = v25;
      v62 = v14;
      v30 = v4;
      v31 = v8;
      v32 = v18;
      v33 = v24;
      v34 = sub_2683D0598();
      v26 = v67;
      v25 = v70;
      v24 = v33;
      v18 = v32;
      v8 = v31;
      v4 = v30;
      v14 = v62;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_8();
    if (v35)
    {
      return 0;
    }
  }

  if (v2 != v12 || v3 != v13)
  {
    OUTLINED_FUNCTION_9_0();
    v68 = v38;
    v71 = v37;
    v40 = v39;
    v41 = sub_2683D0598();
    v26 = v68;
    v25 = v71;
    v24 = v40;
    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v14 || v5 != v15)
    {
      v69 = v26;
      v72 = v25;
      v43 = v24;
      v44 = sub_2683D0598();
      v26 = v69;
      v25 = v72;
      v24 = v43;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v8 == 3)
  {
    if (v18 != 3)
    {
      return 0;
    }
  }

  else
  {
    v76 = v25;
    v77 = v24;
    v78 = v8;
    if (v18 == 3)
    {
      return 0;
    }

    v73 = v26;
    v74 = v17;
    v75 = v18;
    if (!static Snippet.Color.== infix(_:_:)(&v76, &v73))
    {
      return 0;
    }
  }

  if (v65 != 255)
  {
    v76 = v66;
    LOBYTE(v77) = v65;
    if (v63 != 255)
    {
      v73 = v64;
      LOBYTE(v74) = v63 & 1;
      sub_268151B1C(v66, *(&v66 + 1), v65);
      sub_268151B1C(v64, *(&v64 + 1), v63);
      v45 = OUTLINED_FUNCTION_69();
      sub_268151B1C(v45, v46, v65);
      v47 = static Snippet.ReminderList.ListBadge.== infix(_:_:)(&v76, &v73);
      sub_26814304C();
      OUTLINED_FUNCTION_69();
      sub_26814304C();
      v48 = OUTLINED_FUNCTION_69();
      sub_268151B3C(v48, v49, v65);
      return (v47 & 1) != 0;
    }

    v52 = -1;
    sub_268151B1C(v66, *(&v66 + 1), v65);
    v53 = *(&v64 + 1);
    v54 = v64;
    sub_268151B1C(v64, *(&v64 + 1), 255);
    v55 = OUTLINED_FUNCTION_41_0();
    sub_268151B1C(v55, v56, v65);
    OUTLINED_FUNCTION_41_0();
    sub_26814304C();
LABEL_36:
    v57 = OUTLINED_FUNCTION_41_0();
    sub_268151B3C(v57, v58, v65);
    sub_268151B3C(v54, v53, v52);
    return 0;
  }

  v50 = OUTLINED_FUNCTION_41_0();
  sub_268151B1C(v50, v51, 255);
  v52 = v63;
  if (v63 != 255)
  {
    v53 = *(&v64 + 1);
    v54 = v64;
    sub_268151B1C(v64, *(&v64 + 1), v63);
    goto LABEL_36;
  }

  sub_268151B1C(v64, *(&v64 + 1), 255);
  v60 = OUTLINED_FUNCTION_41_0();
  sub_268151B3C(v60, v61, 255);
  return 1;
}

uint64_t sub_26819CAA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
        if (v8 || (sub_2683D0598() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6567646162 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2683D0598();

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

uint64_t sub_26819CC54(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x6D614E70756F7267;
      break;
    case 3:
      result = 0x726F6C6F63;
      break;
    case 4:
      result = 0x6567646162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26819CCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26819CAA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26819CD1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26819CC4C();
  *a1 = result;
  return result;
}

uint64_t sub_26819CD44(uint64_t a1)
{
  v2 = sub_26819D6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819CD80(uint64_t a1)
{
  v2 = sub_26819D6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ReminderList.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v33 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4D8, &qword_2683D6E18);
  OUTLINED_FUNCTION_0_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v31 = v0[3];
  v32 = v14;
  v15 = v0[4];
  v29 = v0[5];
  v30 = v15;
  v16 = v0[6];
  v27 = v0[7];
  v28 = v16;
  v26 = v0[8];
  v38 = *(v0 + 72);
  v17 = v0[11];
  v23 = v0[10];
  v24 = v17;
  v25 = *(v0 + 96);
  v18 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26819D6B0();
  sub_2683D0718();
  LOBYTE(v34) = 0;
  v19 = v33;
  sub_2683D04D8();
  if (!v19)
  {
    v20 = v27;
    v21 = v28;
    LOBYTE(v34) = 1;
    sub_2683D0518();
    LOBYTE(v34) = 2;
    sub_2683D04D8();
    v34 = v21;
    v35 = v20;
    v36 = v26;
    v37 = v38;
    sub_26819D704();
    OUTLINED_FUNCTION_13_11();
    v34 = v23;
    v35 = v24;
    LOBYTE(v36) = v25;
    sub_268151B1C(v23, v24, v25);
    sub_26819D758();
    OUTLINED_FUNCTION_13_11();
    sub_268151B3C(v34, v35, v36);
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_62();
}

uint64_t Snippet.ReminderList.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v10 = *(v0 + 3);
  v5 = v0[8];
  v6 = *(v0 + 72);
  v11 = v0[10];
  v12 = v0[11];
  v7 = *(v0 + 96);
  if (v0[1])
  {
    v8 = *v0;
    OUTLINED_FUNCTION_96();
    sub_2683CFB48();
  }

  else
  {
    OUTLINED_FUNCTION_95();
  }

  sub_2683CFB48();
  if (v4)
  {
    OUTLINED_FUNCTION_96();
    sub_2683CFB48();
  }

  else
  {
    OUTLINED_FUNCTION_95();
  }

  if (v6 == 3)
  {
    OUTLINED_FUNCTION_95();
  }

  else
  {
    OUTLINED_FUNCTION_96();
    Snippet.Color.hash(into:)();
  }

  if (v7 == 255)
  {
    return OUTLINED_FUNCTION_95();
  }

  OUTLINED_FUNCTION_96();
  if (v7)
  {
    MEMORY[0x26D617190](1);
  }

  else
  {
    MEMORY[0x26D617190](0);
  }

  sub_268151B34();
  sub_2683CFB48();

  return sub_268151B3C(v11, v12, v7);
}

uint64_t Snippet.ReminderList.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  Snippet.ReminderList.hash(into:)();
  return sub_2683D06D8();
}

void Snippet.ReminderList.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4F8, &qword_2683D6E20);
  OUTLINED_FUNCTION_0_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26819D6B0();
  sub_2683D06F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);

    v11 = OUTLINED_FUNCTION_8_12();
    sub_268151B3C(v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_7_11();
    v10 = sub_2683D0438();
    v15 = v14;
    v37 = v10;
    OUTLINED_FUNCTION_7_11();
    v16 = sub_2683D0478();
    v18 = v17;
    v36 = v16;
    v35 = v4;
    LOBYTE(v39) = 2;
    OUTLINED_FUNCTION_7_11();
    v19 = sub_2683D0438();
    v21 = v20;
    v34 = v19;
    LOBYTE(v38[0]) = 3;
    sub_26819D7AC();
    OUTLINED_FUNCTION_18_11();
    v31 = v39;
    v33 = v40;
    v32 = v41;
    v55 = v42;
    sub_26819D800();
    OUTLINED_FUNCTION_18_11();
    v22 = OUTLINED_FUNCTION_3_14();
    v23(v22);
    v24 = v52;
    v25 = v53;
    v30 = v52;
    v29 = v54;
    v26 = OUTLINED_FUNCTION_8_12();
    sub_268151B3C(v26, v27, v28);
    v38[0] = v37;
    v38[1] = v15;
    v38[2] = v36;
    v38[3] = v18;
    v38[4] = v34;
    v38[5] = v21;
    v38[6] = v31;
    v38[7] = v33;
    v38[8] = v32;
    LOBYTE(v38[9]) = v55;
    v38[10] = v24;
    v38[11] = v25;
    LOBYTE(v38[12]) = v29;
    memcpy(v35, v38, 0x61uLL);
    sub_26814FB60(v38, &v39);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v39 = v37;
    v40 = v15;
    v41 = v36;
    v42 = v18;
    v43 = v34;
    v44 = v21;
    v45 = v31;
    v46 = v33;
    v47 = v32;
    v48 = v55;
    v49 = v30;
    v50 = v25;
    v51 = v29;
    sub_26814F740(&v39);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_26819D5C4()
{
  sub_2683D0698();
  Snippet.ReminderList.hash(into:)();
  return sub_2683D06D8();
}

unint64_t sub_26819D608()
{
  result = qword_28024E4B8;
  if (!qword_28024E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E4B8);
  }

  return result;
}

unint64_t sub_26819D65C()
{
  result = qword_28024E4C8;
  if (!qword_28024E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E4C8);
  }

  return result;
}

unint64_t sub_26819D6B0()
{
  result = qword_28024E4E0;
  if (!qword_28024E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E4E0);
  }

  return result;
}

unint64_t sub_26819D704()
{
  result = qword_28024E4E8;
  if (!qword_28024E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E4E8);
  }

  return result;
}

unint64_t sub_26819D758()
{
  result = qword_28024E4F0;
  if (!qword_28024E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E4F0);
  }

  return result;
}

unint64_t sub_26819D7AC()
{
  result = qword_28024E500;
  if (!qword_28024E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E500);
  }

  return result;
}

unint64_t sub_26819D800()
{
  result = qword_28024E508;
  if (!qword_28024E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E508);
  }

  return result;
}

unint64_t sub_26819D858()
{
  result = qword_28024E510;
  if (!qword_28024E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E510);
  }

  return result;
}

unint64_t sub_26819D8B0()
{
  result = qword_28024E518;
  if (!qword_28024E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E518);
  }

  return result;
}

unint64_t sub_26819D908()
{
  result = qword_28024E520;
  if (!qword_28024E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E520);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook7SnippetO12ReminderListV0E5BadgeOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26819D984(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_26819D9C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14descr2878F8F29V12ReminderListV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr2878F8F29V12ReminderListV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V12ReminderListV9ListBadgeO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26819DCA4(_BYTE *result, int a2, int a3)
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

unint64_t sub_26819DD54()
{
  result = qword_28024E528;
  if (!qword_28024E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E528);
  }

  return result;
}

unint64_t sub_26819DDAC()
{
  result = qword_28024E530;
  if (!qword_28024E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E530);
  }

  return result;
}

unint64_t sub_26819DE04()
{
  result = qword_28024E538;
  if (!qword_28024E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E538);
  }

  return result;
}

unint64_t sub_26819DE5C()
{
  result = qword_28024E540;
  if (!qword_28024E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E540);
  }

  return result;
}

unint64_t sub_26819DEB4()
{
  result = qword_28024E548;
  if (!qword_28024E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E548);
  }

  return result;
}

unint64_t sub_26819DF0C()
{
  result = qword_28024E550;
  if (!qword_28024E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E550);
  }

  return result;
}

unint64_t sub_26819DF64()
{
  result = qword_28024E558;
  if (!qword_28024E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E558);
  }

  return result;
}

unint64_t sub_26819DFBC()
{
  result = qword_28024E560;
  if (!qword_28024E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E560);
  }

  return result;
}

unint64_t sub_26819E014()
{
  result = qword_28024E568;
  if (!qword_28024E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E568);
  }

  return result;
}

unint64_t sub_26819E06C()
{
  result = qword_28024E570;
  if (!qword_28024E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E570);
  }

  return result;
}

unint64_t sub_26819E0C4()
{
  result = qword_28024E578;
  if (!qword_28024E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E578);
  }

  return result;
}

unint64_t sub_26819E11C()
{
  result = qword_28024E580;
  if (!qword_28024E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E580);
  }

  return result;
}

unint64_t sub_26819E174()
{
  result = qword_28024E588;
  if (!qword_28024E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E588);
  }

  return result;
}

unint64_t sub_26819E1CC()
{
  result = qword_28024E590;
  if (!qword_28024E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E590);
  }

  return result;
}

unint64_t sub_26819E224()
{
  result = qword_28024E598;
  if (!qword_28024E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E598);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_11()
{

  return sub_2683D0508();
}

uint64_t OUTLINED_FUNCTION_15_12()
{
  v2 = *(v0 - 160);

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return sub_2683D0468();
}

uint64_t type metadata accessor for SearchForNotebookItemsV2CATs()
{
  result = qword_28024E5A0;
  if (!qword_28024E5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26819E3EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819E404()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  v3 = *MEMORY[0x277D55BF0];
  v4 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_5_13();

  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[6] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_2_12(v5);
  OUTLINED_FUNCTION_6_12();

  return v7();
}

uint64_t sub_26819E514()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FC74, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    OUTLINED_FUNCTION_40();

    return v10();
  }
}

uint64_t sub_26819E638(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819E650()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  v3 = *MEMORY[0x277D55BF0];
  v4 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_5_13();

  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[6] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_2_12(v5);
  OUTLINED_FUNCTION_6_12();

  return v7();
}

uint64_t sub_26819E760(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819E778()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  v3 = *MEMORY[0x277D55BF0];
  v4 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_5_13();

  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[6] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_2_12(v5);
  OUTLINED_FUNCTION_6_12();

  return v7();
}

uint64_t sub_26819E888()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FA00, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    OUTLINED_FUNCTION_40();

    return v10();
  }
}

uint64_t sub_26819E9AC()
{
  OUTLINED_FUNCTION_7();
  *(v1 + 64) = v25;
  *(v1 + 72) = v0;
  *(v1 + 125) = v23;
  *(v1 + 124) = v22;
  *(v1 + 123) = v21;
  *(v1 + 122) = v20;
  *(v1 + 48) = v19;
  *(v1 + 56) = v24;
  *(v1 + 121) = v18;
  *(v1 + 120) = v16;
  *(v1 + 119) = v15;
  *(v1 + 118) = v14;
  *(v1 + 117) = v13;
  *(v1 + 116) = v2;
  *(v1 + 115) = v3;
  *(v1 + 114) = v4;
  *(v1 + 113) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v17;
  *(v1 + 112) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26819EAC4, 0, 0);
}

uint64_t sub_26819EAC4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  *(v3 + 16) = xmmword_2683D7770;
  *(v3 + 32) = 0x6554686372616573;
  *(v3 + 40) = 0xEA00000000007478;
  sub_26812C2A8(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = *(v0 + 80);
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(*(v0 + 80), &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v6, v4);
  }

  v8 = *(v0 + 113);
  v9 = *(v0 + 112);
  *(v3 + 80) = 0x6E6F707365527369;
  *(v3 + 88) = 0xEF7974706D456573;
  v10 = MEMORY[0x277D839B0];
  *(v3 + 96) = v9;
  *(v3 + 120) = v10;
  strcpy((v3 + 128), "taskListCount");
  *(v3 + 142) = -4864;
  if (v8)
  {
    v11 = 0;
    v12 = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  else
  {
    v11 = *(v0 + 32);
    v12 = MEMORY[0x277D839F8];
  }

  v13 = *(v0 + 121);
  v14 = *(v0 + 120);
  v15 = *(v0 + 119);
  v16 = *(v0 + 118);
  v17 = *(v0 + 117);
  v18 = *(v0 + 116);
  v19 = *(v0 + 115);
  v20 = *(v0 + 114);
  *(v3 + 144) = v11;
  *(v3 + 168) = v12;
  *(v3 + 176) = 0xD000000000000010;
  *(v3 + 184) = 0x80000002683FE240;
  *(v3 + 192) = v20;
  *(v3 + 216) = v10;
  *(v3 + 224) = 0x4F7365746F4E7369;
  *(v3 + 232) = 0xEB00000000796C6ELL;
  *(v3 + 240) = v19;
  *(v3 + 264) = v10;
  *(v3 + 272) = 0x4F736B7361547369;
  *(v3 + 280) = 0xEB00000000796C6ELL;
  *(v3 + 288) = v18;
  *(v3 + 312) = v10;
  *(v3 + 320) = 0x656C706D6F437369;
  *(v3 + 328) = 0xEB00000000646574;
  *(v3 + 336) = v17;
  *(v3 + 360) = v10;
  *(v3 + 368) = 0x79426575447369;
  *(v3 + 376) = 0xE700000000000000;
  *(v3 + 384) = v16;
  *(v3 + 408) = v10;
  *(v3 + 416) = 0x656767616C467369;
  *(v3 + 424) = 0xE900000000000064;
  *(v3 + 432) = v15;
  *(v3 + 456) = v10;
  *(v3 + 464) = 0xD000000000000010;
  *(v3 + 472) = 0x80000002683FE260;
  *(v3 + 480) = v14;
  *(v3 + 504) = v10;
  *(v3 + 512) = 0x6C6F687365726874;
  *(v3 + 520) = 0xE900000000000064;
  if (v13)
  {
    v21 = 0;
    v22 = 0;
    *(v3 + 536) = 0u;
  }

  else
  {
    v21 = *(v0 + 40);
    v22 = MEMORY[0x277D839F8];
  }

  v23 = *(v0 + 122);
  *(v3 + 528) = v21;
  *(v3 + 552) = v22;
  strcpy((v3 + 560), "totalItemCount");
  *(v3 + 575) = -18;
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    *(v3 + 584) = 0u;
  }

  else
  {
    v24 = *(v0 + 48);
    v25 = MEMORY[0x277D839F8];
  }

  v26 = *(v0 + 56);
  v27 = *(v0 + 125);
  v28 = *(v0 + 124);
  v29 = *(v0 + 123);
  *(v3 + 576) = v24;
  *(v3 + 600) = v25;
  *(v3 + 608) = 0x7564656863537369;
  *(v3 + 616) = 0xEB0000000064656CLL;
  *(v3 + 648) = v10;
  *(v3 + 624) = v29;
  *(v3 + 656) = 0x7272756365527369;
  *(v3 + 664) = 0xEB00000000676E69;
  *(v3 + 696) = v10;
  *(v3 + 672) = v28;
  *(v3 + 704) = 0x656C676E69537369;
  *(v3 + 712) = 0xEB00000000796144;
  *(v3 + 744) = v10;
  *(v3 + 720) = v27;
  *(v3 + 752) = 7368801;
  *(v3 + 760) = 0xE300000000000000;
  if (v26)
  {
    v30 = sub_2683CF138();
    v31 = v26;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    *(v3 + 776) = 0u;
  }

  v32 = *(v0 + 64);
  *(v3 + 768) = v31;
  *(v3 + 792) = v30;
  *(v3 + 800) = 0x7261646E656C6163;
  *(v3 + 808) = 0xE800000000000000;
  v33 = 0;
  if (v32)
  {
    v33 = sub_2683CEFE8();
  }

  else
  {
    *(v3 + 824) = 0u;
  }

  *(v3 + 816) = v32;
  *(v3 + 840) = v33;
  v34 = *MEMORY[0x277D55BF0];
  v35 = *(MEMORY[0x277D55BF0] + 4);
  OUTLINED_FUNCTION_5_13();

  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 96) = v36;
  *v36 = v37;
  v36[1] = sub_26819EFE4;
  v38 = *(v0 + 72);
  v39 = *(v0 + 16);

  return v41(v39, 0xD00000000000002ELL, 0x80000002683FE280, v3);
}

uint64_t sub_26819EFE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26819F114, 0, 0);
  }

  else
  {
    v10 = v3[10];
    v9 = v3[11];

    OUTLINED_FUNCTION_40();

    return v11();
  }
}

uint64_t sub_26819F114()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_40();
  v4 = v0[13];

  return v3();
}

uint64_t sub_26819F178()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F224()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F2D0()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F37C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F428()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F4D4()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F580()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268133EC8;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F62C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10(MEMORY[0x277D55BF0]);
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F6D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_26819F72C(a1, a2);
}

uint64_t sub_26819F72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CF238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_26812C2A8(a1, &v14 - v11, &qword_28024D258, &unk_2683D1F60);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2683CF0A8();
  (*(v5 + 8))(a2, v4);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v12;
}

uint64_t type metadata accessor for Snippet.SetTaskAttribute3p()
{
  result = qword_28024E5E8;
  if (!qword_28024E5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.SetTaskAttribute3p.interaction.setter()
{
  v0 = *(type metadata accessor for Snippet.SetTaskAttribute3p() + 20);
  OUTLINED_FUNCTION_1_19();
  return sub_26819FA1C();
}

uint64_t sub_26819FA1C()
{
  v2 = OUTLINED_FUNCTION_6_15();
  v4 = v3(v2);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 40))(v0, v1);
  return v0;
}

uint64_t Snippet.SetTaskAttribute3p.init(reminder:interaction:)()
{
  OUTLINED_FUNCTION_0_24();
  sub_26819FB08();
  v0 = *(type metadata accessor for Snippet.SetTaskAttribute3p() + 20);
  OUTLINED_FUNCTION_1_19();
  return sub_26819FB08();
}

uint64_t sub_26819FB08()
{
  v2 = OUTLINED_FUNCTION_6_15();
  v4 = v3(v2);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26819FB60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E696D6572 && a2 == 0xE800000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_26819FC2C(char a1)
{
  if (a1)
  {
    return 0x7463617265746E69;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_26819FC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26819FB60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26819FC9C(uint64_t a1)
{
  v2 = sub_26819FEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819FCD8(uint64_t a1)
{
  v2 = sub_26819FEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.SetTaskAttribute3p.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E5B0, &qword_2683D7820);
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26819FEC8();
  sub_2683D0718();
  v18[15] = 0;
  type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_4_16();
  sub_2681A0384(v12, v13);
  OUTLINED_FUNCTION_9_13();
  if (!v1)
  {
    v14 = *(type metadata accessor for Snippet.SetTaskAttribute3p() + 20);
    v18[14] = 1;
    type metadata accessor for Snippet.Interaction();
    OUTLINED_FUNCTION_3_15();
    sub_2681A0384(v15, v16);
    OUTLINED_FUNCTION_9_13();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_26819FEC8()
{
  result = qword_28024E5B8;
  if (!qword_28024E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E5B8);
  }

  return result;
}

uint64_t Snippet.SetTaskAttribute3p.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = type metadata accessor for Snippet.Interaction();
  v4 = OUTLINED_FUNCTION_1(v38);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v40 = type metadata accessor for Snippet.Reminder(0);
  v7 = OUTLINED_FUNCTION_1(v40);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v41 = v11 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E5C8, &qword_2683D7828);
  v12 = OUTLINED_FUNCTION_0_3(v42);
  v39 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  v18 = type metadata accessor for Snippet.SetTaskAttribute3p();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_3();
  v24 = v23 - v22;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26819FEC8();
  sub_2683D06F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v36 = a1;
  v26 = v39;
  v27 = v24;
  v44 = 0;
  OUTLINED_FUNCTION_4_16();
  sub_2681A0384(v28, v29);
  v30 = v42;
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_0_24();
  sub_26819FB08();
  v43 = 1;
  OUTLINED_FUNCTION_3_15();
  sub_2681A0384(v31, v32);
  OUTLINED_FUNCTION_8_13();
  (*(v26 + 8))(v17, v30);
  v33 = *(v18 + 20);
  OUTLINED_FUNCTION_1_19();
  sub_26819FB08();
  sub_2681A0244();
  __swift_destroy_boxed_opaque_existential_0(v36);
  return sub_2681A029C(v27, type metadata accessor for Snippet.SetTaskAttribute3p);
}

uint64_t sub_2681A0244()
{
  v2 = OUTLINED_FUNCTION_6_15();
  v4 = v3(v2);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2681A029C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2681A0384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2681A0424()
{
  result = type metadata accessor for Snippet.Reminder(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Snippet.Interaction();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V18SetTaskAttribute3pV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2681A0588()
{
  result = qword_28024E5F8;
  if (!qword_28024E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E5F8);
  }

  return result;
}

unint64_t sub_2681A05E0()
{
  result = qword_28024E600;
  if (!qword_28024E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E600);
  }

  return result;
}

unint64_t sub_2681A0638()
{
  result = qword_28024E608;
  if (!qword_28024E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E608);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_13()
{

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return sub_2683D0548();
}

BOOL sub_2681A073C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2681A0800()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2681A091C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E610, &qword_2683D7AB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2681A0A14;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2681A091C()
{
  OUTLINED_FUNCTION_14();
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2681A09F0, 0, 0);
}

uint64_t sub_2681A09F0()
{
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_37();
  return v2();
}

uint64_t sub_2681A0A14(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_2683CFCA8();
  }

  else
  {
    v4 = 0;
  }

  return sub_2681A0A78(v3, v4);
}

uint64_t sub_2681A0A98()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268167A44;

  return sub_2681A07EC();
}

uint64_t sub_2681A0B40(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681A0B54()
{
  v26 = v0;
  v1 = v0[6];
  v0[8] = sub_2683CF258();
  v0[9] = v2;
  if (v2)
  {
    v3 = v0[7];
    v4 = v3[3];
    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v4);
    OUTLINED_FUNCTION_6_16(v5);
    v24 = (v6 + *v6);
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_2681A0DD8;

    return v24(v4, v5);
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v11 = v0[6];
    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C958);

    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE78();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[6];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      v0[4] = v15;
      sub_2683CF278();
      sub_26816EC88();
      v18 = sub_2683D0568();
      v20 = sub_2681610A0(v18, v19, &v25);

      *(v16 + 4) = v20;
      OUTLINED_FUNCTION_7_12(&dword_2680EB000, v21, v22, "[NotificationPreviewSettingProvider] Got nil app id, assuming previews restricted for %s.");
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    OUTLINED_FUNCTION_37();

    return v23(1);
  }
}

uint64_t sub_2681A0DD8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v1 + 80);
  v6 = *v0;
  *(v2 + 88) = v4;

  return MEMORY[0x2822009F8](sub_2681A0ED0, 0, 0);
}

uint64_t sub_2681A0ED0()
{
  v32 = v0;
  v1 = v0[11];
  if (v1)
  {
    v0[2] = v0[8];
    v0[3] = v0[9];
    v2 = swift_task_alloc();
    *(v2 + 16) = v0 + 2;
    v3 = sub_2681A073C(sub_2681A12C0, v2, v1);

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v4 = v0[9];
    v5 = sub_2683CF7E8();
    __swift_project_value_buffer(v5, qword_28027C958);

    v6 = sub_2683CF7C8();
    v7 = sub_2683CFE98();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[9];
    if (v8)
    {
      v10 = v0[8];
      v11 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v11 = 136446466;
      v12 = sub_2681610A0(v10, v9, v31);

      *(v11 + 4) = v12;
      *(v11 + 12) = 2080;
      if (v3)
      {
        v13 = 0x5443495254534552;
      }

      else
      {
        v13 = 0x7473657220544F4ELL;
      }

      if (v3)
      {
        v14 = 0xEA00000000004445;
      }

      else
      {
        v14 = 0xEE00646574636972;
      }

      v15 = sub_2681610A0(v13, v14, v31);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_2680EB000, v6, v7, "Notification previews for %{public}s are %s", v11, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }
  }

  else
  {
    v16 = v0[9];

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v17 = v0[6];
    v18 = sub_2683CF7E8();
    __swift_project_value_buffer(v18, qword_28027C958);

    v19 = sub_2683CF7C8();
    v20 = sub_2683CFE78();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[6];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v22 = 136315138;
      v0[5] = v21;
      sub_2683CF278();
      sub_26816EC88();
      v24 = sub_2683D0568();
      v26 = sub_2681610A0(v24, v25, v31);

      *(v22 + 4) = v26;
      OUTLINED_FUNCTION_7_12(&dword_2680EB000, v27, v28, "[NotificationPreviewSettingProvider] Got nil restricted apps, assuming previews restricted for %s");
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v3 = 1;
  }

  OUTLINED_FUNCTION_37();

  return v29(v3);
}

uint64_t sub_2681A1250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2683D0598() & 1;
  }
}

void OUTLINED_FUNCTION_7_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2681A1324@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28024E618, qword_2683D7B18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = sub_2683CC318();
  v7 = OUTLINED_FUNCTION_0_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = sub_2683CC588();
  sub_2682B2AC0(v17);

  v18 = sub_2683CC608();
  if (__swift_getEnumTagSinglePayload(v5, 1, v18) == 1)
  {
    sub_2681A1704(v5);
    v19 = 1;
  }

  else
  {
    sub_2683CC5F8();
    (*(*(v18 - 8) + 8))(v5, v18);
    (*(v9 + 32))(v16, v14, v6);
    sub_2683CC308();
    sub_2683CC2F8();
    sub_2683CF148();
    (*(v9 + 8))(v16, v6);
    v19 = 0;
  }

  v20 = sub_2683CF168();
  return __swift_storeEnumTagSinglePayload(a1, v19, 1, v20);
}

uint64_t sub_2681A1544()
{
  v0 = sub_2683CC318();
  v1 = OUTLINED_FUNCTION_0_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28024E618, qword_2683D7B18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_2683CC588();
  sub_2682B2AC0(v12);

  v13 = sub_2683CC608();
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) == 1)
  {
    sub_2681A1704(v11);
    return 0;
  }

  sub_2683CC5F8();
  (*(*(v13 - 8) + 8))(v11, v13);
  v14 = sub_2683CC308();
  v16 = v15;
  (*(v3 + 8))(v7, v0);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    return 0;
  }

  return v14;
}

uint64_t sub_2681A1704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28024E618, qword_2683D7B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681A17E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  v5 = sub_2683CCBA8();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D0, &unk_2683DE610);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v65 - v15;
  v16 = sub_2683CCC18();
  v17 = OUTLINED_FUNCTION_0_3(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v3[11];
  v25 = v3[12];
  sub_2683CCB88();
  v26 = sub_2681D3080(v23, v24);
  (*(v19 + 8))(v23, v16);
  if (v26 == 3)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v38 = sub_2683CF7E8();
    __swift_project_value_buffer(v38, qword_28027C958);
    (*(v8 + 16))(v12, a1, v5);
    v39 = sub_2683CF7C8();
    v40 = sub_2683CFE98();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v67 = v42;
      *v41 = 136315138;
      sub_2681A2BA8(&qword_28024DEE8, MEMORY[0x277D5C118]);
      v43 = sub_2683D0568();
      v45 = v44;
      (*(v8 + 8))(v12, v5);
      v46 = sub_2681610A0(v43, v45, &v67);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_2680EB000, v39, v40, "Ignoring interruption of unknown input: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      (*(v8 + 8))(v12, v5);
    }

    v56 = sub_2683CC7B8();
    v57 = v66;
    return __swift_storeEnumTagSinglePayload(v57, 1, 1, v56);
  }

  if (v26 != 2)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v47 = sub_2683CF7E8();
    __swift_project_value_buffer(v47, qword_28027C958);
    v48 = sub_2683CF7C8();
    v49 = sub_2683CFE98();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v67 = v51;
      *v50 = 136315138;
      if (v26)
      {
        v52 = 1886352499;
      }

      else
      {
        v52 = 0x6C65636E6163;
      }

      if (v26)
      {
        v53 = 0xE400000000000000;
      }

      else
      {
        v53 = 0xE600000000000000;
      }

      v54 = sub_2681610A0(v52, v53, &v67);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_2680EB000, v48, v49, "Ignoring interruption of %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v55 = v66;
    v56 = sub_2683CC7B8();
    v57 = v55;
    return __swift_storeEnumTagSinglePayload(v57, 1, 1, v56);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v27 = sub_2683CF7E8();
  __swift_project_value_buffer(v27, qword_28027C958);

  v28 = sub_2683CF7C8();
  v29 = sub_2683CFE98();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v68 = v31;
    *v30 = 136315138;
    v67 = *(v3 + 13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6F8, &qword_2683D7ED8);
    v32 = sub_2683CFF98();
    v34 = sub_2681610A0(v32, v33, &v68);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_2680EB000, v28, v29, "Accepting input as next page. jumping to: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v35 = v66;
  if (v3[13])
  {
    v36 = v3[14];
    v37 = v3[13];
  }

  else
  {
    v59 = sub_2683CC7B8();
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v59);
    v60 = sub_2683CC5E8();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    v37 = sub_2683CC5D8();
    v36 = sub_2681A2BA8(&qword_28024E6F0, MEMORY[0x277D5BDD0]);
  }

  *v35 = v37;
  v35[1] = v36;
  v63 = *MEMORY[0x277D5BF58];
  v64 = sub_2683CC7B8();
  (*(*(v64 - 8) + 104))(v35, v63, v64);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v64);
  return swift_unknownObjectRetain();
}

uint64_t sub_2681A1EA0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D0, &unk_2683DE610);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D8, &unk_2683D7EC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2683D1EC0;
  type metadata accessor for ErrorAction();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v8 = sub_2681A2BA8(&qword_28024E6E0, type metadata accessor for ErrorAction);
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  v9 = sub_2683CC7B8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v10 = sub_2683CC5E8();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = a1;
  return sub_2683CC5D8();
}

uint64_t *sub_2681A200C()
{
  v1 = v0[6];
  sub_268128194(v0[5]);
  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[12];

  v5 = v0[13];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2681A204C()
{
  sub_2681A200C();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

unint64_t sub_2681A20B4()
{
  sub_2683D0178();

  swift_beginAccess();
  v3 = *(v0 + 16);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6E8, &qword_2683D7ED0);
  v1 = sub_2683CFAD8();
  MEMORY[0x26D616690](v1);

  return 0xD000000000000013;
}

uint64_t sub_2681A2170()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2681A2220(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D5C180] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2681A22C8;

  return MEMORY[0x2821BBC58](a1, a2);
}

uint64_t sub_2681A22C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681A23FC()
{
  v1 = *(*(v0 + 16) + 32);
  swift_willThrow();
  v2 = v1;
  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2681A2470()
{
  sub_2683D0178();

  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  v2 = sub_2683CFAD8();
  MEMORY[0x26D616690](v2);

  return 0x6120726F7272455BLL;
}

uint64_t sub_2681A251C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2681A2544()
{
  v0 = sub_2681A251C();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2681A25E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681A2BF0;

  return sub_2681A23DC();
}

uint64_t sub_2681A26B8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  (*(v1 + 32))();
  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2681A2740()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_2681A2768()
{
  v0 = sub_2681A2740();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2681A27BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_2681A2810()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_2681A2854()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681A28E0;

  return sub_2681A2698();
}

uint64_t sub_2681A28E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681A2BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_2681A2C04(void *a1)
{
  type metadata accessor for NotebookTemporalEventTriggerConcept.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v3 = [a1 dateComponentsRange];
  v4 = sub_2683608FC();

  v5 = sub_2681E07F4(v4);

  v6 = [a1 dateComponentsRange];
  v7 = [v6 allDay];

  if (v7)
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 24) = v8;
  type metadata accessor for NotebookTemporalEventTriggerConcept();
  swift_allocObject();
  v9 = sub_26835179C(v5);

  return v9;
}

uint64_t sub_2681A2D2C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for NotebookReminderListConcept.Builder(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_listTitle;
  v11 = sub_2683CF168();
  __swift_storeEnumTagSinglePayload(v9 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_isDefault;
  *(v9 + OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_isDefault) = 0;
  sub_2683CFEA8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  swift_beginAccess();
  sub_268163BC8(v5, v9 + v10);
  swift_endAccess();
  sub_26812E924(v5);
  *(v9 + v12) = sub_2681BAC30() & 1;
  v13 = type metadata accessor for NotebookReminderListConcept(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_268364C10(v9);

  return v16;
}

uint64_t sub_2681A2E94@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = sub_2683CFFA8();
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v18[-v14];
  sub_26813CC6C(a1, v18);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, a3);
    return (*(*(a3 - 8) + 32))(a4, v15, a3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, a3);
    v17 = (*(v11 + 8))(v15, v8);
    a2(v17);
    return swift_willThrow();
  }
}

uint64_t sub_2681A3020@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E700, &qword_2683D7EE0);
  sub_2683CFAD8();
  swift_getMetatypeMetadata();
  sub_2683CFAD8();
  sub_2681A2E94(a1, sub_2681A318C, a2, a3);
}

uint64_t sub_2681A3124(uint64_t a1)
{
  sub_26812C6B8();
  v2 = swift_allocError();
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v4;
  *(v5 + 32) = v3;
  sub_26812CA1C(a1, v7);
  return v2;
}

BOOL sub_2681A3194(void *a1)
{
  v2 = sub_2683CF168();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  v11 = [a1 title];
  sub_2683CFEA8();

  v12 = sub_2683CF158();
  v14 = v13;
  (*(v5 + 8))(v10, v2);
  v15 = sub_2683CB5A8();
  v17 = sub_2681A32D0(v12, v14, v15, v16);

  return v17 > 3.0;
}

double sub_2681A32D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[1] = a1;
  v5 = sub_2683CF738();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v32 - v14;
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v16 = sub_2683CF768();
  __swift_project_value_buffer(v16, qword_28027C9A0);
  sub_2683CF728();
  v17 = sub_2683CF758();
  v18 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v19 = swift_slowAlloc();
    v32[0] = a4;
    v20 = v19;
    *v19 = 0;
    v21 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v17, v18, v21, "SpeechUtils#ttsDuration", "", v20, 2u);
    MEMORY[0x26D617A40](v20, -1, -1);
  }

  (*(v8 + 16))(v13, v15, v5);
  v22 = sub_2683CF7A8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_2683CF798();
  (*(v8 + 8))(v15, v5);
  v25 = objc_allocWithZone(sub_2683CED58());

  v26 = sub_2683CED48();
  objc_allocWithZone(sub_2683CED78());

  v27 = v26;
  v28 = sub_2683CED68();
  sub_2683CED98();
  sub_2683CED88();
  v30 = v29;

  sub_2681A3598();

  return v30;
}

uint64_t sub_2681A3598()
{
  v0 = sub_2683CF778();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CF738();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v10 = sub_2683CF768();
  __swift_project_value_buffer(v10, qword_28027C9A0);
  v11 = sub_2683CF758();
  sub_2683CF788();
  v12 = sub_2683CFEE8();
  if (sub_2683CFF88())
  {

    sub_2683CF7B8();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v11, v12, v15, "SpeechUtils#ttsDuration", v13, v14, 2u);
    MEMORY[0x26D617A40](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2681A3824()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E708, &qword_2683D7EE8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v48 - v2;
  v4 = sub_2683CB668();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v54 = v6;
  v55 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  v12 = sub_2683CB7A8();
  v13 = OUTLINED_FUNCTION_0_3(v12);
  v52 = v14;
  v53 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  v19 = v18 - v17;
  v20 = sub_2683CEB08();
  v21 = OUTLINED_FUNCTION_0_3(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_3();
  v28 = v27 - v26;
  v29 = sub_2683CB528();
  v30 = OUTLINED_FUNCTION_0_3(v29);
  v50 = v31;
  v51 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14_3();
  v36 = v35 - v34;
  v37 = sub_2683CE9C8();
  v38 = OUTLINED_FUNCTION_0_3(v37);
  v48 = v39;
  v49 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_3();
  v44 = v43 - v42;
  sub_2683CE9B8();
  sub_2683CB518();
  (*(v23 + 104))(v28, *MEMORY[0x277D56370], v20);
  sub_2683CB768();
  sub_2683CB628();
  v45 = sub_2683CE978();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v45);
  sub_2683CEB78();
  sub_2681A3BD4();
  sub_2683CF9D8();
  v46 = sub_2683CE9A8();

  sub_2681A3C2C(v3);
  (*(v54 + 8))(v11, v55);
  (*(v52 + 8))(v19, v53);
  (*(v23 + 8))(v28, v20);
  (*(v50 + 8))(v36, v51);
  (*(v48 + 8))(v44, v49);
  return v46 & 1;
}